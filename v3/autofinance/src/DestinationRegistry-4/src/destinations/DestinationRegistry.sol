// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

import { AutopilotErrors } from "src/utils/AutopilotErrors.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { SecurityBase } from "src/security/SecurityBase.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IDestinationAdapter } from "src/interfaces/destinations/IDestinationAdapter.sol";
import { IDestinationRegistry } from "src/interfaces/destinations/IDestinationRegistry.sol";
import { Roles } from "src/libs/Roles.sol";

contract DestinationRegistry is SystemComponent, SecurityBase, IDestinationRegistry {
    mapping(bytes32 => IDestinationAdapter) public destinations;
    mapping(bytes32 => bool) public allowedTypes;

    constructor(
        ISystemRegistry _systemRegistry
    ) SystemComponent(_systemRegistry) SecurityBase(address(_systemRegistry.accessController())) { }

    /// @inheritdoc IDestinationRegistry
    function register(
        bytes32[] calldata destinationTypes,
        address[] calldata targets
    ) public override hasRole(Roles.DESTINATION_VAULT_REGISTRY_MANAGER) {
        AutopilotErrors.verifyArrayLengths(destinationTypes.length, targets.length, "types+targets");
        for (uint256 i = 0; i < destinationTypes.length; ++i) {
            bytes32 destination = destinationTypes[i];
            if (!isWhitelistedDestination(destination)) {
                revert NotAllowedDestination();
            }
            address target = targets[i];
            AutopilotErrors.verifyNotZero(target, "target");

            if (address(destinations[destination]) != address(0)) {
                revert DestinationAlreadySet();
            }

            AutopilotErrors.verifySystemsMatch(address(this), target);

            destinations[destination] = IDestinationAdapter(target);
        }
        emit Register(destinationTypes, targets);
    }

    /// @inheritdoc IDestinationRegistry
    function replace(
        bytes32[] calldata destinationTypes,
        address[] calldata targets
    ) public override hasRole(Roles.DESTINATION_VAULT_REGISTRY_MANAGER) {
        AutopilotErrors.verifyArrayLengths(destinationTypes.length, targets.length, "types+targets");
        for (uint256 i = 0; i < destinationTypes.length; ++i) {
            address target = targets[i];
            AutopilotErrors.verifyNotZero(target, "target");

            AutopilotErrors.verifySystemsMatch(address(this), target);

            bytes32 destination = destinationTypes[i];
            IDestinationAdapter existingDestination = destinations[destination];
            AutopilotErrors.verifyNotZero(address(existingDestination), "existingDestination");

            if (address(existingDestination) == target) {
                revert DestinationAlreadySet();
            }
            destinations[destination] = IDestinationAdapter(target);
        }
        emit Replace(destinationTypes, targets);
    }

    /// @inheritdoc IDestinationRegistry
    function unregister(
        bytes32[] calldata destinationTypes
    ) public override hasRole(Roles.DESTINATION_VAULT_REGISTRY_MANAGER) {
        for (uint256 i = 0; i < destinationTypes.length; ++i) {
            bytes32 destination = destinationTypes[i];
            AutopilotErrors.verifyNotZero(address(destinations[destination]), "destAddress");
            //slither-disable-next-line costly-loop
            delete destinations[destination];
        }
        emit Unregister(destinationTypes);
    }

    /// @inheritdoc IDestinationRegistry
    function getAdapter(
        bytes32 destinationType
    ) public view override returns (IDestinationAdapter target) {
        target = destinations[destinationType];
        AutopilotErrors.verifyNotZero(address(target), "target");
    }

    /// @inheritdoc IDestinationRegistry
    function addToWhitelist(
        bytes32[] calldata destinationTypes
    ) external override hasRole(Roles.DESTINATION_VAULT_REGISTRY_MANAGER) {
        for (uint256 i = 0; i < destinationTypes.length; ++i) {
            if (allowedTypes[destinationTypes[i]]) {
                revert DestinationAlreadySet();
            }
            allowedTypes[destinationTypes[i]] = true;
        }
        emit Whitelist(destinationTypes);
    }

    /// @inheritdoc IDestinationRegistry
    function removeFromWhitelist(
        bytes32[] calldata destinationTypes
    ) external override hasRole(Roles.DESTINATION_VAULT_REGISTRY_MANAGER) {
        for (uint256 i = 0; i < destinationTypes.length; ++i) {
            bytes32 destination = destinationTypes[i];
            if (!allowedTypes[destination]) {
                revert AutopilotErrors.ItemNotFound();
            }
            if (address(destinations[destination]) != address(0)) {
                // cannot remove from whitelist already registered type – must unregister first
                revert DestinationAlreadySet();
            }
            //slither-disable-next-line costly-loop
            delete allowedTypes[destination];
        }
        emit RemoveFromWhitelist(destinationTypes);
    }

    /// @inheritdoc IDestinationRegistry
    function isWhitelistedDestination(
        bytes32 destinationType
    ) public view override returns (bool) {
        return allowedTypes[destinationType];
    }
}
