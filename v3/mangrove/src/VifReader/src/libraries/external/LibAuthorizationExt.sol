// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibExtLoader} from "./LibExtLoader.sol";

library LibAuthorizationExt {
  using LibExtLoader for address;

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
   *     mstore(0x20, _AUTHORIZATION_NONCE_SEED)
   *     mstore(0x00, authorizer)
   *     let authorizationSlot := keccak256(0x00, 0x40)
   * ```
   * bytes4(keccak256("authorizerNonce()"))
   */
  uint256 private constant _AUTHORIZATION_NONCE_SEED = 0x94169588;

  /// @notice Return whether `_authorized` is currently enabled by `_authorizer`.
  /// @param target The target contract to load the authorization from.
  /// @param authorizer The grantor of permission.
  /// @param _authorized The delegate whose status is checked.
  /// @return result True if the delegate is authorized.
  function authorized(address target, address authorizer, address _authorized) internal view returns (bool result) {
    uint256 val;
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _AUTHORIZATION_SEED)
      mstore(0x1c, _authorized)
      mstore(0x00, authorizer)
      val := keccak256(0x00, 0x40)
    }
    val = target.sload(val);
    /// @solidity memory-safe-assembly
    assembly {
      result := val
    }
  }

  /// @notice Return the nonce for `_authorizer`.
  /// @param target The target contract to load the nonce from.
  /// @param authorizer The authorizer whose nonce is returned.
  /// @return result The nonce for `_authorizer`.
  function authorizerNonce(address target, address authorizer) internal view returns (uint256 result) {
    uint256 val;
    /// @solidity memory-safe-assembly
    assembly {
      mstore(0x20, _AUTHORIZATION_NONCE_SEED)
      mstore(0x00, authorizer)
      val := keccak256(0x00, 0x40)
    }
    return target.sload(val);
  }
}
