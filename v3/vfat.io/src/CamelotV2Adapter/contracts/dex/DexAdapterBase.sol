// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import { SafeTransferLib } from "solmate/utils/SafeTransferLib.sol";
import { IRouterAllowlist } from "contracts/interfaces/IRouterAllowlist.sol";
import { IDexAdapter } from "contracts/dex/IDexAdapter.sol";
import { ISwapRouter } from "contracts/dex/ISwapRouter.sol";
import { SwapStep } from "contracts/dex/SwapTypes.sol";

/// @title DexAdapterBase
/// @notice Shared base for DEX adapters. Adapters in this codebase are
/// pure orchestrators — they decode `step.dexData`, build the target
/// router's calldata, and tell `SwapRouter` what to approve, transfer,
/// or call. They never hold tokens or ETH between (or during) swap
/// steps. `SwapRouter` itself remains `msg.sender` for every external
/// call, which means pool callbacks land on the existing callbacks on
/// `SwapRouter`, FOT accounting matches the pre-split flow, and there
/// is no per-step custody surface that a buggy adapter could leak.
/// @dev Mirrors `contracts/bridges/adapters/BridgeAdapterBase.sol` in
/// spirit (admin + rescue helpers); guardian role is intentionally
/// omitted to match `SwapRouter`'s admin-only governance model.
abstract contract DexAdapterBase is IDexAdapter {
    error NotAdmin();
    error NotSwapRouter();
    error InvalidAddress();

    event AdminUpdated(address oldAdmin, address newAdmin);

    /// @notice Router that dispatches swap steps to this adapter and
    /// holds all custody for the swap.
    ISwapRouter public immutable swapRouter;

    /// @notice Router allowlist shared with `SwapRouter`. Pool/factory-
    /// style adapters read this directly to authorise their factory or
    /// custom deployer checks.
    IRouterAllowlist public immutable allowlist;

    /// @notice Admin authorised to rotate this adapter's admin and
    /// rescue any stuck balances. Adapter swap dispatch itself is
    /// gated by `SwapRouter`'s active-adapter slot, not by this admin.
    address public admin;

    constructor(address admin_, address swapRouter_, address allowlist_) {
        if (admin_ == address(0)) revert InvalidAddress();
        if (swapRouter_ == address(0)) revert InvalidAddress();
        if (allowlist_ == address(0)) revert InvalidAddress();
        admin = admin_;
        swapRouter = ISwapRouter(swapRouter_);
        allowlist = IRouterAllowlist(allowlist_);
    }

    modifier onlyAdmin() {
        if (msg.sender != admin) revert NotAdmin();
        _;
    }

    /// @notice Defensive — adapters are not supposed to hold ETH, but
    /// stay payable so an over-refund from a router (e.g. universal
    /// router excess ETH on a partial swap) doesn't get rejected and
    /// can be swept by admin afterwards.
    receive() external payable { }

    /// @notice External `swap` entry point implementing `IDexAdapter`.
    /// Centralised here so every concrete adapter inherits the
    /// `msg.sender == swapRouter` guard structurally — impossible to
    /// forget per-impl. Without this guard, a reentrant callee invoked
    /// from inside the adapter's own helpers (token transferFrom, V4
    /// hook, malicious router) could call `swap` directly with an
    /// attacker-chosen `SwapStep`, satisfy `_activeAdapter` since this
    /// contract is still the active adapter, and instruct `SwapRouter`
    /// to approve / call / pull against attacker-controlled targets.
    /// Concrete adapters override `_swap` instead.
    function swap(
        SwapStep calldata step,
        uint256 amountIn
    ) external payable override returns (uint256) {
        if (msg.sender != address(swapRouter)) revert NotSwapRouter();
        return _swap(step, amountIn);
    }

    /// @dev Concrete per-DEX implementation. Always invoked via the
    /// guarded `swap` entry point above.
    function _swap(
        SwapStep calldata step,
        uint256 amountIn
    ) internal virtual returns (uint256);

    function setAdmin(
        address newAdmin
    ) external onlyAdmin {
        if (newAdmin == address(0)) revert InvalidAddress();
        emit AdminUpdated(admin, newAdmin);
        admin = newAdmin;
    }

    function rescueTokens(
        address token,
        address to,
        uint256 amount
    ) external virtual onlyAdmin {
        SafeTransferLib.safeTransfer(token, to, amount);
    }

    function rescueETH(
        address to
    ) external virtual onlyAdmin {
        SafeTransferLib.safeTransferETH(to, address(this).balance);
    }

    // ── Internal helpers shared by adapter implementations ────────────────

    /// @dev Pull `amount` of `token` from `SwapRouter` directly into
    /// `recipient` (used for pre-deposit-style routers such as
    /// Velodrome's UniversalRouter with `payerIsUser = false`).
    function _adapterPullTo(
        address token,
        uint256 amount,
        address recipient
    ) internal {
        swapRouter.adapterPull(token, amount, recipient);
    }

    /// @dev Set an ERC20 approval from `SwapRouter` to `spender`. Use
    /// `amount = 0` to revoke. Wraps `swapRouter.adapterApprove`.
    function _adapterApprove(
        address token,
        address spender,
        uint256 amount
    ) internal {
        swapRouter.adapterApprove(token, spender, amount);
    }

    /// @dev Execute an external call from `SwapRouter`'s address.
    function _adapterCall(
        address target,
        uint256 value,
        bytes memory data
    ) internal returns (bytes memory) {
        return swapRouter.adapterCall(target, value, data);
    }

    /// @dev Common router-style swap: `SwapRouter` approves the router,
    /// calls it (with `msg.sender == SwapRouter`), revokes the approval.
    /// Output recipient must be baked into `data` as `address(swapRouter)`.
    function _swapViaRouter(
        address token,
        uint256 amount,
        address router,
        bytes memory data
    ) internal {
        _adapterApprove(token, router, amount);
        _adapterCall(router, 0, data);
        _adapterApprove(token, router, 0);
    }
}
