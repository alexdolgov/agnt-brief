// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

/**
 * @title Role
 * @dev Library for role keys
 */
library Role {
    bytes32 public constant ADMIN = keccak256(abi.encode("ADMIN"));
    bytes32 public constant OPERATOR = keccak256(abi.encode("OPERATOR"));
    bytes32 public constant ACTION_APPROVER = keccak256(abi.encode("ACTION_APPROVER"));
    bytes32 public constant CONTROLLER = keccak256(abi.encode("CONTROLLER"));
    bytes32 public constant UPGRADER = keccak256(abi.encode("UPGRADER"));
    bytes32 public constant PAUSE = keccak256(abi.encode("PAUSE"));
}
