// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/**
 * @title AggregatorV2V3Interface
 * @notice Interface for price feed aggregators
 */
interface AggregatorV2V3Interface {
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
    function latestAnswer() external view returns (int256);
    function decimals() external view returns (uint8);
}

/**
 * @title IsAVAX
 * @notice Interface for staked AVAX contract
 */
interface IsAVAX {
    function getPooledAvaxByShares(uint256 shareAmount) external view returns (uint256);
}

/**
 * @title sAVAXExchangeRateAdapter
 * @notice Exposes a synthetic sAVAX/USD price by scaling AVAX/USD with the on-chain sAVAX->AVAX exchange rate
 * @dev This contract acts as a price feed adapter that combines AVAX price data with sAVAX exchange rates
 */
contract sAVAXExchangeRateAdapter {
    AggregatorV2V3Interface public immutable avaxPriceFeed;

    /// @notice The staked AVAX contract for exchange rate queries
    IsAVAX public immutable sAVAX;

    /**
     * @notice Constructor to initialize the price feed with required contracts
     * @param _avaxPriceFeed Address of the AVAX/USD price feed
     * @param _sAVAX Address of the staked AVAX contract
     */
    constructor(address _avaxPriceFeed, address _sAVAX) {
        require(_avaxPriceFeed != address(0), "Invalid AVAX feed address");
        require(_sAVAX != address(0), "Invalid sAVAX address");

        avaxPriceFeed = AggregatorV2V3Interface(_avaxPriceFeed);
        sAVAX = IsAVAX(_sAVAX);
    }

    /**
     * @notice Returns the latest round data for sAVAX/USD price
     * @return roundId The round ID (always 0 for synthetic feeds)
     * @return answer The sAVAX/USD price
     * @return startedAt Timestamp when the round started (current block timestamp)
     * @return updatedAt Timestamp when the round was updated (current block timestamp)
     * @return answeredInRound The round ID in which the answer was computed (always 0)
     */
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        // Get the current sAVAX to AVAX exchange rate
        uint256 exchangeRate = sAVAX.getPooledAvaxByShares(1 ether);

        // Calculate sAVAX/USD price: AVAX/USD * (AVAX per sAVAX)
        answer = avaxPriceFeed.latestAnswer() * int256(exchangeRate) / 1 ether;

        // Set synthetic round data
        roundId = 0;
        startedAt = block.timestamp;
        updatedAt = block.timestamp;
        answeredInRound = 0;

        return (roundId, answer, startedAt, updatedAt, answeredInRound);
    }

    /**
     * @notice Returns the number of decimals used by this price feed
     * @return The number of decimals (same as the underlying AVAX price feed)
     */
    function decimals() external view returns (uint8) {
        return avaxPriceFeed.decimals();
    }
}
