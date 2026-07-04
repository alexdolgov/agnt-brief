// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Spectra4626Wrapper, ERC4626Upgradeable} from "../utils/Spectra4626Wrapper.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IVault} from "./interfaces/IVault.sol";

/// @title SpectraWrappedXUSD - Implementation of Spectra ERC4626 wrapper for a XUSD
/// @notice This contract wraps a XUSD with the ERC4626 interface
/// @notice The contract is instantiated with the vault address, the Underlying address
/// @notice and the initial authority.
contract SpectraWrappedXUSD is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    uint256 private PLACEHOLDER_UINT = 1;

    error NotImplemented();

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _asset,
        address _xusd,
        address _initAuth
    ) external initializer {
        __Spectra4626Wrapper_init(_asset, _xusd, _initAuth);  
    }

    /*//////////////////////////////////////////////////////////////
                        ERC4626 GETTERS
    //////////////////////////////////////////////////////////////*/

    /** @dev See {IERC4626-maxDeposit}. */
    function maxDeposit(
        address
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /** @dev See {IERC4626-maxMint}. */
    function maxMint(address) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
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
        return 0;
    }

    /// @dev See {IERC4626-previewMint}.
    function previewMint(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /// @dev See {IERC4626-previewWithdraw}.
    function previewWithdraw(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /// @dev See {IERC4626-previewRedeem}.
    function previewRedeem(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        if (shares == 0) {
            return 0;
        }
        uint256 vaultSharesAmount = _previewUnwrap(shares, Math.Rounding.Floor);
        
        return _XUSDConvertToAssets(vaultSharesAmount);
    }

    /*//////////////////////////////////////////////////////////////
                    ERC4626 PUBLIC OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-deposit}.
    function deposit(
        uint256 assets,
        address receiver
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-mint}.
    function mint(
        uint256 /*shares*/,
        address /*receiver*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-withdraw}.
    function withdraw(
        uint256 /*assets*/,
        address /*receiver*/,
        address /*owner*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-redeem}.
    function redeem(
        uint256 /*shares*/,
        address /*receiver*/,
        address /*owner*/
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
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
        uint256 vaultSharesAmount = _XUSDConvertToShares(assets);
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
        return _XUSDConvertToAssets(vaultSharesAmount);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNALS
    //////////////////////////////////////////////////////////////*/

    /// @dev Internal XUSD conversion function (from assets to XUSD shares) rounding down.
    function _XUSDConvertToShares(
        uint256 assets
    ) internal view returns (uint256) {
        uint256 currentRound = IVault(vaultShare()).round();
        uint256 assetPerShare = IVault(vaultShare()).roundPricePerShare(currentRound-1);

        require(assetPerShare > PLACEHOLDER_UINT, "Invalid assetPerShare");
        return (assets * (10 ** IVault(vaultShare()).decimals())) / assetPerShare;
    }

    /// @dev Internal XUSD conversion function (from XUSD shares to assets) rounding down.
    function _XUSDConvertToAssets(
        uint256 shares
    ) internal view returns (uint256) {
        uint256 currentRound = IVault(vaultShare()).round();
        uint256 assetPerShare = IVault(vaultShare()).roundPricePerShare(currentRound - 1);

        require(assetPerShare > PLACEHOLDER_UINT, "Invalid assetPerShare");
        return (shares * assetPerShare) / (10 ** IVault(vaultShare()).decimals());
    }
}