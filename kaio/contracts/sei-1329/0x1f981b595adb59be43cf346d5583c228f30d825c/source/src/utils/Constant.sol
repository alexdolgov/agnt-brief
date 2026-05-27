// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

// role constants
bytes32 constant BRIDGE_ROLE = keccak256("BRIDGE_ROLE");
bytes32 constant TOKEN_MANAGER_ROLE = keccak256("TOKEN_MANAGER_ROLE");
bytes32 constant GATEWAY_ROLE = keccak256("GATEWAY_ROLE");
bytes32 constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
bytes32 constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

// threshold time for cross-chain operations
uint256 constant CROSS_CHAIN_THRESHOLD_TIME = 1 days;
