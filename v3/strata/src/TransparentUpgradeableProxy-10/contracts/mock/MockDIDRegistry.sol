// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../interfaces/IIDIDRegistry.sol";

contract MockDIDRegistry is IIDIDRegistry {
    mapping(bytes => bool) private registeredDIDs;
    mapping(bytes => address) private controllers;

    /**
     * @dev Checks if a DID is registered.
     */
    function isDIDRegistered(bytes calldata id) external view override returns (bool) {
        return registeredDIDs[id];
    }

    /**
     * @dev Retrieves the controller address for a DID.
     */
    function getController(bytes calldata id) external view override returns (address) {
        return controllers[id];
    }

    /**
     * @dev Registers a new DID with a controller address.
     * Can be called by any account for testing purposes.
     */
    function registerDID(bytes calldata id, address controller) external {
        require(!registeredDIDs[id], "DID already registered");
        require(controller != address(0), "Invalid controller address");
        registeredDIDs[id] = true;
        controllers[id] = controller;
    }
}