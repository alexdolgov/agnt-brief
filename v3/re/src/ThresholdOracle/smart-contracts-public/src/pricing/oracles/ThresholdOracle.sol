// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "../../external/AggregatorV3Interface.sol";
import "../../pricing/IPriceOracle.sol";

/**
 * @title ThresholdOracle
 * @notice Returns a fixed price when Chainlink price is within a healthy band, INVALID outside.
 * @dev Designed for stablecoins where small depegs should be ignored but hazardous moves should trip.
 *
 * Example: USDC oracle that returns $1.00 whenever actual price ∈ [0.99, 1.10] and marks price
 * INVALID if it falls below 0.99 or rises above 1.10.
 */
contract ThresholdOracle is IPriceOracle {
    // Custom errors
    error InvalidPriceFeed();
    error InvalidParameters();

    // Constants
    uint8 private constant WAD_DECIMALS = 18;

    // Immutable configuration
    AggregatorV3Interface public immutable priceFeed;
    uint32 public immutable stalenessPeriod;
    uint256 public immutable threshold; // Minimum price to trigger fixed value (WAD)
    uint256 public immutable fixedValue; // Fixed value to return when within band (WAD)
    uint256 public immutable upperBound; // Maximum healthy price; above this => INVALID (WAD)

    /**
     * @param _priceFeed Chainlink price feed address
     * @param _stalenessPeriod Maximum age of price data in seconds
     * @param _threshold Lower bound (inclusive) to return fixed value (WAD - 18 decimals)
     * @param _fixedValue Fixed value to return when price is within [threshold, upperBound] (WAD)
     * @param _upperBound Upper bound (exclusive) above which price is INVALID (WAD - 18 decimals)
     */
    constructor(
        address _priceFeed,
        uint32 _stalenessPeriod,
        uint256 _threshold,
        uint256 _fixedValue,
        uint256 _upperBound
    ) {
        if (_priceFeed == address(0)) revert InvalidPriceFeed();
        if (_stalenessPeriod == 0) revert InvalidParameters();
        if (_threshold == 0 || _fixedValue == 0) revert InvalidParameters();
        if (_upperBound <= _threshold) revert InvalidParameters();
        if (_fixedValue > type(uint96).max) revert InvalidParameters();
        // Ensure fixed value is consistent with the configured healthy band
        if (_fixedValue < _threshold || _fixedValue > _upperBound) revert InvalidParameters();

        priceFeed = AggregatorV3Interface(_priceFeed);
        stalenessPeriod = _stalenessPeriod;
        threshold = _threshold;
        fixedValue = _fixedValue;
        upperBound = _upperBound;
    }

    /**
     * @notice Get price - returns fixed value when within [threshold, upperBound],
     * INVALID when below threshold or above upperBound, or STALE on stale data.
     * @return PriceInfo Fixed value if healthy, otherwise status indicates condition.
     */
    function latestPriceInfo() external view override returns (PriceInfo memory) {
        (uint80 roundId, int256 price,, uint256 updatedAt, uint80 answeredInRound) =
            priceFeed.latestRoundData();

        // Check staleness
        if (block.timestamp - updatedAt > stalenessPeriod) {
            return PriceInfo(0, PriceStatus.STALE);
        }

        // Check for invalid price or stale round
        if (price <= 0 || answeredInRound < roundId) {
            return PriceInfo(0, PriceStatus.INVALID);
        }

        // Get actual decimals from the price feed
        uint8 feedDecimals = priceFeed.decimals();

        // Scale price to WAD (18 decimals) based on actual feed decimals
        uint256 wadPrice;
        if (feedDecimals <= 18) {
            wadPrice = uint256(price) * (10 ** (18 - feedDecimals));
        } else {
            wadPrice = uint256(price) / (10 ** (feedDecimals - 18));
        }

        // High-side hazard: above upperBound is INVALID
        if (wadPrice > upperBound) {
            return PriceInfo(0, PriceStatus.INVALID);
        }

        // Healthy band: at or above threshold returns fixed value
        if (wadPrice >= threshold) {
            return PriceInfo(uint96(fixedValue), PriceStatus.VALID);
        }

        // Below threshold means unhealthy - return INVALID
        return PriceInfo(0, PriceStatus.INVALID);
    }

    /**
     * @notice Always returns 18 decimals (WAD format)
     */
    function decimals() external pure override returns (uint8) {
        return WAD_DECIMALS;
    }
}
