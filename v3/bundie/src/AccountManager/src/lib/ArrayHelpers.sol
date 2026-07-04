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

import {Types} from "./Types.sol";

/// @title ArrayHelpers
/// @author Bundie Team
/// @notice Position array search helpers
/// @dev Linear-scan lookups for Position[] storage arrays.
///      For tiny arrays (<20 elements), linear search is cheaper than mappings.
///      Find functions return (0, false) when not found; callers must check `found`.
library ArrayHelpers {
    // ========================== Internal View Functions ==========================

    /// @notice Find position index by strategy ID
    /// @dev Linear scan; intended for small arrays (a user's positions).
    ///      Most users have < 20 positions, so linear scan is acceptable.
    ///      A user can only have one position per strategy (shares are fungible within strategy).
    /// @param array Positions array (storage reference for gas efficiency)
    /// @param strategyId Strategy identifier to match (bytes32 hash)
    /// @return index Index of the first matching position (undefined if not found)
    /// @return found True if a position with this strategyId exists
    function findPositionByStrategy(Types.Position[] storage array, bytes32 strategyId)
        internal
        view
        returns (uint256 index, bool found)
    {
        // Iterate through all positions in the array
        for (uint256 i = 0; i < array.length; i++) {
            // Check if this position's strategyId matches
            if (array[i].strategyId == strategyId) {
                // Found! Return the index and true
                return (i, true);
            }
        }
        // Not found - return 0 index and false
        // Caller MUST check the 'found' bool before using 'index'
        return (0, false);
    }

    /// @notice Find position index by position ID
    /// @dev Linear scan; intended for small arrays (a user's positions).
    ///      Position ID is stable across array modifications (unlike array index).
    ///      This is used for cross-chain confirmations where index may have changed.
    /// @param array Positions array (storage reference for gas efficiency)
    /// @param positionId Position id to match (unique, monotonically increasing)
    /// @return index Array index where the position is located
    /// @return found True if a position with this ID exists
    function findPositionById(Types.Position[] storage array, uint256 positionId)
        internal
        view
        returns (uint256 index, bool found)
    {
        // Iterate through all positions in the array
        for (uint256 i = 0; i < array.length; i++) {
            // Check if this position's unique ID matches
            if (array[i].id == positionId) {
                // Found! Return the current index and true
                return (i, true);
            }
        }
        // Not found - return 0 index and false
        // Caller MUST check the 'found' bool before using 'index'
        return (0, false);
    }
}
