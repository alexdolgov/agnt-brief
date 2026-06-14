// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { Create2 } from "@openzeppelin/contracts/utils/Create2.sol";
import { MessagingFee } from "@layerzerolabs/oapp-evm/contracts/oapp/OApp.sol";

import { Errors } from "../../common/Errors.sol";
import { ContractType, ProxyInfo } from "../../common/Types.sol";

import { Registry } from "./Registry.sol";
import { ERC1967Proxy } from "./ERC1967Proxy.sol";
import { ProxyRegistryLib } from "./ProxyRegistryLib.sol";
import { AddressLib } from "../../common/AddressLib.sol";

/// @title BaseFactory
/// @notice Shared deployment utilities for vault, receipt token, and oracle factories.
/// @dev
/// - Extends {Registry} so deterministic deployments share the same configuration surface.
/// - Manages implementation addresses per {ContractType} and deploys proxies via CREATE2 salts derived
///   from cluster/asset/type tuples.
/// - Records deployed proxies in {ProxyRegistryLib} for constant-time lookups and cross-chain sync.
/// - Exposes hooks ({_getEid}, {_sync}) for LayerZero-aware extensions such as {OAppFactory}.
abstract contract BaseFactory is Registry {
    using AddressLib for address;
    using AddressLib for bytes32;
    using ProxyRegistryLib for ProxyRegistryLib.RegistrySet;

    /// @dev Registry of deployed proxies, keyed by both deterministic salt tuple and proxy address/EID.
    ProxyRegistryLib.RegistrySet internal proxiesList;

    /// @notice Emitted when a deterministic proxy address is deployed and recorded locally.
    /// @param contractType Logical contract type deployed.
    /// @param clusterName Cluster identifier used for the deployment salt.
    /// @param underlyingSymbol Underlying asset symbol used for the deployment salt.
    /// @param proxyAddress Bytes32 representation of the deployed proxy contract address.
    /// @param eid LayerZero endpoint ID associated with the deployment chain.
    event ProxyDeployed(
        ContractType indexed contractType,
        string clusterName,
        string underlyingSymbol,
        bytes32 proxyAddress,
        uint32 eid
    );

    /// @notice Initializes the base factory by optionally seeding the proxy registry.
    /// @dev
    /// - Accepts aligned arrays of `_contractTypes` and `_entries` used to pre-populate
    ///   the local proxy registry at deployment time.
    /// - Uses `ProxyRegistryLib.importBatch`.
    /// - Enables deploying a new factory instance and syncing it with proxies already
    ///   deployed by other factories.
    /// @param _contractTypes Contract types for each provided proxy entry.
    /// @param _entries Proxy metadata entries aligned with `_contractTypes`.
    constructor(
        ContractType[] memory _contractTypes,
        ProxyInfo[] memory _entries
    ) {
        proxiesList.importBatch(_contractTypes, _entries);
    }

    /// @notice Deploys an ERC1967 proxy for the given contract type using CREATE2 and records it.
    /// @dev
    /// - Constructs a deterministic salt from cluster/asset/type and deploys via {Create2}.
    /// - Ensures the target tuple has not been deployed locally or remotely and the implementation is configured.
    /// - Initializes the proxy via {ERC1967Proxy.initProxy} within the same transaction to avoid takeover.
    /// - Registers the proxy in {ProxyRegistryLib} and invokes {_sync} so child factories can broadcast cross-chain.
    /// - Emits {ProxyDeployed} after successful registration.
    /// @param _contractType Contract type associated with the deployment.
    /// @param _clusterName Cluster identifier contributing to the CREATE2 salt.
    /// @param _underlyingSymbol Underlying asset symbol contributing to the CREATE2 salt.
    /// @param _initCalldata ABI-encoded initializer payload invoked on the implementation.
    /// @param _fees LayerZero fee quotes for each destination endpoint.
    /// @return proxy Address of the freshly deployed proxy.
    function _deployContractType(
        ContractType _contractType,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        bytes memory _initCalldata,
        MessagingFee[] calldata _fees
    ) internal onlyRole(DEPLOYER_ROLE) returns (address proxy) {
        _validateContractType(_contractType);

        if (
            proxiesList.contains(
                _contractType,
                _clusterName,
                _underlyingSymbol,
                _getEid()
            )
        ) revert Errors.AlreadyDeployed();

        (address predicted, bytes32 salt) = _predictAddress(
            _contractType,
            _clusterName,
            _underlyingSymbol
        );

        if (predicted.code.length != 0) revert Errors.AlreadyDeployed();

        address impl = getImplementation(_contractType);

        proxy = Create2.deploy(0, salt, _proxyCreationCode());

        if (proxy != predicted)
            revert Errors.ProxyNotMatching(proxy, predicted);

        ERC1967Proxy(payable(predicted)).initProxy(impl, _initCalldata);

        _handleSync(
            _contractType,
            _clusterName,
            _underlyingSymbol,
            _fees,
            predicted
        );
    }

    function _handleSync(
        ContractType _contractType,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        MessagingFee[] calldata _fees,
        address _predicted
    ) private {
        ProxyInfo memory info = ProxyInfo({
            proxyAddress: _predicted.toBytes32(),
            eid: _getEid(),
            clusterName: _clusterName,
            symbol: _underlyingSymbol
        });

        if (!proxiesList.add(info, _contractType))
            revert Errors.ProxyInfoAlreadyAdded();

        // Notify cross-chain peers via an overridable hook.
        _sync(
            _contractType,
            info.proxyAddress,
            _clusterName,
            _underlyingSymbol,
            _getEid(),
            _fees
        );

        emit ProxyDeployed(
            _contractType,
            _clusterName,
            _underlyingSymbol,
            info.proxyAddress,
            _getEid()
        );
    }

    /// @notice Computes the deterministic proxy address for a prospective deployment.
    /// @dev Mirrors the CREATE2 parameters used within {_deployContractType}; useful for off-chain predictions.
    /// @param _contractType Contract type whose proxy is being predicted.
    /// @param _clusterName Cluster identifier used to derive the salt.
    /// @param _underlyingSymbol Underlying asset symbol used to derive the salt.
    /// @return predicted Expected proxy address.
    /// @return salt Salt returned for reuse with `Create2.deploy`.
    function _predictAddress(
        ContractType _contractType,
        string calldata _clusterName,
        string calldata _underlyingSymbol
    ) internal view returns (address predicted, bytes32 salt) {
        salt = _deriveSalt(_clusterName, _underlyingSymbol, _contractType);
        bytes memory creationCode = _proxyCreationCode();
        bytes32 creationCodeHash = keccak256(creationCode);
        predicted = Create2.computeAddress(
            salt,
            creationCodeHash,
            address(this)
        );
    }

    /// @dev Derives the CREATE2 salt for a proxy deployment from its identifying tuple.
    /// @param _clusterName Cluster identifier provided by the caller.
    /// @param _underlyingSymbol Underlying asset symbol provided by the caller.
    /// @param _contractType Contract type for which the proxy is deployed.
    /// @return salt CREATE2 salt derived from the supplied values.
    function _deriveSalt(
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        ContractType _contractType
    ) private pure returns (bytes32) {
        return
            keccak256(
                abi.encode(_clusterName, _underlyingSymbol, _contractType)
            );
    }

    /// @dev Returns the creation bytecode used for deploying new proxies.
    function _proxyCreationCode() private pure returns (bytes memory) {
        return type(ERC1967Proxy).creationCode;
    }

    /// @notice Looks up a proxy registered under the provided identifiers.
    /// @param _contractType Contract type to search within.
    /// @param _clusterName Cluster identifier that was used during deployment.
    /// @param _underlyingSymbol Underlying asset symbol that was used during deployment.
    /// @param _eid LayerZero endpoint identifier tied to the deployment.
    /// @return status True if a proxy is present in the registry.
    /// @return proxyAddress bytes32 proxy address stored in the registry.
    /// @return eid LayerZero endpoint ID recorded with the proxy.
    function _getDeployed(
        ContractType _contractType,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint32 _eid
    ) internal view returns (bool status, bytes32 proxyAddress, uint32 eid) {
        _validateContractType(_contractType);
        (bool _status, ProxyInfo memory info) = proxiesList.get(
            _contractType,
            _clusterName,
            _underlyingSymbol,
            _eid
        );
        status = _status;
        if (_status != false) {
            proxyAddress = info.proxyAddress;
            eid = info.eid;
        }
    }

    /// @notice Looks up a proxy registered under the provided identifiers.
    /// @param _contractType Contract type to search within.
    /// @param _proxyAddress Bytes32 proxy address stored in the registry.
    /// @param _eid LayerZero endpoint ID recorded with the proxy.
    /// @return status True if a proxy is present in the registry.
    /// @return proxyInfo Proxy Info struct including its cluster name and underlying symbol.
    function getProxyInfo(
        ContractType _contractType,
        bytes32 _proxyAddress,
        uint32 _eid
    ) public view returns (bool status, ProxyInfo memory proxyInfo) {
        _validateContractType(_contractType);
        (status, proxyInfo) = proxiesList.get(
            _contractType,
            _proxyAddress,
            _eid
        );
    }

    /// @notice Returns a registered proxy or reverts when the tuple has not been deployed yet.
    /// @param _contractType Contract type to search within.
    /// @param _clusterName Cluster identifier that was used during deployment.
    /// @param _underlyingSymbol Underlying asset symbol that was used during deployment.
    /// @param _eid LayerZero endpoint identifier tied to the deployment.
    /// @return proxyAddress bytes32 proxy address stored in the registry.
    /// @return eid LayerZero endpoint ID recorded with the proxy.
    function getDeployedOrRevert(
        ContractType _contractType,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint32 _eid
    ) public view returns (bytes32 proxyAddress, uint32 eid) {
        bool status;
        (status, proxyAddress, eid) = _getDeployed(
            _contractType,
            _clusterName,
            _underlyingSymbol,
            _eid
        );
        if (!status) revert Errors.ProxyNotSet();
    }

    /// @notice Returns all proxy entries recorded for a given contract type.
    /// @dev Intended for off-chain reads and to bootstrap new factories.
    function getAllProxies(
        ContractType _contractType
    ) external view returns (ProxyInfo[] memory entries) {
        // Call the library directly to copy storage → memory
        return ProxyRegistryLib.entries(proxiesList, _contractType);
    }

    /// @notice Returns the local LayerZero endpoint ID.
    /// @return eid LayerZero endpoint ID.
    function _getEid() internal virtual returns (uint32);

    /// @notice Hook invoked after a successful local deployment to allow to sync state cross-chain.
    /// @param _contractType Contract type associated with the deployment.
    /// @param _proxyAddress Bytes32 proxy address written to the registry.
    /// @param _clusterName Cluster identifier supplied by the caller.
    /// @param _underlyingSymbol Underlying asset symbol supplied by the caller.
    /// @param _eid Endpoint ID where the proxy was deployed.
    /// @param _fees LayerZero fee quotes for each destination endpoint
    function _sync(
        ContractType _contractType,
        bytes32 _proxyAddress,
        string calldata _clusterName,
        string calldata _underlyingSymbol,
        uint32 _eid,
        MessagingFee[] calldata _fees
    ) internal virtual;

    /// @notice Registers metadata for a proxy deployed on a remote chain without reverting on duplicates.
    /// @dev Intended for cross-chain message receivers; the underlying registry silently ignores duplicates.
    /// @param _contractType Contract type associated with the remote proxy.
    /// @param _info Proxy metadata received from the remote source.
    function _registerRemote(
        ContractType _contractType,
        ProxyInfo memory _info
    ) internal {
        // library returns false if already present. We do not revert.
        proxiesList.add(_info, _contractType);
    }
}
