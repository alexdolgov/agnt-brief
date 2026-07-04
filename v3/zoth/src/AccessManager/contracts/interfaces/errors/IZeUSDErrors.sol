// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @title ZeUSD Errors Interface
 * @author ZeUSD Protocol Team
 * @notice Contains all custom errors used by the ZeUSD contract
 * @dev Interface containing ZeUSD-specific error definitions
 * @custom:security-contact tech@zoth.io
 */
interface IZeUSDErrors {
    /**
     * @notice Error thrown when an unauthorized operation is attempted
     * @param _message Error message
     * @dev General authorization error
     */
    error ZeUSD_Unauthorized(string _message);

    /**
     * @notice Error thrown when an invalid access manager address is provided
     * @dev Critical configuration error
     */
    error ZeUSD_InvalidAccessManagerAddress();
}
