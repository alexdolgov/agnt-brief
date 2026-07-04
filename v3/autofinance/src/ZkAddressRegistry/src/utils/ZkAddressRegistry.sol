// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { Roles } from "src/libs/Roles.sol";
import { Errors } from "src/utils/Errors.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { Initializable } from "openzeppelin-contracts/proxy/utils/Initializable.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";

/// @notice Stores lists of addresses to use as config for ZK
contract ZkAddressRegistry is SystemComponent, SecurityBase {
    using EnumerableSet for EnumerableSet.AddressSet;

    /// =====================================================
    /// Private Vars
    /// =====================================================

    /// @notice listType => address[]
    /// @dev Exposed via getAddresses(bytes32)
    mapping(bytes32 => EnumerableSet.AddressSet) private configuration;

    /// =====================================================
    /// Events
    /// =====================================================

    event AddressesAdded(bytes32 listType, address[] addresses);

    event AddressesRemoved(bytes32 listType, address[] addresses);

    /// =====================================================
    /// Functions - Constructor
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry,
        bytes32[] memory initialListTypes,
        address[][] memory initialAddresses
    ) SystemComponent(_systemRegistry) SecurityBase(address(_systemRegistry.accessController())) {
        uint256 len = initialListTypes.length;
        Errors.verifyArrayLengths(len, initialAddresses.length, "init");

        for (uint256 i = 0; i < len; ++i) {
            _addAddresses(initialListTypes[i], initialAddresses[i]);
        }
    }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @notice Add addresses to the config
    /// @param listType keccak256() hash of "lst", "lstForBase", "dex", etc
    /// @param addresses addresses to add
    function addAddresses(bytes32 listType, address[] memory addresses) external hasRole(Roles.ZK_CONFIG_UPDATER) {
        _addAddresses(listType, addresses);
    }

    /// @notice Remove addresses from the config
    /// @param listType keccak256() hash of "lst", "lstForBase", "dex", etc
    /// @param addresses Addresses to remove
    function removeAddresses(bytes32 listType, address[] memory addresses) external hasRole(Roles.ZK_CONFIG_UPDATER) {
        uint256 len = addresses.length;
        for (uint256 i = 0; i < len; ++i) {
            // slither-disable-next-line unused-return
            configuration[listType].remove(addresses[i]);
        }

        emit AddressesRemoved(listType, addresses);
    }

    /// @notice Returns addresses based on the provided listType
    function getAddresses(
        bytes32 listType
    ) external view returns (address[] memory) {
        return configuration[listType].values();
    }

    /// =====================================================
    /// Functions - Private
    /// =====================================================

    function _addAddresses(bytes32 listType, address[] memory addresses) private {
        uint256 len = addresses.length;
        for (uint256 i = 0; i < len; ++i) {
            // slither-disable-next-line unused-return
            configuration[listType].add(addresses[i]);
        }

        emit AddressesAdded(listType, addresses);
    }
}
