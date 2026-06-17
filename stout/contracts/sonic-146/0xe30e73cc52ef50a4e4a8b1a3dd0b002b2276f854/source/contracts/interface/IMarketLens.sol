// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {ILender} from "./ILender.sol";

/**
 * @title IMarketLens
 * @dev Interface for viewing and analyzing lending market data
 * @notice Provides functionality for:
 * 1. Market size analysis
 * 2. Borrowing metrics
 * 3. Risk assessment data
 */
interface IMarketLens {
    /*//////////////////////////////////////////////////////////////
                            MARKET METRICS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Calculates total borrowed amount from a specific lending market
     * @param lender Address of the lending market to analyze
     * @return uint256 Total borrowed amount in base units
     * @dev Aggregates:
     * · Active loan positions
     * · Accrued interest
     * · Pending liquidations
     *
     * Used for:
     * · Market size analysis
     * · Risk assessment
     * · Protocol health monitoring
     */
    function getTotalBorrowed(ILender lender) external view returns (uint256);
}
