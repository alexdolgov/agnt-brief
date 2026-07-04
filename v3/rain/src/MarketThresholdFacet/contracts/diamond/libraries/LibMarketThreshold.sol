// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IReservoir } from "../../interfaces/IReservoir.sol";

import { IMarketThreshold } from "../interfaces/IMarketThreshold.sol";
import { Types } from "../shared/Types.sol";

import { LibAppStorage } from "./LibAppStorage.sol";
import { LibQueue } from "./LibQueue.sol";

/**
 * @title LibMarketThreshold
 * @author Rain Team
 * @notice Internal library containing core logic and state management for the threshold market.
 */
library LibMarketThreshold {
    using SafeERC20 for IERC20;

    /* ========================== STATE VARIABLES ========================== */

    /// @dev Duration for which a position remains valid.
    uint256 internal constant POSITION_VALIDITY_DURATION = 86_400;

    /// @dev Factor by which random line must be normalized.
    uint256 internal constant RANDOM_LINE_NORMALIZATION_FACTOR = 100;

    /* ========================== ERC7201 STORAGE ========================== */

    /// @dev Namespaced storage location as per ERC-7201 (raindecision.storage.MarketThreshold).
    struct MarketThresholdStorage {
        uint256 _minLine;
        uint256 _maxLine;
    }

    // keccak256(abi.encode(uint256(keccak256("raindecision.storage.MarketThreshold")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant MarketThresholdStorageLocation =
        0xc85951415f3c83b8ed14e8cfd09725351e021c3fd6199433bace4c09f5369d00;

    function getMarketThresholdStorage() internal pure returns (MarketThresholdStorage storage mths) {
        assembly {
            mths.slot := MarketThresholdStorageLocation
        }
    }

    /**
     * @dev See {IMarketThreshold-minLine}.
     */
    function minLine() internal view returns (uint256) {
        MarketThresholdStorage storage mths = getMarketThresholdStorage();

        return mths._minLine;
    }

    /**
     * @dev See {IMarketThreshold-maxLine}.
     */
    function maxLine() internal view returns (uint256) {
        MarketThresholdStorage storage mths = getMarketThresholdStorage();

        return mths._maxLine;
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev See {IMarketThreshold-updateMinLine}.
     */
    function updateMinLine(uint256 newMinLine) internal {
        MarketThresholdStorage storage mths = getMarketThresholdStorage();

        mths._minLine = newMinLine;
    }

    /**
     * @dev See {IMarketThreshold-updateMaxLine}.
     */
    function updateMaxLine(uint256 newMaxLine) internal {
        MarketThresholdStorage storage mths = getMarketThresholdStorage();

        mths._maxLine = newMaxLine;
    }

    /**
     * @dev Opens a position for the current termination market and sends an oracle request.
     * @param positionId Unique position identifier.
     * @param user Address of the user opening the position.
     * @param amount Amount to open the position.
     * @param line Line selected for the position.
     * @return requestId Oracle request identifier.
     */
    function openPosition(bytes32 positionId, address user, uint256 amount, uint256 line) internal returns (uint256) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        if (s._positionData[positionId].amount > 0) {
            uint256 previousRequestId = s._positionData[positionId].requestIds[0];

            delete s._positionData[positionId];
            delete s._positionProgress[positionId];
            delete s._requestPositionMap[previousRequestId];
        }

        uint256 requestId = s._rng.requestVRF(user, IMarketThreshold.fulfillRandomnessThreshold.selector);

        unchecked {
            s._positionData[positionId].expiryTime = block.timestamp + POSITION_VALIDITY_DURATION;
        }

        s._positionData[positionId].marketType = Types.MarketType.THRESHOLD;
        s._positionData[positionId].id = positionId;
        s._positionData[positionId].user = user;
        s._positionData[positionId].amount = amount;
        s._positionData[positionId].line = line;
        s._positionData[positionId].startBlock = block.number;
        s._positionData[positionId].startTime = block.timestamp;
        s._positionData[positionId].requiredConfirmations = 1;
        s._positionData[positionId].requestIds = [requestId];

        s._requestPositionMap[requestId] = positionId;

        LibQueue.cleanQueue(Types.MarketType.THRESHOLD);
        LibQueue.addPosition(Types.MarketType.THRESHOLD, positionId);

        return requestId;
    }

    /**
     * @dev Handles expired position cleaning.
     * @param positionData Position data.
     * @return wasExpired Whether the position was expired and handled.
     * @return replacementRequestId Replacement oracle request identifier.
     */
    function handleExpiredPosition(Types.PositionData memory positionData) internal returns (bool, uint256) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        bool wasExpired;
        uint256 replacementRequestId;

        if (block.timestamp > positionData.expiryTime) {
            replacementRequestId = s._rng.requestVRF(
                positionData.user,
                IMarketThreshold.fulfillRandomnessThreshold.selector
            );

            unchecked {
                s._positionData[positionData.id].expiryTime = block.timestamp + POSITION_VALIDITY_DURATION;
            }

            s._positionData[positionData.id].startBlock = block.number;
            s._positionData[positionData.id].startTime = block.timestamp;
            s._positionData[positionData.id].requestIds = [replacementRequestId];

            s._requestPositionMap[replacementRequestId] = positionData.id;

            wasExpired = true;
        }

        return (wasExpired, replacementRequestId);
    }

    /**
     * @dev Closes a threshold position and records the outcome.
     * @param positionId Unique position identifier.
     * @param positionData Position data.
     * @param normalizedRandomLine Normalized random line.
     * @return settlement Settlement from closing the position.
     * @return positionState Resulting position outcome state.
     */
    function closePosition(
        bytes32 positionId,
        Types.PositionData memory positionData,
        uint256 normalizedRandomLine
    ) internal returns (uint256, Types.PositionState) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        (uint256 settlement, Types.PositionState positionState) = calculateSettlement(
            positionData.amount,
            positionData.line,
            normalizedRandomLine
        );

        unchecked {
            s._positionProgress[positionId].receivedConfirmations++;
        }

        s._positionProgress[positionId].marketType = positionData.marketType;
        s._positionProgress[positionId].id = positionData.id;
        s._positionProgress[positionId].user = positionData.user;
        s._positionProgress[positionId].settlement = settlement;

        LibQueue.cleanQueue(Types.MarketType.THRESHOLD);
        LibQueue.removePosition(Types.MarketType.THRESHOLD, positionId);

        distributeSettlement(positionData.amount, settlement, positionState, positionData.user);

        return (settlement, positionState);
    }

    /**
     * @dev Normalizes random line for usage with position outcome.
     * @param randomLine Random line to normalize.
     * @return normalizedRandomLine Normalized random line.
     */
    function normalizeRandomLine(uint256 randomLine) internal pure returns (uint256) {
        unchecked {
            return (randomLine % RANDOM_LINE_NORMALIZATION_FACTOR) + 1;
        }
    }

    /**
     * @dev Processes settlement distribution based on position outcome.
     * @param amount Position amount.
     * @param settlement Calculated settlement.
     * @param positionState Position outcome state.
     * @param user Address of the user to receive the settlement.
     */
    function distributeSettlement(
        uint256 amount,
        uint256 settlement,
        Types.PositionState positionState,
        address user
    ) private {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        IERC20 defaultAsset = s._defaultAsset;
        IReservoir reservoir = s._reservoir;

        defaultAsset.safeTransfer(address(reservoir), amount);
        reservoir.absorb(defaultAsset, amount, IReservoir.AbsorptionCause.RETURN);

        if (positionState == Types.PositionState.PROFIT) {
            reservoir.disburse(defaultAsset, settlement, user);
        } else if (positionState == Types.PositionState.PAYOFF) {
            s._payoff = 0;

            defaultAsset.safeTransfer(user, settlement);
        }
    }

    /**
     * @dev Calculates settlement and position state based on threshold outcome.
     * @param amount Position amount.
     * @param line Selected line.
     * @param randomLine Random result.
     * @return settlement Calculated settlement.
     * @return positionState Resulting position outcome state.
     */
    function calculateSettlement(
        uint256 amount,
        uint256 line,
        uint256 randomLine
    ) private view returns (uint256, Types.PositionState) {
        uint256 settlement;
        Types.PositionState positionState;

        if (randomLine <= line) {
            unchecked {
                settlement = (amount * 100) / line;
            }

            positionState = Types.PositionState.PROFIT;
        } else if (randomLine == 100) {
            settlement = LibAppStorage.payoff();
            positionState = Types.PositionState.PAYOFF;
        } else {
            positionState = Types.PositionState.LOSS;
        }

        return (settlement, positionState);
    }
}
