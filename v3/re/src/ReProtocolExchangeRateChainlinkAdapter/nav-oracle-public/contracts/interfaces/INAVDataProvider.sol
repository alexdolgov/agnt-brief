// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

/**
 * @title NAV Data Provider Interface
 * @notice Minimal interface for contracts that provide NAV (Net Asset Value) data
 * @dev This interface defines the minimum required functionality for NAV data sources
 *      Used by adapters and consumers that need to read NAV values without depending
 *      on the full implementation details of specific NAV oracle contracts
 */
interface INAVDataProvider {
    /**
     * @notice Get the current NAV value and its timestamp
     * @return nav The latest NAV value with 18 decimal places
     * @return timestamp The timestamp when this NAV value was last updated
     */
    function getCurrentNAV() external view returns (uint256 nav, uint256 timestamp);
}