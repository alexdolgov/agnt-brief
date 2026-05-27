// Copyright 2024 DTCC All Rights Reserved
// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

/// @title UpgradabilityStorage
/// @notice Storage contract for upgradable contracts.
library UpgradabilityStorageLib {
    // keccak256(abi.encode(uint256(keccak256("Upgradability")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 private constant UPGRADABILITY_STORAGE_LOCATION =
        0x79e2f5364a1794e543a069ea9d772e7a103a0756ed0aae5fe6d593fa5df39f00;

    /// @dev Storage of the Upgradability contract.
    /// It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
    /// when using with upgradeable contracts.
    /// @custom:storage-location erc7201:upgradability
    // solhint-disable-next-line ordering
    struct UpgradabilityStorage {
        // Address of the initialization owner
        address _initializationOwnerAddress;
        // Address of the updates repository
        address _updatesRepositoryAddress;
        // Mapping of method selectors to their implementation addresses
        mapping(bytes4 methodSelector => address implementationAddress) _methodsImplementations;
        // packageAddress => functionSelectors
        mapping(address packageAddress => bytes4[] functionSelectors) _packageFunctionSelectors;
        // Mapping of interface identifiers to their support status
        mapping(bytes4 interfaceId => bool isSupported) _supportedInterfaces;
    }

    /// @notice Returns the storage slot of UpgradabilityStorage struct
    function _getUpgradabilityStorage() internal pure returns (UpgradabilityStorage storage _storage) {
        assembly {
            _storage.slot := UPGRADABILITY_STORAGE_LOCATION
        }
    }
}
