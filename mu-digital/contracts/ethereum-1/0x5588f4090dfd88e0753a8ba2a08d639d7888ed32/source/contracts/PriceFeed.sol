// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {ContractBaseUpgradeable} from "./commons/ContractBaseUpgradeable.sol";
import {IPriceFeed} from "./interfaces/IPriceFeed.sol";
import {IAccessManager} from "./interfaces/IAccessManager.sol";
import {Errors} from "./commons/Errors.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * @title PriceFeed
 * @author Mu Digital
 * @notice Provides price feed functionality for tokens in the Mu Protocol
 */
contract PriceFeed is ContractBaseUpgradeable, IPriceFeed {
    /**
     * @notice Minimum allowed decimals for token prices
     * @dev Default is set to 6 for reasonable price precision
     */
    uint256 public constant MIN_PRICE_DECIMALS = 6;

    /**
     * @notice Maximum allowed decimals for token prices
     * @dev Default is set to 50 for reasonable price precision
     */
    uint256 public constant MAX_PRICE_DECIMALS = 50;

    /**
     * @notice Maximum price change percentage (in basis points, e.g., 1000 = 10%)
     * @dev Default is set to 10% (1000 basis points) for reasonable price movement bounds
     */
    uint256 public maxPriceChangePercent;

    /**
     * @notice Staleness threshold in seconds
     */
    uint256 public stalenessThreshold;

    /**
     * @notice Minimum interval between price updates in seconds (rate limiting)
     * @dev Default is set to 60 seconds to prevent spam updates
     */
    uint256 public minUpdateInterval;

    // Mapping to store token price data
    mapping(address => PriceData) private tokenPriceData;

    /**
     * @notice Initialize the contract
     * @param manager The address of the access manager contract
     * @param maxPriceChangePercent_ The maximum price change percentage in basis points (e.g., 1000 = 10%)
     * @param stalenessThreshold_ The staleness threshold in seconds
     * @param minUpdateInterval_ The minimum interval between price updates in seconds (rate limiting)
     */
    function initialize(
        address manager,
        uint256 maxPriceChangePercent_,
        uint256 stalenessThreshold_,
        uint256 minUpdateInterval_
    ) external initializer {
        if (manager == address(0)) revert Errors.ZeroAddress();
        if (maxPriceChangePercent_ == 0 || maxPriceChangePercent_ > 10000) revert Errors.InvalidAmount();
        if (stalenessThreshold_ == 0) revert Errors.InvalidAmount();

        _initContractBaseUpgradeable();
        accessManager = manager;

        // Set configuration parameters
        maxPriceChangePercent = maxPriceChangePercent_;
        stalenessThreshold = stalenessThreshold_;
        minUpdateInterval = minUpdateInterval_;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the admin(MANAGER_PRICE_FEED) role.
     **/
    modifier onlyAdmin() override {
        if (!IAccessManager(accessManager).hasRole(keccak256("MANAGER_PRICE_FEED"), _msgSender()))
            revert Errors.NotAuthorized();
        _;
    }

    /**
     * @dev Modifier to restrict access to certain functions to the oracle role.
     **/
    modifier onlyOracle() {
        if (!IAccessManager(accessManager).hasRole(keccak256("ORACLE_ROLE"), _msgSender())) revert Errors.NotOracle();
        _;
    }

    /**
     * @notice Update the price of a token with default decimals
     * @param token The address of the token
     * @param price The new price of the token
     * @param decimals The number of decimals for the token price
     */
    function updatePrice(address token, uint256 price, uint8 decimals) external onlyOracle {
        if (token == address(0)) revert Errors.InvalidToken();
        if (price == 0) revert Errors.InvalidPrice();
        if (decimals < MIN_PRICE_DECIMALS || decimals > MAX_PRICE_DECIMALS) revert Errors.InvalidDecimals();

        PriceData storage priceData = tokenPriceData[token];

        // Rate limiting: Check if enough time has passed since last update
        if (priceData.lastUpdate > 0 && (block.timestamp - priceData.lastUpdate) < minUpdateInterval) {
            revert Errors.UpdateTooFrequent();
        }

        uint256 currentPrice = priceData.price;
        uint8 currentDecimals = priceData.decimals;

        // If there's a previous price, check price change limit
        if (currentPrice > 0) {
            // Normalize both prices to the same decimal scale for comparison
            uint256 normalizedCurrentPrice;
            uint256 normalizedNewPrice;

            if (currentDecimals == decimals) {
                // Same decimals, direct comparison
                normalizedCurrentPrice = currentPrice;
                normalizedNewPrice = price;
            } else if (currentDecimals < decimals) {
                // Scale up current price to match new decimals
                uint256 scaleFactor = 10 ** (decimals - currentDecimals);
                normalizedCurrentPrice = Math.mulDiv(currentPrice, scaleFactor, 1);
                normalizedNewPrice = price;
            } else {
                // Scale up new price to match current decimals
                uint256 scaleFactor = 10 ** (currentDecimals - decimals);
                normalizedCurrentPrice = currentPrice;
                normalizedNewPrice = Math.mulDiv(price, scaleFactor, 1);
            }

            uint256 priceChange = normalizedNewPrice > normalizedCurrentPrice
                ? normalizedNewPrice - normalizedCurrentPrice
                : normalizedCurrentPrice - normalizedNewPrice;
            uint256 maxAllowedChange = Math.mulDiv(normalizedCurrentPrice, maxPriceChangePercent, 10000);

            if (priceChange > maxAllowedChange) {
                revert Errors.PriceChangeExceedsLimit();
            }
        }

        // Update price data
        priceData.price = price;
        priceData.decimals = decimals;
        priceData.lastUpdate = block.timestamp;

        emit PriceUpdated(token, price, block.timestamp);
    }

    /**
     * @notice Get the latest price of a token
     * @param token The address of the token
     * @return priceMantissa The price of the token in mantissa format (0 if stale/invalid)
     * @return priceDecimals The number of decimals for the token price
     */
    function getPrice(address token) external view returns (uint256 priceMantissa, uint8 priceDecimals) {
        PriceData memory priceData = tokenPriceData[token];
        if (priceData.lastUpdate == 0 || (block.timestamp - priceData.lastUpdate) > stalenessThreshold) {
            return (0, priceData.decimals);
        }
        return (priceData.price, priceData.decimals);
    }

    /**
     * @notice Get the fresh price of a token (ignores staleness)
     * @param token The address of the token
     * @return priceMantissa The price of the token in mantissa format
     * @return priceDecimals The number of decimals for the token price
     */
    function getFreshPrice(address token) external view returns (uint256 priceMantissa, uint8 priceDecimals) {
        PriceData memory priceData = tokenPriceData[token];
        return (priceData.price, priceData.decimals);
    }

    /**
     * @notice Set maximum price change percentage (in basis points, e.g., 1000 = 10%)
     * @param maxChangePercent The maximum price change percentage
     */
    function setMaxPriceChangePercent(uint256 maxChangePercent) external onlyAdmin {
        if (maxChangePercent == 0 || maxChangePercent > 10000) {
            revert Errors.InvalidAmount();
        }
        maxPriceChangePercent = maxChangePercent;
        emit MaxPriceChangeUpdated(maxChangePercent);
    }

    /**
     * @notice Set staleness threshold in seconds
     * @param threshold The staleness threshold in seconds
     */
    function setStalenessThreshold(uint256 threshold) external onlyAdmin {
        if (threshold == 0) revert Errors.InvalidAmount();
        stalenessThreshold = threshold;
        emit StalenessThresholdUpdated(threshold);
    }

    /**
     * @notice Set minimum update interval in seconds (rate limiting)
     * @param interval The minimum interval between price updates in seconds
     */
    function setMinUpdateInterval(uint256 interval) external onlyAdmin {
        if (interval == 0) revert Errors.InvalidAmount();
        minUpdateInterval = interval;
        emit MinUpdateIntervalUpdated(interval);
    }
}
