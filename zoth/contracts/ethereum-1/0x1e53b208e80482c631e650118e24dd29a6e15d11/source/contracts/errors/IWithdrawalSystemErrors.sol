// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title Withdrawal System Errors Interface
 * @author ZeUSD Protocol Team
 * @notice Defines error types specific to WithdrawalSystem operations
 * @dev Interface containing WithdrawalSystem-specific error definitions
 */
interface IWithdrawalSystemErrors {
    /**
     * @notice Thrown when withdrawal request is not found
     * @param requestId ID of the missing request
     * @dev Request lookup error
     */
    error RequestNotFound(uint256 requestId);

    /**
     * @notice Thrown when request is in invalid state for operation
     * @param currentStatus Current status of the request
     * @dev State validation error
     */
    error InvalidRequestStatus(uint8 currentStatus);

    /**
     * @notice Thrown when caller is not authorized for operation
     * @param caller Address attempting the operation
     * @dev Authorization error
     */
    error UnauthorizedCaller(address caller);

    /**
     * @notice Thrown when request has expired
     * @param expiryTime Timestamp when request expired
     * @dev Time validation error
     */
    error RequestExpired(uint256 expiryTime);

    /**
     * @notice Thrown when processing cooldown period hasn't elapsed
     * @param lastProcessingTime Last processing timestamp
     * @param cooldownPeriod Required cooldown period
     * @dev Timing constraint error
     */
    error ProcessingCooldownNotElapsed(uint256 lastProcessingTime, uint256 cooldownPeriod);

    /**
     * @notice Thrown when insufficient balance for withdrawal
     * @param requested Amount requested
     * @param available Amount available
     * @dev Balance validation error
     */
    error InsufficientBalance(uint256 requested, uint256 available);

    /**
     * @notice Thrown when asset configuration is invalid
     * @param asset Address of asset with invalid config
     * @dev Configuration validation error
     */
    error InvalidAssetConfig(address asset);

    /**
     * @notice Thrown when withdrawal amount exceeds limits
     * @param amount Requested amount
     * @param limit Maximum allowed amount
     * @dev Amount validation error
     */
    error WithdrawalLimitExceeded(uint256 amount, uint256 limit);

    /**
     * @notice Thrown when withdrawal processing fails
     * @param reason Description of failure
     * @dev Processing error
     */
    error ProcessingFailed(string reason);

    /**
     * @notice Thrown when claim operation fails
     * @param reason Description of failure
     * @dev Claim error
     */
    error ClaimFailed(string reason);

    /**
     * @notice Thrown when batch processing fails
     * @param reason Description of failure
     * @dev Batch operation error
     */
    error BatchProcessingFailed(string reason);

    /**
     * @notice Thrown when an unauthorized address attempts router operations
     * @param caller Address attempting the operation
     */
    error UnauthorizedRouter(address caller);

    /**
     * @notice Thrown when an invalid (usually zero) address is provided
     * @param addr The invalid address
     * @dev Basic input validation error
     */
    error InvalidAddress(address addr);
}
