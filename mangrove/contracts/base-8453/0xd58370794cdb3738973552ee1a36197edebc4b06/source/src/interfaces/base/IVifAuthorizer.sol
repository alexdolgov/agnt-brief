// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

struct Authorization {
  /// @notice EIP-712 signer whose permissions are updated.
  address authorizer;
  /// @notice Delegate contract/account being (de)authorized.
  address authorized;
  /// @notice `true` to grant, `false` to revoke.
  bool isAuthorized;
  /// @notice Replay-protection value for `authorizer`.
  uint256 nonce;
  /// @notice Unix timestamp after which the signature is invalid (not an auth expiry).
  uint256 deadline;
}

/// @title IVifAuthorizer
/// @notice Authorize a delegate (e.g., a router) to act for a user. Authorization
/// persists until changed; `deadline` bounds signature validity only.
/// @dev EIP-712 typed-data signatures cover the `Authorization` struct.
interface IVifAuthorizer {
  /// @notice Set authorization on-chain without an EIP-712 signature.
  /// @dev Suitable for immediate changes; access control is implementation-specific.
  /// @param authorized Delegate being granted/revoked privileges.
  /// @param value `true` to grant, `false` to revoke.
  function authorize(address authorized, bool value) external;

  /// @notice Set authorization with an EIP-712 typed-data signature.
  /// @dev Requirements: valid signature by `authorization.authorizer`,
  /// `block.timestamp <= authorization.deadline`, and expected `nonce`.
  /// @param authorization The typed authorization payload.
  /// @param signature EIP-712 signature by `authorization.authorizer`.
  function authorizeWithSig(Authorization calldata authorization, bytes calldata signature) external;
}
