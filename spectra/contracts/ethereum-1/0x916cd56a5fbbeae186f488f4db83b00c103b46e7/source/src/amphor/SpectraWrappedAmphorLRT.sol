// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {Spectra4626Wrapper, ERC4626Upgradeable} from "../utils/Spectra4626Wrapper.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ILRTVault} from "./interfaces/ILRTVault.sol";

/// @title SpectraWrappedAmphorLRT - Spectra ERC4626 wrapper for Amphor Symbiotic LRT Vault (v1)
/// @notice This contract wraps the amphrLRT Vault with the ERC4626 interface
/// @notice The contract is instantiated with the amphrLRT address and
///         the initial Authority
contract SpectraWrappedAmphorLRT is Spectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    error NotImplemented();

    constructor() {
        _disableInitializers();
    }

    function initialize(address _amphrLRT, address _initialAuthority) external initializer {
        address _asset = ILRTVault(_amphrLRT).asset();
        __Spectra4626Wrapper_init(_asset, _amphrLRT, _initialAuthority);
        IERC20(_asset).forceApprove(_amphrLRT, type(uint256).max);
    }

    /*//////////////////////////////////////////////////////////////
                        ERC4626 GETTERS
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-totalAssets}.
    function totalAssets() public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _convertToAssets(totalSupply(), Math.Rounding.Floor);
    }

    /// @dev See {IERC4626-maxDeposit}.
    function maxDeposit(
        address
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return ILRTVault(vaultShare()).maxDeposit(address(0));
    }

    /// @dev See {IERC4626-maxMint}.
    function maxMint(address) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _previewWrap(maxDeposit(address(0)), Math.Rounding.Floor);
    }

    /// @dev See {IERC4626-maxWithdraw}.
    function maxWithdraw(
        address
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /// @dev See {IERC4626-maxRedeem}.
    function maxRedeem(
        address
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return 0;
    }

    /*//////////////////////////////////////////////////////////////
                     ERC4626 PUBLIC OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev See {IERC4626-deposit}.
    function deposit(
        uint256 assets,
        address receiver
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 shares = _previewWrap(assets, Math.Rounding.Floor);
        _deposit(_msgSender(), receiver, assets, shares);
        return shares;
    }

    /// @dev See {IERC4626-mint}.
    function mint(
        uint256 shares,
        address receiver
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 assets = _previewUnwrap(shares, Math.Rounding.Ceil);
        _deposit(_msgSender(), receiver, assets, shares);
        return assets;
    }

    /// @dev See {IERC4626-withdraw}.
    function withdraw(
        uint256,
        address,
        address
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /// @dev See {IERC4626-redeem}.
    function redeem(
        uint256,
        address,
        address
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        revert NotImplemented();
    }

    /*//////////////////////////////////////////////////////////////
                    ERC4626 INTERNAL OVERRIDES
    //////////////////////////////////////////////////////////////*/

    /// @dev Deposit/mint common workflow.
    function _deposit(
        address caller,
        address receiver,
        uint256 assets,
        uint256 shares
    ) internal override(ERC4626Upgradeable) {
        super._deposit(caller, receiver, assets, shares);
        _amphorDeposit(assets);
    }

    /// @dev Internal conversion function (from assets to shares) with support for rounding direction.
    /// @param assets The amount of assets to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of shares.
    function _convertToShares(
        uint256 assets,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        if (assets == 0) {
            return 0;
        }
        // 1:1 ratio between asset and amphrLRT
        return _previewWrap(assets, rounding);
    }

    /// @dev Internal conversion function (from shares to assets) with support for rounding direction.
    /// @param shares The amount of shares to convert.
    /// @param rounding The rounding direction to use.
    /// @return The amount of assets.
    function _convertToAssets(
        uint256 shares,
        Math.Rounding rounding
    ) internal view override(ERC4626Upgradeable) returns (uint256) {
        if (shares == 0) {
            return 0;
        }
        // 1:1 ratio between amphrLRT and asset
        return _previewUnwrap(shares, rounding);
    }

    /*//////////////////////////////////////////////////////////////
                        INTERNALS - AMPHOR PROTOCOL
    //////////////////////////////////////////////////////////////*/

    /// @dev Internal function to deposit assets into amphrLRT.
    function _amphorDeposit(uint256 assets) internal {
        if (assets != 0) {
            ILRTVault(vaultShare()).deposit(assets, address(this));
        }
    }
}
