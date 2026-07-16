// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import "../../external/AggregatorV3Interface.sol";
import "../../pricing/IPriceOracle.sol";

/**
 * @title SimpleOracle
 * @notice Direct Chainlink price feed wrapper for any asset (stable or volatile)
 * @dev Handles staleness checks and optional price bounds for stablecoins
 *      Returns prices in WAD format (18 decimals) for direct use
 */
contract SimpleOracle is IPriceOracle {
    // Custom errors
    error InvalidPriceFeed();
    error InvalidStalenessPeriod();
    error InvalidPriceBounds();

    // Constants
    uint256 private constant WAD = 1e18;

    // Immutable state
    AggregatorV3Interface public immutable priceFeed;
    uint32 public immutable stalenessPeriod;
    uint256 public immutable minPrice; // 0 = no minimum
    uint256 public immutable maxPrice; // 0 = no maximum

    /**
     * @param _priceFeed Chainlink price feed address
     * @param _stalenessPeriod Maximum age of price data in seconds
     * @param _minPrice Minimum acceptable price in WAD format (0 for no minimum)
     * @param _maxPrice Maximum acceptable price in WAD format (0 for no maximum)
     */
    constructor(address _priceFeed, uint32 _stalenessPeriod, uint256 _minPrice, uint256 _maxPrice) {
        if (_priceFeed == address(0)) revert InvalidPriceFeed();
        if (_stalenessPeriod == 0) revert InvalidStalenessPeriod();
        if (_minPrice > _maxPrice && _maxPrice != 0) revert InvalidPriceBounds();

        priceFeed = AggregatorV3Interface(_priceFeed);
        stalenessPeriod = _stalenessPeriod;
        minPrice = _minPrice;
        maxPrice = _maxPrice;
    }

    /**
     * @notice Get latest price with validation
     * @return PriceInfo containing price in WAD format (18 decimals) and status
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

        // Check minimum bound (if set) - bounds are now in WAD format
        if (minPrice > 0 && wadPrice < minPrice) {
            return PriceInfo(0, PriceStatus.INVALID);
        }

        // Check maximum bound and cap if needed (if set) - bounds are in WAD format
        if (maxPrice > 0 && wadPrice > maxPrice) {
            return PriceInfo(maxPrice, PriceStatus.CAPPED);
        }

        return PriceInfo(wadPrice, PriceStatus.VALID);
    }

    /**
     * @notice Get price decimals (always 18 for WAD format)
     * @return Always returns 18 as prices are in WAD format
     */
    function decimals() external pure override returns (uint8) {
        return 18;
    }
}
