// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title IPriceFeed
 * @author Mu Digital
 * @notice Interface for price feed functionality to get and update token prices
 */
interface IPriceFeed {
    /**
     * @notice Structure to store price data with decimals
     */
    struct PriceData {
        uint256 price;
        uint8 decimals;
        uint256 lastUpdate;
    }

    /**
     * @notice Emitted when the price of a token is updated
     * @param token The address of the token
     * @param price The new price of the token
     * @param timestamp The timestamp of the price update
     */
    event PriceUpdated(address indexed token, uint256 indexed price, uint256 indexed timestamp);

    /**
     * @notice Emitted when maximum price change percentage is updated
     * @param maxPriceChangePercent The new maximum price change percentage
     */
    event MaxPriceChangeUpdated(uint256 indexed maxPriceChangePercent);

    /**
     * @notice Emitted when price staleness threshold is updated
     * @param stalenessThreshold The new staleness threshold in seconds
     */
    event StalenessThresholdUpdated(uint256 indexed stalenessThreshold);

    /**
     * @notice Emitted when minimum update interval is updated
     * @param minUpdateInterval The new minimum update interval in seconds
     */
    event MinUpdateIntervalUpdated(uint256 indexed minUpdateInterval);

    /**
     * @notice Get the latest price of a token
     * @param token The address of the token
     * @return priceMantissa The price of the token in mantissa format (0 if stale/invalid)
     * @return priceDecimals The number of decimals for the token price
     */
    function getPrice(address token) external view returns (uint256 priceMantissa, uint8 priceDecimals);

    /**
     * @notice Get the fresh price of a token (ignores staleness)
     * @param token The address of the token
     * @return priceMantissa The price of the token in mantissa format
     * @return priceDecimals The number of decimals for the token price
     */
    function getFreshPrice(address token) external view returns (uint256 priceMantissa, uint8 priceDecimals);

    /**
     * @notice Update the price of a token
     * @param token The address of the token
     * @param price The new price of the token
     * @param decimals The number of decimals for the token price
     */
    function updatePrice(address token, uint256 price, uint8 decimals) external;

    /**
     * @notice Set maximum price change percentage (in basis points, e.g., 1000 = 10%)
     * @param maxChangePercent The maximum price change percentage
     */
    function setMaxPriceChangePercent(uint256 maxChangePercent) external;

    /**
     * @notice Set staleness threshold in seconds
     * @param threshold The staleness threshold in seconds
     */
    function setStalenessThreshold(uint256 threshold) external;

    /**
     * @notice Set minimum update interval in seconds (rate limiting)
     * @param interval The minimum interval between price updates in seconds
     */
    function setMinUpdateInterval(uint256 interval) external;
}
