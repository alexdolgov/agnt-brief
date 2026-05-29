// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IDeployer} from "src/interfaces/IDeployer.sol";
import {RegistryEntry, ValueType} from "src/interfaces/IMetaVaultsRegistryV2.sol";
import {IMetaVaultFactory} from "src/interfaces/IMetaVaultFactory.sol";
import {IModuleProxyFactory} from "src/interfaces/IModuleProxyFactory.sol";
import {IRole} from "src/interfaces/IRole.sol";
import {IOwnable} from "src/interfaces/IOwnable.sol";

contract DelayOnlyDeployer is IDeployer {
    bytes4 internal constant SETUP_SELECTOR = bytes4(keccak256("setUp(bytes)"));

    struct DelayOnlyParams {
        uint256 cooldown;
        uint256 expiry;
        address[] enabledModules;
        string pipelineName;
    }

    address public immutable moduleProxyFactory;
    address public immutable delayMastercopy;

    constructor(address moduleProxyFactory_, address delayMastercopy_) {
        moduleProxyFactory = moduleProxyFactory_;
        delayMastercopy = delayMastercopy_;
    }

    function deploy(
        address safe,
        address factory,
        bytes calldata params,
        uint256 stepIndex,
        bytes32 /* pipelineId */,
        IMetaVaultFactory.StepResult[] calldata /* previousResults */
    ) external override returns (DeploymentOutput memory output) {
        if (msg.sender != factory) revert OnlyFactory();
        DelayOnlyParams memory p = abi.decode(params, (DelayOnlyParams));

        // Deploy Delay (owner = address(this))
        bytes memory initDelay = abi.encodeWithSelector(
            SETUP_SELECTOR,
            abi.encode(address(this), safe, safe, p.cooldown, p.expiry)
        );
        address delay = IModuleProxyFactory(moduleProxyFactory).deployModule(
            delayMastercopy,
            initDelay,
            uint256(keccak256(abi.encodePacked(safe, block.timestamp, stepIndex, "delay-only")))
        );

        // Enable provided modules on Delay
        for (uint256 i = 0; i < p.enabledModules.length; i++) {
            IRole(delay).enableModule(p.enabledModules[i]);
        }

        // Transfer ownership to Safe
        IOwnable(delay).transferOwnership(safe);

        // Build output
        output.contracts = new address[](1);
        output.contracts[0] = delay;
        output.safeModule = delay;
        output.registryEntries = new RegistryEntry[](1);
        output.registryEntries[0] = RegistryEntry({
            key: keccak256(abi.encodePacked("pipelines.", p.pipelineName, ".delay")),
            value: abi.encode(delay),
            valueType: ValueType.ADDRESS,
            lock: true
        });
    }
}
