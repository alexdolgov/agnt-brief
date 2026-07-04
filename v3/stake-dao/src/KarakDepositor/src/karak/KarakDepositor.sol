// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.20;

import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IDepositor} from "../utils/interfaces/IDepositor.sol";
import {IVaultSupervisor, IVault} from "./interfaces/IVaultSupervisor.sol";

/// @dev This contracts implemenets custom logic for deposits into Karak protocol.
contract KarakDepositor is IDepositor {
    using SafeERC20 for IERC20;

    address immutable asset;
    address immutable karakVault;
    address immutable vaultSupervisor;

    constructor(address _asset, address _karakVault, address _vaultSupervisor) {
        asset = _asset;
        karakVault = _karakVault;
        vaultSupervisor = _vaultSupervisor;
        IERC20(_asset).forceApprove(_karakVault, type(uint256).max);
    }

    /// @dev See {IDepositor-vaultShare}.
    function vaultShare() external view returns (address) {
        return asset;
    }

    /// @dev See {IDepositor-tokenOut}.
    function tokenOut() external view returns (address) {
        return karakVault;
    }

    /// @dev See {IDepositor-previewWrap}.
    function previewWrap(uint256 inputShares) external view returns (uint256) {
        return IVault(karakVault).previewDeposit(inputShares);
    }

    /// @dev See {IDepositor-wrap}.
    function wrap(uint256 inputShares, address receiver) external returns (uint256 shares) {
        shares = wrap(inputShares, receiver, 0);
    }

    /// @dev See {IDepositor-wrap}.
    function wrap(
        uint256 inputShares,
        address receiver,
        uint256 minShares
    ) public returns (uint256 shares) {
        IERC20(asset).safeTransferFrom(msg.sender, address(this), inputShares);
        shares = IVaultSupervisor(vaultSupervisor).deposit(karakVault, inputShares, minShares);
        IVaultSupervisor(vaultSupervisor).gimmieShares(IVault(karakVault), shares);
        IERC20(karakVault).safeTransfer(receiver, shares);
    }
}
