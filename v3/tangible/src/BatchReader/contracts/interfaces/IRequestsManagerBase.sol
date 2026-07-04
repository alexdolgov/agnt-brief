// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

import "./IRequestsTypes.sol";

/// @notice All common user defined types, enums and structs
///         used by RequestsManager and its readers
interface IRequestsManagerBase is IRequestsTypes {
  /// @notice approval or disapproval of the request
  struct Approval {
    address approver;
    /// @notice Approval value: positive or negative
    ///         If the worker has canceled his request,
    ///         this value is changed to (positive or negative) | canceled
    /// @dev see APPROVAL_XXX flags
    uint64 approvedValue;
  }

  // *****************************************************
  // ************* Custom errors *************************
  // *****************************************************

  /// @notice It's not allowed to approve canceled request. It's not allowed to cancel it second time
  error ErrorRequestIsCanceled();

  /// @notice Number of provided hours cannot exceed specified threshold
  error ErrorTooManyHours(uint countHours, uint maxAllowedValue);

}