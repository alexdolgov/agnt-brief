// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title IMarketTermination
 * @author Rain Team
 * @notice Interface for the termination market facet.
 * @dev Declares external functions, events, and errors required to interact with the termination market logic
 * implemented within the diamond.
 */
interface IMarketTermination {
    /* ========================== TYPES ========================== */

    /// @dev Represents the ongoing state of a termination market.
    enum MarketState {
        UNINITIALIZED,
        INITIALIZED,
        STARTED,
        FINALIZED
    }

    /// @dev Represents a single termination market session.
    struct MarketTermination {
        /// @custom:member marketState Represents the ongoing state of a termination market.
        MarketState marketState;
        /// @custom:member index Market index.
        uint256 index;
        /// @custom:member startTime Timestamp when the market started.
        uint256 startTime;
        /// @custom:member totalAssets Total assets committed to the market.
        uint256 totalAssets;
        /// @custom:member requestId Oracle request identifier.
        bytes32 requestId;
        /// @custom:member encryptedMarketDuration Encrypted market duration used to resolve the market.
        bytes32 encryptedMarketDuration;
        /// @custom:member extraData Additional market-specific data encoded as bytes.
        bytes extraData;
    }

    /* ========================== EVENTS ========================== */

    /**
     * @dev Emitted when a termination market is finalized.
     * @param marketIndexTermination Index of the termination market.
     * @param random Random number used in resolution.
     * @param suffix Cipher text used in resolution.
     */
    event FinalizeMarketTermination(uint256 marketIndexTermination, uint16 random, string suffix, bytes32 requestId);

    /**
     * @dev Emitted when a request to start a termination market is made.
     * @param marketIndexTermination Index of the termination market.
     * @param requestId Oracle request identifier.
     */
    event InitializeMarketTermination(uint256 marketIndexTermination, bytes32 requestId);

    /**
     * @dev Emitted when a user opens a position in a termination market.
     * @param marketIndexTermination Index of the termination market.
     * @param positionId Unique position identifier.
     * @param user Address of the user opening the position.
     * @param amount Position amount.
     */
    event OpenPositionTermination(
        uint256 marketIndexTermination,
        bytes32 positionId,
        address indexed user,
        uint256 amount
    );

    /**
     * @dev Emitted when a termination market starts.
     * @param marketIndexTermination Index of the termination market.
     * @param startTime Epoch time when market started.
     * @param encryptedMarketDuration Encrypted duration of the market.
     */
    event StartMarketTermination(
        uint256 marketIndexTermination,
        uint256 startTime,
        bytes32 encryptedMarketDuration,
        bytes32 requestId
    );

    /**
     * @dev Emitted when a termination position is closed.
     * @param marketIndexTermination Index of the termination market.
     * @param positionId Unique position identifier.
     * @param user Address of the user closing the position.
     * @param settlement Settlement from closing the position.
     * @param closePositionTimeMs Time at which user closed their position.
     * @param timeElapsed Time elapsed from market start until the position is closed.
     */
    event ClosePositionTermination(
        uint256 marketIndexTermination,
        bytes32 positionId,
        address indexed user,
        uint256 settlement,
        uint256 closePositionTimeMs,
        uint256 timeElapsed
    );

    /* ========================== ERRORS ========================== */

    /**
     * @dev Thrown when market duration exceeds the allowed max.
     */
    error ExceededMaxMarketDuration();

    /**
     * @dev Thrown when a market action is attempted before the market is initialized.
     */
    error MarketNotInitialized();

    /**
     * @dev Thrown when a market action is attempted before the market is started.
     */
    error MarketNotStarted();

    /**
     * @dev Thrown when a previous market is not validated correctly.
     */
    error IncorrectPreviousMarketValidation();

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Opens a termination position in the current market round.
     * @param amount Position amount.
     * @param previousMarketTerminationExtraData Extra data associated with the previous termination market.
     */
    function openPositionTermination(uint256 amount, bytes memory previousMarketTerminationExtraData) external;

    /**
     * @notice Fulfills a termination market using the provided randomness.
     * @param requestId Oracle request identifier.
     * @param randomEncryptedMarketDuration Encrypted randomness used to resolve the market.
     */
    function fulfillRandomnessTermination(bytes32 requestId, bytes32 randomEncryptedMarketDuration) external;

    /**
     * @notice Closes an active termination position.
     * @param closePositionTimeMs Timestamp, in milliseconds, at which the user attempts to close their position.
     * @param signature Signer-provided signature to authorize the close position.
     */
    function closePositionTermination(uint256 closePositionTimeMs, bytes memory signature) external;

    /**
     * @notice Forcefully initializes a new termination market and finalizes the previous if required.
     * @param previousMarketTerminationExtraData Extra data associated with the previous termination market.
     */
    function forceInitializeMarketTermination(bytes memory previousMarketTerminationExtraData) external;

    /**
     * @notice Index of the current termination market.
     */
    function currentMarketIndexTermination() external view returns (uint256);

    /**
     * @notice Termination market data associated with `marketIndex`.
     * @param marketIndex Index of the termination market.
     * @return marketState Represents the ongoing state of a termination market.
     * @return index Index of the termination market.
     * @return startTime Timestamp when the market started.
     * @return totalAssets Total assets committed to the market.
     * @return requestId Oracle request identifier.
     * @return encryptedMarketDuration Encrypted market duration used to resolve the market.
     * @return extraData Additional market-specific data encoded as bytes.
     */
    function marketTermination(
        uint256 marketIndex
    )
        external
        view
        returns (
            MarketState marketState,
            uint256 index,
            uint256 startTime,
            uint256 totalAssets,
            bytes32 requestId,
            bytes32 encryptedMarketDuration,
            bytes memory extraData
        );

    /**
     * @notice Termination market index associated with `requestId`.
     * @param requestId Oracle request identifier.
     * @return marketIndex Associated market index
     */
    function requestMarketTerminationMap(bytes32 requestId) external view returns (uint256 marketIndex);
}
