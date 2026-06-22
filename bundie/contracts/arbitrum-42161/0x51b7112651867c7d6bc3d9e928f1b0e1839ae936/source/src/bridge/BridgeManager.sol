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

/// @title BridgeManager
/// @author Bundie Team
/// @notice Factory and registry for deploying and managing bridge module instances
/// @dev Uses beacon proxy pattern via BeaconModuleManager base. Each bridge type
///      (e.g., "stargate", "layerzero") gets its own beacon, allowing independent upgrades.
///
///      ## Bridge Module Lifecycle
///      1. Owner deploys a bridge via deployBridge() with an implementation + init data
///      2. A new UpgradeableBeacon + BeaconProxy pair is created
///      3. Routers reference the bridge proxy address in strategy configurations
///      4. Owner can upgrade the bridge implementation via upgradeBridge()
///
///      ## Relationship to Routers
///      ProtocolRouter strategies reference bridge module addresses for cross-chain operations.
///      When a vault deposits/withdraws cross-chain, the router delegates to the bridge module.
contract BridgeManager is BeaconModuleManager {
    // ========================== Events ==========================

    /// @notice Emitted when a new bridge module is deployed
    event BridgeDeployed(string indexed name, address indexed beacon, address indexed proxy);
    /// @notice Emitted when a bridge implementation is upgraded
    event BridgeUpgraded(string indexed name, address oldImpl, address newImpl);

    // ========================== External View Functions ==========================

    /// @notice Get the proxy address for a deployed bridge
    /// @param name Bridge identifier (e.g., "stargate")
    /// @return Bridge proxy address (address(0) if not deployed)
    function getBridge(string calldata name) external view returns (address) {
        return modules[name];
    }

    /// @notice Get all deployed bridge names
    function getAllBridges() external view returns (string[] memory) {
        return names;
    }

    /// @notice Get total number of deployed bridges
    function getBridgeCount() external view returns (uint256) {
        return names.length;
    }

    // ========================== Admin Functions ==========================

    /// @notice Deploy a new bridge module with beacon proxy pattern
    /// @param name Bridge identifier (must be unique and non-empty)
    /// @param implementation Address of the bridge implementation contract
    /// @param initData ABI-encoded initialization calldata for the proxy
    /// @return proxy Address of the deployed bridge proxy
    function deployBridge(string calldata name, address implementation, bytes calldata initData)
        external
        onlyOwner
        returns (address proxy)
    {
        proxy = _deployModule(name, implementation, initData);
        emit BridgeDeployed(name, address(beacons[name]), proxy);
    }

    /// @notice Upgrade a bridge module to a new implementation
    /// @dev Upgrades the beacon, which instantly affects the bridge proxy.
    /// @param name Bridge identifier (must be deployed)
    /// @param newImplementation Address of the new implementation (must differ from current)
    function upgradeBridge(string calldata name, address newImplementation) external onlyOwner {
        address oldImpl = _upgradeModule(name, newImplementation);
        emit BridgeUpgraded(name, oldImpl, newImplementation);
    }

    /// @notice Execute an arbitrary function call on a bridge module
    /// @dev Low-level call for admin operations. Reverts on failure with BridgeOperationFailed.
    /// @param name Bridge identifier (must be deployed)
    /// @param callData ABI-encoded function call data to forward to the bridge
    /// @return success Always true (reverts on failure)
    /// @return returnData Return data from the bridge call
    function executeBridgeCall(string calldata name, bytes calldata callData)
        external
        onlyOwner
        returns (bool success, bytes memory returnData)
    {
        address bridgeAddress = modules[name];
        require(bridgeAddress != address(0), Errors.ProtocolNotFound(name));

        (success, returnData) = bridgeAddress.call(callData);
        require(success, Errors.BridgeOperationFailed());
    }
}
