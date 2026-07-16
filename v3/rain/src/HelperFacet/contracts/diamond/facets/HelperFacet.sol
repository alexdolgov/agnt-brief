// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IHelper } from "../interfaces/IHelper.sol";
import { LibQueue } from "../libraries/LibQueue.sol";
import { LibUtilsFee } from "../libraries/LibUtilsFee.sol";
import { LibUtilsPosition } from "../libraries/LibUtilsPosition.sol";
import { Types } from "../shared/Types.sol";

/**
 * @title HelperFacet
 * @author Rain Team
 * @notice Provides auxiliary helpers and utility functions externally.
 * @dev Contains convenience methods that do not belong to a specific domain facet. Does not modify state.
 */
contract HelperFacet is IHelper {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IHelper
     */
    function minPosition() external view returns (uint256) {
        return LibUtilsPosition.minPosition();
    }

    /**
     * @inheritdoc IHelper
     */
    function maxPosition() external view returns (uint256) {
        return LibUtilsPosition.maxPosition();
    }

    /**
     * @inheritdoc IHelper
     */
    function calculateFees(
        Types.MarketType marketType,
        uint256 amountBeforeFees
    ) external view returns (uint256 conduitFee, uint256 reservoirFee, uint256 payoffFee, uint256 amount) {
        FeeBreakdown memory breakdown = LibUtilsFee.calculateFees(marketType, amountBeforeFees, 1);

        conduitFee = breakdown.conduitFee;
        reservoirFee = breakdown.reservoirFee;
        payoffFee = breakdown.payoffFee;
        amount = breakdown.amount;
    }

    /**
     * @inheritdoc IHelper
     */
    function calculateFees(
        Types.MarketType marketType,
        uint256 amountBeforeFees,
        uint256 iterations
    )
        external
        view
        returns (uint256 conduitFee, uint256 reservoirFee, uint256 payoffFee, uint256 amount, uint256 totalAmount)
    {
        FeeBreakdown memory breakdown = LibUtilsFee.calculateFees(marketType, amountBeforeFees, iterations);

        conduitFee = breakdown.conduitFee;
        reservoirFee = breakdown.reservoirFee;
        payoffFee = breakdown.payoffFee;
        amount = breakdown.amount;
        totalAmount = breakdown.totalAmount;
    }

    /**
     * @inheritdoc IHelper
     */
    function generatePositionId(
        Types.MarketType marketType,
        address user,
        uint256 index
    ) external pure returns (bytes32) {
        return LibUtilsPosition.generatePositionId(marketType, user, index);
    }

    /**
     * @inheritdoc IHelper
     */
    function generatePositionId(Types.MarketType marketType, address user) external pure returns (bytes32) {
        return LibUtilsPosition.generatePositionId(marketType, user);
    }

    /**
     * @inheritdoc IHelper
     */
    function generateQueueId(
        Types.MarketType marketType,
        uint256 marketIndex,
        bytes32 positionId
    ) external pure returns (bytes32) {
        return
            LibQueue.generateQueueId(
                Types.ActivityQueueData({ marketType: marketType, marketIndex: marketIndex, positionId: positionId })
            );
    }

    /**
     * @inheritdoc IHelper
     */
    function generateQueueId(Types.MarketType marketType, uint256 marketIndex) external pure returns (bytes32) {
        return
            LibQueue.generateQueueId(
                Types.ActivityQueueData({ marketType: marketType, marketIndex: marketIndex, positionId: bytes32(0) })
            );
    }

    /**
     * @inheritdoc IHelper
     */
    function generateQueueId(Types.MarketType marketType, bytes32 positionId) external pure returns (bytes32) {
        return
            LibQueue.generateQueueId(
                Types.ActivityQueueData({ marketType: marketType, marketIndex: 0, positionId: positionId })
            );
    }
}
