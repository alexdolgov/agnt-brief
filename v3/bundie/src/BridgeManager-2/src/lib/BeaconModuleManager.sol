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

import {Ownable} from "lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import {Ownable2Step} from "lib/openzeppelin-contracts/contracts/access/Ownable2Step.sol";
import {BeaconProxy} from "lib/openzeppelin-contracts/contracts/proxy/beacon/BeaconProxy.sol";
import {UpgradeableBeacon} from "lib/openzeppelin-contracts/contracts/proxy/beacon/UpgradeableBeacon.sol";

import {Errors} from "./Errors.sol";

/// @title BeaconModuleManager
/// @author Bundie Team
/// @notice Abstract base for factory/registry contracts that deploy and manage modules via beacon proxy pattern
/// @dev Shared logic for BridgeManager and AccountManager. Each module type gets its own
///      UpgradeableBeacon; upgrading a beacon upgrades all proxies of that type simultaneously.
///
///      ## Architecture
///      - One UpgradeableBeacon per module type (e.g., "stargate", "layerzero")
///      - One BeaconProxy per module name deployed via _deployModule()
///      - Upgrading a beacon upgrades ALL proxies of that type in a single tx
///
///      ## Why beacon proxy?
///      Unlike UUPS or transparent proxy, beacon proxy allows batch upgrades of
///      all modules sharing the same implementation. This simplifies protocol-wide
///      upgrades while keeping per-module state isolation.
///
///      ## Subclass Responsibilities
///      - Access control on deploy/upgrade/execute (typically onlyOwner)
///      - Domain-specific events (BridgeDeployed, ModuleUpgraded, etc.)
///      - Custom validation before deployment or upgrade
abstract contract BeaconModuleManager is Ownable2Step {
    // ========================== State Variables ==========================

    /// @notice Mapping of module name to its UpgradeableBeacon
    /// @dev Each module name gets a unique beacon, enabling independent upgrade paths per module type.
    mapping(string => UpgradeableBeacon) public beacons;

    /// @notice Mapping of module name to its deployed BeaconProxy address
    /// @dev The proxy delegates to the beacon's current implementation. Address is stable across upgrades.
    mapping(string => address) public modules;

    /// @notice Array of all deployed module names for enumeration
    /// @dev Append-only; names are never removed. Used by getAllBridges()/getAllModules() views.
    string[] public names;

    /// @notice Reverse lookup: proxy address → registered module
    /// @dev Set to true in _deployModule(). Used by Relayer to verify callers are registered bridge modules.
    mapping(address => bool) public isModule;

    // ========================== Constructor ==========================

    constructor() Ownable(msg.sender) {}

    // ========================== External View Functions ==========================

    /// @notice Get the beacon address for a module type
    /// @param name Module identifier (e.g., "stargate", "layerzero")
    /// @return Beacon address (address(0) if module not deployed)
    function getBeacon(string calldata name) external view returns (address) {
        return address(beacons[name]);
    }

    /// @notice Get the current implementation address for a module
    /// @param name Module identifier
    /// @return Current implementation address the beacon points to
    function getImplementation(string calldata name) external view returns (address) {
        UpgradeableBeacon beacon = beacons[name];
        require(address(beacon) != address(0), Errors.ProtocolNotFound(name));
        return beacon.implementation();
    }

    /// @notice Get total number of deployed modules
    /// @return Total count of modules deployed through this manager
    function getModuleCount() external view returns (uint256) {
        return names.length;
    }

    // ========================== Internal Functions ==========================

    /// @notice Deploy a new module with beacon proxy pattern
    /// @dev Creates a new UpgradeableBeacon + BeaconProxy pair. The beacon is owned by this
    ///      contract, allowing future upgrades. Each module name can only be deployed once.
    /// @param name Module identifier (must be non-empty and unique)
    /// @param implementation Address of the implementation contract (must be non-zero)
    /// @param initData ABI-encoded initialization calldata for the proxy (must be non-empty)
    /// @return proxy Address of the deployed beacon proxy
    function _deployModule(string calldata name, address implementation, bytes calldata initData)
        internal
        returns (address proxy)
    {
        require(modules[name] == address(0), Errors.ProtocolAlreadyExists(name));
        require(implementation != address(0), Errors.InvalidAddress());
        require(bytes(name).length > 0, Errors.EmptyProtocolName());
        require(initData.length > 0, Errors.InvalidAddress());

        UpgradeableBeacon beacon = new UpgradeableBeacon(implementation, address(this));
        beacons[name] = beacon;

        proxy = address(new BeaconProxy(address(beacon), initData));

        modules[name] = proxy;
        isModule[proxy] = true;
        names.push(name);
    }

    /// @notice Upgrade a module's beacon to a new implementation
    /// @dev Upgrades the beacon, which instantly upgrades all proxies sharing it.
    ///      Reverts if the new implementation is the same as the current one.
    /// @param name Module identifier to upgrade (must exist)
    /// @param newImplementation Address of the new implementation contract
    /// @return oldImpl Previous implementation address (for event emission by caller)
    function _upgradeModule(string calldata name, address newImplementation) internal returns (address oldImpl) {
        UpgradeableBeacon beacon = beacons[name];
        require(address(beacon) != address(0), Errors.ProtocolNotFound(name));
        require(newImplementation != address(0), Errors.InvalidAddress());

        oldImpl = beacon.implementation();
        require(newImplementation != oldImpl, Errors.InvalidImplementation(newImplementation));

        beacon.upgradeTo(newImplementation);
    }

    // ========================== Storage Gaps ==========================

    /// @dev Reserved storage for future upgrades. Keeps slot layout stable for inheritors.
    uint256[46] private __gap;
}
