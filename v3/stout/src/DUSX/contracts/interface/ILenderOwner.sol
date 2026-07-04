// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

import {ILender} from "./ILender.sol";

/**
 * @title ILenderOwner
 * @dev Interface for protocol-level lender management and configuration
 * @notice Defines functionality for:
 * 1. Interest rate management
 * 2. Borrow limit control
 * 3. Risk parameter adjustment
 */
interface ILenderOwner {
    /*//////////////////////////////////////////////////////////////
                        INTEREST MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Updates lender's interest rate configuration
     * @param lender The lender contract to modify
     * @param newInterestRate New interest rate value in basis points
     * @dev Controls:
     * · Interest accrual
     * · Yield generation
     * · Protocol revenue
     *
     * Requirements:
     * · Caller is authorized
     * · Rate within bounds
     * · Valid lender contract
     */
    function changeInterestRate(
        ILender lender,
        uint256 newInterestRate
    ) external;

    /*//////////////////////////////////////////////////////////////
                        LIMIT MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Updates lender's borrowing constraints
     * @param lender The lender contract to modify
     * @param newBorrowLimit New total protocol borrow limit
     * @param perAddressPart Maximum borrow limit per address
     * @dev Manages:
     * · Protocol exposure
     * · Individual limits
     * · Risk thresholds
     *
     * Requirements:
     * · Caller is authorized
     * · Valid limits
     * · perAddressPart <= newBorrowLimit
     *
     * Security:
     * · Prevents overleveraging
     * · Controls risk exposure
     * · Ensures protocol stability
     */
    function changeBorrowLimit(
        ILender lender,
        uint256 newBorrowLimit,
        uint256 perAddressPart
    ) external;

    /*//////////////////////////////////////////////////////////////
                        DEPRECATION MANAGEMENT
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Checks if a lender contract is deprecated
     * @param lender The lender address to check
     * @return bool True if the lender is deprecated, false otherwise
     * @dev Used to:
     * · Prevent operations on deprecated markets
     * · Control market lifecycle
     * · Manage protocol upgrades
     *
     * Security:
     * · Read-only function
     * · No state modifications
     * · Access control not required
     */
    function deprecated(address lender) external view returns (bool);

    /**
     * @notice Checks if a lender contract is in manual mode
     * @param lender The lender address to check
     * @return bool True if the lender is in manual mode, false otherwise
     * @dev Used to:
     * · Determine if borrow limits are managed manually
     * · Control automatic interest rate adjustments
     *
     * Security:
     * · Read-only function
     * · No state modifications
     * · Access control not required
     */
    function manual(address lender) external view returns (bool);
}
