// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { SpotPriceOracleBase } from "./SpotPriceOracleBase.sol";
import { IPancakeV3Pool } from "../interfaces/Pancake/IPancakeV3Pool.sol";
import { IPriceOracle } from "./interfaces/IPriceOracle.sol";
import { ITwapOracle } from "./interfaces/ITwapOracle.sol";
import { IListaStakeManager } from "../interfaces/sigma/IListaStakeManager.sol";
import { PancakeLib } from "../libraries/PancakeLib.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract BNBPriceOracle is SpotPriceOracleBase, IPriceOracle {
  /*************
   * Constants *
   *************/

  /// @notice The Chainlink BNB/USD price feed.
  /// @dev See comments of `_readSpotPriceByChainlink` for more details.
  bytes32 public immutable Chainlink_BNB_USD_Spot;

  /// @notice The Pancake V3 pool for USDT/BNB.
  address public immutable PANCAKE_V3_POOL;

  /*************
   * Variables *
   *************/

  /// @notice The value of maximum price deviation, multiplied by 1e18.
  uint256 public maxPriceDeviation;

  /***************
   * Constructor *
   ***************/

  constructor(
    address _spotPriceOracle,
    bytes32 _Chainlink_BNB_USD_Spot,
    address _pancakeV3Pool
  ) SpotPriceOracleBase(_spotPriceOracle) {
    require(_spotPriceOracle != address(0), "ErrorZeroAddress");
    require(_Chainlink_BNB_USD_Spot != bytes32(0), "ErrorEmptyChainlinkSpot");
    require(_pancakeV3Pool != address(0), "ErrorZeroAddress");

    Chainlink_BNB_USD_Spot = _Chainlink_BNB_USD_Spot;
    PANCAKE_V3_POOL = _pancakeV3Pool;

    _updateMaxPriceDeviation(1e16); // 1%
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
  function updateMaxPriceDeviation(uint256 newMaxPriceDeviation) external onlyOwner {
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
    minPrice = chainlinkPrice;
    maxPrice = chainlinkPrice;

    // BNB/USDT
    uint256 price = _getBNBUSDTSpotPrice();
    if (price > 0) {
      minPrice = Math.min(minPrice, price);
      maxPrice = Math.max(maxPrice, price);
    }
  }

  function _getBNBUSDTSpotPrice() internal view returns (uint256 price) {
    (uint256 sqrtPriceX96, , , , , , ) = IPancakeV3Pool(PANCAKE_V3_POOL).slot0();
    price = PancakeLib.calculatePrice(sqrtPriceX96, true);
  }
}
