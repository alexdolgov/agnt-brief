pragma solidity 0.8.20;

interface IPriceOracle {
  enum PriceStatus {
    VALID,
    CAPPED,
    INVALID,
    STALE,
    VOLATILE,
    CIRCUIT_BREAKER
  }

  struct PriceInfo {
    uint96 price;
    PriceStatus status;
  }

  /**
   * @notice Retrieves the latest price information for the configured token
   * @return PriceInfo Struct containing the price and its status
   */
  function latestPriceInfo() external view returns (PriceInfo memory);

  /**
   * @notice Retrieves the number of decimals for the token's price feed
   * @return uint8 Number of decimals
   */
  function decimals() external view returns (uint8);
}
