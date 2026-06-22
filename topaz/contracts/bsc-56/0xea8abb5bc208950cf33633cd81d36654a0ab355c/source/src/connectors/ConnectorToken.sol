// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ConnectorBase, IERC20Like, IWBNBLike} from "./ConnectorBase.sol";

/// @title ConnectorToken
/// @notice Token & native-currency plumbing primitives, delegatecalled by a
///         TopazAccount so `address(this)` is the account and all custody is the
///         account's. Each function is exactly ONE atomic state transition
///         (Doc 0 §4A). The off-chain expander emits these as explicit legs before
///         any leg that needs an allowance, a wrapped balance, or a moved token —
///         no connector does its own ERC20 approve / native wrap anymore.
///
///         Every amount is sentinel-aware: `USE_FULL_BALANCE` means "whatever the
///         account holds right now" (balance-capped), so a leg can act on a prior
///         leg's runtime output without knowing the amount off-chain.
contract ConnectorToken is ConnectorBase {
    struct ApproveParams {
        address token;
        address spender;
        uint256 amount; // or USE_FULL_BALANCE = current balance
    }

    struct TransferParams {
        address token;
        address to;
        uint256 amount; // or USE_FULL_BALANCE = current balance
        bool unwrapWbnb; // WBNB → native BNB before sending
    }

    struct PullParams {
        address token;
        uint256 amount; // pulled from the owner EOA into the account
    }

    event Approved(address indexed account, address indexed token, address indexed spender, uint256 amount);
    event Wrapped(address indexed account, uint256 amount);
    event Unwrapped(address indexed account, uint256 amount);
    event Transferred(address indexed account, address indexed token, address indexed to, uint256 amount);
    event PulledIn(address indexed account, address indexed token, uint256 amount);

    constructor(address _wbnb) ConnectorBase(_wbnb) {}

    /// @dev APPROVE_SPENDER. Approve `spender` to pull `amount` of `token` from the
    ///      account. The spending leg consumes ≤ this, so standing allowance trends
    ///      to zero. ERC20 only (NFT gauge approvals are intrinsic to cl.stake).
    function approve(ApproveParams calldata p) external payable {
        uint256 amt = _resolveAmount(p.token, p.amount);
        IERC20Like(p.token).approve(p.spender, amt);
        emit Approved(address(this), p.token, p.spender, amt);
    }

    /// @dev WRAP_NATIVE. Wrap `amount` of the account's native BNB into WBNB.
    function wrapNative(uint256 amount) external payable {
        uint256 bal = address(this).balance;
        uint256 amt = (amount == USE_FULL_BALANCE || amount > bal) ? bal : amount;
        if (amt == 0) return;
        IWBNBLike(WBNB).deposit{value: amt}();
        emit Wrapped(address(this), amt);
    }

    /// @dev UNWRAP_NATIVE. Unwrap `amount` of the account's WBNB into native BNB
    ///      (which stays in the account as working balance).
    function unwrapNative(uint256 amount) external payable {
        uint256 amt = _resolveAmount(WBNB, amount);
        if (amt == 0) return;
        IWBNBLike(WBNB).withdraw(amt);
        emit Unwrapped(address(this), amt);
    }

    /// @dev TRANSFER_TOKEN. Move `amount` of `token` from the account to `to`.
    ///      Sweeping to the owner EOA is the `to == owner` case; set `unwrapWbnb`
    ///      to deliver native BNB instead of WBNB.
    function transfer(TransferParams calldata p) external payable {
        uint256 amt = _resolveAmount(p.token, p.amount);
        if (amt == 0) return;
        if (p.token == WBNB && p.unwrapWbnb) {
            IWBNBLike(WBNB).withdraw(amt);
            (bool ok,) = p.to.call{value: amt}("");
            if (!ok) revert RefundFailed();
        } else {
            IERC20Like(p.token).transfer(p.to, amt);
        }
        emit Transferred(address(this), p.token, p.to, amt);
    }

    /// @dev PULL_TOKEN. Pull `amount` of `token` from the owner EOA into the
    ///      account (the owner must have approved the account). Lets a non-native
    ///      wallet token fund a deposit/swap atomically inside one batch.
    function pull(PullParams calldata p) external payable {
        IERC20Like(p.token).transferFrom(_owner(), address(this), p.amount);
        emit PulledIn(address(this), p.token, p.amount);
    }
}
