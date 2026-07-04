// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {BeaconModuleManager} from "../lib/BeaconModuleManager.sol";
import {Errors} from "../lib/Errors.sol";

/// @title VaultManager
/// @author Bundie Team
/// @notice Factory and registry for deploying and managing vault module instances
/// @dev Uses beacon proxy pattern via BeaconModuleManager base. Each vault standard type
///      (e.g., "erc4626", "erc7540", "usx") gets its own beacon, allowing independent upgrades.
///
///      ## Vault Module Lifecycle
///      1. Owner deploys a vault module via deployVaultModule() with an implementation + init data
///      2. A new UpgradeableBeacon + BeaconProxy pair is created
///      3. Routers reference the vault module proxy address in strategy configurations
///      4. Owner can upgrade the vault module implementation via upgradeVaultModule()
///
///      ## Relationship to Routers
///      ProtocolRouter strategies reference vault module addresses for deposit/withdrawal operations.
///      When a vault interacts with a yield strategy, the router delegates to the vault module.
contract VaultManager is BeaconModuleManager {
    // ========================== Events ==========================

    /// @notice Emitted when a new vault module is deployed
    event VaultModuleDeployed(string indexed name, address indexed beacon, address indexed proxy);
    /// @notice Emitted when a vault module implementation is upgraded
    event VaultModuleUpgraded(string indexed name, address oldImpl, address newImpl);

    // ========================== External View Functions ==========================

    /// @notice Get the proxy address for a deployed vault module
    /// @param name Vault module identifier (e.g., "erc4626", "usx")
    /// @return Vault module proxy address (address(0) if not deployed)
    function getVaultModule(string calldata name) external view returns (address) {
        return modules[name];
    }

    /// @notice Get all deployed module names
    function getAllVaultModules() external view returns (string[] memory) {
        return names;
    }

    /// @notice Get total number of deployed modules
    function getVaultModuleCount() external view returns (uint256) {
        return names.length;
    }

    // ========================== Admin Functions ==========================

    /// @notice Deploy a new vault module with beacon proxy pattern
    /// @param name Vault module identifier (must be unique and non-empty)
    /// @param implementation Address of the vault module implementation contract
    /// @param initData ABI-encoded initialization calldata for the proxy
    /// @return proxy Address of the deployed vault module proxy
    function deployVaultModule(string calldata name, address implementation, bytes calldata initData)
        external
        onlyOwner
        returns (address proxy)
    {
        proxy = _deployModule(name, implementation, initData);
        emit VaultModuleDeployed(name, address(beacons[name]), proxy);
    }

    /// @notice Upgrade a vault module to a new implementation
    /// @dev Upgrades the beacon, which instantly affects the vault module proxy.
    /// @param name Vault module identifier (must be deployed)
    /// @param newImplementation Address of the new implementation (must differ from current)
    function upgradeVaultModule(string calldata name, address newImplementation) external onlyOwner {
        address oldImpl = _upgradeModule(name, newImplementation);
        emit VaultModuleUpgraded(name, oldImpl, newImplementation);
    }

    /// @notice Execute an arbitrary function call on a vault module
    /// @dev Low-level call for admin operations. Reverts on failure with ExternalCallFailed.
    /// @param name Vault module identifier (must be deployed)
    /// @param callData ABI-encoded function call data to forward to the module
    /// @return success Always true (reverts on failure)
    /// @return returnData Return data from the vault module call
    function executeVaultModuleCall(string calldata name, bytes calldata callData)
        external
        onlyOwner
        returns (bool success, bytes memory returnData)
    {
        address moduleAddress = modules[name];
        require(moduleAddress != address(0), Errors.ProtocolNotFound(name));

        (success, returnData) = moduleAddress.call(callData);
        require(success, Errors.ExternalCallFailed());
    }
}
