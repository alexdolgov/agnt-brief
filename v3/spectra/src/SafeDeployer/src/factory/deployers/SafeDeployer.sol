// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IDeployer} from "src/interfaces/IDeployer.sol";
import {RegistryEntry, ValueType} from "src/interfaces/IMetaVaultsRegistryV2.sol";
import {IMetaVaultFactory} from "src/interfaces/IMetaVaultFactory.sol";
import {ISafe} from "src/interfaces/ISafe.sol";
import {ISafeProxyFactory} from "src/interfaces/ISafeProxyFactory.sol";
import {SafeSetupHelper} from "src/factory/SafeSetupHelper.sol";

contract SafeDeployer is IDeployer {
    struct SafeParams {
        address[] owners; // empty = use defaults
        uint256 threshold; // 0 = use default
        address fallbackHandler;
    }

    address public immutable safeProxyFactory;
    address public immutable safeSingleton;
    address public immutable safeSetupHelper;

    // Default Safe configuration — used when SafeParams.owners is empty
    address[] private _defaultOwners;
    uint256 public immutable defaultThreshold;

    constructor(
        address safeProxyFactory_,
        address safeSingleton_,
        address safeSetupHelper_,
        address[] memory defaultOwners_,
        uint256 defaultThreshold_
    ) {
        safeProxyFactory = safeProxyFactory_;
        safeSingleton = safeSingleton_;
        safeSetupHelper = safeSetupHelper_;
        for (uint256 i = 0; i < defaultOwners_.length; i++) {
            _defaultOwners.push(defaultOwners_[i]);
        }
        defaultThreshold = defaultThreshold_;
    }

    function getDefaultOwners() external view returns (address[] memory) {
        return _defaultOwners;
    }

    function deploy(
        address /* safe — ignored, we're creating a new one */,
        address factory,
        bytes calldata params,
        uint256 stepIndex,
        bytes32 /* pipelineId */,
        IMetaVaultFactory.StepResult[] calldata /* previousResults */
    ) external override returns (DeploymentOutput memory output) {
        if (msg.sender != factory) revert OnlyFactory();
        SafeParams memory p = abi.decode(params, (SafeParams));

        address safe = _deploySafe(factory, stepIndex, p);

        // Build output
        output.contracts = new address[](1);
        output.contracts[0] = safe;
        output.registryEntries = new RegistryEntry[](1);
        output.registryEntries[0] = RegistryEntry({
            key: keccak256("core.safe"),
            value: abi.encode(safe),
            valueType: ValueType.ADDRESS,
            lock: true
        });
    }

    function _deploySafe(
        address factory,
        uint256 stepIndex,
        SafeParams memory p
    ) internal returns (address) {
        // Use defaults if owners is empty
        address[] memory owners = p.owners.length > 0 ? p.owners : _defaultOwners;
        uint256 threshold = p.threshold > 0 ? p.threshold : defaultThreshold;

        // Encode helper delegatecall to enable factory as module
        bytes memory helperData = abi.encodeCall(SafeSetupHelper.enableModule, (factory));

        // Encode Safe.setup initializer
        bytes memory initializer = abi.encodeWithSelector(
            ISafe.setup.selector,
            owners,
            threshold,
            safeSetupHelper, // to: delegatecall target
            helperData, // data: enableModule(factory)
            p.fallbackHandler,
            address(0), // paymentToken
            0, // payment
            payable(address(0)) // paymentReceiver
        );

        // Deploy Safe via SafeProxyFactory
        return
            ISafeProxyFactory(safeProxyFactory).createProxyWithNonce(
                safeSingleton,
                initializer,
                uint256(keccak256(abi.encodePacked(factory, block.timestamp, stepIndex)))
            );
    }
}
