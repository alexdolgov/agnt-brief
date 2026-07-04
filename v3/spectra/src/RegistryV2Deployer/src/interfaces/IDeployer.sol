// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IMetaVaultFactory} from "./IMetaVaultFactory.sol";

/// @title ValueType
/// @notice Constants for RegistryEntry.valueType field.
library ValueType {
    uint8 constant STRING = 0;
    uint8 constant ADDRESS = 1;
    uint8 constant UINT256 = 2;
    uint8 constant BYTES = 3;
}

/// @title IDeployer
/// @notice Interface for factory deployer contracts.
/// @dev Deployers are stateless and designed to be called by MetaVaultFactory.
///      External calls are harmless — deployers don't hold funds or state.
///      Deployed contracts are owned by the specified `safe` parameter.
interface IDeployer {
    error OnlyFactory();

    struct SafeCall {
        address to;
        bytes data;
    }

    struct RegistryEntry {
        bytes32 key;
        bytes value;
        uint8 valueType; // Use ValueType.STRING, .ADDRESS, .UINT256, .BYTES
        bool lock;
    }

    struct DeploymentOutput {
        address[] contracts;
        address safeModule;
        SafeCall[] safeCalls;
        RegistryEntry[] registryEntries;
    }

    function deploy(
        address safe,
        address factory,
        bytes calldata params,
        uint256 stepIndex,
        bytes32 pipelineId,
        IMetaVaultFactory.StepResult[] calldata previousResults
    ) external returns (DeploymentOutput memory);
}
