// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {MarketParams} from "./IMorphoBlue.sol";

/// @notice Snapshot of a Morpho Blue market's totals, exactly matching the
///         six-tuple returned by IMorphoBlue.market(id). Passed to
///         IAdaptiveCurveIrm.borrowRateView so the IRM can evaluate the
///         instantaneous borrow rate at the market's current utilization.
struct Market {
    uint128 totalSupplyAssets;
    uint128 totalSupplyShares;
    uint128 totalBorrowAssets;
    uint128 totalBorrowShares;
    uint128 lastUpdate;
    uint128 fee;
}

/// @title IAdaptiveCurveIrm
/// @notice Minimal view-only interface for Morpho Blue's AdaptiveCurveIrm. Used
///         by AaveCarryTradePositionManager.getRateInfo to derive the Morpho
///         supply rate from the instantaneous borrow rate at the market's
///         current utilization (matches Morpho's UI "Instantaneous Supply Rate").
interface IAdaptiveCurveIrm {
    /// @notice Per-second borrow rate (in WAD = 1e18) at the market's current
    ///         utilization. Equivalent to the rate the UI labels
    ///         "Instantaneous". Reverts if called on-chain in a state that
    ///         mutates interest; use the `...View` variant from read paths.
    function borrowRateView(MarketParams memory marketParams, Market memory market)
        external
        view
        returns (uint256);

    /// @notice Per-second borrow rate (WAD) at the 90% target utilization. The
    ///         adaptive curve oscillates around this toward the instantaneous
    ///         rate. Retained for callers that want the smoothed long-run rate.
    function rateAtTarget(bytes32 id) external view returns (int256);
}
