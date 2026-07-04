// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

/// @title IGT3GaugeFactory
/// @notice Interface for the factory contract that creates GT3 gauge instances
interface IGT3GaugeFactory {
    /// @notice Initializes the GT3GaugeFactory contract
    /// @dev Sets up the owner and implementation address for gauges
    /// @param owner_ The address that will own this contract
    /// @param gaugeImplementation_ The implementation address for gauges
    function initialize(address owner_, address gaugeImplementation_) external;

    /// @notice Creates a new gauge for a pool with its corresponding bribe contract
    /// @dev The caller (msg.sender) becomes the voter for the created gauge
    /// @param pool The address of the pool for which to create a gauge
    /// @param bribe The address of the bribe contract for this gauge
    /// @return The address of the newly created gauge
    function createGauge(address pool, address bribe) external returns (address);
}
