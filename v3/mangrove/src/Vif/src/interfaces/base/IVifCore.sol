// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title IVifCore
/// @notice Core interface enabling flash accounting via `lock`, with final settlement
/// by `settle`/`take`. Debts and credits are tracked per token (including native at
/// `address(0)`), not per user.
/// @dev `lock` calls back the caller via `ILockCallback.lockCallback(bytes)` with
/// the provided data. Within the callback, callers may perform market/limit orders,
/// claim/retract offers, and prepare settlements/takes. These actions do not transfer
/// tokens immediately; they write transient debts/credits. At the end of the `lock`
/// execution, implementations verify that no net debt/credit remains; otherwise the
/// transaction reverts. If balanced, the callback's return data is returned.
interface IVifCore {
  /// @notice Enter a flash-accounting section and invoke the caller's lock callback.
  /// @dev Caller must implement `ILockCallback`. Inside the callback, actions that
  /// modify state accrue transient debts/credits instead of moving tokens. The call
  /// reverts if, after the callback, global per-token balances are not net zero.
  /// @param data Arbitrary data forwarded to the caller's `lockCallback(bytes)`.
  /// @return result The return data from the callback if accounting is balanced.
  function lock(bytes calldata data) external returns (bytes memory result);

  /// @notice Settle outstanding debt by pulling or receiving funds into the core.
  /// @dev Applies to global per-token debt/credit. For native token use `address(0)`
  /// and attach `msg.value` as needed. Access control and accounting rules are
  /// implementation-specific.
  /// @param token The token address (or `address(0)` for native) to settle.
  /// @param amount The amount to settle against current debt.
  /// @param from The address to pull funds from (ignored for native with `msg.value`).
  function settle(address token, uint256 amount, address from) external payable;

  /// @notice Realize credit by sending funds from the core to a receiver.
  /// @dev Applies to global per-token debt/credit. For native token use `address(0)`.
  /// @param token The token address (or `address(0)` for native) to send.
  /// @param amount The amount to send to `receiver` against current credit.
  /// @param receiver The address receiving the funds.
  function take(address token, uint256 amount, address receiver) external;

  /// @notice Clear dust credit for a token.
  /// @dev For native token use `address(0)`.
  /// @dev All cleared funds will be donated as protocol fees.
  /// @dev This function is meant to be called on dust credits that would be otherwise too expensive to transfer.
  /// @dev The exact amount to be cleared has to be determined by the caller to ensure not creating debt or not clearing enough.
  /// @param token The token address (or `address(0)` for native) to clear.
  /// @param amount The amount to clear.
  function clear(address token, uint256 amount) external;
}
