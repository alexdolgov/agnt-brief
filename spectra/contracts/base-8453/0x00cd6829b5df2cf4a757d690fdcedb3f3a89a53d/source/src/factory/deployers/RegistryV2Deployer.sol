// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IDeployer, ValueType} from "src/interfaces/IDeployer.sol";
import {IMetaVaultFactory} from "src/interfaces/IMetaVaultFactory.sol";

/// @title RegistryV2Deployer
/// @notice Returns metadata string entries for RegistryV2 batch registration.
///         Does NOT call RegistryV2 directly — the factory batches all entries.
contract RegistryV2Deployer is IDeployer {
    struct RegistryV2Params {
        string name;
        string curatorName;
        string curatorWebsite;
        string description;
    }

    function deploy(
        address /* safe */,
        address factory,
        bytes calldata params,
        uint256 /* stepIndex */,
        bytes32 /* pipelineId */,
        IMetaVaultFactory.StepResult[] calldata /* previousResults */
    ) external override returns (DeploymentOutput memory output) {
        if (msg.sender != factory) revert OnlyFactory();
        RegistryV2Params memory p = abi.decode(params, (RegistryV2Params));

        uint256 count = 0;
        if (bytes(p.name).length > 0) count++;
        if (bytes(p.curatorName).length > 0) count++;
        if (bytes(p.curatorWebsite).length > 0) count++;
        if (bytes(p.description).length > 0) count++;

        output.registryEntries = new RegistryEntry[](count);
        output.contracts = new address[](0);

        uint256 idx = 0;
        if (bytes(p.name).length > 0) {
            output.registryEntries[idx++] = RegistryEntry({
                key: keccak256("metadata.name"),
                value: abi.encode(p.name),
                valueType: ValueType.STRING,
                lock: false
            });
        }
        if (bytes(p.curatorName).length > 0) {
            output.registryEntries[idx++] = RegistryEntry({
                key: keccak256("metadata.curator.name"),
                value: abi.encode(p.curatorName),
                valueType: ValueType.STRING,
                lock: false
            });
        }
        if (bytes(p.curatorWebsite).length > 0) {
            output.registryEntries[idx++] = RegistryEntry({
                key: keccak256("metadata.curator.link"),
                value: abi.encode(p.curatorWebsite),
                valueType: ValueType.STRING,
                lock: false
            });
        }
        if (bytes(p.description).length > 0) {
            output.registryEntries[idx++] = RegistryEntry({
                key: keccak256("metadata.description"),
                value: abi.encode(p.description),
                valueType: ValueType.STRING,
                lock: false
            });
        }
    }
}
