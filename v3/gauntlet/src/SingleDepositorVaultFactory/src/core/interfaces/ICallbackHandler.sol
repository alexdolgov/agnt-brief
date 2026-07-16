// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.29;

/// @title ICallbackHandler
/// @notice Errors used in the CallbackHandler mixin
interface ICallbackHandler {
    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    /// @notice Thrown when attempting to set a new callback while one is already pending
    /// @dev This error indicates that _allowCallback() was called twice without consuming the first callback
    error Aera__CallbackAlreadyCalled();
    /// @notice Thrown when the caller was expected to be the vault but was not
    error Aera__CallerIsNotSelf();
    /// @notice Thrown when we receive a callback (or a regular call) that wasn't authorized
    error Aera__UnauthorizedCallback();
}
