// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./libraries/Errors.sol";
import "./common/Constants.sol";
import "./vault/VaultYieldBasic.sol";
import "../interfaces/midas/IDepositVault.sol";
import "../interfaces/midas/IMidasOracle.sol";
/**
 * @title Vault contract
 * @author Naturelab
 * @dev This contract is the logical implementation of the vault,
 * and its main purpose is to provide users with a gateway for depositing
 * and withdrawing funds and to manage user shares.
 */

contract Vault is VaultYieldBasic, Constants {
    using SafeERC20 for IERC20;

    event UpdateEpoch(uint256 oldPrevEpoch, uint256 newPrevEpoch, uint256 oldEpoch, uint256 newEpoch);
    event RequestRedeemInstant(address receiver, uint256 shares, address token);
    event CancelRedeem(address user);

    string public constant VERSION = "1.0";
    address private constant MIDAS_ORACLE = 0x8D51DBC85cEef637c97D02bdaAbb5E274850e68C;

    // Based on shares
    mapping(uint256 => mapping(address => uint256)) internal userRedeemInstantLimitEpoch;
    mapping(address => uint256) internal userTotalSupply;
    mapping(address => uint256) internal userTotalRedeem;

    uint256 public prevEpoch;
    uint256 public epoch;
    uint256 public redeemInstantLimit;

    constructor(uint256 _minMarketCapacity) VaultYieldBasic(1e6, _minMarketCapacity) {}

    function underlyingTvl() public override returns (uint256) {
        uint256 usdcBal_ = IERC20(USDC).balanceOf(address(this));
        uint256 totalStrategy_ = totalStrategiesAssets();
        uint256 mFONEBal_ = IERC20(MF_ONE).balanceOf(address(this));
        // mFONEBal_ = mFONEBal_ / 1e12;
        int256 price_ = IMidasOracle(MIDAS_ORACLE).lastAnswer();
        if (price_ < 0) revert Errors.PriceBelowZero();

        return totalStrategy_ + usdcBal_ + (mFONEBal_ * uint256(price_) / 1e20) - vaultState.revenue; // 1e18 * 1e12;
    }

    function requestRedeemSlow(uint256 _shares, address _token) external nonReentrant whenNotPaused {
        if (_shares == 0) revert Errors.WithdrawZero();
        if (_token != asset()) revert Errors.InvalidAsset();
        _transfer(msg.sender, vaultParams.redeemOperator, _shares);
        IRedeemOperator(vaultParams.redeemOperator).registerWithdrawal(msg.sender, _shares, false, epoch);

        emit RequestRedeem(msg.sender, _shares, _token, false);
    }

    function requestRedeemRapid(uint256 _shares, address _token) external nonReentrant whenNotPaused {
        if (_shares == 0) revert Errors.WithdrawZero();
        if (_token != asset()) revert Errors.InvalidAsset();

        if (getUserRedeemInstantLimitEpoch(true, msg.sender) + _shares > redeemInstantLimit) {
            revert Errors.ExceededRedeemInstantLimit();
        }
        if (userTotalRedeem[msg.sender] + _shares > userTotalSupply[msg.sender]) {
            revert Errors.InsufficientDepositAmount();
        }

        _transfer(msg.sender, vaultParams.redeemOperator, _shares);
        IRedeemOperator(vaultParams.redeemOperator).registerWithdrawal(msg.sender, _shares, true, epoch);

        userTotalRedeem[msg.sender] += _shares;
        userRedeemInstantLimitEpoch[epoch][msg.sender] += _shares;

        emit RequestRedeem(msg.sender, _shares, _token, true);
    }

    function cancelRedeem(uint256 _epoch) external nonReentrant whenNotPaused {
        if (_epoch != epoch) revert Errors.MFONERedeemPending();

        IRedeemOperator(vaultParams.redeemOperator).cancelWithdraw(msg.sender, false, _epoch);
        emit CancelRedeem(msg.sender);
    }

    /**
     * @dev Internal function to calculate the shares issued for a deposit.
     * @param _token The address of assets to deposit.
     * @param _assets The amount of the receiver of the shares.
     * @return shares_ The amount of shares issued.
     */
    function optionalDepositShares(address _token, uint256 _assets) internal view returns (uint256 shares_) {
        if (_token == MF_ONE) {
            int256 price_ = IMidasOracle(MIDAS_ORACLE).lastAnswer();
            if (price_ < 0) revert Errors.PriceBelowZero();
            _assets = _assets * uint256(price_) / 1e20;
        }

        uint256 maxAssets = maxDeposit(address(0));
        if (_assets > maxAssets) {
            revert Errors.ExceededMaxDeposit();
        }
        shares_ = previewDeposit(_assets);
    }

    function optionalDeposit(address _token, uint256 _assets, address _receiver, address _referral)
        public
        payable
        virtual
        override
        nonReentrant
        whenNotPaused
        returns (uint256 shares_)
    {
        if (_token != USDC && _token != MF_ONE) revert Errors.InvalidAsset();

        if (_assets == type(uint256).max) {
            _assets = IERC20(asset()).balanceOf(msg.sender);
        }

        IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);

        shares_ = optionalDepositShares(_token, _assets);

        if (vaultParams.maxPriceUpdatePeriod < block.timestamp - vaultState.lastUpdatePriceTime) {
            revert Errors.PriceNotUpdated();
        }

        _mint(_receiver, shares_);

        userTotalSupply[msg.sender] += shares_;

        emit OptionalDeposit(msg.sender, _token, _assets, _receiver, _referral);
    }

    function deposit(uint256 _assets, address _receiver)
        public
        override
        nonReentrant
        whenNotPaused
        returns (uint256 shares_)
    {
        if (vaultParams.maxPriceUpdatePeriod < block.timestamp - vaultState.lastUpdatePriceTime) {
            revert Errors.PriceNotUpdated();
        }

        if (_assets == type(uint256).max) {
            _assets = IERC20(asset()).balanceOf(msg.sender);
        }

        IERC20(USDC).safeTransferFrom(msg.sender, address(this), _assets);

        shares_ = optionalDepositShares(USDC, _assets);

        userTotalSupply[msg.sender] += shares_;

        _mint(_receiver, shares_);

        emit Deposit(msg.sender, _receiver, _assets, shares_);
    }

    function updateEpoch(uint256 _newEpoch, uint256 _newPrevEpoch) external onlyOwner {
        emit UpdateEpoch(epoch, _newEpoch, prevEpoch, _newPrevEpoch);
        epoch = _newEpoch;
        prevEpoch = _newPrevEpoch;
    }

    function getUserRedeemInstantLimitEpoch(bool _isCurrent, address _user) public view returns (uint256) {
        if (_isCurrent) {
            return userRedeemInstantLimitEpoch[epoch][_user];
        } else {
            return userRedeemInstantLimitEpoch[prevEpoch][_user];
        }
    }

    function getUserTotalSupply(address _user) external view returns (uint256) {
        return userTotalSupply[_user];
    }

    function refundInstantLimit(address _user, uint256 _amount) external returns (uint256) {
        if (msg.sender != vaultParams.redeemOperator) revert Errors.UnSupportedOperation();
        if (userRedeemInstantLimitEpoch[epoch][_user] < _amount) revert Errors.ExceededRedeemInstantLimit();

        userRedeemInstantLimitEpoch[epoch][_user] -= _amount;

        return userRedeemInstantLimitEpoch[epoch][_user];
    }

    function updateRedeemInstantLimit(uint256 _newRedeemInstantLimit) external onlyOwner {
        redeemInstantLimit = _newRedeemInstantLimit;
    }

    function getUserRedeemLimitRemain(address _user) external view returns (uint256) {
        uint256 usedLimit_ = userRedeemInstantLimitEpoch[epoch][_user];
        uint256 remainLimit_ = redeemInstantLimit >= usedLimit_ ? redeemInstantLimit - usedLimit_ : 0;
        return remainLimit_;
    }

    function updateExchangePriceTmp() external onlyOwner {
        vaultState.exchangePrice = PRECISION;
    }
}
