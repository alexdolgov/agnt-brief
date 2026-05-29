// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.5.0;

/// @title The interface for the Ramses V2 Factory
/// @notice The Ramses V2 Factory facilitates creation of Ramses V2 pools and control over the protocol fees
interface IRamsesV2GaugeFactory {
    /// @notice Returns the gauge address for a given pool, or address 0 if it does not exist
    /// @param pool The pool address
    /// @return gauge The gauge address
    function getGauge(address pool) external view returns (address gauge);
}
