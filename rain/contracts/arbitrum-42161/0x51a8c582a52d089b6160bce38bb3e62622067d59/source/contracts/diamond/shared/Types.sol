// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title Types
 * @author Rain Team
 * @notice Defines shared enums and structs used for position lifecycle and market state.
 * @dev Intended to be imported by facets and libraries to ensure consistent typing across the diamond.
 */
interface Types {
    /// @dev Represents the final outcome of a closed position where applicable.
    enum PositionState {
        LOSS,
        PROFIT,
        PAYOFF
    }

    /// @dev Represents the market type associated with a position.
    enum MarketType {
        TERMINATION,
        THRESHOLD
    }

    /// @dev Represents the market or position activity queue data.
    struct ActivityQueueData {
        /// @custom:member marketType Type of market.
        MarketType marketType;
        /// @custom:member index Market index.
        uint256 marketIndex;
        /// @custom:member id Position's unique identifier.
        bytes32 positionId;
    }

    /// @dev Represents the activity queue.
    struct ActivityQueue {
        /// @custom:member items Array of queue items.
        ActivityQueueData[] items;
        /// @custom:member indexOf Mapping from queue identifier to index plus one. `0` means not in queue.
        mapping(bytes32 queueId => uint256 indexPlusOne) indexOf;
    }

    /// @dev Represents the fee distribution when opening a position.
    struct FeeBps {
        /// @custom:member conduitFeeBps Basis points fee sent to the conduit for buyback and burn.
        uint256 conduitFeeBps;
        /// @custom:member reservoirFeeBps Basis points fee sent to the reservoir for liquidity rewards.
        uint256 reservoirFeeBps;
        /// @custom:member payoffFeeBps Basis points fee sent to the protocol itself for payoff distribution.
        uint256 payoffFeeBps;
    }

    /// @notice Represents the full position definition at the time it is opened.
    struct PositionData {
        /// @custom:member marketType Type of market.
        MarketType marketType;
        /// @custom:member id Position's unique identifier.
        bytes32 id;
        /// @custom:member user Address of the user who opened the position.
        address user;
        /// @custom:member amount Amount used to the open the position.
        uint256 amount;
        /// @custom:member line Line associated with the position.
        uint256 line;
        /// @custom:member iterations Number of iterations for the position.
        uint256 iterations;
        /// @custom:member startBlock Block number when the position was opened.
        uint256 startBlock;
        /// @custom:member startTime Timestamp when the position was opened.
        uint256 startTime;
        /// @custom:member expiryTime Expiration timestamp for the position.
        uint256 expiryTime;
        /// @custom:member requiredConfirmations Confirmations required to close the position.
        uint256 requiredConfirmations;
        /// @custom:member requestIds Array of oracle request IDs associated with this position.
        uint256[] requestIds;
        /// @custom:member extraData Additional position-specific data encoded as bytes.
        bytes extraData;
    }

    /// @dev Represents the progress and partial resolution state of a position. Used for incremental confirmation-based
    /// markets or asynchronous resolution flows.
    struct PositionProgress {
        /// @custom:member marketType Type of market.
        MarketType marketType;
        /// @custom:member id Position's unique identifier.
        bytes32 id;
        /// @custom:member user Address of the user who opened the position.
        address user;
        /// @custom:member settlement Settlement from closing the position.
        uint256 settlement;
        /// @custom:member receivedConfirmations Number of oracle confirmations received.
        uint256 receivedConfirmations;
        /// @custom:member extraData Additional position-specific progress data encoded as bytes.
        bytes extraData;
    }
}
