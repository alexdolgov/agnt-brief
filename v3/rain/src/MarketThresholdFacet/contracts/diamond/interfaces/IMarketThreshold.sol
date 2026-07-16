// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { Types } from "../shared/Types.sol";

/**
 * @title IMarketThreshold
 * @author Rain Team
 * @notice Interface for the threshold market facet.
 * @dev Defines the external functions, events, and errors for opening and closing threshold positions within the
 * diamond architecture.
 */
interface IMarketThreshold {
    /* ========================== EVENTS ========================== */

    /**
     * @dev Emitted when a user opens a position.
     * @param positionId Unique position identifier.
     * @param user Address of the user opening the position.
     * @param amount Position amount.
     * @param line Line selected for the position.
     * @param requestId Oracle request identifier.
     */
    event OpenPositionThreshold(
        bytes32 positionId,
        address indexed user,
        uint256 amount,
        uint256 line,
        uint256 requestId
    );

    /**
     * @dev Emitted when a threshold position is closed.
     * @param positionId Unique position identifier.
     * @param user Address of the user closing the position.
     * @param settlement Settlement from closing the position.
     * @param positionState Current state of the position.
     * @param normalizedRandomLine Normalized random line used for closure.
     * @param requestId Oracle request identifier.
     */
    event ClosePositionThreshold(
        bytes32 positionId,
        address indexed user,
        uint256 settlement,
        Types.PositionState positionState,
        uint256 normalizedRandomLine,
        uint256 requestId
    );

    /**
     * @dev Emitted when a user reopens an expired position.
     * @param replacementRequestId Replacement oracle request identifier.
     */
    event ReopenPosition(uint256 replacementRequestId);

    /**
     * @dev Emitted when the value of the minimum line is changed.
     * @param newMinLine Value of the new minimum line.
     * @param oldMinLine Value of the previous minimum line.
     */
    event UpdateMinLine(uint256 newMinLine, uint256 oldMinLine);

    /**
     * @dev Emitted when the value of the maximum line is changed.
     * @param newMaxLine Value of the new maximum line.
     * @param oldMaxLine Value of the previous maximum line.
     */
    event UpdateMaxLine(uint256 newMaxLine, uint256 oldMaxLine);

    /* ========================== ERRORS ========================== */

    /**
     * @dev Thrown when position line are outside the allowed range.
     */
    error LineOutOfRange();

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Opens a threshold position with a specified amount and line.
     * @param amount Position amount.
     * @param line Line selected for the position.
     */
    function openPositionThreshold(uint256 amount, uint256 line) external;

    /**
     * @notice Fulfills a threshold position using the provided randomness.
     * @param requestId Oracle request identifier.
     * @param randomLine Randomness value used to close the position.
     */
    function fulfillRandomnessThreshold(uint256 requestId, uint256 randomLine) external;

    /**
     * @notice Updates the value of the minimum line.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newMinLine` cannot be `0`.
     * - `newMinLine` cannot be equal to the existing minimum line value.
     *
     * @param newMinLine Value of the new minimum line.
     */
    function updateMinLine(uint256 newMinLine) external;

    /**
     * @notice Updates the value of the maximum line.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - `newMaxLine` cannot be `0`.
     * - `newMaxLine` cannot be equal to the existing maximum line value.
     *
     * @param newMaxLine Value of the new maximum line.
     */
    function updateMaxLine(uint256 newMaxLine) external;

    /**
     * @notice Minimum allowed line for threshold positions.
     */
    function minLine() external view returns (uint256);

    /**
     * @notice Maximum allowed line for threshold positions.
     */
    function maxLine() external view returns (uint256);
}
