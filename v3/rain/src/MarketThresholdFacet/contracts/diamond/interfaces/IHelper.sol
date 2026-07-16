// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { Types } from "../shared/Types.sol";

/**
 * @title IHelper
 * @author Rain Team
 * @notice Interface for shared helper utilities.
 * @dev Provides commonly used helper functions that may be consumed by external callers without direct access to
 * internal libraries.
 */
interface IHelper {
    /* ========================== TYPES ========================== */

    /// @dev Represents the breakdown of fees for a position.
    struct FeeBreakdown {
        /// @custom:member conduitFee Fee sent to the conduit for buyback and burn.
        uint256 conduitFee;
        /// @custom:member reservoirFee Fee sent to the reservoir for liquidity rewards.
        uint256 reservoirFee;
        /// @custom:member payoffFee Fee sent to the protocol itself for payoff distribution.
        uint256 payoffFee;
        /// @custom:member amount Amount after fees.
        uint256 amount;
        /// @custom:member totalAmount Total amount after fees across all iterations.
        uint256 totalAmount;
    }

    /* ========================== ERRORS ========================== */

    /**
     * @dev Thrown when signature recovery is incorrect or invalid.
     */
    error IncorrectSignatureRecovery();

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Minimum allowed amount to open positions.
     * @return minPosition Minimum allowed position.
     */
    function minPosition() external view returns (uint256);

    /**
     * @notice Maximum allowed amount to open positions.
     * @dev Calculated as total reservoir assets minus total reservoir fees divided by a preset divisor.
     * @return maxPosition Maximum allowed position.
     */
    function maxPosition() external view returns (uint256);

    /**
     * @notice Calculate fees relevant to the position amount.
     * @param marketType Type of market.
     * @param amountBeforeFees Position amount before fees.
     * @return conduitFee Fee sent to the conduit for buyback and burn.
     * @return reservoirFee Fee sent to the reservoir for liquidity rewards.
     * @return payoffFee Fee sent to the protocol itself for payoff distribution.
     * @return amount Amount after fees.
     */
    function calculateFees(
        Types.MarketType marketType,
        uint256 amountBeforeFees
    ) external view returns (uint256 conduitFee, uint256 reservoirFee, uint256 payoffFee, uint256 amount);

    /**
     * @notice Calculate fees for multiple iterations relevant to the position amount.
     * @param marketType Type of market.
     * @param amountBeforeFees Position amount per iteration before fees.
     * @param iterations Number of iterations.
     * @return conduitFee Fee sent to the conduit for buyback and burn.
     * @return reservoirFee Fee sent to the reservoir for liquidity rewards.
     * @return payoffFee Fee sent to the protocol itself for payoff distribution.
     * @return amount Amount after fees.
     * @return totalAmount Total amount after fees across all iterations.
     */
    function calculateFees(
        Types.MarketType marketType,
        uint256 amountBeforeFees,
        uint256 iterations
    )
        external
        view
        returns (uint256 conduitFee, uint256 reservoirFee, uint256 payoffFee, uint256 amount, uint256 totalAmount);

    /**
     * @notice Generates a unique position identifier from market type, user address, and index.
     * @dev Uses keccak256 hash of the encoded parameters.
     * @param marketType Type of market.
     * @param user Address of the user placing the position.
     * @param index Index or nonce for this user's position.
     * @return positionId Generated unique position identifier.
     */
    function generatePositionId(
        Types.MarketType marketType,
        address user,
        uint256 index
    ) external pure returns (bytes32);

    /**
     * @notice Generates a unique position identifier from market type and user address only.
     * @dev Uses keccak256 hash of the encoded parameters without an index.
     * @param marketType Type of market.
     * @param user Address of the user placing the position.
     * @return positionId Generated unique position identifier.
     */
    function generatePositionId(Types.MarketType marketType, address user) external pure returns (bytes32);

    /**
     * @notice Generates a unique queue identifier from activity queue data.
     * @dev Uses keccak256 hash of the encoded parameters.
     * @param marketType Type of market.
     * @param marketIndex Market index.
     * @param positionId Position's unique identifier.
     * @return queueId Generated unique queue identifier.
     */
    function generateQueueId(
        Types.MarketType marketType,
        uint256 marketIndex,
        bytes32 positionId
    ) external pure returns (bytes32);

    /**
     * @notice Generates a unique queue identifier from market type and market index.
     * @dev Uses keccak256 hash of the encoded parameters.
     * @param marketType Type of market.
     * @param marketIndex Market index.
     * @return queueId Generated unique queue identifier.
     */
    function generateQueueId(Types.MarketType marketType, uint256 marketIndex) external pure returns (bytes32);

    /**
     * @notice Generates a unique queue identifier from market type and position identifier.
     * @dev Uses keccak256 hash of the encoded parameters.
     * @param marketType Type of market.
     * @param positionId Position's unique identifier.
     * @return queueId Generated unique queue identifier.
     */
    function generateQueueId(Types.MarketType marketType, bytes32 positionId) external pure returns (bytes32);
}
