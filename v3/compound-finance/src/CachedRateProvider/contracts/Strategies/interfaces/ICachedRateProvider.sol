// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { IRateProvider } from "./IRateProvider.sol";

/**
 * @title ICachedRateProvider
 * @notice Interface for the CachedRateProvider contract
 */
interface ICachedRateProvider {
    /**
     * @notice Emitted when the rate is updated from the provider
     * @param newRate The newly fetched rate
     * @param timestamp The timestamp when the rate was updated
     */
    event RateUpdated(uint256 newRate, uint256 timestamp);

    /**
     * @notice Get the rate with caching logic
     * @param allowedCacheSeconds Maximum age of cache in seconds before refresh is needed
     * @return The current rate
     */
    function getRate(uint256 allowedCacheSeconds) external returns (uint256);

    /**
     * @notice Get the rate with caching logic (view-compatible version)
     * @dev Returns cached rate if available, otherwise calls underlying provider without updating cache
     * @param allowedCacheSeconds Maximum age of cache in seconds before considering stale
     * @return The rate (cached if fresh, or from provider if stale/unavailable)
     */
    function getRateView(uint256 allowedCacheSeconds) external view returns (uint256);

    /**
     * @notice Force an immediate rate update regardless of cache state
     * @return The newly fetched rate
     */
    function forceUpdate() external returns (uint256);

    /**
     * @notice Get the underlying rate provider
     * @return The rate provider contract
     */
    function rateProvider() external view returns (IRateProvider);

    /**
     * @notice Get the last cached rate value
     * @return The cached rate
     */
    function cachedRate() external view returns (uint256);

    /**
     * @notice Get the timestamp when the rate was last updated
     * @return The last update timestamp
     */
    function lastUpdateTimestamp() external view returns (uint256);
}
