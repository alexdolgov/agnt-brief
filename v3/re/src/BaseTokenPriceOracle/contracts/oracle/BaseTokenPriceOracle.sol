// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "../interfaces/IPriceOracle.sol";

abstract contract BaseTokenPriceOracle is IPriceOracle, AccessControl {
  // Role definitions
  bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

  // Configuration for the single token
  struct TokenConfig {
    AggregatorV3Interface priceFeed;
    uint32 stalenessPeriod;
  }

  TokenConfig public tokenConfig;

  // Constants
  uint256 internal constant PRICE_PRECISION = 1e8; // Chainlink precision
  uint32 internal constant MIN_UPDATE_PERIOD = 60; // 1 minute

  // Custom errors
  error InvalidToken(address token);
  error InvalidConfig();
  error TokenAlreadyConfigured();

  // Events
  event TokenConfigured(address indexed feed, uint32 stalenessPeriod);
  event PriceUpdated(uint96 price, PriceStatus indexed status);

  constructor(address initialAdmin) {
    _grantRole(DEFAULT_ADMIN_ROLE, initialAdmin);
    _grantRole(ADMIN_ROLE, initialAdmin);
  }

  /**
   * @notice Internal function to configure the token's price feed and staleness period
   * @param feed The Chainlink price feed address
   * @param stalenessPeriod Maximum allowed time since last update in seconds
   */
  function _setTokenConfig(address feed, uint32 stalenessPeriod) internal {
    if (address(tokenConfig.priceFeed) != address(0)) {
      revert TokenAlreadyConfigured();
    }
    if (feed == address(0) || stalenessPeriod == 0) {
      revert InvalidConfig();
    }

    AggregatorV3Interface feedContract = AggregatorV3Interface(feed);
    tokenConfig = TokenConfig({
      priceFeed: feedContract,
      stalenessPeriod: stalenessPeriod
    });

    emit TokenConfigured(feed, stalenessPeriod);
  }

  /**
   * @notice External function to configure the token's price feed and staleness period
   * @param feed The Chainlink price feed address
   * @param stalenessPeriod Maximum allowed time since last update in seconds
   */
  function setTokenConfig(
    address feed,
    uint32 stalenessPeriod
  ) public virtual onlyRole(ADMIN_ROLE) {
    _setTokenConfig(feed, stalenessPeriod);
  }

  /**
   * @notice Retrieves the number of decimals for the token's price feed
   * @return uint8 Number of decimals
   */
  function decimals() external view override returns (uint8) {
    if (address(tokenConfig.priceFeed) == address(0)) {
      revert InvalidConfig();
    }
    return tokenConfig.priceFeed.decimals();
  }

  /**
   * @dev Internal function to fetch latest price data from Chainlink
   * @param feed The Chainlink price feed interface
   * @return price The latest price
   * @return updatedAt The timestamp of the latest price
   */
  function _getLatestRoundData(
    AggregatorV3Interface feed
  ) internal view returns (uint256 price, uint256 updatedAt) {
    (, int256 answer, , uint256 timestamp, ) = feed.latestRoundData();
    if (answer < 0) {
      return (0, timestamp);
    }
    return (uint256(answer), timestamp);
  }

  /**
   * @dev Internal function to check if the price data is stale
   * @param updatedAt The timestamp of the latest price
   * @param stalenessPeriod The maximum allowed time since last update
   * @return bool Whether the price data is stale
   */
  function _isStale(
    uint256 updatedAt,
    uint32 stalenessPeriod
  ) internal view returns (bool) {
    return block.timestamp - updatedAt > stalenessPeriod;
  }

  /**
   * @notice Abstract function to get price information
   * @return PriceInfo struct containing price and status
   */
  function latestPriceInfo()
    external
    view
    virtual
    override
    returns (PriceInfo memory);
}
