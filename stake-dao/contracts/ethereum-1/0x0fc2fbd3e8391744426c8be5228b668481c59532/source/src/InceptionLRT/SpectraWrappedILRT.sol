// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Spectra4626Wrapper, ERC4626Upgradeable} from "../utils/Spectra4626Wrapper.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IWETH} from "./interfaces/IWETH.sol"; 
import {IWSTETH} from "./interfaces/IWSTETH.sol"; 

/// @title SpectraWrappedILRT - Spectra ERC4626 wrapper for Inception Vault
/// @notice This contract is an adapter for the Inception Vault with the ERC4626 interface
/// @notice The contract is instantiated with the LIDO wsteth address, Inception Vault address,
//          the Inception 4626 Vault contract
contract SpectraWrappedILRT is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    address public vault;
    address public wsteth;
    address public steth;

    error NotImplemented();
    error NotEnoughVaultShares();

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _weth,
        address _wsteth,
        address _iToken,
        address _vault,
        address _initialAuthority
    ) external initializer {
        __Spectra4626Wrapper_init(_weth, _iToken, _initialAuthority);
        IERC20(_wsteth).forceApprove(_vault, type(uint256).max);
        vault = _vault;
        wsteth = _wsteth;
        steth = IWSTETH(_wsteth).stETH();
    }

    // required to unwrap ETH during deposit process
    receive() external payable {}
    fallback() external payable {}

    /// @dev See {IERC4626-maxMint}.
    function maxMint(
        address receiver
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /// @dev See {IERC4626-maxWithdraw}.
    function maxWithdraw(
        address owner
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /// @dev See {IERC4626-maxRedeem}.
    function maxRedeem(
        address owner
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return balanceOf(owner);
    }

    /// @dev See {IERC4626-convertToShares}.
    function convertToShares(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 stethFromWeth = _stETHConvertToShares(assets);
        uint256 wstethFromSteth = _wstETHConvertToShares(stethFromWeth);
        uint256 vaultFromWsteth = _vaultConvertToShares(wstethFromSteth);
        return _previewWrap(vaultFromWsteth, Math.Rounding.Floor);
    }

    /// @dev See {IERC4626-convertToAssets}.
    function convertToAssets(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 vaultFromS = _previewUnwrap(shares, Math.Rounding.Floor);
        uint256 wstethFromVault = _vaultConvertToAssets(vaultFromS);
        uint256 stethFromWsteth = _wstETHConvertToAssets(wstethFromVault);
        return _stETHConvertToAssets(stethFromWsteth);
    }


    /// @dev See {IERC4626-previewDeposit}.
    function previewDeposit(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 assetsToWsteth = _wstETHConvertToShares(_stETHConvertToShares(assets));
        return _previewWrap(IERC4626(vault).previewDeposit(assetsToWsteth), Math.Rounding.Floor);
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
        uint256 wstETHAmount = IERC4626(vault).previewRedeem(_previewUnwrap(shares, Math.Rounding.Floor));
        uint256 wETHAmount =  _stETHConvertToAssets(_wstETHConvertToAssets(wstETHAmount));
        return wETHAmount;
    }

    /// @dev See {IERC4626-deposit}.
    function deposit(
        uint256 assets,
        address receiver
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 maxAssets = maxDeposit(receiver);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(receiver, assets, maxAssets);
        }

        uint256 shares = previewDeposit(assets);

        _deposit(_msgSender(), receiver, assets, shares);
        
        uint256 wstETHBefore = IERC20(wsteth).balanceOf(address(this));
        _wstethDeposit(assets);
        uint256 wstethAmount = IERC20(wsteth).balanceOf(address(this)) - wstETHBefore;

        uint256 actualVaultShares = IERC4626(vault).deposit(wstethAmount, address(this));

        if (actualVaultShares < shares) {
            revert NotEnoughVaultShares();
        }

        return shares;
    }

    /// @dev See {IERC4626-mint}.
    function mint(
        uint256 shares,
        address receiver
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
                        INTERNALS
    //////////////////////////////////////////////////////////////*/

    /// @dev Internal function to mint wstETH shares with WETH.
    function _wstethDeposit(uint256 amount) internal {
        if (amount != 0) {
            // Withdraw raw ETH from WETH
            IWETH(asset()).withdraw(amount);

            // Transfer raw ETH to the wstETH contract
            (bool success, ) = payable(wsteth).call{value: amount}("");
            require(success, "ETH transfer failed");
        }
    }

    // inception vault conversions

    /// @dev Internal Vault conversion function (from assets to Vault shares).
    function _vaultConvertToShares(
        uint256 assets
    ) internal view returns (uint256) {
        return IERC4626(vault).convertToShares(assets);
    }

    /// @dev Internal Vault conversion function (from Vault shares to assets).
    function _vaultConvertToAssets(
        uint256 shares
    ) internal view returns (uint256) {
        return IERC4626(vault).convertToShares(shares);
    }

    //wstETH conversions

    /// @dev Internal wstETH conversion function (from stETH to wstETH shares) with support for rounding direction.
    function _wstETHConvertToShares(
        uint256 assets
    ) internal view returns (uint256) {
        return IWSTETH(wsteth).getWstETHByStETH(assets);
    }

    /// @dev Internal wstETH conversion function (from wstETH shares to sETH) with support for rounding direction.
    function _wstETHConvertToAssets(
        uint256 shares
    ) internal view returns (uint256) {
        return IWSTETH(wsteth).getStETHByWstETH(shares);
    }

    //stETH conversions

    /// @dev Internal stETH conversion function (from wETH to stETH shares) with support for rounding direction.
    function _stETHConvertToShares(
        uint256 assets
    ) internal view returns (uint256) {
        return assets; // 1 stETH = 1 wETH
    }

    /// @dev Internal stETH conversion function (from stETH shares to wETH) with support for rounding direction.
    function _stETHConvertToAssets(
        uint256 shares
    ) internal view returns (uint256) {
        return shares; // 1 stETH = 1 wETH
    }
}
