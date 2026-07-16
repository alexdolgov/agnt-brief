// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title Types
 * @author Rain Team
 * @notice Defines shared enums and structs used for position lifecycle and market state.
 * @dev Intended to be imported by facets and libraries to ensure consistent typing across the Diamond.
 */
interface Types {
    /// @notice Represents a dispute struct that records the opener and the winner.
    struct Dispute {
        /// @notice The fee paid by the disputer.
        uint256 disputeFee;
        /// @notice The winner chosen by the AI.
        uint256 disputedWinner;
        /// @notice The address of the disputer.
        address disputer;
        /// @notice The address of the orignal resolver.
        address resolver;
    }

    /// @notice Represents the pool dispute state.
    enum PoolState {
        NotDisputed,
        Disputed,
        Appealed
    }
}
