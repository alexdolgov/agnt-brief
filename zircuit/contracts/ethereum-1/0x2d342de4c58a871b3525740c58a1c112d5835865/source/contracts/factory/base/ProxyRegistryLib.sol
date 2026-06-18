// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import { ContractType, ProxyInfo } from "../../common/Types.sol";
import { Errors } from "../../common/Errors.sol";

/// @title Proxy Registry Library
/// @notice Tracks deterministic proxy deployments using dual lookup keys for O(1) retrieval.
/// @dev
/// - Every proxy is indexed by both (cluster, symbol, eid) and (proxyAddress, eid) tuples.
/// - Used by {BaseFactory} descendants to prevent duplicate CREATE2 deployments and to serve cross-chain lookups.
/// - Maintains both indices in sync while supporting swap-and-pop removal.
library ProxyRegistryLib {
    /// @notice Default endpoint ID used for oracle deployments when listing proxies (oracles are globally (cross-chain) indexed).
    uint32 constant PLACEHOLDER_EID = 0;

    /// @notice Storage tracking proxies keyed by multiple lookup indices (address/EID and tuple/EID).
    struct ProxyRegistry {
        // keccak256(abi.encode(proxyAddress, eid)) => index (index + 1)
        mapping(bytes32 => uint256) indexByProxyEid;
        // keccak256(abi.encode(clusterName, symbol, eid)) => index (index + 1)
        mapping(bytes32 => uint256) indexByClusterSymbolEid;
        ProxyInfo[] values;
    }

    /// @notice Mapping of contract types to their dedicated proxy registries.
    struct RegistrySet {
        mapping(ContractType => ProxyRegistry) registries;
    }

    /// @dev Computes the key used to identify a proxy by address/eid pair.
    function _computeProxyEidKey(
        bytes32 _proxyAddress,
        uint32 _eid
    ) private pure returns (bytes32) {
        return keccak256(abi.encode(_proxyAddress, _eid));
    }

    // @dev only one deployment by cluster is allowed for the following contract types
    function _singleContractType(
        ContractType _contractType
    ) internal pure returns (bool) {
        if (
            _contractType == ContractType.UNDERLYING_OFT ||
            _contractType == ContractType.VAULT_COMPOSER ||
            _contractType == ContractType.VAULT ||
            _contractType == ContractType.ACCOUNTING_RECEIVER
        ) return true;
        return false;
    }

    /// @dev Computes the key used to identify a proxy by cluster/symbol/eid triple, normalising oracle EIDs to zero.
    function _computeClusterSymbolEidKey(
        ContractType _contractType,
        string memory _clusterName,
        string memory _symbol,
        uint32 _eid
    ) private pure returns (bytes32) {
        uint256 eid = uint256(_eid);
        // only one deployment by cluster is allowed for the following contract types
        if (_singleContractType(_contractType)) {
            // place holder to enfoce only one deployment for all chains by cluster/symbol
            eid = type(uint256).max - uint256(_contractType);
        }
        return keccak256(abi.encode(_clusterName, _symbol, eid));
    }

    /// @notice Adds a proxy entry to the registry set if no collision exists.
    /// @dev Returns false when either lookup key is already populated, leaving storage unchanged.
    /// @param _set Registry set.
    /// @param _info Proxy metadata to record.
    /// @param _contractType Contract type to insert into.
    /// @return status True when the proxy was inserted, false if already present.
    function add(
        RegistrySet storage _set,
        ProxyInfo memory _info,
        ContractType _contractType
    ) external returns (bool status) {
        bytes32 _proxyEidKey = _computeProxyEidKey(
            _info.proxyAddress,
            _info.eid
        );

        bytes32 _clusterSymbolEidKey = _computeClusterSymbolEidKey(
            _contractType,
            _info.clusterName,
            _info.symbol,
            _info.eid
        );

        ProxyRegistry storage _registry = _set.registries[_contractType];

        if (
            _registry.indexByProxyEid[_proxyEidKey] != 0 ||
            _registry.indexByClusterSymbolEid[_clusterSymbolEidKey] != 0
        ) {
            status = false; // already exists
        } else {
            _registry.values.push(_info);

            uint256 _newIndex = _registry.values.length; // index + 1
            _registry.indexByProxyEid[_proxyEidKey] = _newIndex;
            _registry.indexByClusterSymbolEid[_clusterSymbolEidKey] = _newIndex;
            status = true;
        }
    }

    /// @notice Removes a proxy entry identified by proxy address and endpoint.
    /// @param _set Registry set.
    /// @param _contractType Contract type to remove from.
    /// @param _proxyAddress Bytes32 proxy address bytes32(uint256(uint160(address))).
    /// @param _eid LayerZero endpoint identifier associated with the proxy.
    /// @return removed True if the entry was removed, false when it was missing.
    function remove(
        RegistrySet storage _set,
        ContractType _contractType,
        bytes32 _proxyAddress,
        uint32 _eid
    ) external returns (bool) {
        ProxyRegistry storage _registry = _set.registries[_contractType];
        bytes32 _proxyEidKey = _computeProxyEidKey(_proxyAddress, _eid);
        uint256 _index = _registry.indexByProxyEid[_proxyEidKey];
        if (_index == 0) return false;
        _removeAt(_registry, _contractType, _index);
        return true;
    }

    /// @notice Removes a proxy entry identified by cluster name, symbol, and eid.
    /// @param _set Registry set storing contract-type specific registries.
    /// @param _contractType Contract type.
    /// @param _clusterName Cluster identifier used for deterministic deployment.
    /// @param _symbol Underlying asset symbol paired with the cluster.
    /// @param _eid LayerZero endpoint identifier associated with the proxy.
    /// @return removed True if the entry was removed, false when it was missing.
    function remove(
        RegistrySet storage _set,
        ContractType _contractType,
        string memory _clusterName,
        string memory _symbol,
        uint32 _eid
    ) external returns (bool) {
        ProxyRegistry storage _registry = _set.registries[_contractType];
        bytes32 _clusterSymbolEidKey = _computeClusterSymbolEidKey(
            _contractType,
            _clusterName,
            _symbol,
            _eid
        );

        uint256 _index = _registry.indexByClusterSymbolEid[
            _clusterSymbolEidKey
        ];
        if (_index == 0) return false; // not found

        _removeAt(_registry, _contractType, _index);
        return true;
    }

    /// @dev Removes a registry entry at the provided index, performing swap-and-pop and updating both indices.
    function _removeAt(
        ProxyRegistry storage _registry,
        ContractType _contractType,
        uint256 _index
    ) private {
        uint256 _idx = _index - 1; // stored as index+1
        uint256 _lastIdx = _registry.values.length - 1;

        ProxyInfo memory _removedInfo = _registry.values[_idx];

        bytes32 _proxyEidKey = _computeProxyEidKey(
            _removedInfo.proxyAddress,
            _removedInfo.eid
        );
        bytes32 _clusterSymbolEidKey = _computeClusterSymbolEidKey(
            _contractType,
            _removedInfo.clusterName,
            _removedInfo.symbol,
            _removedInfo.eid
        );

        // if not last element, swap with last
        if (_idx != _lastIdx) {
            ProxyInfo memory _lastInfo = _registry.values[_lastIdx];
            _registry.values[_idx] = _lastInfo;

            bytes32 _lastProxyEidKey = _computeProxyEidKey(
                _lastInfo.proxyAddress,
                _lastInfo.eid
            );
            bytes32 _lastClusterSymbolEidKey = _computeClusterSymbolEidKey(
                _contractType,
                _lastInfo.clusterName,
                _lastInfo.symbol,
                _lastInfo.eid
            );

            _registry.indexByProxyEid[_lastProxyEidKey] = _index;
            _registry.indexByClusterSymbolEid[
                _lastClusterSymbolEidKey
            ] = _index;
        }

        _registry.values.pop();

        // clear removed keys
        delete _registry.indexByProxyEid[_proxyEidKey];
        delete _registry.indexByClusterSymbolEid[_clusterSymbolEidKey];
    }

    /// @notice Returns true when a proxy is registered for the given address/endpoint pair.
    function contains(
        RegistrySet storage _set,
        ContractType _contractType,
        bytes32 _proxyAddress,
        uint32 _eid
    ) external view returns (bool) {
        ProxyRegistry storage _registry = _set.registries[_contractType];
        return
            _registry.indexByProxyEid[
                _computeProxyEidKey(_proxyAddress, _eid)
            ] != 0;
    }

    /// @notice Returns true when a proxy is registered for the given cluster/symbol/endpoint tuple.
    function contains(
        RegistrySet storage _set,
        ContractType _contractType,
        string memory _clusterName,
        string memory _symbol,
        uint32 _eid
    ) external view returns (bool) {
        ProxyRegistry storage _registry = _set.registries[_contractType];
        return
            _registry.indexByClusterSymbolEid[
                _computeClusterSymbolEidKey(
                    _contractType,
                    _clusterName,
                    _symbol,
                    _eid
                )
            ] != 0;
    }

    /// @notice Returns the number of proxies registered under the provided contract type.
    function length(
        RegistrySet storage _set,
        ContractType _contractType
    ) external view returns (uint256) {
        return _set.registries[_contractType].values.length;
    }

    /// @notice Returns the proxy metadata stored at index.
    /// @param _set Registry set storing contract-type specific registries.
    /// @param _contractType Contract type.
    /// @param _index Index.
    /// @return ProxyInfo metadata stored at the index.
    function at(
        RegistrySet storage _set,
        ContractType _contractType,
        uint256 _index
    ) external view returns (ProxyInfo memory) {
        ProxyRegistry storage _registry = _set.registries[_contractType];
        if (_index >= _registry.values.length) revert Errors.ProxyNotSet();
        return _registry.values[_index];
    }

    /// @notice Attempts to fetch proxy metadata keyed by proxy address and endpoint.
    /// @param _set Registry set storing contract-type specific registries.
    /// @param _contractType Contract type.
    /// @param _proxyAddress Bytes32 proxy address bytes32(uint256(uint160(address))).
    /// @param _eid LayerZero endpoint identifier associated with the proxy.
    /// @return status True when the proxy exists.
    /// @return proxyInfo Proxy metadata when present (zeroed otherwise).
    function get(
        RegistrySet storage _set,
        ContractType _contractType,
        bytes32 _proxyAddress,
        uint32 _eid
    ) external view returns (bool status, ProxyInfo memory proxyInfo) {
        status = true;
        ProxyRegistry storage _registry = _set.registries[_contractType];
        uint256 _idxPlus = _registry.indexByProxyEid[
            _computeProxyEidKey(_proxyAddress, _eid)
        ];
        if (_idxPlus == 0) {
            status = false;
        } else {
            proxyInfo = _registry.values[_idxPlus - 1];
        }
    }

    /// @notice Attempts to fetch proxy metadata keyed by cluster name, symbol, and endpoint.
    /// @param _set Registry set storing contract-type specific registries.
    /// @param _contractType Contract type.
    /// @param _clusterName Cluster identifier.
    /// @param _symbol Underlying asset symbol paired with the cluster.
    /// @param _eid LayerZero endpoint identifier associated with the proxy.
    /// @return status True when the proxy exists.
    /// @return proxyInfo Proxy metadata when present (zeroed otherwise).
    function get(
        RegistrySet storage _set,
        ContractType _contractType,
        string calldata _clusterName,
        string calldata _symbol,
        uint32 _eid
    ) external view returns (bool status, ProxyInfo memory proxyInfo) {
        status = true;
        ProxyRegistry storage _registry = _set.registries[_contractType];
        uint256 _idxPlus = _registry.indexByClusterSymbolEid[
            _computeClusterSymbolEidKey(
                _contractType,
                _clusterName,
                _symbol,
                _eid
            )
        ];
        if (_idxPlus == 0) {
            status = false;
        } else {
            proxyInfo = _registry.values[_idxPlus - 1];
        }
    }

    /// @notice Returns the full list of proxy addresses and associated endpoint IDs for a contract type.
    /// @param _set Registry set storing contract-type specific registries.
    /// @param _contractType Contract type.
    /// @return proxies Bytes32 proxy addresses corresponding to each registry entry.
    /// @return eids LayerZero endpoint IDs corresponding to the proxy deployment chain.
    function values(
        RegistrySet storage _set,
        ContractType _contractType
    ) external view returns (bytes32[] memory proxies, uint32[] memory eids) {
        ProxyRegistry storage _registry = _set.registries[_contractType];
        uint256 _len = _registry.values.length;
        proxies = new bytes32[](_len);
        eids = new uint32[](_len);
        for (uint256 i = 0; i < _len; i++) {
            ProxyInfo storage pi = _registry.values[i];
            proxies[i] = pi.proxyAddress;
            eids[i] = pi.eid;
        }
    }

    /// @notice Returns the full list of proxy entries for a contract type.
    /// @dev Copies storage into memory; intended for off-chain reads and bootstrap seeding.
    /// @param _set Registry set storing contract-type specific registries.
    /// @param _contractType Contract type.
    /// @return _entries Array of ProxyInfo entries including cluster and symbol metadata.
    function entries(
        RegistrySet storage _set,
        ContractType _contractType
    ) external view returns (ProxyInfo[] memory _entries) {
        ProxyRegistry storage _registry = _set.registries[_contractType];
        uint256 _len = _registry.values.length;
        _entries = new ProxyInfo[](_len);
        for (uint256 i = 0; i < _len; i++) {
            ProxyInfo storage pi = _registry.values[i];
            _entries[i] = ProxyInfo({
                proxyAddress: pi.proxyAddress,
                eid: pi.eid,
                clusterName: pi.clusterName,
                symbol: pi.symbol
            });
        }
    }

    /// @notice Imports a batch of proxy entries into the registry set, ignoring duplicates.
    /// @dev Length mismatch reverts; duplicate entries are skipped without reverting.
    /// @param _set Registry set storing contract-type specific registries.
    /// @param _contractTypes Contract types per entry.
    /// @param _entries Proxy metadata entries aligned with `_contractTypes`.
    function importBatch(
        RegistrySet storage _set,
        ContractType[] memory _contractTypes,
        ProxyInfo[] memory _entries
    ) external {
        if (_contractTypes.length != _entries.length)
            revert Errors.LengthMismatch();
        uint256 len = _contractTypes.length;
        for (uint256 i = 0; i < len; i++) {
            ContractType _contractType = _contractTypes[i];
            ProxyRegistry storage _registry = _set.registries[_contractType];
            ProxyInfo memory _info = _entries[i];

            bytes32 _proxyEidKey = _computeProxyEidKey(
                _info.proxyAddress,
                _info.eid
            );

            bytes32 _clusterSymbolEidKey = _computeClusterSymbolEidKey(
                _contractType,
                _info.clusterName,
                _info.symbol,
                _info.eid
            );

            if (
                _registry.indexByProxyEid[_proxyEidKey] != 0 ||
                _registry.indexByClusterSymbolEid[_clusterSymbolEidKey] != 0
            ) {
                if (_singleContractType(_contractType))
                    revert Errors.ImportCollision();
                continue; // skip duplicates
            }

            _registry.values.push(_info);

            uint256 _newIndex = _registry.values.length; // index + 1
            _registry.indexByProxyEid[_proxyEidKey] = _newIndex;
            _registry.indexByClusterSymbolEid[_clusterSymbolEidKey] = _newIndex;
        }
    }
}
