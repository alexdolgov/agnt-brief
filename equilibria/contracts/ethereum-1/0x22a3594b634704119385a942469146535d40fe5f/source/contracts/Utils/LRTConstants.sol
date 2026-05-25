// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

library LRTConstants {
    // Roles
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    // contracts
    bytes32 public constant LRT_DEPOSIT_POOL = keccak256("LRT_DEPOSIT_POOL");
    bytes32 public constant LRT_PROXY = keccak256("LRT_PROXY");
    bytes32 public constant LRT_WITHDRAW_MANAGER =
        keccak256("LRT_WITHDRAW_MANAGER");
    bytes32 public constant LRT_UNSTAKING_VAULT =
        keccak256("LRT_UNSTAKING_VAULT");
    bytes32 public constant EIGEN_POD_MANAGER = keccak256("EIGEN_POD_MANAGER");
    bytes32 public constant EIGEN_STRATEGY_MANAGER =
        keccak256("EIGEN_STRATEGY_MANAGER");
    bytes32 public constant EIGEN_DELEGATION_MANAGER =
        keccak256("EIGEN_DELEGATION_MANAGER");
    bytes32 public constant BEACON_CHAIN_ETH_STRATEGY =
        keccak256("BEACON_CHAIN_ETH_STRATEGY");

    // swtiches
    bytes32 public constant SWITCH_DEPOSIT_ASSET_TO_STRATEGY =
        keccak256("SWITCH_DEPOSIT_ASSET_TO_STRATEGY");
}
