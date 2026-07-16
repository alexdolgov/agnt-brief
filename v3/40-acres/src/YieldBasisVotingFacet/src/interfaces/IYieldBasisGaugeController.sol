// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title IYieldBasisGaugeController
 * @dev Interface for YieldBasis GaugeController contract on Ethereum
 * Based on Curve's GaugeController pattern
 * Contract: 0x1Be14811A3a06F6aF4fA64310a636e1Df04c1c21
 *
 * veYB holders vote on gauge weights to direct YB emissions to liquidity pools.
 * Weights update at the start of each epoch week.
 * 10-day cooldown between vote changes per gauge.
 */
interface IYieldBasisGaugeController {
    /// @notice Allocate voting power for changing pool weights
    /// @param gauge_addr Gauge address to vote for
    /// @param user_weight Weight in bps (0-10000, where 10000 = 100%)
    function vote_for_gauge_weights(address gauge_addr, uint256 user_weight) external;

    /// @notice Get current gauge weight
    /// @param gauge Gauge address
    /// @return Current gauge weight
    function get_gauge_weight(address gauge) external view returns (uint256);

    /// @notice Get total weight across all gauges
    /// @return Total weight
    function get_total_weight() external view returns (uint256);

    /// @notice Get user's vote weight for a gauge
    /// @param user User address
    /// @param gauge Gauge address
    /// @return slope Vote slope
    /// @return power Vote power (weight)
    /// @return end Vote lock end time
    function vote_user_slopes(address user, address gauge) external view returns (
        uint256 slope,
        uint256 power,
        uint256 end
    );

    /// @notice Get user's remaining voting power
    /// @param user User address
    /// @return Used voting power (out of 10000)
    function vote_user_power(address user) external view returns (uint256);

    /// @notice Get timestamp of user's last vote for a gauge
    /// @param user User address
    /// @param gauge Gauge address
    /// @return Timestamp of last vote
    function last_user_vote(address user, address gauge) external view returns (uint256);

    /// @notice Get number of gauges
    /// @return Number of gauges
    function n_gauges() external view returns (uint256);

    /// @notice Get gauge address by index
    /// @param index Gauge index
    /// @return Gauge address
    function gauges(uint256 index) external view returns (address);

    /// @notice Get gauge type
    /// @param gauge Gauge address
    /// @return Gauge type ID
    function gauge_types(address gauge) external view returns (int128);

    /// @notice Check if gauge is registered
    /// @param gauge Gauge address
    /// @return True if gauge exists
    function gauge_exists(address gauge) external view returns (bool);

    /// @notice Checkpoint to fill data for both a specific gauge and total weights
    function checkpoint() external;

    /// @notice Checkpoint for a specific gauge
    /// @param gauge Gauge address
    function checkpoint_gauge(address gauge) external;
}
