// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @title System Errors Interface
 * @author ZeUSD Protocol Team
 * @notice Defines standard error types used across the protocol
 * @dev Interface containing common error definitions
 */
interface ISystemErrors {
    /**
     * @notice Error thrown for invalid address inputs
     * @param addr The invalid address
     */
    error InvalidAddress(address addr);

    /**
     * @notice Error thrown for unauthorized operations
     * @param message Error description
     */
    error Unauthorized(string message);

    /**
     * @notice Error thrown for invalid role operations
     * @param role Role identifier that caused the error
     */
    error InvalidRole(bytes32 role);

    /**
     * @notice Error thrown for invalid configuration parameters
     * @param message Error description
     */
    error InvalidConfig(string message);

    /**
     * @notice Error thrown when an operation fails
     * @param message Error description
     */
    error OperationFailed(string message);

    /**
     * @notice Error thrown for invalid array lengths in batch operations
     */
    error InvalidArrayLength();

    /**
     * @notice Error thrown when router is not properly set
     * @param message Error description
     */
    error RouterNotSet(string message);

    /**
     * @notice Error thrown when caller is not the router
     * @param message Error description
     */
    error NotRouter(string message);

    /**
     * @notice Error thrown for initial approval issues
     * @param message Error description
     */
    error InitialApproval(string message);

    /**
     * @notice Error thrown when contract not found in registry
     * @param id Contract identifier
     */
    error ContractNotFound(bytes32 id);

    /**
     * @notice Error thrown when trying to grant a role to the zero address
     */
    error ZeroAddress();

    /**
     * @notice Error thrown when version doesn't match expected
     * @param expected Expected version
     * @param actual Actual version
     */
    error InvalidVersion(uint256 expected, uint256 actual);

    /**
     * @notice Error thrown when contract already exists in registry
     * @param id Contract identifier
     */
    error ContractExists(bytes32 id);
}
