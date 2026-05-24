// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @title ZeUSD Errors Interface
 * @author ZeUSD Protocol Team
 * @notice Contains all custom errors used by the ZeUSD contract
 * @dev Interface containing ZeUSD-specific error definitions
 * @custom:security-contact paras@zoth.io
 */
interface IZeUSDErrors {
    /**
     * @notice Error thrown when router is not set
     * @param _message Error message
     * @dev Critical configuration error
     */
    error RouterNotSet(string _message);

    /**
     * @notice Error thrown when caller is not the router
     * @param _message Error message
     * @dev Authorization error for router-only functions
     */
    error NotRouter(string _message);

    /**
     * @notice Error thrown when an unauthorized operation is attempted
     * @param _message Error message
     * @dev General authorization error
     */
    error Unauthorized(string _message);

    /**
     * @notice Error thrown when address is invalid (zero address)
     * @param addr The invalid address
     * @dev Input validation error
     */
    error InvalidAddress(address addr);
}
