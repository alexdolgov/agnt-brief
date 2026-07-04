// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.19;

import "./AggregatorV3Interface.sol";

/**
 * @title StakedAvax Interface
 * @notice Interface for interacting with the StakedAvax token contract
 */
interface StakedAvax {
    /**
     * @notice Returns the amount of pooled AVAX for a given amount of shares
     * @param shareAmount The amount of shares to convert
     * @return The corresponding amount of pooled AVAX
     */
    function getPooledAvaxByShares(uint shareAmount) external view returns (uint);
}

/**
 * @title StakedAvaxPriceFeed
 * @author BENQI
 * @notice Price feed adapter that combines AVAX/USD price with sAVAX/AVAX exchange rate
 * @dev This contract provides the USD price of sAVAX by multiplying the AVAX price by the sAVAX/AVAX exchange rate
 */
contract StakedAvaxPriceFeed {
    /// @notice The price feed for AVAX/USD
    AggregatorV3Interface immutable public avaxPriceFeed;

    /// @notice The StakedAvax token contract
    StakedAvax immutable public sAVAX;

    /**
     * @notice Initializes the StakedAvaxPriceFeed contract
     * @param _avaxPriceFeed Address of the AVAX/USD price feed
     * @param _sAVAX Address of the StakedAvax token contract
     */
    constructor(address _avaxPriceFeed, address _sAVAX) {
        avaxPriceFeed = AggregatorV3Interface(_avaxPriceFeed);
        sAVAX = StakedAvax(_sAVAX);
    }

    /**
     * @notice Returns the latest price data for sAVAX in USD
     * @dev Calculates sAVAX price by multiplying AVAX/USD price with sAVAX/AVAX exchange rate
     * @return _roundId The round ID from the AVAX price feed
     * @return _answer The calculated sAVAX price in USD (with same decimals as AVAX feed)
     * @return _startedAt The started at timestamp from the AVAX price feed
     * @return _updatedAt The updated at timestamp from the AVAX price feed
     * @return _answeredInRound The round ID from the AVAX price feed
     */
    function latestRoundData() external view returns (
        uint80 _roundId,
        int256 _answer,
        uint256 _startedAt,
        uint256 _updatedAt,
        uint80 _answeredInRound
    ) {
        uint256 exchangeRate = sAVAX.getPooledAvaxByShares(1 ether);

        (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        ) = avaxPriceFeed.latestRoundData();

        _roundId = roundId;
        _answer = answer * int256(exchangeRate) / 1 ether;
        _startedAt = startedAt;
        _updatedAt = updatedAt;
        _answeredInRound = answeredInRound;
    }

    /**
     * @notice Returns the number of decimals in the price feed
     * @dev Inherits the decimal precision from the underlying AVAX price feed
     * @return The number of decimals used by this price feed
     */
    function decimals() external view returns (uint8) {
        return avaxPriceFeed.decimals();
    }
}
