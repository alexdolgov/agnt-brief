// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

abstract contract ERC4626Fees is ERC4626Upgradeable {
    using Math for uint256;

    uint256 internal constant _BASIS_POINT_SCALE = 1e4;

    // === Overrides ===

    /// @dev Preview taking an entry fee on deposit. See {IERC4626-previewDeposit}.
    function previewDeposit(uint256 assets) public view virtual override returns (uint256) {
        uint256 feeAssets = _feeOnRaw(_msgSender(), assets, _entryFeeBasisPoints());
        return super.previewDeposit(assets - feeAssets);
    }

    /// @dev Preview adding an entry fee on mint. See {IERC4626-previewMint}.
    function previewMint(uint256 shares) public view virtual override returns (uint256) {
        uint256 feeShares = _feeOnResult(_msgSender(), shares, _entryFeeBasisPoints());
        return super.previewMint(shares + feeShares);
    }

    /// @dev Preview adding an exit fee on withdraw. See {IERC4626-previewWithdraw}.
    function previewWithdraw(uint256 assets) public view virtual override returns (uint256) {
        uint256 feeAssets = _feeOnResult(_msgSender(), assets, _exitFeeBasisPoints());
        return super.previewWithdraw(assets + feeAssets);
    }

    /// @dev Preview taking an exit fee on redeem. See {IERC4626-previewRedeem}.
    function previewRedeem(uint256 shares) public view virtual override returns (uint256) {
        uint256 feeShares = _feeOnRaw(_msgSender(), shares, _exitFeeBasisPoints());
        return super.previewRedeem(shares - feeShares);
    }

    /// @dev Send entry fee to {_entryFeeRecipient}. See {IERC4626-_deposit}.
    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal virtual override {
        uint256 feeAssets;
        uint256 feeShares;
        if (previewDeposit(assets) == shares) {
            feeAssets = _feeOnRaw(caller, assets, _entryFeeBasisPoints());
            feeShares = super.previewDeposit(assets) - shares;
        } else {
            feeShares = _feeOnResult(caller, shares, _entryFeeBasisPoints());
            feeAssets = assets - super.previewMint(shares);
        }

        address recipient = _entryFeeRecipient();

        super._deposit(caller, receiver, assets, shares);

        if (feeShares > 0 && recipient != address(this)) {
            _mint(recipient, feeShares);
            emit Deposit(recipient, recipient, feeAssets, feeShares);
        }
    }

    /// @dev Send exit fee to {_exitFeeRecipient}. See {IERC4626-_deposit}.
    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    ) internal virtual override {
        uint256 feeAssets;
        uint256 feeShares;
        if (previewWithdraw(assets) == shares) {
            feeAssets = _feeOnResult(caller, assets, _exitFeeBasisPoints());
            feeShares = shares - super.previewWithdraw(assets);
        } else {
            feeShares = _feeOnRaw(caller, shares, _exitFeeBasisPoints());
            feeAssets = super.previewRedeem(shares) - assets;
        }

        address recipient = _exitFeeRecipient();
        
        super._withdraw(caller, receiver, owner, assets, shares);

        if (feeShares > 0 && recipient != address(this)) {
            _mint(recipient, feeShares);
            emit Deposit(recipient, recipient, feeAssets, feeShares);
        }
    }

    // === Fee configuration ===

    function _entryFeeBasisPoints() internal view virtual returns (uint256);

    function _exitFeeBasisPoints() internal view virtual returns (uint256);

    function _entryFeeRecipient() internal view virtual returns (address);

    function _exitFeeRecipient() internal view virtual returns (address);

    // === Fee operations ===

    function _feeOnRaw(address caller, uint256 assets, uint256 feeBasisPoints) private view returns (uint256) {
        if (caller == _entryFeeRecipient() || caller == _exitFeeRecipient()) {
            return 0;
        }
        return assets.mulDiv(feeBasisPoints, _BASIS_POINT_SCALE, Math.Rounding.Ceil);
    }

    function _feeOnResult(address caller, uint256 assets, uint256 feeBasisPoints) private view returns (uint256) {
        if (caller == _entryFeeRecipient() || caller == _exitFeeRecipient()) {
            return 0;
        }
        return assets.mulDiv(feeBasisPoints, _BASIS_POINT_SCALE - feeBasisPoints, Math.Rounding.Ceil);
    }
}