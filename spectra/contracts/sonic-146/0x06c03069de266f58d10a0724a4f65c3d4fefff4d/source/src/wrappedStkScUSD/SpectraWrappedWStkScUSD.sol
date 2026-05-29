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

/// @title SpectraWrappedWStScUSD - Implementation of Spectra ERC4626 wrapper for the wrapped stscUSD
/// @notice This contract wraps the wstscUSD with the ERC4626 interface
/// @notice The contract is instantiated with the vault address, the Underlying address
/// @notice and the initial authority.
contract SpectraWrappedWStkScUSD is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    uint256 private V_UNIT;
    address public stkscUSD;

    error WithdrawNotImplemented();
    error RedeemNotImplemented();

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _scUSD,
        address _wstscUSD,
        address _stkscUSD,
        address _initAuth
    ) external initializer {
        __Spectra4626Wrapper_init(_scUSD, _wstscUSD, _initAuth);
        IERC20(_scUSD).forceApprove(_stkscUSD, type(uint256).max);
        IERC20(_stkscUSD).forceApprove(_wstscUSD, type(uint256).max);
        V_UNIT = 10 ** IERC20Metadata(_wstscUSD).decimals();
        stkscUSD = _stkscUSD;
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
        uint256 stscAmount = _stscUSDConvertToShares(assets, rounding);
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
        return _stscUSDConvertToAssets(stscAmount, rounding);
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

    /// @dev Internal function to mint wstscUSD shares by first depositing in the stscUSD vault.
    function _wrapperDeposit(uint256 amount) internal {
        if (amount != 0) {
            uint256 minShares = _stscUSDConvertToShares(amount, Math.Rounding.Floor);
            ITeller(IVault(stkscUSD).hook()).deposit(asset(), amount, minShares);
            //deposit in wstscUSD;
            IWrapper(vaultShare()).deposit(minShares, address(this));
        }
    }

    /// @dev Internal conversion function (from scUSD to stscUSD shares) with support for rounding direction.
    function _stscUSDConvertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        address accountant = ITeller(IVault(stkscUSD).hook()).accountant();
        return
            assets.mulDiv(V_UNIT, IAccountant(accountant).getRateInQuoteSafe(asset()), rounding);
    }

    /// @dev Internal stscUSD conversion function (from stscUSD shares to scUSD) with support for rounding direction.
    function _stscUSDConvertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view returns (uint256) {
        address accountant = ITeller(IVault(stkscUSD).hook()).accountant();
        return
            shares.mulDiv(IAccountant(accountant).getRateInQuoteSafe(asset()), V_UNIT, rounding);
    }
}
