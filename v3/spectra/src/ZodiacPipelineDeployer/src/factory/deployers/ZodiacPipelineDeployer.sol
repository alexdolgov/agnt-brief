// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IDeployer} from "src/interfaces/IDeployer.sol";
import {RegistryEntry, ValueType} from "src/interfaces/IMetaVaultsRegistryV2.sol";
import {IMetaVaultFactory} from "src/interfaces/IMetaVaultFactory.sol";
import {IModuleProxyFactory} from "src/interfaces/IModuleProxyFactory.sol";
import {IRole} from "src/interfaces/IRole.sol";
import {IOwnable} from "src/interfaces/IOwnable.sol";

contract ZodiacPipelineDeployer is IDeployer {
    bytes4 internal constant MULTI_SEND_SELECTOR = bytes4(keccak256("multiSend(bytes)"));
    bytes4 internal constant SETUP_SELECTOR = bytes4(keccak256("setUp(bytes)"));

    struct ZodiacPipelineParams {
        uint256 cooldown;
        uint256 expiry;
        string pipelineName;
    }

    address public immutable moduleProxyFactory;
    address public immutable rolesMastercopy;
    address public immutable delayMastercopy;
    address public immutable multiSendCallOnly;
    address public immutable multiSendDelegateCall;
    address public immutable multiSendUnwrapper;

    constructor(
        address moduleProxyFactory_,
        address rolesMastercopy_,
        address delayMastercopy_,
        address multiSendCallOnly_,
        address multiSendDelegateCall_,
        address multiSendUnwrapper_
    ) {
        moduleProxyFactory = moduleProxyFactory_;
        rolesMastercopy = rolesMastercopy_;
        delayMastercopy = delayMastercopy_;
        multiSendCallOnly = multiSendCallOnly_;
        multiSendDelegateCall = multiSendDelegateCall_;
        multiSendUnwrapper = multiSendUnwrapper_;
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
        ZodiacPipelineParams memory p = abi.decode(params, (ZodiacPipelineParams));

        // Deploy Delay first — Roles targets the Delay so transactions go through the timelock
        // Chain: Roles(target=Delay) → Delay(target=Safe) → Safe
        address delay = _deployDelay(
            moduleProxyFactory,
            delayMastercopy,
            safe,
            p.cooldown,
            p.expiry,
            stepIndex
        );

        address roles = _deployRoles(
            moduleProxyFactory,
            rolesMastercopy,
            safe,
            delay, // target = Delay, not Safe
            stepIndex
        );

        // 3. Set transaction unwrappers on Roles
        IRole(roles).setTransactionUnwrapper(
            multiSendCallOnly,
            MULTI_SEND_SELECTOR,
            multiSendUnwrapper
        );
        IRole(roles).setTransactionUnwrapper(
            multiSendDelegateCall,
            MULTI_SEND_SELECTOR,
            multiSendUnwrapper
        );

        // 4. Enable Roles on Delay (internal chain wiring)
        IRole(delay).enableModule(roles);

        // 5. Transfer ownership to Safe
        IOwnable(roles).transferOwnership(safe);
        IOwnable(delay).transferOwnership(safe);

        // 6. Build output
        output.contracts = new address[](2);
        output.contracts[0] = roles;
        output.contracts[1] = delay;
        output.safeModule = delay; // tail of the chain
        output.registryEntries = new RegistryEntry[](2);
        output.registryEntries[0] = RegistryEntry({
            key: keccak256(abi.encodePacked("pipelines.", p.pipelineName, ".roles")),
            value: abi.encode(roles),
            valueType: ValueType.ADDRESS,
            lock: true
        });
        output.registryEntries[1] = RegistryEntry({
            key: keccak256(abi.encodePacked("pipelines.", p.pipelineName, ".delay")),
            value: abi.encode(delay),
            valueType: ValueType.ADDRESS,
            lock: true
        });
    }

    function _deployRoles(
        address moduleProxyFactory_,
        address mastercopy,
        address safe,
        address target,
        uint256 stepIndex
    ) internal returns (address) {
        bytes memory init = abi.encodeWithSelector(
            SETUP_SELECTOR,
            abi.encode(address(this), safe, target) // owner, avatar, target
        );
        return
            IModuleProxyFactory(moduleProxyFactory_).deployModule(
                mastercopy,
                init,
                uint256(keccak256(abi.encodePacked(safe, block.timestamp, stepIndex, "roles")))
            );
    }

    function _deployDelay(
        address moduleProxyFactory_,
        address mastercopy,
        address safe,
        uint256 cooldown,
        uint256 expiry,
        uint256 stepIndex
    ) internal returns (address) {
        bytes memory init = abi.encodeWithSelector(
            SETUP_SELECTOR,
            abi.encode(address(this), safe, safe, cooldown, expiry)
        );
        return
            IModuleProxyFactory(moduleProxyFactory_).deployModule(
                mastercopy,
                init,
                uint256(keccak256(abi.encodePacked(safe, block.timestamp, stepIndex, "delay")))
            );
    }
}
