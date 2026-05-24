// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IMarketThreshold } from "../interfaces/IMarketThreshold.sol";
import { LibAppStorage } from "../libraries/LibAppStorage.sol";
import { LibConstants } from "../libraries/LibConstants.sol";
import { LibMarketThreshold } from "../libraries/LibMarketThreshold.sol";
import { LibUtilsFee } from "../libraries/LibUtilsFee.sol";
import { LibUtilsPosition } from "../libraries/LibUtilsPosition.sol";
import { LibUtilsRevert } from "../libraries/LibUtilsRevert.sol";
import { Errors } from "../shared/Errors.sol";
import { Types } from "../shared/Types.sol";
import { Modifiers } from "../utils/Modifiers.sol";

/**
 * @title MarketThresholdFacet
 * @author Rain Team
 * @notice External interface for the threshold market.
 */
contract MarketThresholdFacet is IMarketThreshold, Modifiers {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IMarketThreshold
     */
    function openPositionThreshold(uint256 amount, uint256 line) external whenNotPaused nonReentrant {
        if (amount < LibUtilsPosition.minPosition() || LibUtilsPosition.maxPosition() < amount) {
            LibUtilsRevert.revertWithSelector(Errors.AmountOutOfRange.selector);
        }

        if (line < LibMarketThreshold.minLine() || LibMarketThreshold.maxLine() < line) {
            LibUtilsRevert.revertWithSelector(LineOutOfRange.selector);
        }

        bytes32 positionId = LibUtilsPosition.generatePositionId(Types.MarketType.THRESHOLD, msg.sender);
        Types.PositionData memory positionData = LibAppStorage.positionData(positionId);
        uint256 receivedConfirmations = LibAppStorage.positionProgress(positionId).receivedConfirmations;

        if (positionData.amount > 0 && receivedConfirmations < positionData.requiredConfirmations) {
            (bool wasExpired, uint256 replacementRequestId) = LibMarketThreshold.handleExpiredPosition(positionData);

            if (wasExpired) {
                emit ReopenPosition({ replacementRequestId: replacementRequestId });

                return;
            } else {
                LibUtilsRevert.revertWithSelector(Errors.PositionNotClosed.selector);
            }
        }

        uint256 processedAmount = LibUtilsFee.processFees(
            Types.MarketType.THRESHOLD,
            IERC20(LibAppStorage.defaultAsset()),
            msg.sender,
            amount
        );

        uint256 requestId = LibMarketThreshold.openPosition(positionId, msg.sender, processedAmount, line);

        emit OpenPositionThreshold({
            positionId: positionId,
            user: msg.sender,
            amount: processedAmount,
            line: line,
            requestId: requestId
        });
    }

    /**
     * @inheritdoc IMarketThreshold
     */
    function fulfillRandomnessThreshold(
        uint256 requestId,
        uint256 randomLine
    ) external onlyRole(LibConstants.AUTHORITY_ROLE) {
        bytes32 positionId = LibAppStorage.requestPositionMap(requestId);
        Types.PositionData memory positionData = LibAppStorage.positionData(positionId);

        if (positionData.amount == 0) {
            LibUtilsRevert.revertWithSelector(Errors.PositionNonexistent.selector);
        }

        if (LibAppStorage.positionProgress(positionId).receivedConfirmations == positionData.requiredConfirmations) {
            LibUtilsRevert.revertWithSelector(Errors.PositionAlreadyClosed.selector);
        }

        uint256 normalizedRandomLine = LibMarketThreshold.normalizeRandomLine(randomLine);
        (uint256 settlement, Types.PositionState positionState) = LibMarketThreshold.closePosition(
            positionId,
            positionData,
            normalizedRandomLine
        );

        emit ClosePositionThreshold({
            positionId: positionId,
            user: positionData.user,
            settlement: settlement,
            positionState: positionState,
            normalizedRandomLine: normalizedRandomLine,
            requestId: requestId
        });
    }

    /**
     * @inheritdoc IMarketThreshold
     */
    function updateMinLine(uint256 newMinLine) external onlyRole(LibConstants.OWNER_ROLE) {
        if (newMinLine == 0) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAmount.selector);
        }

        uint256 oldMinLine = LibMarketThreshold.minLine();

        if (newMinLine == oldMinLine) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibMarketThreshold.updateMinLine(newMinLine);

        emit UpdateMinLine({ newMinLine: newMinLine, oldMinLine: oldMinLine });
    }

    /**
     * @inheritdoc IMarketThreshold
     */
    function updateMaxLine(uint256 newMaxLine) external onlyRole(LibConstants.OWNER_ROLE) {
        if (newMaxLine == 0) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAmount.selector);
        }

        uint256 oldMaxLine = LibMarketThreshold.maxLine();

        if (newMaxLine == oldMaxLine) {
            LibUtilsRevert.revertWithSelector(Errors.InvalidAssignment.selector);
        }

        LibMarketThreshold.updateMaxLine(newMaxLine);

        emit UpdateMaxLine({ newMaxLine: newMaxLine, oldMaxLine: oldMaxLine });
    }

    /**
     * @inheritdoc IMarketThreshold
     */
    function minLine() external view returns (uint256) {
        return LibMarketThreshold.minLine();
    }

    /**
     * @inheritdoc IMarketThreshold
     */
    function maxLine() external view returns (uint256) {
        return LibMarketThreshold.maxLine();
    }
}
