// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @dev Chainlink AggregatorV3Interface for compatibility
 */
interface AggregatorV3Interface {
    function decimals() external view returns (uint8);

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

    function getRoundData(
        uint80 _roundId
    )
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

/**
 * @title MockPriceOracle
 * @notice ⚠️ DEVELOPMENT/TESTING ONLY ⚠️
 * @dev A mock price oracle implementing Chainlink's AggregatorV3Interface for testing.
 *      This contract is NOT suitable for production deployment due to:
 *      - Manual price setting by owner
 *      - No external price validation
 *      - Centralized control over price data
 *
 * @custom:security-contact This is a mock contract for testing only
 */
contract MockPriceOracle is AggregatorV3Interface, Ownable {
    // State variables
    int256 private _price;
    uint80 private _roundId;
    uint256 private _updatedAt;

    // Constants
    uint8 private constant DECIMALS = 8; // Chainlink standard

    // Events
    event PriceUpdated(int256 oldPrice, int256 newPrice, uint80 roundId);
    event RoundDataRequested(uint80 roundId);

    /**
     * @notice Constructor for mock price oracle
     * @param initialPrice Initial price in 8 decimals (e.g., 200000000000 for $2000.00)
     * @dev Sets the initial price and round data
     */
    constructor(int256 initialPrice) Ownable() {
        require(initialPrice > 0, "MockOracle: initial price must be positive");

        _price = initialPrice;
        _roundId = 1;
        _updatedAt = block.timestamp;

        emit PriceUpdated(0, initialPrice, _roundId);
    }

    /**
     * @notice Update the mock price
     * @param newPrice New price in 8 decimals (e.g., 210000000000 for $2100.00)
     * @dev Only owner can update price. Increments round ID and updates timestamp.
     */
    function setPrice(int256 newPrice) external onlyOwner {
        require(newPrice > 0, "MockOracle: price must be positive");

        int256 oldPrice = _price;
        _price = newPrice;
        _roundId++;
        _updatedAt = block.timestamp;

        emit PriceUpdated(oldPrice, newPrice, _roundId);
    }

    /**
     * @notice Batch update multiple prices with timestamps
     * @param prices Array of prices to set sequentially
     * @param timestamps Array of timestamps for each price
     * @dev Useful for simulating historical price data
     */
    function setBatchPrices(int256[] calldata prices, uint256[] calldata timestamps) external onlyOwner {
        require(prices.length == timestamps.length, "MockOracle: arrays length mismatch");
        require(prices.length > 0, "MockOracle: empty arrays");

        for (uint256 i = 0; i < prices.length; i++) {
            require(prices[i] > 0, "MockOracle: price must be positive");
            require(timestamps[i] <= block.timestamp, "MockOracle: timestamp cannot be in future");

            _price = prices[i];
            _roundId++;
            _updatedAt = timestamps[i];

            emit PriceUpdated(_price, prices[i], _roundId);
        }
    }

    /**
     * @notice Get the number of decimals for the price feed
     * @return Number of decimals (8, Chainlink standard)
     */
    function decimals() external pure override returns (uint8) {
        return DECIMALS;
    }

    /**
     * @notice Get the latest round data
     * @return roundId The round ID
     * @return answer The price in 8 decimals
     * @return startedAt Timestamp when the round started (same as updatedAt for simplicity)
     * @return updatedAt Timestamp when the round was last updated
     * @return answeredInRound The round ID of the round in which the answer was computed
     */
    function latestRoundData()
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        return (_roundId, _price, _updatedAt, _updatedAt, _roundId);
    }

    /**
     * @notice Get historical round data
     * @param _requestedRoundId The round ID to get data for
     * @return roundId The round ID
     * @return answer The price in 8 decimals
     * @return startedAt Timestamp when the round started
     * @return updatedAt Timestamp when the round was last updated
     * @return answeredInRound The round ID of the round in which the answer was computed
     * @dev For simplicity, all historical rounds return the current price with current timestamp
     */
    function getRoundData(
        uint80 _requestedRoundId
    )
        external
        view
        override
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        require(_requestedRoundId > 0, "MockOracle: invalid round ID");
        require(_requestedRoundId <= _roundId, "MockOracle: round not yet available");

        // For mock purposes, return current data for all historical rounds
        // In a real implementation, this would return actual historical data
        return (_requestedRoundId, _price, _updatedAt, _updatedAt, _requestedRoundId);
    }

    /**
     * @notice Simulate a price crash for testing liquidations
     * @param crashPercent Percentage to crash (e.g., 20 for 20% crash)
     * @dev Immediately drops price by specified percentage
     */
    function simulatePriceCrash(uint256 crashPercent) external onlyOwner {
        require(crashPercent > 0 && crashPercent <= 95, "MockOracle: crash percent must be 1-95");

        int256 oldPrice = _price;
        _price = (_price * int256(100 - crashPercent)) / 100;
        _roundId++;
        _updatedAt = block.timestamp;

        emit PriceUpdated(oldPrice, _price, _roundId);
    }

    /**
     * @notice Simulate gradual price change over time
     * @param targetPrice Target price to reach
     * @param steps Number of steps to reach target
     * @dev Each call moves price closer to target by 1/steps amount
     */
    function simulateGradualPriceChange(int256 targetPrice, uint256 steps) external onlyOwner {
        require(targetPrice > 0, "MockOracle: target price must be positive");
        require(steps > 0, "MockOracle: steps must be positive");

        int256 oldPrice = _price;
        int256 priceDiff = targetPrice - _price;
        _price = _price + (priceDiff / int256(steps));
        _roundId++;
        _updatedAt = block.timestamp;

        emit PriceUpdated(oldPrice, _price, _roundId);
    }

    /**
     * @notice Get current price directly
     * @return Current price in 8 decimals
     * @dev Helper function for easy price checking
     */
    function getCurrentPrice() external view returns (int256) {
        return _price;
    }

    /**
     * @notice Get current round information
     * @return Current round ID and update timestamp
     */
    function getCurrentRound() external view returns (uint80, uint256) {
        return (_roundId, _updatedAt);
    }

    /**
     * @notice Check if this is a mock contract
     * @return Always returns true to identify as mock
     * @dev Can be used by other contracts to detect mock vs real oracles
     */
    function isMockContract() external pure returns (bool) {
        return true;
    }

    /**
     * @notice Emergency function to reset the oracle state
     * @param newPrice New price to set
     * @dev Resets round ID to 1 and updates timestamp
     */
    function emergencyReset(int256 newPrice) external onlyOwner {
        require(newPrice > 0, "MockOracle: price must be positive");

        int256 oldPrice = _price;
        _price = newPrice;
        _roundId = 1;
        _updatedAt = block.timestamp;

        emit PriceUpdated(oldPrice, newPrice, _roundId);
    }
}
