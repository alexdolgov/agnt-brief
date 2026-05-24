// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title ZeUSD Errors Interface
/// @notice Contains all custom errors used by the ZeUSD contract
/// @custom:security-contact paras@zoth.io
interface IZeUSDErrors {
    /// @notice Error thrown when router is not set
    /// @param _message Error message
    error RouterNotSet(string _message);

    /// @notice Error thrown when caller is not the router
    /// @param _message Error message
    error NotRouter(string _message);

    /// @notice Error thrown when an unauthorized operation is attempted
    /// @param _message Error message
    error Unauthorized(string _message);

    /// @notice Error thrown when address is invalid (zero address)
    /// @param addr The invalid address
    error InvalidAddress(address addr);
}
