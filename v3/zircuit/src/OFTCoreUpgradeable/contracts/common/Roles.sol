// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

abstract contract Roles {
    bytes32 public constant UPGRADE_MANAGER = keccak256("UPGRADE_MANAGER");

    bytes32 public constant PAUSE_MANAGER = keccak256("PAUSE_MANAGER");
    bytes32 public constant UNPAUSE_MANAGER = keccak256("UNPAUSE_MANAGER");

    bytes32 public constant BRIDGE_GATEWAY_OPERATOR =
        keccak256("BRIDGE_GATEWAY_OPERATOR");

    bytes32 public constant BRIDGE_GATEWAY_SETTER =
        keccak256("BRIDGE_GATEWAY_SETTER");

    bytes32 public constant WITHDRAWAL_MANAGER =
        keccak256("WITHDRAWAL_MANAGER");

    bytes32 public constant ALLOCATION_MANAGER =
        keccak256("ALLOCATION_MANAGER");

    bytes32 public constant REPORTING_MANAGER = keccak256("REPORTING_MANAGER");

    bytes32 public constant STRATEGY_MANAGER = keccak256("STRATEGY_MANAGER");

    /// @notice Role required to update global registry configuration (owners, bridge, assets).
    bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");

    /// @notice Role required to deploy new proxies via {BaseFactory._deployContractType}.
    bytes32 public constant DEPLOYER_ROLE = keccak256("DEPLOYER_ROLE");
}
