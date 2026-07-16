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
    error InvalidAddressError(address addr);

    /**
     * @notice Error thrown when contract not found in registry
     * @param id Contract identifier
     */
    error ContractNotFoundError(bytes32 id);

    /**
     * @notice Error thrown when version doesn't match expected
     * @param expected Expected version
     * @param actual Actual version
     */
    error InvalidVersionError(uint256 expected, uint256 actual);

    /**
     * @notice Error thrown when contract already exists in registry
     * @param id Contract identifier
     */
    error ContractExistsError(bytes32 id);
}
