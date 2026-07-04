// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IMetaVaultFactory} from "./IMetaVaultFactory.sol";
import {RegistryEntry} from "./IMetaVaultsRegistryV2.sol";

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
