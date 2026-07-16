// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title ISupplyHangingCalculator
 * @dev Interface for calculating and managing token supply adjustments
 * @notice Defines functionality for:
 * 1. Supply hanging calculations
 * 2. Safety margin management
 * 3. Risk-adjusted metrics
 */
interface ISupplyHangingCalculator {
    /**
     * @notice Sets the safety margin for supply calculations
     * @param newSafetyMargin New safety margin percentage
     * @dev Used for:
     * · Risk adjustment
     * · Supply buffer
     * · Risk-adjusted metrics
     */
    function setSafetyMargin(uint256 newSafetyMargin) external;

    /**
     * @notice Retrieves current safety margin for supply calculations
     * @return uint256 Safety margin percentage
     * @dev Used for:
     * · Risk adjustment
     * · Supply buffer
     * · Protocol protection
     */
    function safetyMargin() external view returns (uint256);

    /**
     * @notice Calculates current supply hanging with safety margins
     * @return uint256 Risk-adjusted supply hanging in base units
     * @dev Includes:
     * · Safety margin application
     * · Risk adjustments
     * · Protocol constraints
     *
     * Used for:
     * · Safe supply management
     * · Conservative adjustments
     * · Risk-aware operations
     */
    function getSupplyHanging() external view returns (uint256);

    /**
     * @notice Calculates raw supply hanging without safety margins
     * @return uint256 Unadjusted supply hanging in base units
     * @dev Provides:
     * · Raw calculations
     * · No safety buffers
     * · Maximum theoretical values
     *
     * Used for:
     * · Analysis purposes
     * · Maximum bounds
     * · Stress testing
     */
    function getSupplyHangingUnsafe() external view returns (uint256);
}
