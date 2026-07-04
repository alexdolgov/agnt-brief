// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title IDynamicInterestRate
 * @dev Interface for dynamic interest rate calculations in the lending protocol
 * @notice Defines methods for retrieving time-based interest rates that:
 * 1. Adjust based on market conditions
 * 2. Support per-second and base rate calculations
 * 3. Maintain precision through proper scaling
 *
 * This interface is crucial for:
 * · Accurate interest accrual
 * · Dynamic market response
 * · Protocol yield calculations
 */
interface IDynamicInterestRate {
    /*//////////////////////////////////////////////////////////////
                        INTEREST RATE QUERIES
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Retrieves the current interest rate per second
     * @return uint256 Interest rate per second, scaled by 1e18
     * @dev Used for precise interest calculations over time periods
     */
    function getInterestPerSecond() external view returns (uint256);

    /**
     * @notice Retrieves the current base interest rate
     * @return uint256 Base interest rate, scaled by 1e18
     * @dev Represents the foundational rate before adjustments
     */
    function getInterestRate() external view returns (uint256);
}
