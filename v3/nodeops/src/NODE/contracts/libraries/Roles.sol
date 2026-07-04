// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;


library Roles {
    bytes32 public constant GOVERNANCE_ADMIN_ROLE =  keccak256("GOVERNANCE_ADMIN_ROLE");
    bytes32 public constant REGISTRY_MANAGER_ROLE = keccak256("REGISTRY_MANAGER_ROLE");
    bytes32 public constant PERFORMANCE_TRACKER_ROLE = keccak256("PERFORMANCE_TRACKER_ROLE");
    bytes32 public constant REWARDS_MANAGER_ROLE = keccak256("REWARDS_MANAGER_ROLE");
    bytes32 public constant REWARDS_ALLOCATOR_ROLE = keccak256("REWARDS_ALLOCATOR_ROLE");
    bytes32 public constant EPOCH_MANAGER_ROLE = keccak256("EPOCH_MANAGER_ROLE");
    bytes32 public constant BENEFICIARY_ROLE = keccak256("BENEFICIARY_ROLE");
    bytes32 public constant TOKEN_MANAGER_ROLE = keccak256("TOKEN_MANAGER_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
    bytes32 public constant ORDER_MANAGER_ROLE = keccak256("ORDER_MANAGER_ROLE");
    bytes32 public constant EMISSION_MANAGER_ROLE = keccak256("EMISSION_MANAGER_ROLE");
    bytes32 public constant POOL_MANAGER_ROLE = keccak256("POOL_MANAGER_ROLE");
}