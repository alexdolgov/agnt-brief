// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {EIP712} from "lib/solady/src/utils/EIP712.sol";
import {ECDSA} from "lib/solady/src/utils/ECDSA.sol";

import {IVifAuthorizer, Authorization} from "../interfaces/base/IVifAuthorizer.sol";

import {LibAuthorization} from "../libraries/LibAuthorization.sol";

//    ░██    ░██ ░██    ░████    ░███                  ░██    ░██                            ░██
//    ░██    ░██       ░██      ░██░██                 ░██    ░██
//    ░██    ░██ ░██░████████  ░██  ░██  ░██    ░██ ░████████ ░████████   ░███████  ░██░████ ░██░█████████  ░███████  ░██░████
//    ░██    ░██ ░██   ░██    ░█████████ ░██    ░██    ░██    ░██    ░██ ░██    ░██ ░███     ░██     ░███  ░██    ░██ ░███
//     ░██  ░██  ░██   ░██    ░██    ░██ ░██    ░██    ░██    ░██    ░██ ░██    ░██ ░██      ░██   ░███    ░█████████ ░██
//      ░██░██   ░██   ░██    ░██    ░██ ░██   ░███    ░██    ░██    ░██ ░██    ░██ ░██      ░██ ░███      ░██        ░██
//       ░███    ░██   ░██    ░██    ░██  ░█████░██     ░████ ░██    ░██  ░███████  ░██      ░██░█████████  ░███████  ░██

/// @title VifAuthorizer
/// @notice Authorizer contract for the Vif protocol.
/// @dev Implements the IVifAuthorizer interface and EIP-712.
/// @dev it enables the users to authorize operators to act on their behalf
/// @dev an authorizer could be a router for example, like the main router implementation
/// @dev warning: an operator can use your allowances towards the core contract, and manipulate all funds that belongs to you in the core contract as well.
contract VifAuthorizer is IVifAuthorizer, EIP712 {
  using LibAuthorization for address;
  using ECDSA for bytes32;

  error AuthorizationExpired();

  /// @dev keccak256("Authorization(address authorizer,address authorized,bool isAuthorized,uint256 nonce,uint256 deadline)")
  uint256 private constant _AUTHORIZATION_TYPEHASH = 0x81d0284fb0e2cde18d0553b06189d6f7613c96a01bb5b5e7828eade6a0dcac91;

  /// @inheritdoc EIP712
  function _domainNameAndVersion() internal pure override returns (string memory name, string memory version) {
    name = "Vif";
    version = "1.0.0";
  }

  /// @inheritdoc IVifAuthorizer
  function authorize(address authorized, bool value) external {
    msg.sender.setAuthorized(authorized, value);
  }

  /// @inheritdoc IVifAuthorizer
  function authorizeWithSig(Authorization calldata authorization, bytes calldata signature) external {
    // check deadline and nonce
    if (authorization.deadline < block.timestamp) revert AuthorizationExpired();
    authorization.authorizer.validateNonce(authorization.nonce);

    // hash the message and recover the signer
    bytes32 digest = _hashTypedData(keccak256(abi.encode(_AUTHORIZATION_TYPEHASH, authorization)));
    address signer = digest.recover(signature);

    // if signer is the authorizer, set the authorization
    if (signer != authorization.authorizer) revert LibAuthorization.NotAuthorized();
    authorization.authorizer.setAuthorized(authorization.authorized, authorization.isAuthorized);
  }
}
