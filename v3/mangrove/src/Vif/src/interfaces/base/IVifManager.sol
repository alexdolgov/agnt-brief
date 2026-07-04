// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

/// @title IVifManager
/// @notice Manage markets, fees, and provisions. A market is uniquely defined by
/// `(outboundToken, outboundUnits, inboundToken, inboundUnits)` and its id is
/// `keccak256(abi.encode(outboundToken, outboundUnits, inboundToken, inboundUnits))`.
/// A full order book is modeled as two markets (ask and bid). Prefer powers-of-10
/// for unit choices to ease debugging.
/// @dev Taker fees are paid in inbound tokens and accrue to the owner, claimable
/// up to a maximum of ~6.5% (since 100% = 1e6 with 16-bit scale). `provision`
/// is the minimum per-offer lock (provision units) when expiry is set. Inactive markets do
/// not allow new orders or market orders; existing orders can still be claimed
/// and deleted.
interface IVifManager {
  /// @notice Open a new market.
  /// @dev Id is `keccak256(abi.encode(outboundToken, outboundUnits, inboundToken, inboundUnits, tickSpacing))`.
  /// Units are best set to powers of 10 for readability.
  /// Fees are scaled on 16 bits where 100% = 1e6.
  /// @param outboundToken The outbound token address.
  /// @param inboundToken The inbound token address.
  /// @param outboundUnits Denomination for outbound amounts (prefer power of 10).
  /// @param inboundUnits Denomination for inbound amounts (prefer power of 10).
  /// @param tickSpacing The tick spacing for the market.
  /// @param fees Initial taker fee parameter (scaled; max ~6.5%).
  /// @param minOutboundUnits Minimum normalized outbound units per offer.
  /// @return marketId The derived market id.
  function openMarket(
    address outboundToken,
    address inboundToken,
    uint64 outboundUnits,
    uint64 inboundUnits,
    uint16 tickSpacing,
    uint16 fees,
    uint32 minOutboundUnits
  ) external returns (bytes32 marketId);

  /// @notice Update taker fees for a market (owner-only).
  /// @dev Fees are in 16-bit scale where 100% = 1e6 (max ~6.5%).
  /// @param marketId The market id.
  /// @param fees The new fee parameter.
  function setFees(bytes32 marketId, uint16 fees) external;

  /// @notice Update the minimum outbound units for a market (owner-only).
  /// @param marketId The market id.
  /// @param minOutboundUnits The new minimum normalized outbound units.
  function setMinOutboundUnits(bytes32 marketId, uint32 minOutboundUnits) external;
  /// @notice Toggle market active status (owner-only).
  /// @dev When inactive, no new orders or market orders; claims/deletions allowed.
  /// @param marketId The market id.
  /// @param active The new status.
  function setActive(bytes32 marketId, bool active) external;

  /// @notice Set the global minimum per-offer provision (provision units) when expiry is used (owner-only).
  /// @param provision The provision floor in provision units.
  function setProvisions(uint24 provision) external;

  /// @notice Withdraw accrued taker fees to a receiver (owner-only).
  /// @param token The fee token to withdraw.
  /// @param amount The amount to withdraw.
  /// @param receiver The recipient of the withdrawn fees.
  function withdrawFees(address token, uint256 amount, address receiver) external;

  /// @notice Set the paused state of the contract (owner-only).
  /// @param paused The new paused state.
  function setPaused(bool paused) external;

  /// @notice Set the blacklisted state of a user (owner-only).
  /// @param user The user to set the blacklisted state for.
  /// @param blacklisted The new blacklisted state.
  function setBlacklisted(address user, bool blacklisted) external;
}
