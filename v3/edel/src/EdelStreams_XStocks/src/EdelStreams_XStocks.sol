// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

// ============================================================
//  EdelStreams_XStocks — Chainlink AggregatorV3-compatible wrapper
//
//  One contract is deployed per feed.
//  Reads verified price data from DataStreamsConsumer.
//
//  latestRoundData() returns price scaled to 8 decimals to stay
//  compatible with the standard Chainlink off-chain / on-chain tooling.
//
//  Additional functions expose the full v10 stream data:
//    getTokenizedPrice()    — secondary market tokenized price (18 dec)
//    getMultipliers()       — TRM current/new multiplier + activation time
//    getMarketStatus()      — 0=Unknown  1=Closed  2=Open
//    getStreamData()        — full StreamData struct in one call
// ============================================================

interface IDataStreamsConsumer {
    struct StreamData {
        string name;
        int192 price;
        int192 tokenizedPrice;
        int192 currentMultiplier;
        int192 newMultiplier;
        uint32 activationDateTime;
        uint32 observationsTimestamp;
        uint64 lastUpdateTimestamp;
        uint32 marketStatus;
        bool active;
        bool initialized;
    }

    function getPrice(bytes32 feedId) external view returns (int192 price, uint32 timestamp);
    function getTokenizedPrice(bytes32 feedId) external view returns (int192 tokenizedPrice, uint32 timestamp);
    function getMultipliers(bytes32 feedId)
        external
        view
        returns (int192 currentMultiplier, int192 newMultiplier, uint32 activationDateTime);
    function getMarketStatus(bytes32 feedId) external view returns (uint32);
    function getStreamData(bytes32 feedId) external view returns (StreamData memory);
}

/// @notice Minimal Chainlink AggregatorV3 interface
interface AggregatorV3Interface {
    function decimals() external view returns (uint8);
    function description() external view returns (string memory);
    function version() external view returns (uint256);
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

contract EdelStreams_XStocks is AggregatorV3Interface {
    // ── Immutables ──────────────────────────────────────────────────────────

    IDataStreamsConsumer public immutable CONSUMER;
    bytes32 public immutable FEED_ID;

    // ── Constructor ─────────────────────────────────────────────────────────

    /// @param consumer_     Address of the DataStreamsConsumer contract
    /// @param feedId_       The Chainlink Data Stream feedId this contract wraps
    constructor(address consumer_, bytes32 feedId_) {
        CONSUMER = IDataStreamsConsumer(consumer_);
        FEED_ID = feedId_;
    }

    // ── AggregatorV3Interface ───────────────────────────────────────────────

    /// @notice 8 decimals — matches standard Chainlink price feed convention.
    ///         The underlying stream price is 18-decimal int192; we divide by 1e10.
    function decimals() external pure override returns (uint8) {
        return 8;
    }

    /// @notice Human-readable feed label, e.g. "TSLAx / USD"
    function description() external pure override returns (string memory) {
        return "EdelStreams for XStocks - powered by Chainlik Data Streams";
    }

    /// @notice Returns 1 — v10 stream schema version
    function version() external pure override returns (uint256) {
        return 1;
    }

    /// @notice Returns the latest verified price for this stream.
    ///
    ///         answer is the consensus mid-price scaled to 8 decimals.
    ///         roundId / answeredInRound are derived from observationsTimestamp.
    ///
    /// @dev    Reverts if the stream has not been initialized in DataStreamsConsumer
    ///         (i.e., no report has been verified yet).
    function latestRoundData()
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (int192 price, uint32 timestamp) = CONSUMER.getPrice(FEED_ID);

        // Scale from 18-decimal int192 → 8-decimal int256
        answer = int256(price) / 1e10;

        roundId = uint80(timestamp);
        startedAt = uint256(timestamp);
        updatedAt = uint256(timestamp);
        answeredInRound = uint80(timestamp);
    }

    /// @notice Latest price scaled to 8 decimals. Chainlink AggregatorInterface compatible.
    function latestAnswer() external view returns (int256) {
        (int192 price,) = CONSUMER.getPrice(FEED_ID);
        return int256(price) / 1e10;
    }

    /// @notice Timestamp of the latest price observation.
    function latestTimestamp() external view returns (uint256) {
        (, uint32 timestamp) = CONSUMER.getPrice(FEED_ID);
        return uint256(timestamp);
    }

    // ── Extended Stream Data ────────────────────────────────────────────────

    /// @notice Raw 18-decimal consensus mid-price from the stream.
    function getRawPrice() external view returns (int192 price, uint32 timestamp) {
        return CONSUMER.getPrice(FEED_ID);
    }

    /// @notice Secondary market tokenized price (18 decimals).
    function getTokenizedPrice() external view returns (int192 tokenizedPrice, uint32 timestamp) {
        return CONSUMER.getTokenizedPrice(FEED_ID);
    }

    /// @notice Total Return Multiplier data.
    /// @return currentMultiplier   Current shares per tokenized asset (18 decimals)
    /// @return newMultiplier       Upcoming multiplier post-corporate-action (18 decimals)
    /// @return activationDateTime  Unix ts when newMultiplier becomes active
    function getMultipliers()
        external
        view
        returns (int192 currentMultiplier, int192 newMultiplier, uint32 activationDateTime)
    {
        return CONSUMER.getMultipliers(FEED_ID);
    }

    /// @notice Market status for this stream.  0=Unknown  1=Closed  2=Open
    function getMarketStatus() external view returns (uint32) {
        return CONSUMER.getMarketStatus(FEED_ID);
    }

    /// @notice Returns the full StreamData struct for this stream in a single call.
    function getStreamData() external view returns (IDataStreamsConsumer.StreamData memory) {
        return CONSUMER.getStreamData(FEED_ID);
    }
}
