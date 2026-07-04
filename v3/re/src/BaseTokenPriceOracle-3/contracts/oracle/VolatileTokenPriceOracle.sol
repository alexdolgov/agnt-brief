// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "./BaseTokenPriceOracle.sol";

contract VolatileTokenPriceOracle is BaseTokenPriceOracle {
  // Role definitions inherited
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

  // Configuration for volatile tokens
  struct VolatileTokenConfig {
    uint32 maxDeviation; // Maximum price deviation in basis points (e.g., 2000 = 20%)
  }

  VolatileTokenConfig public volatileConfig;

  // Storage for last known good price
  uint256 public lastGoodPrice;

  // Circuit breaker status
  bool public circuitBreaker;

  // Constants
  uint256 private constant BASIS_POINTS = 10000; // 100%

  // Custom errors
  error CircuitBreakerAlreadyActive();
  error PriceDeviationExceeded(uint256 currentPrice, uint256 lastGoodPrice);

  // Events
  event CircuitBreakerActivated();
  event CircuitBreakerReset();
  event LastGoodPriceUpdated(uint256 newPrice);

  constructor(
    address initialAdmin,
    address feed,
    uint32 stalenessPeriod,
    uint32 maxDeviation
  ) BaseTokenPriceOracle(initialAdmin) {
    if (maxDeviation == 0 || maxDeviation > BASIS_POINTS) {
      revert InvalidConfig();
    }

    // Configure token in constructor
    _setTokenConfig(feed, stalenessPeriod);

    volatileConfig = VolatileTokenConfig({maxDeviation: maxDeviation});

    // Initialize with current price
    (uint256 currentPrice, uint256 updatedAt) = _getLatestRoundData(
      tokenConfig.priceFeed
    );
    if (
      !_isStale(updatedAt, tokenConfig.stalenessPeriod) && currentPrice != 0
    ) {
      lastGoodPrice = currentPrice;
      emit LastGoodPriceUpdated(currentPrice);
    }
  }

  /**
   * @notice Configures the volatile token's price feed and parameters
   * @param feed The Chainlink price feed address
   * @param stalenessPeriod Maximum allowed time since last update in seconds
   * @param maxDeviation Maximum allowed price deviation in basis points
   */
  function setTokenConfig(
    address feed,
    uint32 stalenessPeriod,
    uint32 maxDeviation
  ) external onlyRole(ADMIN_ROLE) {
    super.setTokenConfig(feed, stalenessPeriod);
    if (maxDeviation == 0 || maxDeviation > BASIS_POINTS) {
      revert InvalidConfig();
    }
    volatileConfig = VolatileTokenConfig({maxDeviation: maxDeviation});

    // Initialize with current price
    AggregatorV3Interface feedContract = tokenConfig.priceFeed;
    (uint256 currentPrice, uint256 updatedAt) = _getLatestRoundData(
      feedContract
    );
    if (
      !_isStale(updatedAt, tokenConfig.stalenessPeriod) && currentPrice != 0
    ) {
      lastGoodPrice = currentPrice;
      emit PriceUpdated(uint96(currentPrice), PriceStatus.VALID);
      emit LastGoodPriceUpdated(currentPrice);
    } else {
      emit PriceUpdated(0, PriceStatus.INVALID);
    }

    emit TokenConfigured(address(feed), stalenessPeriod);
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

    // Check circuit breaker
    if (circuitBreaker) {
      return PriceInfo(0, PriceStatus.CIRCUIT_BREAKER);
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

    // If no last good price, consider current price as good
    if (lastGoodPrice == 0) {
      return PriceInfo(uint96(rawPrice), PriceStatus.VALID);
    }

    // Calculate deviation
    uint256 deviation = rawPrice > lastGoodPrice
      ? rawPrice - lastGoodPrice
      : lastGoodPrice - rawPrice;

    if (
      (deviation * BASIS_POINTS) / lastGoodPrice > volatileConfig.maxDeviation
    ) {
      return PriceInfo(0, PriceStatus.VOLATILE);
    }

    return PriceInfo(uint96(rawPrice), PriceStatus.VALID);
  }

  /**
   * @notice Updates the last known good price after confirming stability
   * @param newPrice The new confirmed good price
   */
  function updateLastGoodPrice(
    uint256 newPrice
  ) external onlyRole(OPERATOR_ROLE) {
    if (newPrice == 0) {
      revert InvalidConfig();
    }
    lastGoodPrice = newPrice;
    emit LastGoodPriceUpdated(newPrice);
  }

  /**
   * @notice Activates the circuit breaker
   */
  function setCircuitBreaker() external onlyRole(OPERATOR_ROLE) {
    if (circuitBreaker) {
      revert CircuitBreakerAlreadyActive();
    }
    circuitBreaker = true;
    emit CircuitBreakerActivated();
  }

  /**
   * @notice Resets (deactivates) the circuit breaker
   */
  function resetCircuitBreaker() external onlyRole(OPERATOR_ROLE) {
    require(circuitBreaker, "Circuit breaker is not active");
    circuitBreaker = false;
    emit CircuitBreakerReset();
  }
}
