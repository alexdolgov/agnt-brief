// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {ISpectra4626Wrapper} from "./interfaces/ISpectra4626Wrapper.sol";
import {IERC20Metadata, IERC20} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";

/// @dev This contract implements a wrapper to facilitate compliance of an interest-bearing vault with the ERC-4626 standard,
/// making it compatible for deploying a Spectra Principal Token.
abstract contract Spectra4626Wrapper is ERC4626Upgradeable, ISpectra4626Wrapper {
    using Math for uint256;
    using SafeERC20 for IERC20;

    address private _vault;

    /// @dev Set the vault contract to wrap.
    function __Spectra4626Wrapper_init(address asset_, address vault_) internal onlyInitializing {
        _vault = vault_;
        __ERC4626_init(IERC20(asset_));
        __ERC20_init(_vaultName(), _vaultSymbol());
    }

    /// @dev See {IERC4626-vault}.
    function vault() public view virtual returns (address) {
        return _vault;
    }

    /// @dev See {IERC4626-totalVaultShares}.
    function totalVaultShares() public view virtual returns (uint256) {
        return IERC20(_vault).balanceOf(address(this));
    }

    /// @dev See {IERC20Metadata-decimals}.
    function decimals()
        public
        view
        virtual
        override(IERC20Metadata, ERC4626Upgradeable)
        returns (uint8)
    {
        return IERC20Metadata(_vault).decimals() + _decimalsOffset();
    }

    /// @dev See {ISpectra4626Wrapper-previewWrap}.
    function previewWrap(uint256 vaultShares) public view virtual returns (uint256) {
        return _previewWrap(vaultShares, Math.Rounding.Floor);
    }

    /// @dev See {ISpectra4626Wrapper-previewUnwrap}.
    function previewUnwrap(uint256 shares) public view virtual returns (uint256) {
        return _previewUnwrap(shares, Math.Rounding.Floor);
    }

    /// @dev See {ISpectra4626Wrapper-wrap}.
    function wrap(uint256 vaultShares, address receiver) public virtual returns (uint256) {
        address caller = _msgSender();
        uint256 sharesToMint = previewWrap(vaultShares);
        IERC20(vault()).safeTransferFrom(caller, address(this), vaultShares);
        _mint(receiver, sharesToMint);
        emit Wrap(caller, receiver, vaultShares, sharesToMint);
        return sharesToMint;
    }

    /// @dev See {ISpectra4626Wrapper-wrap}.
    function wrap(
        uint256 vaultShares,
        address receiver,
        uint256 minShares
    ) public virtual returns (uint256) {
        uint256 sharesToMint = wrap(vaultShares, receiver);
        if (sharesToMint < minShares) {
            revert ERC5143SlippageProtectionFailed();
        }
        return sharesToMint;
    }

    ///  @dev See {ISpectra4626Wrapper-unwrap}.
    function unwrap(
        uint256 shares,
        address receiver,
        address owner
    ) public virtual returns (uint256) {
        address caller = _msgSender();
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }
        uint256 vaultSharesToTransfer = previewUnwrap(shares);
        _burn(owner, shares);
        IERC20(vault()).safeTransfer(receiver, vaultSharesToTransfer);
        emit Unwrap(caller, receiver, owner, shares, vaultSharesToTransfer);
        return vaultSharesToTransfer;
    }

    ///  @dev See {ISpectra4626Wrapper-unwrap}.
    function unwrap(
        uint256 shares,
        address receiver,
        address owner,
        uint256 minVaultShares
    ) public virtual returns (uint256) {
        uint256 vaultSharesToTransfer = unwrap(shares, receiver, owner);
        if (vaultSharesToTransfer < minVaultShares) {
            revert ERC5143SlippageProtectionFailed();
        }
        return vaultSharesToTransfer;
    }

    /// @dev Internal conversion function (from vault shares to wrapper shares) with support for rounding direction.
    function _previewWrap(
        uint256 vaultShares,
        Math.Rounding rounding
    ) internal view virtual returns (uint256) {
        return
            vaultShares.mulDiv(
                totalSupply() + 10 ** _decimalsOffset(),
                totalVaultShares() + 1,
                rounding
            );
    }

    /// @dev Internal conversion function (from wrapper shares to vault shares) with support for rounding direction.
    function _previewUnwrap(
        uint256 shares,
        Math.Rounding rounding
    ) internal view virtual returns (uint256) {
        return
            shares.mulDiv(
                totalVaultShares() + 1,
                totalSupply() + 10 ** _decimalsOffset(),
                rounding
            );
    }

    /// @dev Internal getter to build wrapper name
    function _vaultName() internal view virtual returns (string memory vaultName) {
        vaultName = string.concat("Spectra ERC4626 Wrapper: ", IERC20Metadata(_vault).name());
    }

    /// @dev Internal getter to build wrapper symbol
    function _vaultSymbol() internal view virtual returns (string memory vaultSymbol) {
        vaultSymbol = string.concat("sw-", IERC20Metadata(_vault).symbol());
    }
}
