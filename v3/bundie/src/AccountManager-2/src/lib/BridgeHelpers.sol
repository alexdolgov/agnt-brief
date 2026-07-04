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

import {IERC20} from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {IBridge} from "../interface/IBridge.sol";
import {Errors} from "./Errors.sol";
import {Events} from "./Events.sol";

/// @title BridgeHelpers
/// @author Bundie Team
/// @notice Bridge operation helpers with security checks
/// @dev These helpers are defensive: bridges are integrations, so we verify outcomes (e.g., token deltas)
///      and standardize failure reporting via `Errors.ExternalCallFailed()` + `Events.ErrorLogBytes(...)`.
///
/// ## Why verify bridge transfers?
/// Bridge modules are external integrations that could:
/// - Succeed but transfer wrong amounts (misconfigured OFT)
/// - Succeed but transfer nothing (buggy implementation)
/// - Return success but fail silently
/// The `verifyBridgeTransfer` function catches these by checking balance deltas.
///
/// ## Slippage extraction
/// Different bridge implementations encode slippage parameters differently.
/// `safeExtractMinAmountOut` delegates to the bridge module's decoder,
/// ensuring consistent slippage enforcement regardless of bridge type.
///
/// ## Error handling pattern
/// All external calls are wrapped in try/catch:
/// 1. On failure, emit `Events.ErrorLogBytes(lowLevelData)` for debugging
/// 2. Revert with `Errors.ExternalCallFailed()` for consistent error handling
library BridgeHelpers {
    /// @notice Verify bridge transferred tokens by checking balance change
    /// @dev Ensures the bridge implementation actually moved the expected amount of `token` from this contract.
    ///      This prevents "silent failure" integrations where a call succeeds but transfers less/more than expected.
    ///      CRITICAL SAFETY CHECK: Without this, a buggy bridge could return success without moving tokens.
    /// @param token ERC20 being bridged (the token that should have left this contract)
    /// @param balanceBefore Token balance of `address(this)` BEFORE the bridge call
    /// @param expectedAmount Amount expected to leave this contract (should be actual transferred amount)
    function verifyBridgeTransfer(IERC20 token, uint256 balanceBefore, uint256 expectedAmount) internal view {
        // Get current balance after bridge operation
        uint256 balanceAfter = token.balanceOf(address(this));
        // Sanity check: we can't transfer more than we had
        // If expectedAmount > balanceBefore, something is seriously wrong
        require(expectedAmount <= balanceBefore, Errors.BridgeOperationFailed());
        // The balance should have decreased by EXACTLY expectedAmount
        // balanceAfter should equal balanceBefore - expectedAmount
        // If less was transferred: bridge failed silently
        // If more was transferred: unexpected behavior (shouldn't happen)
        require(balanceAfter == balanceBefore - expectedAmount, Errors.BridgeOperationFailed());
    }

    /// @notice Safely extract minAmountOut from bridge execution parameters
    /// @dev Used for slippage protection on both deposits and withdrawals.
    ///      Bridge modules expose `extractMinAmountOut(bytes)` so UI/routers can enforce consistent semantics.
    ///      Different bridge implementations encode params differently, so we delegate to the module's decoder.
    /// @param bridgeModule Bridge module address (e.g., LayerZero)
    /// @param bridgeExecutionParams ABI-encoded bridge parameters (format depends on bridge implementation)
    /// @return minAmountOut Minimum acceptable amount-out decoded from params (used for slippage check)
    function safeExtractMinAmountOut(address bridgeModule, bytes calldata bridgeExecutionParams)
        internal
        returns (uint256 minAmountOut)
    {
        // Call the bridge module's extractMinAmountOut function
        // Each bridge implementation knows how to decode its own parameter format
        try IBridge(bridgeModule).extractMinAmountOut(bridgeExecutionParams) returns (uint256 min) {
            // Slippage parameter must be non-zero
            // Zero minAmountOut would mean accepting any amount (dangerous)
            require(min > 0, Errors.InvalidBridgeParams());
            // Return the extracted slippage parameter
            return min;
        } catch (bytes memory lowLevelData) {
            // Log the actual error for debugging/monitoring
            emit Events.ErrorLogBytes(lowLevelData);
            // Revert with standardized error
            revert Errors.ExternalCallFailed();
        }
    }
}
