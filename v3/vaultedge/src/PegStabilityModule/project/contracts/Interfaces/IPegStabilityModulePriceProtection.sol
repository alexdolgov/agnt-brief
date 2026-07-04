// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { IPriceFeed } from "./IPriceFeed.sol";

/// @title IPegStabilityModulePriceFeed
/// @notice Interface for price feed functionality in the Peg Stability Module
interface IPegStabilityModulePriceProtection {
    // Events ---------------------------------------------------------------------------------------------------------

    /// @notice Emitted when the price feed contract is updated
    /// @param previousPriceFeed The previous price feed contract address
    /// @param newPriceFeed The new price feed contract address
    event PriceFeedUpdated(address indexed previousPriceFeed, address indexed newPriceFeed);

    /// @notice Emitted when price protection is disabled
    /// @param previousPriceFeed The previous price feed contract address
    event PriceProtectionDisabled(address indexed previousPriceFeed);

    /// @notice Emitted when the maximum price deviation is updated
    /// @param previousDeviation The previous maximum price deviation
    /// @param newDeviation The new maximum price deviation
    event MaxPriceDeviationUpdated(uint256 previousDeviation, uint256 newDeviation);

    // Errors ---------------------------------------------------------------------------------------------------------

    /// @notice Thrown when the peg token price deviates too much from $1
    /// @param currentPrice The current price of the peg token (1e18 precision)
    /// @param maxDeviation The maximum allowed deviation (1e18 precision)
    error PSM_PriceDeviationTooHigh(uint256 currentPrice, uint256 maxDeviation);

    /// @notice Thrown when an invalid price feed address is provided
    error PSM_InvalidPriceFeed(address priceFeed);

    /// @notice Thrown when an invalid max price deviation is provided
    error PSM_InvalidMaxPriceDeviation(uint256 maxDeviation);

    // Admin Functions ------------------------------------------------------------------------------------------------

    /// @notice Updates the price feed contract address
    /// @param newPriceFeed The new price feed contract address
    function setPriceFeed(address newPriceFeed) external;

    /// @notice Updates the maximum allowed price deviation from $1
    /// @param newMaxDeviation The new maximum price deviation (1e18 = 100%) - recommended: 0.005e18 (0.5%)
    function setMaxPriceDeviation(uint256 newMaxDeviation) external;

    // View Functions -------------------------------------------------------------------------------------------------

    /// @notice Returns the price feed contract used for price validation
    /// @return The price feed contract
    function priceFeed() external view returns (IPriceFeed);

    /// @notice Returns the maximum allowed price deviation from $1
    /// @return The maximum price deviation (1e18 = 100%)
    function maxPriceDeviation() external view returns (uint256);

    /// @notice Gets the current price of the peg token from the price feed
    /// @return priceUsdX18 The current price in USD with 18 decimals
    function getPegTokenPrice() external returns (uint256 priceUsdX18);

    /// @notice Checks if the current peg token price is within acceptable deviation
    /// @return isValid True if price is within acceptable range
    /// @return currentPrice The current price of the peg token
    /// @return deviation The current deviation from $1 (1e18 = 100%)
    function isPegTokenPriceValid() external returns (bool isValid, uint256 currentPrice, uint256 deviation);
}
