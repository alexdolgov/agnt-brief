// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @author Ryley Kimmel <ryley@hlwgroup.dev>
/// @notice Interface for defining authorization provider checks.
interface IAuthorizationProvider {
    /// @notice Checks if the caller has authorization
    /// @param caller The address of the caller to check for authorization
    /// @param callee The address being called
    /// @param signature The signature of the function being called
    /// @return `true` if the caller is authorized, otherwise `false`
    function hasAuthorization(address caller, address callee, bytes4 signature) external view returns (bool);
}
