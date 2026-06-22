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

import {IRouter} from "../interface/IRouter.sol";
import {Errors} from "./Errors.sol";
import {Events} from "./Events.sol";

/// @title RouterHelpers
/// @author Bundie Team
/// @notice Router helper functions with error handling
/// @dev Routers are separate contracts (per protocol). These helpers centralize:
///      - router lookup from RouterManager
///      - safe strategy fetch with consistent error reporting/logging
///
/// ## Router Lookup Flow
/// 1. Account has a strategyId it wants to execute
/// 2. `getRouterForStrategy(routerManager, strategyId)` queries RouterManager
/// 3. RouterManager returns the protocol router that owns this strategy
/// 4. Account can then call `router.executeStrategy(...)`
///
/// ## Why staticcall for router lookup?
/// Using `staticcall` instead of importing IRouterManager:
/// - Reduces import dependencies
/// - Allows flexibility if RouterManager interface changes
/// - Guarantees no state changes during lookup
///
/// ## Strategy fetch pattern
/// `safeGetStrategy` wraps the router call in try/catch:
/// - On success: returns the Strategy struct
/// - On failure: logs the error and reverts with ExternalCallFailed
/// This ensures accounts get consistent error behavior regardless of router bugs.
library RouterHelpers {
    /// @notice Get router address for a strategy from RouterManager
    /// @dev Uses `staticcall` to avoid depending on a specific RouterManager interface import.
    ///      Reverts if the strategy is unregistered or resolves to address(0).
    ///      This is the entry point for finding which router handles a given strategy.
    /// @param routerManager RouterManager address (the central registry for all routers)
    /// @param strategyId Strategy identifier (bytes32 hash of protocol + name + chainId)
    /// @return router Protocol router address that owns `strategyId`
    function getRouterForStrategy(address routerManager, bytes32 strategyId) internal view returns (address router) {
        // Use staticcall to query RouterManager without importing its interface
        // This reduces coupling and allows interface changes without updating this library
        // The call signature is: getRouterForStrategy(bytes32) returns (address)
        (bool success, bytes memory data) =
            routerManager.staticcall(abi.encodeWithSignature("getRouterForStrategy(bytes32)", strategyId));
        // Require successful call with return data
        // Failure means: RouterManager reverted or returned empty data
        require(success && data.length > 0, Errors.StrategyNotFound(strategyId));
        // Decode the returned address from the call result
        router = abi.decode(data, (address));
        // Verify the returned router is not zero address
        // Zero address means strategy isn't registered
        require(router != address(0), Errors.StrategyNotFound(strategyId));
    }

    /// @notice Safely get strategy configuration from a router
    /// @dev Uses try/catch so failures are logged and surfaced as `Errors.ExternalCallFailed()`.
    ///      The Strategy struct contains all config needed: vault address, tokens, bridge, etc.
    /// @param routerAddress Protocol router address (e.g., Aave router, Morpho router)
    /// @param strategyId Strategy identifier to look up
    /// @return strategy Strategy configuration struct with all fields populated
    function safeGetStrategy(address routerAddress, bytes32 strategyId)
        internal
        returns (IRouter.Strategy memory strategy)
    {
        // Try to fetch the strategy configuration from the router
        // The router maintains a mapping: strategyId => Strategy struct
        try IRouter(routerAddress).getStrategy(strategyId) returns (IRouter.Strategy memory _strategy) {
            // Successfully retrieved strategy configuration
            // Return the strategy struct to the caller
            return _strategy;
        } catch (bytes memory lowLevelData) {
            // Log the actual error from the router for debugging
            emit Events.ErrorLogBytes(lowLevelData);
            // Revert with standardized error
            revert Errors.ExternalCallFailed();
        }
    }
}
