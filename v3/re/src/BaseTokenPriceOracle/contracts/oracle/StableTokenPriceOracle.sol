// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./BaseTokenPriceOracle.sol";

contract StableTokenPriceOracle is BaseTokenPriceOracle {
  // Constants
  uint256 private constant ONE_USD = 1e8; // $1.00 in Chainlink format
  uint256 private constant MIN_PRICE = 99_000_000; // $0.99 in Chainlink format

  constructor(
    address initialAdmin,
    address feed,
    uint32 stalenessPeriod
  ) BaseTokenPriceOracle(initialAdmin) {
    // Configure token in constructor using internal function
    _setTokenConfig(feed, stalenessPeriod);
  }

  /**
   * @notice Retrieves the latest price information for the configured token
   * @return PriceInfo Struct containing the price and its status
   */
  function latestPriceInfo() external view override returns (PriceInfo memory) {
    AggregatorV3Interface feed = tokenConfig.priceFeed;
    if (address(feed) == address(0)) {
      revert InvalidConfig();
    }

    (uint256 rawPrice, uint256 updatedAt) = _getLatestRoundData(feed);

    // Check staleness
    if (_isStale(updatedAt, tokenConfig.stalenessPeriod)) {
      return PriceInfo(0, PriceStatus.STALE);
    }

    // Handle negative or zero prices
    if (rawPrice == 0) {
      return PriceInfo(0, PriceStatus.INVALID);
    }

    // Cap the price at $1.00
    if (rawPrice > ONE_USD) {
      return PriceInfo(uint96(ONE_USD), PriceStatus.CAPPED);
    }

    // Ensure price does not drop below $0.99
    if (rawPrice < MIN_PRICE) {
      return PriceInfo(0, PriceStatus.INVALID);
    }

    return PriceInfo(uint96(rawPrice), PriceStatus.VALID);
  }
}
