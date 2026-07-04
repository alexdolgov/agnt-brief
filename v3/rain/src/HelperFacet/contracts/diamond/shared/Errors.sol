// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title Errors
 * @author Rain Team
 * @notice Defines shared custom errors used across the diamond.
 * @dev Intended to be imported by facets and libraries to ensure consistent usage across the diamond.
 */
interface Errors {
    /**
     * @dev Thrown when a position has already been closed.
     */
    error PositionAlreadyClosed();

    /**
     * @dev Thrown when a referenced position does not exist.
     */
    error PositionNonexistent();

    /**
     * @dev Thrown when the amount used to open a position is outside the allowed range.
     */
    error AmountOutOfRange();

    /**
     * @dev Thrown when a position has not yet been closed.
     */
    error PositionNotClosed();

    /**
     * @dev Indicates a failure with an address, for example, `address(0)`.
     */
    error InvalidAddress();

    /**
     * @dev Indicates a failure with an amount. For example, `0`.
     */
    error InvalidAmount();

    /**
     * @dev Indicates a failure with an array. For example, `array.length() == 0`.
     */
    error InvalidArrayLength();

    /**
     * @dev Indicates a failure with an assignment. For example, `stateVariable == newVariable`.
     */
    error InvalidAssignment();

    /**
     * @dev Indicates an failure with a string. For example, `""`.
     */
    error InvalidString();
}
