// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/kelp/ILRTWithdrawalManager.sol";
import "../interfaces/kelp/ILRTDepositPool.sol";
import "../interfaces/weth/IWETH.sol";
import "../interfaces/lido/IstETH.sol";
import "./libraries/Errors.sol";
import "./common/Constants.sol";
import "./vault/VaultYieldBasic.sol";

/**
 * @title VaultYieldRSETH contract
 * @author Naturelab
 * @dev This contract is the logical implementation of the vault,
 * and its main purpose is to provide users with a gateway for depositing
 * and withdrawing funds and to manage user shares.
 */
contract VaultYieldRSETH is VaultYieldBasic, Constants {
    using SafeERC20 for IERC20;

    string public constant VERSION = "2.0";

    address public constant STETH = 0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84;
    ILRTDepositPool internal constant KELP_POOL = ILRTDepositPool(0x036676389e48133B63a802f8635AD39E752D375D);
    ILRTWithdrawalManager internal constant kelpWithdrawal =
        ILRTWithdrawalManager(0x62De59c08eB5dAE4b7E6F7a8cAd3006d6965ec16);
    bytes32 public requestId;

    event Unstake(uint256 amount);
    event ConfirmUnstake();

    constructor(uint256 _minMarketCapacity) VaultYieldBasic(1e18, _minMarketCapacity) {}

    function underlyingTvl() public override returns (uint256) {
        uint256 rsethBal_ = IERC20(RSETH).balanceOf(address(this));
        uint256 stethBal_ = IERC20(STETH).balanceOf(address(this));
        uint256 rsethAmountFromStethBal_ = KELP_POOL.getRsETHAmountToMint(STETH, stethBal_);
        uint256 unstakingAmount_ = getUnstakingAmount();

        uint256 totalStrategy_ = totalStrategiesAssets();
        return totalStrategy_ + rsethBal_ + rsethAmountFromStethBal_ + unstakingAmount_ - vaultState.revenue;
    }

    /**
     * @dev Internal function to calculate the shares issued for a deposit.
     * @param _assets The amount of assets to deposit.
     * @param _receiver The address of the receiver of the shares.
     * @return shares_ The amount of shares issued.
     */
    function optionalDepositDeal(uint256 _assets, address _receiver) internal returns (uint256 shares_) {
        uint256 maxAssets = maxDeposit(_receiver);
        if (_assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(_receiver, _assets, maxAssets);
        }
        shares_ = previewDeposit(_assets);

        emit Deposit(msg.sender, _receiver, _assets, shares_);
    }

    /**
     * @dev Optional deposit function allowing deposits in different token types.
     * @param _token The address of the token to deposit.
     * @param _assets The amount of assets to deposit.
     * @param _receiver The address of the receiver of the shares.
     * @param _referral  Address of the referrer.
     * @return shares_ The amount of shares issued.
     */
    function optionalDeposit(address _token, uint256 _assets, address _receiver, address _referral)
        public
        payable
        override
        nonReentrant
        whenNotPaused
        returns (uint256 shares_)
    {
        uint256 tokenGet_ = 0;
        if (_token == ETHx) {
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
            IERC20(_token).safeIncreaseAllowance(address(KELP_POOL), _assets);
            uint256 tokenBefore_ = IERC20(RSETH).balanceOf(address(this));
            KELP_POOL.depositAsset(_token, _assets, 0, "");
            tokenGet_ = IERC20(RSETH).balanceOf(address(this)) - tokenBefore_;
        } else if (_token == RSETH) {
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
            tokenGet_ = _assets;
        } else if (_token == ETH) {
            uint256 tokenBefore_ = IERC20(RSETH).balanceOf(address(this));
            KELP_POOL.depositETH{value: msg.value}(0, "");
            tokenGet_ = IERC20(RSETH).balanceOf(address(this)) - tokenBefore_;
        } else if (_token == STETH) {
            uint256 tokenBefore_ = IERC20(STETH).balanceOf(address(this));
            IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
            tokenGet_ = IERC20(STETH).balanceOf(address(this)) - tokenBefore_;
            tokenGet_ = KELP_POOL.getRsETHAmountToMint(STETH, tokenGet_);
        }
        shares_ = optionalDepositDeal(tokenGet_, _receiver);
        _mint(_receiver, shares_);

        emit OptionalDeposit(msg.sender, _token, _assets, _receiver, _referral);
    }

    /**
     * @dev unstake RSETH to STETH/ETH.
     */
    function unstake(uint256 _rsAmount, address _toToken) external onlyRebalancer {
        if (requestId != bytes32(0)) revert Errors.UnSupportedOperation();
        if (_toToken != STETH && _toToken != ETH) revert Errors.UnsupportedToken();
        uint256 nextUnusedNonce_ = kelpWithdrawal.nextUnusedNonce(_toToken);
        bytes32 newRequestId_ = kelpWithdrawal.getRequestId(_toToken, nextUnusedNonce_);
        IERC20(RSETH).safeIncreaseAllowance(address(kelpWithdrawal), _rsAmount);

        kelpWithdrawal.initiateWithdrawal(_toToken, _rsAmount, "");
        (uint256 rsETHUnstaked_,, uint256 withdrawalStartBlock_, uint256 userNonce_) =
            kelpWithdrawal.getUserWithdrawalRequest(_toToken, address(this), 0);
        if (rsETHUnstaked_ != _rsAmount || withdrawalStartBlock_ != block.number || nextUnusedNonce_ != userNonce_) {
            revert Errors.IncorrectState();
        }
        requestId = newRequestId_;

        emit Unstake(_rsAmount);
    }

    function claimUnstake(address _toToken) external onlyRebalancer {
        if (requestId == bytes32(0)) revert Errors.UnSupportedOperation();
        kelpWithdrawal.completeWithdrawal(_toToken, "");
        requestId = bytes32(0);
        if (_toToken == ETH) {
            uint256 balance_ = address(this).balance;
            IWETH(WETH).deposit{value: balance_}();
        }
        emit ConfirmUnstake();
    }

    function getUnstakingAmount() public view returns (uint256) {
        if (requestId == bytes32(0)) return 0;
        (uint256 rsETHUnstaked_,,) = kelpWithdrawal.withdrawalRequests(requestId);
        return rsETHUnstaked_;
    }
}
