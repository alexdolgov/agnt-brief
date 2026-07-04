// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

interface ICallbackHandler {
    ////////////////////////////////////////////////////////////
    //                         Errors                         //
    ////////////////////////////////////////////////////////////

    /// @notice Thrown when an allowed callback was set but never consumed.
    error Aera__CallbackWasNotCalled();
    /// @notice Thrown when the caller was expected to be the vault but was not.
    error Aera__CallerIsNotSelf();
    /// @notice Thrown when we receive a callback (or a regular call) that wasn't authorized.
    error Aera__UnauthorizedCallback();
    /// @notice Thrown when there are existing approvals that are not cleared.
    error Aera__CallbackApprovalsAlreadyExist();
}
