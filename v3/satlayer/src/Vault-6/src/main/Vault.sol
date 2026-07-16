// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./common/Constants.sol";
import "./vault/VaultYieldBasic.sol";
import "../interfaces/ISuperStateOracle.sol";
import "../interfaces/ISwapper.sol";

/**
 * @title Vault contract
 * @author Naturelab
 * @dev This contract is the logical implementation of the vault,
 * and its main purpose is to provide users with a gateway for depositing
 * and withdrawing funds and to manage user shares.
 */
contract Vault is VaultYieldBasic, Constants {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    // The oracle contract of superstate
    ISuperStateOracle internal constant USCC_ORACLE = ISuperStateOracle(0xAfFd8F5578E8590665de561bdE9E7BAdb99300d9);

    uint256 public constant VERSION = 1;
    bool public depositHalted;

    modifier whenDepositNotHalted() {
        if (depositHalted) {
            revert Errors.DepositHalted();
        }
        _;
    }

    event DepositHalted();
    event DepositResumed();

    constructor(uint8 _decimals) VaultYieldBasic(_decimals) {}

    function haltDeposit() external onlyOwner {
        depositHalted = true;
        emit DepositHalted();
    }

    function resumeDeposit() external onlyOwner {
        depositHalted = false;
        emit DepositResumed();
    }

    /**
     * @dev override to include USCC value
     */
    function underlyingTvl() public override returns (uint256) {
        (, uint256 usccPrice_,,,) = USCC_ORACLE.latestRoundData(); // answer with 6 decimals
        uint256 totalAssets_ = IERC20(asset()).balanceOf(address(this));
        uint256 usccAmountInUsdc_ = IERC20(USCC).balanceOf(address(this)) * usccPrice_ / 1e6;
        uint256 totalBal_ = totalAssets_ + usccAmountInUsdc_;

        uint256 totalStrategy_ = totalStrategiesAssets();
        return totalStrategy_ + totalBal_ - vaultState.revenue;
    }

    /**
     * @dev Redemption operation executed by the redeemOperator. Currently, only fBTC redemptions are supported.
     * @param _shares The amount of share tokens to be redeemed.
     * @param _receiver The address of the receiver of the assets.
     * @param _owner The owner address of the shares.
     * @return assets_ The amount of assets obtained.
     */

    function optionalRedeem(address, uint256 _shares, uint256, address _receiver, address _owner)
        public
        override
        nonReentrant
        whenNotPaused
        returns (uint256 assets_)
    {
        if (msg.sender != vaultParams.redeemOperator) revert Errors.UnSupportedOperation();

        if (_shares == type(uint256).max) {
            _shares = maxRedeem(_owner);
        } else {
            require(_shares <= maxRedeem(_owner), "ERC4626: redeem more than max");
        }

        if (msg.sender != _owner) {
            _spendAllowance(_owner, msg.sender, _shares);
        }

        assets_ = previewRedeem(_shares);
        _burn(_owner, _shares);
        IERC20(asset()).safeTransfer(_receiver, assets_);

        emit OptionalRedeem(asset(), _shares, _receiver, _owner);
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

    function optionalDeposit(
        address _token,
        uint256 _assets,
        address _receiver,
        address _referral,
        bytes memory _swapData,
        uint256 _swapGetMin
    )
        public
        virtual
        override
        nonReentrant
        whenNotPaused
        whenPriceUpdated
        whenDepositNotHalted
        returns (uint256 shares_)
    {
        if (!tokens.contains(_token)) revert Errors.UnsupportedToken();
        if (_assets == type(uint256).max) {
            _assets = IERC20(asset()).balanceOf(msg.sender);
        }

        IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);

        if (_token != USDC) {
            if (_token == USCC) {
                uint8 usccPriceDecimals_ = USCC_ORACLE.decimals();
                (, uint256 usccPrice_,,,) = USCC_ORACLE.latestRoundData();
                _assets = _assets * usccPrice_ / (10 ** usccPriceDecimals_);
            } else {
                IERC20(_token).safeTransfer(strategyAddress(0), _assets);
                _assets = ISwapper(strategyAddress(0)).convertTokensToUSDC(_token, _assets, _swapData, _swapGetMin);
            }
        }

        if (_assets < minDepositAmount) revert Errors.DepositAmountTooSmall();

        shares_ = optionalDepositDeal(_assets, _receiver);
        _mint(_receiver, shares_);
        emit OptionalDeposit(msg.sender, _token, _assets, _receiver, _referral);
    }

    function deposit(uint256 _assets, address _receiver)
        public
        virtual
        override
        nonReentrant
        whenNotPaused
        whenPriceUpdated
        whenDepositNotHalted
        returns (uint256 shares_)
    {
        if (_assets == type(uint256).max) {
            _assets = IERC20(asset()).balanceOf(msg.sender);
        }
        if (_assets < minDepositAmount) revert Errors.DepositAmountTooSmall();
        shares_ = ERC4626Upgradeable.deposit(_assets, _receiver);
    }

    function mint(uint256 _shares, address _receiver)
        public
        virtual
        override
        nonReentrant
        whenNotPaused
        whenPriceUpdated
        whenDepositNotHalted
        returns (uint256 assets_)
    {
        assets_ = ERC4626Upgradeable.mint(_shares, _receiver);
        if (assets_ < minDepositAmount) revert Errors.DepositAmountTooSmall();
    }
}
