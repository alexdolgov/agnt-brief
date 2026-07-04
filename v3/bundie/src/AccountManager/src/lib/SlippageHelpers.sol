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
import {IVault} from "../interface/IVault.sol";
import {BridgeHelpers} from "./BridgeHelpers.sol";

/// @title SlippageHelpers
/// @author Bundie Team
/// @notice Shared slippage parameter extraction for deposit and withdrawal flows
/// @dev Centralizes the pattern of extracting minAmountOut from either a bridge module
///      (cross-chain) or a vault module (local async), depending on the strategy configuration.
library SlippageHelpers {
    /// @notice Extract the minimum expected output amount from execution parameters
    /// @dev Routes to bridge module or vault module decoder based on strategy configuration.
    ///      Cross-chain strategies (bridgeModule != address(0)) use BridgeHelpers.
    ///      Local async strategies (bridgeModule == address(0)) use the vault module's decoder.
    /// @param strategy Strategy configuration (determines cross-chain vs local async)
    /// @param executionParams ABI-encoded parameters (bridge params or vault module params)
    /// @return minAmountOut Minimum acceptable output amount (used for slippage enforcement)
    function extractMinAmountOut(IRouter.Strategy memory strategy, bytes calldata executionParams)
        internal
        returns (uint256 minAmountOut)
    {
        if (strategy.bridgeModule != address(0)) {
            // Cross-chain: extract from bridge execution params
            return BridgeHelpers.safeExtractMinAmountOut(strategy.bridgeModule, executionParams);
        } else {
            // Local async (e.g., ERC-7540): extract from vault module params
            return IVault(strategy.vaultModule).extractMinAmountOut(executionParams);
        }
    }
}
