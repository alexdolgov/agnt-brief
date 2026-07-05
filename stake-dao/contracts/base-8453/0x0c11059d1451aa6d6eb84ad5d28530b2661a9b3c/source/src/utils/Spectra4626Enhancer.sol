// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./Spectra4626Wrapper.sol";

/// @dev This contract extends an ERC4626 vault with support for a rewards proxy.
///      It is intended to be deployed on top of an ERC4626-compliant vault, in order to facilitate
///      the claiming of its external rewards if any.
///      The contract is instantiated with the vault address, the decimals offset and the initial authority.
contract Spectra4626Enhancer is Spectra4626Wrapper {
    using SafeERC20 for IERC20;

    error NotEnoughAssets();
    error NotEnoughVaultShares();
    error TooMuchVaultShares();

    /// @custom:storage-location erc7201:spectra.storage.Spectra4626Rewards
    struct Spectra4626EnhancerStorage {
        uint8 _decimalsOffset;
    }

    // keccak256(abi.encode(uint256(keccak256("spectra.storage.Spectra4626Enhancer")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant Spectra4626EnhancerStorageLocation =
        0x5648f88bd4e716b932167ae8ea6c71eee047ae6df476a4d21977656f850f8b00;

    function _getSpectra4626EnhancerStorage()
        private
        pure
        returns (Spectra4626EnhancerStorage storage $)
    {
        assembly {
            $.slot := Spectra4626EnhancerStorageLocation
        }
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(
        address vaultShare_,
        uint8 decimalsOffset_,
        address initialAuthority_
    ) external initializer {
        address asset_ = IERC4626(vaultShare_).asset();
        __Spectra4626Wrapper_init(asset_, vaultShare_, initialAuthority_);
        __Spectra4626Enhancer_init_unchained(decimalsOffset_);
        IERC20(asset_).forceApprove(vaultShare_, type(uint256).max);
    }

    function __Spectra4626Enhancer_init_unchained(uint8 decimalsOffset_) internal onlyInitializing {
        Spectra4626EnhancerStorage storage $ = _getSpectra4626EnhancerStorage();
        $._decimalsOffset = decimalsOffset_;
    }

    /// @dev See {IERC4626-convertToShares}.
    function convertToShares(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _previewWrap(IERC4626(vaultShare()).convertToShares(assets), Math.Rounding.Floor);
    }

    /// @dev See {IERC4626-convertToAssets}.
    function convertToAssets(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return IERC4626(vaultShare()).convertToAssets(_previewUnwrap(shares, Math.Rounding.Floor));
    }

    /// @dev See {IERC4626-maxDeposit}.
    function maxDeposit(
        address receiver
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return IERC4626(vaultShare()).maxDeposit(receiver);
    }

    /// @dev See {IERC4626-maxMint}.
    function maxMint(
        address receiver
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return convertToShares(maxDeposit(receiver));
    }

    /// @dev See {IERC4626-maxWithdraw}.
    function maxWithdraw(
        address owner
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return
            Math.min(
                previewRedeem(balanceOf(owner)),
                IERC4626(vaultShare()).maxWithdraw(address(this))
            );
    }

    /// @dev See {IERC4626-maxRedeem}.
    function maxRedeem(
        address owner
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return
            Math.min(
                balanceOf(owner),
                _previewWrap(IERC4626(vaultShare()).maxRedeem(address(this)), Math.Rounding.Floor)
            );
    }

    /// @dev See {IERC4626-previewDeposit}.
    function previewDeposit(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _previewWrap(IERC4626(vaultShare()).previewDeposit(assets), Math.Rounding.Floor);
    }

    /// @dev See {IERC4626-previewMint}.
    function previewMint(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return IERC4626(vaultShare()).previewMint(_previewUnwrap(shares, Math.Rounding.Ceil));
    }

    /// @dev See {IERC4626-previewWithdraw}.
    function previewWithdraw(
        uint256 assets
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return _previewWrap(IERC4626(vaultShare()).previewWithdraw(assets), Math.Rounding.Ceil);
    }

    /// @dev See {IERC4626-previewRedeem}.
    function previewRedeem(
        uint256 shares
    ) public view override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        return IERC4626(vaultShare()).previewRedeem(_previewUnwrap(shares, Math.Rounding.Floor));
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

        uint256 vaultShares = IERC4626(vaultShare()).previewDeposit(assets);
        uint256 shares = _previewWrap(vaultShares, Math.Rounding.Floor);

        _deposit(_msgSender(), receiver, assets, shares);
        uint256 actualVaultShares = IERC4626(vaultShare()).deposit(assets, address(this));

        if (actualVaultShares < vaultShares) {
            revert NotEnoughVaultShares();
        }

        return shares;
    }

    /// @dev See {IERC4626-mint}.
    function mint(
        uint256 shares,
        address receiver
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 maxShares = maxMint(receiver);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxMint(receiver, shares, maxShares);
        }

        uint256 vaultShares = _previewUnwrap(shares, Math.Rounding.Ceil);
        uint256 assets = IERC4626(vaultShare()).previewMint(vaultShares);

        _deposit(_msgSender(), receiver, assets, shares);
        uint256 actualVaultShares = IERC4626(vaultShare()).deposit(assets, address(this));

        if (actualVaultShares < vaultShares) {
            revert NotEnoughVaultShares();
        }

        return assets;
    }

    /// @dev See {IERC4626-withdraw}.
    function withdraw(
        uint256 assets,
        address receiver,
        address owner
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 maxAssets = maxWithdraw(owner);
        if (assets > maxAssets) {
            revert ERC4626ExceededMaxWithdraw(owner, assets, maxAssets);
        }

        uint256 vaultShares = IERC4626(vaultShare()).previewWithdraw(assets);
        uint256 shares = _previewWrap(vaultShares, Math.Rounding.Ceil);

        address caller = _msgSender();
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }
        _burn(owner, shares);

        uint256 actualVaultShares = IERC4626(vaultShare()).withdraw(
            assets,
            receiver,
            address(this)
        );
        if (actualVaultShares > vaultShares) {
            revert TooMuchVaultShares();
        }

        emit Withdraw(caller, receiver, owner, assets, shares);

        return shares;
    }

    /// @dev See {IERC4626-redeem}.
    function redeem(
        uint256 shares,
        address receiver,
        address owner
    ) public override(IERC4626, ERC4626Upgradeable) returns (uint256) {
        uint256 maxShares = maxRedeem(owner);
        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(owner, shares, maxShares);
        }

        uint256 vaultShares = _previewUnwrap(shares, Math.Rounding.Floor);
        uint256 assets = IERC4626(vaultShare()).previewRedeem(vaultShares);

        address caller = _msgSender();
        if (caller != owner) {
            _spendAllowance(owner, caller, shares);
        }
        _burn(owner, shares);

        uint256 actualAssets = IERC4626(vaultShare()).redeem(vaultShares, receiver, address(this));
        if (actualAssets < assets) {
            revert NotEnoughAssets();
        }

        emit Withdraw(caller, receiver, owner, actualAssets, shares);

        return assets;
    }

    function _decimalsOffset() internal view override returns (uint8) {
        Spectra4626EnhancerStorage storage $ = _getSpectra4626EnhancerStorage();
        return $._decimalsOffset;
    }
}
