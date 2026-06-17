// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {IERC20Custom} from "./IERC20Custom.sol";
import {ILender} from "./ILender.sol";
import {IMiscHelper} from "./IMiscHelper.sol";

/**
 * @title IRepayHelper
 * @dev Interface for streamlined loan repayment operations and management
 * @notice Defines functionality for:
 * 1. Loan repayment processing
 * 2. Multi-loan management
 * 3. Helper contract integration
 * 4. Token interactions
 */
interface IRepayHelper {
    /*//////////////////////////////////////////////////////////////
                        CONFIGURATION
    //////////////////////////////////////////////////////////////*/
    /*//////////////////////////////////////////////////////////////
                        REPAYMENT OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Processes partial loan repayment
     * @param lender Address of the lending contract
     * @param to Address whose loan is being repaid
     * @param amount Amount to repay in base units
     * @return part Share of the loan repaid
     * @dev Handles:
     * · Token transfers
     * · Loan accounting
     * · Share calculations
     *
     * Requirements:
     * · Amount > 0
     * · Sufficient balance
     * · Valid addresses
     */
    function repayAmount(
        ILender lender,
        address to,
        uint256 amount
    ) external returns (uint256 part);

    /**
     * @notice Processes complete loan repayment
     * @param lender Address of the lending contract
     * @param to Address whose loan is being repaid
     * @return amount Total amount repaid in base units
     * @dev Manages:
     * · Full debt calculation
     * · Complete repayment
     * · Account settlement
     *
     * Effects:
     * · Clears entire debt
     * · Updates balances
     * · Emits events
     */
    function repayTotal(
        ILender lender,
        address to
    ) external returns (uint256 amount);

    /**
     * @notice Processes multiple complete loan repayments
     * @param lender Address of the lending contract
     * @param tos Array of addresses whose loans are being repaid
     * @return amount Total amount repaid across all loans
     * @dev Executes:
     * · Batch processing
     * · Multiple settlements
     * · Aggregate accounting
     *
     * Optimizations:
     * · Gas efficient
     * · Bulk processing
     * · Single transaction
     */
    function repayTotalMultiple(
        ILender lender,
        address[] calldata tos
    ) external returns (uint256 amount);

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Retrieves DUSX token contract
     * @return IERC20Custom Interface of the DUSX token
     * @dev Used for:
     * · Token operations
     * · Balance checks
     * · Allowance verification
     */
    function dusx() external view returns (IERC20Custom);

    /**
     * @notice Retrieves helper contract
     * @return IMiscHelper Interface of the helper contract
     * @dev Provides:
     * · Helper functionality
     * · Integration access
     * · Utility methods
     */
    function helper() external view returns (IMiscHelper);
}
