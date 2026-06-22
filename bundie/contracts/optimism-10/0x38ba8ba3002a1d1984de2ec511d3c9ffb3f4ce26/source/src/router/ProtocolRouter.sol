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

import {Router} from "./base/Router.sol";
import {Initializable} from "lib/openzeppelin-contracts/contracts/proxy/utils/Initializable.sol";

/// @title ProtocolRouter
/// @author Bundie Team
/// @notice Concrete implementation of Router for beacon proxy deployment
/// @dev Template contract deployed as the beacon implementation. Each protocol
///      (Aave, Morpho, Yearn) gets a BeaconProxy pointing to this shared implementation.
///      Implementation cannot be initialized directly - only proxies can be initialized.
///
/// ## Beacon Proxy Pattern
/// The beacon proxy pattern separates storage (proxy) from logic (implementation):
/// - Implementation: This contract, deployed once, contains all logic
/// - Beacon: Points to the implementation, owned by RouterManager
/// - Proxies: One per protocol, delegate to beacon's implementation
///
/// ## Upgrade Flow
/// 1. Deploy new ProtocolRouter implementation
/// 2. Queue upgrade via RouterManager.queueRouterBaseLogic()
/// 3. Wait for MIN_UPGRADE_DELAY
/// 4. Execute via RouterManager.upgradeRouterBaseLogic()
/// 5. All protocol routers now use the new implementation
///
/// ## Why inherit Initializable?
/// The Initializable contract prevents:
/// - Implementation being initialized directly (security risk)
/// - Proxies being initialized twice (prevents state reset)
///
/// ## Protocol Naming
/// The `protocolName` is used for:
/// - Strategy ID generation (included in the hash)
/// - Human-readable identification
/// - Off-chain indexing
contract ProtocolRouter is Initializable, Router {
    /// @notice Initialize the implementation contract
    /// @dev Constructor disables initializers to prevent the implementation from being initialized directly.
    ///      This is a security measure: if the implementation could be initialized, an attacker could
    ///      initialize it with malicious parameters and potentially disrupt the system.
    /// @param _routerManager RouterManager contract address (becomes owner of proxies)
    constructor(address _routerManager) Router(_routerManager) {
        // Disable all initializers on the implementation contract itself
        // Only BeaconProxy instances should be initialized
        _disableInitializers();
    }

    /// @notice Initialize a protocol router proxy
    /// @dev Called by RouterManager during proxy deployment via BeaconProxy constructor.
    ///      Sets the protocol name and transfers ownership to RouterManager.
    ///      Can only be called once per proxy due to `initializer` modifier.
    /// @param _protocolName Protocol name (e.g., "AAVE", "MORPHO", "YEARN")
    function initialize(string memory _protocolName) external initializer {
        // Set the protocol name for this router instance
        // Used in strategy ID generation: keccak256(protocolName + strategyName + chainId)
        protocolName = _protocolName;
        // Transfer ownership to RouterManager so only it can modify strategies
        // The RouterManager is the central authority for all protocol routers
        _transferOwnership(ROUTER_MANAGER);
    }
}
