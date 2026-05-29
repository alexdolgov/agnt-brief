// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Spectra4626Wrapper, ERC4626Upgradeable} from "../utils/Spectra4626Wrapper.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ITeller} from "./interfaces/ITeller.sol";
import {IVault} from "./interfaces/IVault.sol";
import {IAccountant} from "./interfaces/IAccountant.sol";
import {IWrapper} from "./interfaces/IWrapper.sol";

/// @title SpectraWrappedWStScETH - Implementation of Spectra ERC4626 wrapper for the wrapped stscETH
/// @notice This contract wraps the wstscETH with the ERC4626 interface
/// @notice The contract is instantiated with the vault address, the Underlying address
/// @notice and the initial authority.
contract SpectraWrappedWStkScETH is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    uint256 private V_UNIT;
    uint256 private PREMIUM_SHARE_BPS;
    address public stkscETH;

    error WithdrawNotImplemented();
    error RedeemNotImplemented();

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _wETH,
        address _wstscETH,
        address _stkscETH,
        address _initAuth
    ) external initializer {
        __Spectra4626Wrapper_init(_wETH, _wstscETH, _initAuth);
        IERC20(_wETH).forceApprove(_stkscETH, type(uint256).max);
        IERC20(_stkscETH).forceApprove(_wstscETH, type(uint256).max);
        V_UNIT = 10 ** IERC20Metadata(_wstscETH).decimals();
        PREMIUM_SHARE_BPS = 1e4;
        stkscETH = _stkscETH;
    }

    /*//////////////////////////////////////////////////////////////
                        ERC4626 GETTERS
    //////////////////////////////////////////////////////////////*/

    /** @dev See {IERC4626-maxDeposit}. */
    function maxDeposit(
        address
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return uint256(type(int256).max);
    }

    /** @dev See {IERC4626-maxMint}. */
    function maxMint(address) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _convertToShares(uint256(type(int256).max), Math.Rounding.Floor);
    }

    /// @dev See {IERC4626-maxWithdraw}. */
    function maxWithdraw(
        address /*owner*/
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /// @dev See {IERC4626-maxRedeem}. */
    function maxRedeem(
        address /*owner*/
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

        /// @dev See {IERC4626-previewDeposit}.
    function previewDeposit(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 stscAmount = _stscETHConvertToShares(assets, Math.Rounding.Floor);
        uint256 bVShares = _applyDepositFees(stscAmount, Math.Rounding.Floor);
        uint256 vaultSharesAmount = IWrapper(vaultShare()).convertToShares(bVShares); 
        return _previewWrap(vaultSharesAmount, Math.Rounding.Floor);
    }

    /// @dev See {IERC4626-previewMint}.
    function previewMint(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 WShares = _previewUnwrap(shares, Math.Rounding.Ceil);
        uint256 bvSharesAmount = IWrapper(vaultShare()).convertToAssets(WShares); 
        bvSharesAmount = _applyMintFees(bvSharesAmount, Math.Rounding.Ceil);
        uint256 assets = _stscETHConvertToAssets(bvSharesAmount, Math.Rounding.Ceil);
        return assets;
    }

    /*//////////////////////////////////////////////////////////////
                    ERC4626 PUBLIC OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-withdraw}.
    /// @notice We decided to revert the withdraw as the user can unwrap the shares.
    function withdraw(
        uint256 /*assets*/,
        address /*receiver*/,
        address /*owner*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert WithdrawNotImplemented();
    }

    /// @dev See {IERC4626-redeem}.
    /// @notice We decided to revert the withdraw as the user can unwrap the shares.
    function redeem(
        uint256 /*shares*/,
        address /*receiver*/,
        address /*owner*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert RedeemNotImplemented();
    }

    /*//////////////////////////////////////////////////////////////
                    ERC4626 INTERNAL OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev Internal conversion function (from assets to shares) with support for rounding direction.
    /// @param assets The amount of assets to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of shares.
    function _convertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        uint256 stscAmount = _stscETHConvertToShares(assets, rounding);
        uint256 vaultSharesAmount = IWrapper(vaultShare()).convertToShares(stscAmount); 
        return _previewWrap(vaultSharesAmount, rounding);
    }

    /// @dev Internal conversion function (from shares to assets) with support for rounding direction.
    /// @param shares The amount of shares to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of assets.
    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        uint256 vaultSharesAmount = _previewUnwrap(shares, rounding);
        uint256 stscAmount = IWrapper(vaultShare()).convertToAssets(vaultSharesAmount);
        return _stscETHConvertToAssets(stscAmount, rounding);
    }

    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override(ERC4626Upgradeable) {
        SafeERC20.safeTransferFrom(IERC20(asset()), caller, address(this), assets);
        _wrapperDeposit(assets);
        _mint(receiver, shares);
        emit Deposit(caller, receiver, assets, shares);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNALS
    //////////////////////////////////////////////////////////////*/

    /// @dev Internal function to mint wstscETH shares by first depositing in the stscETH vault.
    function _wrapperDeposit(uint256 amount) internal {
        if (amount != 0) {
            uint256 minShares = _stscETHConvertToShares(amount, Math.Rounding.Floor);
            ITeller(IVault(stkscETH).hook()).deposit(asset(), amount, minShares);
            //deposit in wstscETH;
            IWrapper(vaultShare()).deposit(minShares, address(this));
        }
    }

    /// @dev Internal conversion function (from wETH to stscETH shares) with support for rounding direction.
    function _stscETHConvertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        address accountant = ITeller(IVault(stkscETH).hook()).accountant();
        return
            assets.mulDiv(V_UNIT, IAccountant(accountant).getRateInQuoteSafe(asset()), rounding);
    }

    /// @dev Internal stscETH conversion function (from stscETH shares to wETH) with support for rounding direction.
    function _stscETHConvertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        address accountant = ITeller(IVault(stkscETH).hook()).accountant();
        return
            shares.mulDiv(IAccountant(accountant).getRateInQuoteSafe(asset()), V_UNIT, rounding);
    }

    /// @dev Internal function to take deposit fees into account with support for rounding direction.
    function _applyDepositFees(
        uint256 shares,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        ITeller.Asset memory data = ITeller(IVault(stkscETH).hook()).assetData(asset());
        shares = data.sharePremium > 0
            ? shares.mulDiv(PREMIUM_SHARE_BPS - data.sharePremium, PREMIUM_SHARE_BPS, rounding)
            : shares;
        return shares;
    }
 
    function _applyMintFees(
        uint256 shares,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        ITeller.Asset memory data = ITeller(IVault(stkscETH).hook()).assetData(asset());
        shares = data.sharePremium > 0
            ? shares.mulDiv(PREMIUM_SHARE_BPS, PREMIUM_SHARE_BPS - data.sharePremium, rounding)
            : shares;
        return shares;
    }
}
