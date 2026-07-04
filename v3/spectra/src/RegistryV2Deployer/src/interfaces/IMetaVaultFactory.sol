// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {RegistryEntry} from "./IMetaVaultsRegistryV2.sol";

interface IMetaVaultFactory {
    // --- Structs ---
    struct DeploymentStep {
        bytes32 pipelineId;
        bytes params;
    }

    struct StepResult {
        bytes32 pipelineId;
        address[] contracts;
        address safeModule;
        RegistryEntry[] registryEntries;
    }

    struct DeploymentResult {
        address safe;
        StepResult[] steps;
    }

    // --- Errors ---
    error NoSafeProvided();
    error FactoryNotModule();
    error EmptyDeployment();
    error UnknownPipeline(bytes32 pipelineId);
    error ModuleEnableFailed(address module);
    error DeploymentFailed(bytes32 pipelineId);
    error ZeroAddress();
    error SafeCallFailed(address to);
    error DuplicateSafeStep();
    error SafeStepConflict();
    error OnlySafe();

    // --- Events ---
    event StepDeployed(
        address indexed safe,
        bytes32 indexed pipelineId,
        address[] contracts,
        address safeModule
    );
    event DeployerRegistered(bytes32 indexed pipelineId, address deployer);
    event DeployerRemoved(bytes32 indexed pipelineId);
    event RegistryUpdated(address registry);

    // --- View getters ---
    function deployers(bytes32 pipelineId) external view returns (address);
    function isOpen() external view returns (bool);
    function registry() external view returns (address);

    // --- Core function ---
    function deploy(
        DeploymentStep[] calldata steps,
        address safe
    ) external returns (DeploymentResult memory);

    // --- Admin functions ---
    function setDeployer(bytes32 pipelineId, address deployer) external;
    function removeDeployer(bytes32 pipelineId) external;
    function setFactoryMode(bool open) external;
    function setRegistry(address registry) external;
}
