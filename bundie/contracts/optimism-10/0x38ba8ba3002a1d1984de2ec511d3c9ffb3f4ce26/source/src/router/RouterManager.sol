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
import {ProtocolRouter} from "./ProtocolRouter.sol";
import {Router} from "./base/Router.sol";
import {Events} from "../lib/Events.sol";
import {Errors} from "../lib/Errors.sol";
import {TimelockUpgrade} from "../lib/TimelockUpgrade.sol";
import {IAccountManager} from "../interface/IAccountManager.sol";

/// @title RouterManager
/// @author Bundie Team
/// @notice Factory and registry for deploying and managing protocol routers
/// @dev Manages the lifecycle of protocol routers using the beacon proxy pattern.
///      Each protocol (Aave, Morpho, Yearn) has exactly one router deployed through this manager.
///      Only owner can deploy routers, configure strategies, and upgrade.
///
/// ## Architecture
/// - Single UpgradeableBeacon shared by all protocol routers
/// - Each protocol gets exactly one BeaconProxy (ProtocolRouter)
/// - Strategy registration creates strategyId → router mappings
/// - Accounts use `getRouterForStrategy()` to find the right router for any strategy
///
/// ## Upgrade Safety
/// - MIN_UPGRADE_DELAY (1 day) between scheduling and execution
/// - New implementation must have correct ROUTER_MANAGER reference
/// - Upgrading beacon upgrades ALL protocol routers simultaneously
contract RouterManager is Ownable2Step, TimelockUpgrade {
    // ========================== State Variables ==========================

    /// @notice Beacon for all protocol routers - shared base logic
    /// @dev Created in constructor with initial ProtocolRouter implementation. Owned by this contract.
    UpgradeableBeacon public immutable ROUTER_BEACON;

    /// @notice AccountManager reference for account verification
    /// @dev Set post-deployment via setAccountManager(). Used by routers to verify account callers.
    IAccountManager public accountManager;

    /// @notice Mapping of protocol name to router address
    /// @dev Each protocol (e.g., "aave", "morpho") maps to exactly one BeaconProxy router.
    mapping(string => address) public routers;

    /// @notice Array of all deployed protocol names for enumeration
    /// @dev Append-only; protocol names are never removed.
    string[] public protocols;

    /// @notice Mapping of strategy ID to router address
    /// @dev Updated when strategies are registered via setStrategyOnRouter().
    ///      Vaults use this to find the correct router for any strategyId.
    mapping(bytes32 => address) public strategyToRouter;

    // ========================== Storage Gaps ==========================
    uint256[45] private __gap;

    // ========================== Constructor ==========================

    constructor() Ownable(msg.sender) {
        address initialImpl = address(new ProtocolRouter(address(this)));
        ROUTER_BEACON = new UpgradeableBeacon(initialImpl, address(this));
    }

    // ========================== External View Functions ==========================

    /// @notice Check if an address is a registered account
    /// @dev Delegates to AccountManager. Returns false if accountManager is not set.
    /// @param account Address to check
    /// @return isRegistered True if the address is a registered account
    function isRegisteredAccount(address account) external view returns (bool isRegistered) {
        if (address(accountManager) == address(0)) return false;
        return accountManager.isRegisteredAccount(account);
    }

    /// @notice Get router address for a protocol
    /// @param protocol Protocol name (e.g., "aave", "morpho")
    /// @return router Address of the protocol's router (reverts if not deployed)
    function getRouter(string calldata protocol) external view returns (address router) {
        router = routers[protocol];
        require(router != address(0), Errors.ProtocolNotFound(protocol));
    }

    /// @notice Get router address that manages a specific strategy
    /// @param strategyId Strategy identifier (keccak256 hash)
    /// @return router Router address managing this strategy (reverts if not found)
    function getRouterForStrategy(bytes32 strategyId) external view returns (address router) {
        router = strategyToRouter[strategyId];
        require(router != address(0), Errors.StrategyNotFound(strategyId));
    }

    /// @notice Get all registered protocol names
    function getAllProtocols() external view returns (string[] memory) {
        return protocols;
    }

    /// @notice Get total number of deployed routers
    function getProtocolCount() external view returns (uint256) {
        return protocols.length;
    }

    // ========================== External State-Changing Functions ==========================

    /// @notice Set the AccountManager reference
    /// @dev Validates the address is a contract that implements isRegisteredAccount().
    ///      This is a one-time setup step after deployment (can be updated if needed).
    /// @param _accountManager Address of the AccountManager contract
    function setAccountManager(address _accountManager) external onlyOwner {
        require(_accountManager != address(0), Errors.InvalidAddress());
        require(_accountManager.code.length > 0, Errors.InvalidAccountManager(_accountManager));

        (bool ok, bytes memory data) = _accountManager.staticcall(
            abi.encodeWithSelector(IAccountManager.isRegisteredAccount.selector, address(this))
        );
        require(ok && data.length >= 32, Errors.InvalidAccountManager(_accountManager));

        accountManager = IAccountManager(_accountManager);
        emit Events.AccountManagerSet(_accountManager);
    }

    /// @notice Deploy a new router for a protocol
    /// @dev Creates a BeaconProxy pointing to ROUTER_BEACON and initializes it with the protocol name.
    ///      Each protocol can only have one router (prevents duplicates).
    /// @param protocol Protocol name (e.g., "aave", "morpho") — must be non-empty and unique
    /// @return router Address of the newly deployed BeaconProxy router
    function deployRouter(string calldata protocol) external onlyOwner returns (address router) {
        require(routers[protocol] == address(0), Errors.ProtocolAlreadyExists(protocol));
        require(bytes(protocol).length > 0, Errors.EmptyProtocolName());

        bytes memory initData = abi.encodeWithSelector(ProtocolRouter.initialize.selector, protocol);
        router = address(new BeaconProxy(address(ROUTER_BEACON), initData));

        routers[protocol] = router;
        protocols.push(protocol);

        emit Events.RouterDeployed(protocol, router);
    }

    /// @notice Queue an upgrade of the base router implementation with enforced delay
    /// @dev Validates ROUTER_MANAGER reference on the new implementation before queueing.
    ///      Upgrade can be executed after MIN_UPGRADE_DELAY elapses.
    /// @param newImplementation Address of the new ProtocolRouter implementation
    function queueRouterBaseLogic(address newImplementation) external onlyOwner {
        // Domain-specific: verify ROUTER_MANAGER reference before queueing
        _validateRouterManager(newImplementation);
        _queueUpgrade(ROUTER_BEACON, newImplementation);
        emit Events.RouterUpgradeQueued(ROUTER_BEACON.implementation(), newImplementation, pendingUpgradeEta);
    }

    /// @notice Upgrade base router logic for ALL protocol routers
    /// @dev Re-validates ROUTER_MANAGER reference and executes the queued upgrade.
    ///      Must be called with the same implementation that was queued.
    /// @param newImplementation Address of the new ProtocolRouter implementation (must match queued)
    function upgradeRouterBaseLogic(address newImplementation) external onlyOwner {
        // Domain-specific: verify ROUTER_MANAGER reference before executing
        _validateRouterManager(newImplementation);
        address oldImpl = _executeUpgrade(ROUTER_BEACON, newImplementation);
        emit Events.RouterUpgraded(oldImpl, newImplementation);
    }

    /// @notice Cancel a queued router implementation upgrade
    function cancelQueuedRouterUpgrade() external onlyOwner {
        address cancelled = _cancelUpgrade();
        emit Events.RouterUpgradeCancelled(cancelled);
    }

    /// @notice Set or update a strategy on a specific router
    /// @dev Registers the strategy on the router and records the strategyId → router mapping.
    ///      Strategy ID is deterministic (keccak256 of protocol + strategy name + chainId).
    /// @param protocol Protocol name whose router to configure
    /// @param strategy Strategy configuration struct
    /// @return id The computed strategy identifier
    function setStrategyOnRouter(string calldata protocol, Router.Strategy calldata strategy)
        external
        onlyOwner
        returns (bytes32 id)
    {
        address routerAddress = routers[protocol];
        require(routerAddress != address(0), Errors.InvalidRouter(address(0)));

        id = Router(routerAddress).setStrategy(strategy);
        strategyToRouter[id] = routerAddress;
    }

    /// @notice Enable or disable a strategy on a router
    /// @param protocol Protocol name whose router manages the strategy
    /// @param id Strategy identifier to enable/disable
    /// @param enabled True to enable, false to disable
    function enableStrategyOnRouter(string calldata protocol, bytes32 id, bool enabled) external onlyOwner {
        require(routers[protocol] != address(0), Errors.InvalidRouter(address(0)));
        Router(routers[protocol]).enableStrategy(id, enabled);
    }

    // ========================== Router Execution Functions ==========================

    /// @notice Execute an arbitrary function call on a protocol router
    /// @dev Low-level call for admin operations not covered by specific functions.
    ///      Reverts if the call fails (propagates the router's revert reason).
    /// @param protocol Protocol name whose router to call
    /// @param callData ABI-encoded function call data
    /// @return success Always true (reverts on failure)
    /// @return returnData Return data from the router call
    function executeRouterCall(string calldata protocol, bytes calldata callData)
        external
        onlyOwner
        returns (bool success, bytes memory returnData)
    {
        address routerAddress = routers[protocol];
        require(routerAddress != address(0), Errors.ProtocolNotFound(protocol));

        (success, returnData) = routerAddress.call(callData);
        require(success, Errors.ExternalCallFailed());
    }

    // ========================== Internal Helpers ==========================

    /// @notice Validate that the implementation's ROUTER_MANAGER points to this contract
    /// @dev Critical safety check: prevents upgrading to an implementation that references
    ///      a different RouterManager, which would break the trust chain between routers and manager.
    /// @param newImplementation Implementation address to validate
    function _validateRouterManager(address newImplementation) internal view {
        require(newImplementation != address(0), Errors.InvalidRouter(newImplementation));
        address newImplManager = Router(newImplementation).ROUTER_MANAGER();
        require(newImplManager == address(this), Errors.InvalidRouter(newImplementation));
    }
}
