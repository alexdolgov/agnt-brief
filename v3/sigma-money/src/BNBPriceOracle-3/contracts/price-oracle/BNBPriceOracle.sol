// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { IPriceOracle } from "./interfaces/IPriceOracle.sol";
import { AggregatorV3Interface } from "../interfaces/Chainlink/AggregatorV3Interface.sol";

import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

contract BNBPriceOracle is AccessControl, IPriceOracle {
  /**********
   * Errors *
   **********/

  /// @dev Thrown when the given encodings are invalid.
  error ErrorInvalidEncodings();

  /// @dev Thrown when update some parameters to the same value.
  error ErrorParameterUnchanged();

  /*************
   * Constants *
   *************/

  /// @dev The precision for oracle price.
  uint256 internal constant PRECISION = 1e18;

  /// @dev The role for operator.
  bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");

  /// @notice The Chainlink BNB/USD price feed.
  /// @dev See comments of `_readSpotPriceByChainlink` for more details.
  bytes32 public immutable Chainlink_BNB_USD_Spot;

  /// @notice The Binance Oracle BNB/USD price feed. Compatible with Chainlink.
  bytes32 public immutable BinanceOracle_BNB_USD_Spot;

  /*************
   * Variables *
   *************/

  /// @notice The value of maximum price deviation, multiplied by 1e18.
  uint256 public maxPriceDeviation;

  /***************
   * Constructor *
   ***************/

  constructor(address _admin, bytes32 _Chainlink_BNB_USD_Spot, bytes32 _BinanceOracle_BNB_USD_Spot) {
    require(_admin != address(0), "ErrorZeroAddress");
    require(_Chainlink_BNB_USD_Spot != bytes32(0), "ErrorEmptyChainlinkSpot");
    require(_BinanceOracle_BNB_USD_Spot != bytes32(0), "ErrorEmptyBinanceOracleSpot");

    Chainlink_BNB_USD_Spot = _Chainlink_BNB_USD_Spot;
    BinanceOracle_BNB_USD_Spot = _BinanceOracle_BNB_USD_Spot;

    _updateMaxPriceDeviation(1e16); // 1%

    _grantRole(DEFAULT_ADMIN_ROLE, _admin);
  }

  /*************************
   * Public View Functions *
   *************************/

  /// @notice Return the BNB/USD spot price.
  /// @return chainlinkPrice The spot price from Chainlink price feed.
  /// @return minPrice The minimum spot price among all available sources.
  /// @return maxPrice The maximum spot price among all available sources.
  function getBNBUSDSpotPrice() external view returns (uint256 chainlinkPrice, uint256 minPrice, uint256 maxPrice) {
    (chainlinkPrice, minPrice, maxPrice) = _getBNBUSDSpotPrice();
  }

  /// @inheritdoc IPriceOracle
  /// @dev The price is valid iff |maxPrice-minPrice|/minPrice < maxPriceDeviation
  function getPrice() public view override returns (uint256 anchorPrice, uint256 minPrice, uint256 maxPrice) {
    (anchorPrice, minPrice, maxPrice) = _getBNBUSDSpotPrice();

    uint256 cachedMaxPriceDeviation = maxPriceDeviation; // gas saving
    // use anchor price when the price deviation between anchor price and min price exceed threshold
    if ((anchorPrice - minPrice) * PRECISION > cachedMaxPriceDeviation * minPrice) {
      minPrice = anchorPrice;
    }

    // use anchor price when the price deviation between anchor price and max price exceed threshold
    if ((maxPrice - anchorPrice) * PRECISION > cachedMaxPriceDeviation * anchorPrice) {
      maxPrice = anchorPrice;
    }
  }

  /// @inheritdoc IPriceOracle
  function getExchangePrice() public view returns (uint256) {
    (, uint256 price, ) = getPrice();
    return price;
  }

  /// @inheritdoc IPriceOracle
  function getLiquidatePrice() external view returns (uint256) {
    return getExchangePrice();
  }

  /// @inheritdoc IPriceOracle
  function getRedeemPrice() external view returns (uint256) {
    (, , uint256 price) = getPrice();
    return price;
  }

  /************************
   * Restricted Functions *
   ************************/

  /// @notice Update the value of maximum price deviation.
  /// @param newMaxPriceDeviation The new value of maximum price deviation, multiplied by 1e18.
  function updateMaxPriceDeviation(uint256 newMaxPriceDeviation) external onlyRole(OPERATOR_ROLE) {
    _updateMaxPriceDeviation(newMaxPriceDeviation);
  }

  /**********************
   * Internal Functions *
   **********************/

  /// @dev Internal function to update the value of maximum price deviation.
  /// @param newMaxPriceDeviation The new value of maximum price deviation, multiplied by 1e18.
  function _updateMaxPriceDeviation(uint256 newMaxPriceDeviation) private {
    uint256 oldMaxPriceDeviation = maxPriceDeviation;
    if (oldMaxPriceDeviation == newMaxPriceDeviation) {
      revert ErrorParameterUnchanged();
    }

    maxPriceDeviation = newMaxPriceDeviation;

    emit UpdateMaxPriceDeviation(oldMaxPriceDeviation, newMaxPriceDeviation);
  }

  /// @dev Internal function to calculate the BNB/USD spot price.
  /// @return chainlinkPrice The spot price from Chainlink price feed, multiplied by 1e18.
  /// @return minPrice The minimum spot price among all available sources, multiplied by 1e18.
  /// @return maxPrice The maximum spot price among all available sources, multiplied by 1e18.
  function _getBNBUSDSpotPrice() internal view returns (uint256 chainlinkPrice, uint256 minPrice, uint256 maxPrice) {
    // BNB/USD
    chainlinkPrice = _readSpotPriceByChainlink(Chainlink_BNB_USD_Spot);
    uint256 binancePrice = _readSpotPriceByChainlink(BinanceOracle_BNB_USD_Spot);
    minPrice = Math.min(chainlinkPrice, binancePrice);
    maxPrice = Math.max(chainlinkPrice, binancePrice);
  }

  /// @dev The encoding is below.
  /// ```text
  /// |  32 bits  | 64 bits |  160 bits  |
  /// | heartbeat |  scale  | price_feed |
  /// |low                          high |
  /// ```
  function _readSpotPriceByChainlink(bytes32 encoding) internal view returns (uint256) {
    address aggregator;
    uint256 scale;
    uint256 heartbeat;
    assembly {
      aggregator := shr(96, encoding)
      scale := and(shr(32, encoding), 0xffffffffffffffff)
      heartbeat := and(encoding, 0xffffffff)
    }
    (, int256 answer, , uint256 updatedAt, ) = AggregatorV3Interface(aggregator).latestRoundData();
    if (answer <= 0) revert("invalid");
    if (block.timestamp - updatedAt > heartbeat) revert("expired");
    return uint256(answer) * scale;
  }
}
