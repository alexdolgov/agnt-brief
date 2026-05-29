// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Spectra4626Wrapper, ERC4626Upgradeable} from "../utils/Spectra4626Wrapper.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IPricer} from "./interfaces/IPricer.sol";

/// @title SpectraWrappedMidasPricer - Implementation of Spectra ERC4626 wrapper for a Midas vault using Pricer
/// @notice This contract wraps a MidasVault with the ERC4626 interface
/// @notice Uses an external Pricer contract for asset/vault token conversions
contract SpectraWrappedMidasPricer is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    // --- V1 storage layout (do not modify) ---
    uint256 private UNDERLYING_DECIMALS;
    address private midasDeposit;
    address private midasRedeem;
    address private mTokenDataFeed;

    // --- V2 storage ---
    address public pricer;
    address public baseAsset;

    error NotImplemented();

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _asset,
        address _midasToken,
        address _midasRedeem,
        address _midasDeposit,
        address _initAuth
    ) external initializer {
        __Spectra4626Wrapper_init(_asset, _midasToken, _initAuth);
        UNDERLYING_DECIMALS = IERC20Metadata(_asset).decimals();
        midasDeposit = _midasDeposit;
        midasRedeem = _midasRedeem;
    }

    function initializeV2(address _pricer, address _baseAsset) external reinitializer(2) {
        pricer = _pricer;
        baseAsset = _baseAsset;
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

    /// @dev See {IERC4626-maxWithdraw}.
    function maxWithdraw(
        address /*owner*/
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /// @dev See {IERC4626-maxRedeem}.
    function maxRedeem(
        address owner
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /// @dev See {IERC4626-previewDeposit}.
    function previewDeposit(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-previewMint}.
    function previewMint(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-previewWithdraw}.
    function previewWithdraw(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-previewRedeem}.
    function previewRedeem(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        if (shares == 0) {
            return 0;
        }
        uint256 vaultSharesAmount = _previewUnwrap(shares, Math.Rounding.Floor);
        return _convertVaultSharesToAssets(vaultSharesAmount);
    }

    /*//////////////////////////////////////////////////////////////
                    ERC4626 PUBLIC OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-deposit}.
    function deposit(
        uint256 /*assets*/,
        address /*receiver*/
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
    function _convertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        uint256 vaultSharesAmount = _convertAssetsToVaultShares(assets);
        return _previewWrap(vaultSharesAmount, rounding);
    }

    /// @dev Internal conversion function (from shares to assets) with support for rounding direction.
    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        uint256 vaultSharesAmount = _previewUnwrap(shares, rounding);
        return _convertVaultSharesToAssets(vaultSharesAmount);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNALS
    //////////////////////////////////////////////////////////////*/

    /// @dev Converts base asset amount to vault token (mToken) amount via Pricer.
    function _convertAssetsToVaultShares(uint256 _amount) internal view returns (uint256) {
        return IPricer(pricer).getVaultTokenAmount(baseAsset, _amount);
    }

    /// @dev Converts vault token (mToken) amount to base asset amount via Pricer.
    function _convertVaultSharesToAssets(uint256 _amount) internal view returns (uint256) {
        return IPricer(pricer).getAssetAmount(baseAsset, _amount);
    }
}
