// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { UD60x18, ud, uUNIT, UNIT } from "@prb/math/src/UD60x18.sol";

import { IRandomNumberService } from "../../interfaces/IRandomNumberService.sol";
import { IReservoir } from "../../interfaces/IReservoir.sol";

import { IMarketTermination } from "../interfaces/IMarketTermination.sol";
import { Types } from "../shared/Types.sol";

import { LibAppStorage } from "./LibAppStorage.sol";
import { LibConstants } from "./LibConstants.sol";
import { LibQueue } from "./LibQueue.sol";
import { LibUtilsRevert } from "./LibUtilsRevert.sol";
import { LibUtilsSign } from "./LibUtilsSign.sol";
import { LibUtilsTime } from "./LibUtilsTime.sol";

/**
 * @title LibMarketTermination
 * @author Rain Team
 * @notice Internal library containing core logic and state management for the termination market.
 */
library LibMarketTermination {
    using SafeERC20 for IERC20;
    using Math for uint256;

    /* ========================== STATE VARIABLES ========================== */

    // keccak256("ClosePosition(uint256 closePositionTimeMs,uint256 marketIndex,address user)")
    /// @dev Close position typehash.
    bytes32 internal constant CLOSE_POSITION_TYPEHASH =
        0xcd5188513af25b0cddff00bc651e56dae686c21aa0f6e1084b60ffcb1c3a9a6c;

    /// @dev Delay for the market to begin in seconds.
    uint256 internal constant MARKET_START_DELAY = 4;

    /// @dev Threshold for phase 1 to phase 2 transition in milliseconds.
    uint256 internal constant LINEAR_GROWTH_THRESHOLD_MS = 10_000;

    /// @dev Threshold for linear to exponential transition in milliseconds.
    uint256 internal constant EXPONENTIAL_GROWTH_THRESHOLD_MS = 20_000;

    /// @dev Precision divisor for calculating settlement for phase 1 and 2.
    uint256 internal constant SETTLEMENT_PRECISION = 1e4;

    /// @dev Growth rate multiplier for phase 2.
    uint256 internal constant LINEAR_GROWTH_MULTIPLIER = 2;

    /// @dev Exponent for exponential growth formula: t^P (1.5 in fixed-point).
    UD60x18 internal constant CONSTANT_P = UD60x18.wrap(1.5e18);

    /// @dev Scaling coefficient for exponential growth: K * t^P (0.039 in fixed-point).
    UD60x18 internal constant CONSTANT_K = UD60x18.wrap(0.039e18);

    /// @dev Base coefficient for exponential phase, i.e. 4.0x starting multiplier (4.0 in fixed-point).
    UD60x18 internal constant COEFFICIENT_FOUR = UD60x18.wrap(4e18);

    /* ========================== ERC7201 STORAGE ========================== */

    /// @dev Namespaced storage location as per ERC-7201 (raindecision.storage.MarketTermination).
    struct MarketTerminationStorage {
        uint256 _currentMarketIndexTermination;
        mapping(uint256 marketIndex => IMarketTermination.MarketTermination marketTermination) _marketTermination;
        mapping(bytes32 requestId => uint256 marketIndex) _requestMarketTerminationMap;
    }

    // keccak256(abi.encode(uint256(keccak256("raindecision.storage.MarketTermination")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant MarketTerminationStorageLocation =
        0xe37ecf2de3b8a4841c371b733f045efca6d8d2cdd6b390d11a8fc8920b204200;

    function getMarketTerminationStorage() internal pure returns (MarketTerminationStorage storage mts) {
        assembly {
            mts.slot := MarketTerminationStorageLocation
        }
    }

    /**
     * @dev See {IMarketTermination-currentMarketIndexTermination}.
     */
    function currentMarketIndexTermination() internal view returns (uint256) {
        MarketTerminationStorage storage mts = getMarketTerminationStorage();

        return mts._currentMarketIndexTermination;
    }

    /**
     * @dev See {IMarketTermination-marketTermination}.
     */
    function marketTermination(
        uint256 marketIndex
    ) internal view returns (IMarketTermination.MarketTermination memory) {
        MarketTerminationStorage storage mts = getMarketTerminationStorage();

        return mts._marketTermination[marketIndex];
    }

    /**
     * @dev See {IMarketTermination-requestMarketTerminationMap}.
     */
    function requestMarketTerminationMap(bytes32 requestId) internal view returns (uint256) {
        MarketTerminationStorage storage mts = getMarketTerminationStorage();

        return mts._requestMarketTerminationMap[requestId];
    }

    /* ========================== FUNCTIONS ========================== */

    /**
     * @dev Finalizes the previous market by validating and processing extra data.
     * @param previousMarketIndex Index of the market to finalize.
     * @param previousMarketTerminationExtraData Extra data to validate.
     * @return previousRequestId Oracle request identifier of the previous market.
     */
    function finalizePreviousMarket(
        uint256 previousMarketIndex,
        bytes memory previousMarketTerminationExtraData
    ) internal returns (bytes32) {
        MarketTerminationStorage storage mts = getMarketTerminationStorage();

        mts._marketTermination[previousMarketIndex].marketState = IMarketTermination.MarketState.FINALIZED;
        mts._marketTermination[previousMarketIndex].extraData = previousMarketTerminationExtraData;

        LibQueue.cleanQueue(Types.MarketType.TERMINATION);
        LibQueue.removeMarket(Types.MarketType.TERMINATION, previousMarketIndex);

        IMarketTermination.MarketTermination memory previousMarket = mts._marketTermination[previousMarketIndex];
        bytes32 encryptedMarketDuration = keccak256(previousMarketTerminationExtraData);

        if (previousMarket.encryptedMarketDuration != encryptedMarketDuration) {
            LibUtilsRevert.revertWithSelector(IMarketTermination.IncorrectPreviousMarketValidation.selector);
        }

        IERC20 defaultAsset = IERC20(LibAppStorage.defaultAsset());
        IReservoir reservoir = IReservoir(LibAppStorage.reservoir());

        defaultAsset.safeTransfer(address(reservoir), previousMarket.totalAssets);
        reservoir.absorb(defaultAsset, previousMarket.totalAssets, IReservoir.AbsorptionCause.RETURN);

        return previousMarket.requestId;
    }

    /**
     * @dev Initializes a new market. Stores market metadata.
     * @param user Address of the user that triggers the market initialization.
     * @return requestId Oracle request identifier.
     */
    function initializeMarket(address user) internal returns (bytes32) {
        MarketTerminationStorage storage mts = getMarketTerminationStorage();

        bytes32 requestId = IRandomNumberService(LibAppStorage.rng()).requestEncryptedNumber(
            LibAppStorage.url(),
            LibAppStorage.path(),
            LibAppStorage.jobId(),
            user,
            IMarketTermination.fulfillRandomnessTermination.selector
        );

        uint256 marketIndex = mts._currentMarketIndexTermination;

        mts._marketTermination[marketIndex].marketState = IMarketTermination.MarketState.INITIALIZED;
        mts._marketTermination[marketIndex].index = marketIndex;
        mts._marketTermination[marketIndex].requestId = requestId;

        mts._requestMarketTerminationMap[requestId] = marketIndex;

        LibQueue.cleanQueue(Types.MarketType.TERMINATION);
        LibQueue.addMarket(Types.MarketType.TERMINATION, marketIndex);

        return requestId;
    }

    /**
     * @dev Opens a position for the current termination market.
     * @param positionId Unique position identifier.
     * @param user Address of the user opening the position.
     * @param amount Position amount.
     * @param marketIndex Current market index.
     */
    function openPosition(bytes32 positionId, address user, uint256 amount, uint256 marketIndex) internal {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();
        MarketTerminationStorage storage mts = getMarketTerminationStorage();

        if (mts._marketTermination[marketIndex].marketState != IMarketTermination.MarketState.INITIALIZED) {
            LibUtilsRevert.revertWithSelector(IMarketTermination.MarketNotInitialized.selector);
        }

        unchecked {
            mts._marketTermination[marketIndex].totalAssets += amount;
        }

        s._positionData[positionId].marketType = Types.MarketType.TERMINATION;
        s._positionData[positionId].id = positionId;
        s._positionData[positionId].user = user;
        s._positionData[positionId].amount = amount;
        s._positionData[positionId].startBlock = block.number;
        s._positionData[positionId].startTime = block.timestamp;
        s._positionData[positionId].requiredConfirmations = 1;
    }

    /**
     * @dev Fulfills randomness and activates the market with a start time.
     * @param requestId Oracle request identifier.
     * @param randomEncryptedMarketDuration Encrypted market duration.
     * @return marketIndex Market index that was fulfilled.
     * @return startTime Timestamp when the market starts.
     */
    function fulfillMarket(
        bytes32 requestId,
        bytes32 randomEncryptedMarketDuration
    ) internal returns (uint256, uint256) {
        MarketTerminationStorage storage mts = getMarketTerminationStorage();

        uint256 marketIndex = mts._requestMarketTerminationMap[requestId];
        uint256 startTime;

        unchecked {
            startTime = block.timestamp + MARKET_START_DELAY;

            mts._currentMarketIndexTermination++;
        }

        mts._marketTermination[marketIndex].marketState = IMarketTermination.MarketState.STARTED;
        mts._marketTermination[marketIndex].startTime = startTime;
        mts._marketTermination[marketIndex].encryptedMarketDuration = randomEncryptedMarketDuration;

        return (marketIndex, startTime);
    }

    /**
     * @dev Closes a termination position and calculates settlement.
     * @param positionId Unique position identifier.
     * @param positionData Position data.
     * @param timeElapsedMs Time elapsed since market start.
     * @return settlement Settlement from closing the position.
     */
    function closePosition(
        bytes32 positionId,
        Types.PositionData memory positionData,
        uint256 timeElapsedMs
    ) internal returns (uint256) {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        uint256 settlement = calculateSettlement(positionData.amount, timeElapsedMs);

        unchecked {
            s._positionProgress[positionId].receivedConfirmations++;
        }

        s._positionProgress[positionId].marketType = positionData.marketType;
        s._positionProgress[positionId].id = positionData.id;
        s._positionProgress[positionId].user = positionData.user;
        s._positionProgress[positionId].settlement = settlement;

        distributeSettlement(settlement, positionData.user);

        return settlement;
    }

    /**
     * @dev Validates close position conditions.
     * @param market Market pertaining to the position.
     * @param closePositionTimeMs Timestamp, in milliseconds, when the position was closed.
     * @return timeElapsedMs Validated time elapsed.
     */
    function validateClosePosition(
        IMarketTermination.MarketTermination memory market,
        uint256 closePositionTimeMs,
        bytes memory signature,
        address user
    ) internal view returns (uint256) {
        if (market.marketState != IMarketTermination.MarketState.STARTED) {
            LibUtilsRevert.revertWithSelector(IMarketTermination.MarketNotStarted.selector);
        }

        uint256 timeElapsedMs;

        unchecked {
            timeElapsedMs = closePositionTimeMs - LibUtilsTime.toMilliseconds(market.startTime);
        }

        if (timeElapsedMs > LibConstants.MAX_MARKET_TERMINATION_DURATION_MS) {
            LibUtilsRevert.revertWithSelector(IMarketTermination.ExceededMaxMarketDuration.selector);
        }

        bytes32 structHash = keccak256(abi.encode(CLOSE_POSITION_TYPEHASH, closePositionTimeMs, market.index, user));

        LibUtilsSign.validateSignature(structHash, signature);

        return timeElapsedMs;
    }

    /**
     * @dev Processes settlement distribution based on position outcome.
     * @param settlement Calculated settlement.
     * @param user Address of the user to receive the settlement.
     */
    function distributeSettlement(uint256 settlement, address user) private {
        LibAppStorage.AppStorage storage s = LibAppStorage.getAppStorage();

        s._reservoir.disburse(s._defaultAsset, settlement, user);
    }

    /**
     * @dev Calculates settlement based on elapsed time.
     *
     * NOTE: Calculations for each phase are as follows:
     * - phase 1 (0-10s)    : Linear growth from 1.0x to 2.0x (adds 0.0001x per ms).
     * - phase 2 (10-20s)   : Accelerated linear growth from 2.0x to 4.0x (adds 0.0002x per ms).
     * - phase 3 (20s+)     : Exponential growth starting at 4.0x using formula: 4 * (1 + K * t^P).
     *
     * @param amount Position amount.
     * @param timeElapsedMs Time elapsed from market start in milliseconds.
     * @return settlement Calculated settlement.
     */
    function calculateSettlement(uint256 amount, uint256 timeElapsedMs) private pure returns (uint256) {
        uint256 settlement;

        unchecked {
            if (timeElapsedMs <= LINEAR_GROWTH_THRESHOLD_MS) {
                // Calculating phase 1 multiplier by adding base precision to elapsed time.
                uint256 multiplier = timeElapsedMs + SETTLEMENT_PRECISION;

                settlement = (amount * multiplier) / SETTLEMENT_PRECISION;
            } else if (timeElapsedMs <= EXPONENTIAL_GROWTH_THRESHOLD_MS) {
                // Calculating phase 2 multiplier by doubling elapsed time.
                uint256 multiplier = timeElapsedMs * LINEAR_GROWTH_MULTIPLIER;

                settlement = (amount * multiplier) / SETTLEMENT_PRECISION;
            } else {
                // Calculating time over threshold with fixed-point precision in seconds.
                UD60x18 timeOverThresholdSeconds = ud(
                    LibUtilsTime.toSeconds((timeElapsedMs - EXPONENTIAL_GROWTH_THRESHOLD_MS) * uUNIT)
                );

                // Applying exponential curve.
                UD60x18 timeExponent = timeOverThresholdSeconds.pow(CONSTANT_P);

                // Calculating growth factor: 1 + K * t^P.
                UD60x18 growthFactor = UNIT + CONSTANT_K * timeExponent;

                // Finally, calculating phase 3 multiplier by applying the 4x coefficient.
                uint256 multiplier = (COEFFICIENT_FOUR * growthFactor).unwrap();

                settlement = (amount * multiplier) / uUNIT;
            }
        }

        return settlement;
    }
}
