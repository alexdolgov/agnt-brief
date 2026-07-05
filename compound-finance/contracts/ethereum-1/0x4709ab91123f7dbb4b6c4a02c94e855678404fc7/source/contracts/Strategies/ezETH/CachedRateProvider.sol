// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { IRateProvider } from "../interfaces/IRateProvider.sol";
import { ICachedRateProvider } from "../interfaces/ICachedRateProvider.sol";
import "../../Errors/Errors.sol";

/**
 * @author  Renzo Protocol
 * @title   CachedRateProvider
 * @dev     A caching layer for rate provider queries to reduce redundant external calls
 * @notice  This contract caches the rate from an underlying rate provider and serves it
 *          based on a configurable cache expiry time.
 */
contract CachedRateProvider is ICachedRateProvider {
    /// @notice The underlying rate provider to query
    IRateProvider public immutable rateProvider;

    /// @notice Last cached rate value
    uint256 public cachedRate;

    /// @notice Timestamp when the rate was last updated
    uint256 public lastUpdateTimestamp;

    /**
     * @notice Constructor
     * @param _rateProvider Address of the underlying rate provider
     */
    constructor(address _rateProvider) {
        if (_rateProvider == address(0)) revert InvalidZeroInput();
        rateProvider = IRateProvider(_rateProvider);
    }

    /**
     * @notice Get the rate with caching logic
     * @dev Returns cached rate if fresh, otherwise queries and updates cache
     * @param allowedCacheSeconds Maximum age of cache in seconds before refresh is needed
     * @return uint256 The current rate
     */
    function getRate(uint256 allowedCacheSeconds) external returns (uint256) {
        // If cached rate is 0, we need to fetch it
        if (cachedRate == 0) {
            return _updateAndReturnRate();
        }

        // Check if the cache is still fresh
        uint256 cacheAge = block.timestamp - lastUpdateTimestamp;

        if (cacheAge < allowedCacheSeconds) {
            // Cache is still fresh, return cached value
            return cachedRate;
        }

        // Cache is stale, update and return new value
        return _updateAndReturnRate();
    }

    /**
     * @notice Force an immediate rate update regardless of cache state
     * @dev Can be called to manually refresh the cache
     * @return uint256 The newly fetched rate
     */
    function forceUpdate() external returns (uint256) {
        return _updateAndReturnRate();
    }

    /**
     * @notice Get the rate with caching logic (view-compatible version)
     * @dev Returns cached rate if fresh, otherwise queries provider without updating cache
     * @param allowedCacheSeconds Maximum age of cache in seconds before considering stale
     * @return uint256 The rate (cached if fresh, or from provider if stale/unavailable)
     */
    function getRateView(uint256 allowedCacheSeconds) external view returns (uint256) {
        // If cached rate is 0, query provider directly
        if (cachedRate == 0) {
            return rateProvider.getRate();
        }

        // Check if the cache is still fresh
        uint256 cacheAge = block.timestamp - lastUpdateTimestamp;

        if (cacheAge < allowedCacheSeconds) {
            // Cache is still fresh, return cached value
            return cachedRate;
        }

        // Cache is stale, query provider directly (but don't update cache in view function)
        return rateProvider.getRate();
    }

    /**
     * @notice Internal function to query the rate provider and update cache
     * @dev Updates both cachedRate and lastUpdateTimestamp
     * @return uint256 The fetched rate from the provider
     */
    function _updateAndReturnRate() internal returns (uint256) {
        uint256 newRate = rateProvider.getRate();

        cachedRate = newRate;
        lastUpdateTimestamp = block.timestamp;

        emit RateUpdated(newRate, block.timestamp);

        return newRate;
    }
}
