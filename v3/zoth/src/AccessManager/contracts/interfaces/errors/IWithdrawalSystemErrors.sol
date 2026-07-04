// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../../libraries/WithdrawalSystemTypes.sol';

/**
 * @title Withdrawal System Errors Interface
 * @author ZeUSD Protocol Team
 * @notice Defines error types specific to WithdrawalSystem operations
 * @dev Interface containing WithdrawalSystem-specific error definitions
 */
interface IWithdrawalSystemErrors {
    /**
     * @notice Thrown when request is in invalid state for operation
     * @param status Current status of the request
     * @dev State validation error
     */
    error InvalidRequestStatus(WithdrawalSystemTypes.RequestStatus status);

    /**
     * @notice Thrown when processing cooldown period hasn't elapsed
     * @param lastProcessingTime Last processing timestamp
     * @param cooldownPeriod Required cooldown period
     * @dev Timing constraint error
     */
    error ProcessingCooldownNotElapsed(uint256 lastProcessingTime, uint256 cooldownPeriod);

    /**
     * @notice Thrown when an invalid (usually zero) address is provided
     * @param addr The invalid address
     * @dev Basic input validation error
     */
    error InvalidAddress(address addr);
    /**
     * @notice Thrown when an invalid amount is provided
     * @dev Basic input validation error
     */
    error InvalidAmount();

    /**
     * @notice Thrown when a request is not in queue
     * @dev Basic input validation error
     */
    error RequestNotInQueue();
}
