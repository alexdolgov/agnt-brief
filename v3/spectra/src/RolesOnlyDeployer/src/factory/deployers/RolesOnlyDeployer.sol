// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IDeployer} from "src/interfaces/IDeployer.sol";
import {RegistryEntry, ValueType} from "src/interfaces/IMetaVaultsRegistryV2.sol";
import {IMetaVaultFactory} from "src/interfaces/IMetaVaultFactory.sol";
import {IModuleProxyFactory} from "src/interfaces/IModuleProxyFactory.sol";
import {IRole} from "src/interfaces/IRole.sol";
import {IOwnable} from "src/interfaces/IOwnable.sol";

/// @title RolesOnlyDeployer
/// @notice Deploys a standalone Roles module that plugs directly into a Safe (no Delay).
///         Used for the default curator pipeline where Roles sits on the Safe with no timelock.
contract RolesOnlyDeployer is IDeployer {
    bytes4 internal constant MULTI_SEND_SELECTOR = bytes4(keccak256("multiSend(bytes)"));
    bytes4 internal constant SETUP_SELECTOR = bytes4(keccak256("setUp(bytes)"));

    /// @dev "CONFIGURATOR" encoded as a left-aligned bytes32 role key, following the
    ///      same convention as CURATOR_ROLE / ACCOUNTANT_ROLE in SetupZodiacModules.
    bytes32 public constant CONFIGURATOR_ROLE =
        0x434f4e464947555241544f520000000000000000000000000000000000000000;

    struct RolesOnlyParams {
        string pipelineName; // e.g. "zodiac-default"
        address[] configurators; // addresses to grant CONFIGURATOR role
    }

    address public immutable moduleProxyFactory;
    address public immutable rolesMastercopy;
    address public immutable multiSendCallOnly;
    address public immutable multiSendDelegateCall;
    address public immutable multiSendUnwrapper;

    constructor(
        address moduleProxyFactory_,
        address rolesMastercopy_,
        address multiSendCallOnly_,
        address multiSendDelegateCall_,
        address multiSendUnwrapper_
    ) {
        moduleProxyFactory = moduleProxyFactory_;
        rolesMastercopy = rolesMastercopy_;
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

        // Deploy Roles with target=Safe and avatar=Safe (direct execution, no Delay)
        bytes memory initRoles = abi.encodeWithSelector(
            SETUP_SELECTOR,
            abi.encode(address(this), safe, safe) // owner, avatar, target
        );
        address roles = IModuleProxyFactory(moduleProxyFactory).deployModule(
            rolesMastercopy,
            initRoles,
            uint256(keccak256(abi.encodePacked(safe, block.timestamp, stepIndex, "roles-only")))
        );

        // Set transaction unwrappers for MultiSend (same as ZodiacPipelineDeployer)
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

        RolesOnlyParams memory p = abi.decode(params, (RolesOnlyParams));

        // Grant CONFIGURATOR role to specified addresses.
        // Must happen BEFORE transferOwnership — deployer is still owner of Roles.
        if (p.configurators.length > 0) {
            bytes32[] memory roleKeys = new bytes32[](1);
            roleKeys[0] = CONFIGURATOR_ROLE;
            bool[] memory memberOf = new bool[](1);
            memberOf[0] = true;
            for (uint256 i = 0; i < p.configurators.length; i++) {
                IRole(roles).assignRoles(p.configurators[i], roleKeys, memberOf);
            }
        }

        // Scope CONFIGURATOR to specific Roles-management functions (least privilege).
        // CONFIGURATOR needs these to self-bootstrap: grant itself access to pipeline
        // targets, assign roles to curators/guardians, and scope their permissions.
        //
        // NOTE: allowTarget is included because CONFIGURATOR must grant itself access
        // to pipeline targets (poolRoles, swapRoles, etc.) during Phase 2. This means
        // CONFIGURATOR can also grant itself access to the Safe or any other address.
        // This is an accepted escalation path — see docs/factory/THREAT_MODEL.md "Acknowledged Risks".
        // The mitigation is a short Phase 2 window and mandatory revocation at finalization.
        IRole(roles).scopeTarget(CONFIGURATOR_ROLE, roles);
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.allowTarget.selector,
            IRole.ExecutionOptions.None
        );
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.revokeTarget.selector,
            IRole.ExecutionOptions.None
        );
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.scopeTarget.selector,
            IRole.ExecutionOptions.None
        );
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.allowFunction.selector,
            IRole.ExecutionOptions.None
        );
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.revokeFunction.selector,
            IRole.ExecutionOptions.None
        );
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.scopeFunction.selector,
            IRole.ExecutionOptions.None
        );
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.assignRoles.selector,
            IRole.ExecutionOptions.None
        );
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.setAllowance.selector,
            IRole.ExecutionOptions.None
        );
        IRole(roles).allowFunction(
            CONFIGURATOR_ROLE,
            roles,
            IRole.setTransactionUnwrapper.selector,
            IRole.ExecutionOptions.None
        );

        // Transfer ownership to Safe
        IOwnable(roles).transferOwnership(safe);

        // Build output — safeModule = roles so factory enables Roles directly on Safe
        output.contracts = new address[](1);
        output.contracts[0] = roles;
        output.safeModule = roles;

        // Registry entries
        output.registryEntries = new RegistryEntry[](1);
        output.registryEntries[0] = RegistryEntry({
            key: keccak256(abi.encodePacked("pipelines.", p.pipelineName, ".roles")),
            value: abi.encode(roles),
            valueType: ValueType.ADDRESS,
            lock: true
        });
    }
}
