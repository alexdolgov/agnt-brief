// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

library LibAuthorization {
  /// @notice Fired when the nonce is invalid.
  error InvalidNonce();

  /// @notice Fired when the caller is not authorized.
  error NotAuthorized();

  /// @notice Fired when the nonce is incremented.
  /// @param authorizer The authorizer whose nonce is incremented.
  /// @param nonce The nonce value.
  event NonceIncremented(address indexed authorizer, uint256 nonce);

  /// @notice Fired when the authorization is set.
  /// @param authorizer The authorizer whose authorization is set.
  /// @param authorized The authorized account.
  /// @param value The authorization value.
  event Authorized(address indexed authorizer, address indexed authorized, bool value);

  /**
   * @dev The authorization slot of (`authorizer`, `authorized`) is given by:
   * ```
   *     mstore(0x20, _AUTHORIZATION_SEED)
   *     mstore(0x1c, authorized)
   *     mstore(0x00, authorizer)
   *     let authorizationSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("authorizations()"))
   */
  uint256 private constant _AUTHORIZATION_SEED = 0x078c51b7;

  /**
   * @dev The authorization slot of (`authorizer`) is given by:
   * ```
   *     mstore(0x20, _AUTHORIZATION_SEED)
   *     mstore(0x00, authorizer)
   *     let authorizationSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("authorizerNonce()"))
   */
  uint256 private constant _AUTHORIZATION_NONCE_SEED = 0x94169588;

  /// @dev keccak256("NonceIncremented(address,uint256)")
  uint256 private constant _NONCE_INCREMENTED_EVENT_SIGNATURE =
    0xa82a649bbd060c9099cd7b7326e2b0dc9e9af0836480e0f849dc9eaa79710b3b;

  /// @dev keccak256("Authorized(address,address,bool)")
  uint256 private constant _AUTHORIZED_EVENT_SIGNATURE =
    0x2873eaf2ca7367f81cecd586d0d13e9ec99b66d2fda05d66e2ae88133b532e03;

  /// @notice Return whether `_authorized` is currently enabled by `_authorizer`.
  /// @param _authorizer The grantor of permission.
  /// @param _authorized The delegate whose status is checked.
  /// @return isAuthorized True if the delegate is authorized.
  function authorized(address _authorizer, address _authorized) internal view returns (bool isAuthorized) {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _AUTHORIZATION_SEED)
      mstore(0x1c, _authorized)
      mstore(0x00, _authorizer)
      isAuthorized := sload(keccak256(0x00, 0x40))
    }
  }

  /// @notice Revert unless `_authorized` equals `_authorizer` or is granted by `_authorizer`.
  /// @param _authorizer The account whose permissions gate the action.
  /// @param _authorized The caller or delegate attempting the action.
  function checkAuthorization(address _authorizer, address _authorized) internal view {
    /// @solidity memory-safe-assembly
    assembly {
      if iszero(eq(_authorizer, _authorized)) {
        mstore(0x20, _AUTHORIZATION_SEED)
        mstore(0x1c, _authorized)
        mstore(0x00, _authorizer)
        if iszero(sload(keccak256(0x00, 0x40))) {
          mstore(0x00, 0xea8e4eb5) // NotAuthorized()
          revert(0x1c, 0x04)
        }
      }
    }
  }

  /// @notice Check and consume the expected nonce for `_authorizer`.
  /// @dev Reverts if `_nonce` does not match the stored value, then increments it.
  /// @dev Also reverts if the nonce overflows.
  /// @param _authorizer The signer whose nonce is being validated.
  /// @param _nonce The expected nonce value.
  function validateNonce(address _authorizer, uint256 _nonce) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _AUTHORIZATION_NONCE_SEED)
      mstore(0x00, _authorizer)
      let slot := keccak256(0x00, 0x40)
      let nonce := sload(slot)
      let next := add(nonce, 0x01)
      if iszero(and(eq(nonce, _nonce), gt(next, nonce))) {
        mstore(0x00, 0x756688fe) // InvalidNonce()
        revert(0x1c, 0x04)
      }
      sstore(slot, next)
      mstore(0x00, next)
      log2(0x00, 0x20, _NONCE_INCREMENTED_EVENT_SIGNATURE, _authorizer)
    }
  }

  /// @notice Update the authorization flag for (`_authorizer`, `_authorized`).
  /// @dev Writes the boolean and emits `Authorized`. Intended to be called
  /// by the authorizer contract after access control and/or signature checks.
  /// @param _authorizer The grantor account.
  /// @param _authorized The delegate account.
  /// @param value True to grant, false to revoke.
  function setAuthorized(address _authorizer, address _authorized, bool value) internal {
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _AUTHORIZATION_SEED)
      mstore(0x1c, _authorized)
      mstore(0x00, _authorizer)
      sstore(keccak256(0x00, 0x40), value)
      mstore(0x00, value)
      log3(0x00, 0x20, _AUTHORIZED_EVENT_SIGNATURE, _authorizer, _authorized)
    }
  }
}
