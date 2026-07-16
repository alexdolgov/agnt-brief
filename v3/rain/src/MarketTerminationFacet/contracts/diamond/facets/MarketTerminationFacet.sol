// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import { IMarketTermination } from "../interfaces/IMarketTermination.sol";
import { LibAppStorage } from "../libraries/LibAppStorage.sol";
import { LibConstants } from "../libraries/LibConstants.sol";
import { LibMarketTermination } from "../libraries/LibMarketTermination.sol";
import { LibUtilsFee } from "../libraries/LibUtilsFee.sol";
import { LibUtilsPosition } from "../libraries/LibUtilsPosition.sol";
import { LibUtilsRevert } from "../libraries/LibUtilsRevert.sol";
import { Errors } from "../shared/Errors.sol";
import { Types } from "../shared/Types.sol";
import { Modifiers } from "../utils/Modifiers.sol";

/**
 * @title MarketTerminationFacet
 * @author Rain Team
 * @notice External interface for the termination market.
 */
contract MarketTerminationFacet is IMarketTermination, Modifiers {
    /* ========================== FUNCTIONS ========================== */

    /**
     * @inheritdoc IMarketTermination
     */
    function openPositionTermination(
        uint256 amount,
        bytes memory previousMarketTerminationExtraData
    ) external whenNotPaused nonReentrant {
        uint256 marketIndex = LibMarketTermination.currentMarketIndexTermination();
        MarketTermination memory market = LibMarketTermination.marketTermination(marketIndex);

        if (market.marketState == IMarketTermination.MarketState.UNINITIALIZED) {
            _initializeMarket(marketIndex, previousMarketTerminationExtraData);
        }

        if (amount < LibUtilsPosition.minPosition() || LibUtilsPosition.maxPosition() < amount) {
            LibUtilsRevert.revertWithSelector(Errors.AmountOutOfRange.selector);
        }

        bytes32 positionId = LibUtilsPosition.generatePositionId(Types.MarketType.TERMINATION, msg.sender, marketIndex);
        Types.PositionData memory positionData = LibAppStorage.positionData(positionId);
        uint256 receivedConfirmations = LibAppStorage.positionProgress(positionId).receivedConfirmations;

        if (positionData.amount > 0 && receivedConfirmations < positionData.requiredConfirmations) {
            LibUtilsRevert.revertWithSelector(Errors.PositionNotClosed.selector);
        }

        uint256 processedAmount = LibUtilsFee.processFees(
            Types.MarketType.TERMINATION,
            IERC20(LibAppStorage.defaultAsset()),
            msg.sender,
            amount
        );

        LibMarketTermination.openPosition(positionId, msg.sender, processedAmount, marketIndex);

        emit OpenPositionTermination({
            marketIndexTermination: marketIndex,
            positionId: positionId,
            user: msg.sender,
            amount: processedAmount
        });
    }

    /**
     * @inheritdoc IMarketTermination
     */
    function fulfillRandomnessTermination(
        bytes32 requestId,
        bytes32 randomEncryptedMarketDuration
    ) external onlyRole(LibConstants.AUTHORITY_ROLE) {
        (uint256 marketIndex, uint256 startTime) = LibMarketTermination.fulfillMarket(
            requestId,
            randomEncryptedMarketDuration
        );

        emit StartMarketTermination({
            marketIndexTermination: marketIndex,
            startTime: startTime,
            encryptedMarketDuration: randomEncryptedMarketDuration,
            requestId: requestId
        });
    }

    /**
     * @inheritdoc IMarketTermination
     */
    function closePositionTermination(uint256 closePositionTimeMs, bytes memory signature) external nonReentrant {
        uint256 marketIndex;

        unchecked {
            marketIndex = LibMarketTermination.currentMarketIndexTermination() - 1;
        }

        MarketTermination memory market = LibMarketTermination.marketTermination(marketIndex);
        uint256 timeElapsedMs = LibMarketTermination.validateClosePosition(
            market,
            closePositionTimeMs,
            signature,
            msg.sender
        );
        bytes32 positionId = LibUtilsPosition.generatePositionId(Types.MarketType.TERMINATION, msg.sender, marketIndex);
        Types.PositionData memory positionData = LibAppStorage.positionData(positionId);

        if (positionData.amount == 0) {
            LibUtilsRevert.revertWithSelector(Errors.PositionNonexistent.selector);
        }

        if (LibAppStorage.positionProgress(positionId).receivedConfirmations == positionData.requiredConfirmations) {
            LibUtilsRevert.revertWithSelector(Errors.PositionAlreadyClosed.selector);
        }

        uint256 settlement = LibMarketTermination.closePosition(positionId, positionData, timeElapsedMs);

        emit ClosePositionTermination({
            marketIndexTermination: marketIndex,
            positionId: positionData.id,
            user: positionData.user,
            settlement: settlement,
            closePositionTimeMs: closePositionTimeMs,
            timeElapsed: timeElapsedMs
        });
    }

    /**
     * @inheritdoc IMarketTermination
     */
    function forceInitializeMarketTermination(
        bytes memory previousMarketTerminationExtraData
    ) external onlyRole(LibConstants.OWNER_ROLE) {
        uint256 marketIndex = LibMarketTermination.currentMarketIndexTermination();

        _initializeMarket(marketIndex, previousMarketTerminationExtraData);
    }

    /**
     * @inheritdoc IMarketTermination
     */
    function currentMarketIndexTermination() external view returns (uint256) {
        return LibMarketTermination.currentMarketIndexTermination();
    }

    /**
     * @inheritdoc IMarketTermination
     */
    function marketTermination(
        uint256 marketIndex
    )
        external
        view
        returns (
            IMarketTermination.MarketState marketState,
            uint256 index,
            uint256 startTime,
            uint256 totalAssets,
            bytes32 requestId,
            bytes32 encryptedMarketDuration,
            bytes memory extraData
        )
    {
        MarketTermination memory market = LibMarketTermination.marketTermination(marketIndex);

        marketState = market.marketState;
        index = market.index;
        startTime = market.startTime;
        totalAssets = market.totalAssets;
        requestId = market.requestId;
        encryptedMarketDuration = market.encryptedMarketDuration;
        extraData = market.extraData;
    }

    /**
     * @inheritdoc IMarketTermination
     */
    function requestMarketTerminationMap(bytes32 requestId) external view returns (uint256 marketIndex) {
        marketIndex = LibMarketTermination.requestMarketTerminationMap(requestId);
    }

    /**
     * @dev Initializes a new termination market and finalizes the previous if required.
     * @param marketIndex Index of the market to be started.
     * @param previousMarketTerminationExtraData Extra data to validate the previous market.
     */
    function _initializeMarket(uint256 marketIndex, bytes memory previousMarketTerminationExtraData) private {
        if (marketIndex > 0) {
            uint256 previousMarketIndex;

            unchecked {
                previousMarketIndex = marketIndex - 1;
            }

            MarketTermination memory previousMarket = LibMarketTermination.marketTermination(previousMarketIndex);

            if (previousMarket.marketState != IMarketTermination.MarketState.FINALIZED) {
                bytes32 previousRequestId = LibMarketTermination.finalizePreviousMarket(
                    previousMarketIndex,
                    previousMarketTerminationExtraData
                );

                (uint16 random, string memory suffix) = abi.decode(
                    previousMarketTerminationExtraData,
                    (uint16, string)
                );

                emit FinalizeMarketTermination({
                    marketIndexTermination: previousMarketIndex,
                    random: random,
                    suffix: suffix,
                    requestId: previousRequestId
                });
            }
        }

        bytes32 requestId = LibMarketTermination.initializeMarket(msg.sender);

        emit InitializeMarketTermination({ marketIndexTermination: marketIndex, requestId: requestId });
    }
}
