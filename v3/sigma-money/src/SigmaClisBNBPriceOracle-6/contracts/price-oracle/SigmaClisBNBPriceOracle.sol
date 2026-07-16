// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";

import { SpotPriceOracleBase } from "./SpotPriceOracleBase.sol";

import { IPriceOracle } from "./interfaces/IPriceOracle.sol";
import { ITwapOracle } from "./interfaces/ITwapOracle.sol";
import { IListaStakeManager } from "../interfaces/sigma/IListaStakeManager.sol";

contract SigmaClisBNBPriceOracle is SpotPriceOracleBase, IPriceOracle {
  /*************
   * Constants *
   *************/

  /// @notice LISTA DAO manager contract.
  /// @dev This contract is used to get the exchange rate of slisBNB/BNB.
  address public immutable LISTA_STAKE_MANAGER;

  /// @notice The Chainlink BNB/USD price feed.
  /// @dev See comments of `_readSpotPriceByChainlink` for more details.
  bytes32 public immutable Chainlink_BNB_USD_Spot;

  /*************
   * Variables *
   *************/

  /// @dev The encodings for BNB/USDT spot sources.
  bytes private onchainSpotEncodings_BNBUSDT;

  /// @notice The value of maximum price deviation, multiplied by 1e18.
  uint256 public maxPriceDeviation;

  /***************
   * Constructor *
   ***************/

  constructor(
    address _spotPriceOracle,
    address _listaStakeManager,
    bytes32 _Chainlink_BNB_USD_Spot
  ) SpotPriceOracleBase(_spotPriceOracle) {
    LISTA_STAKE_MANAGER = _listaStakeManager;
    Chainlink_BNB_USD_Spot = _Chainlink_BNB_USD_Spot;

    _updateMaxPriceDeviation(1e16); // 1%
  }

  /*************************
   * Public View Functions *
   *************************/

  /// @notice Return the SigmaClisBNB/USDT spot price.
  /// @return chainlinkPrice The spot price from Chainlink price feed.
  /// @return minPrice The minimum spot price among all available sources.
  /// @return maxPrice The maximum spot price among all available sources.
  function getSigmaClisBNBUSDTSpotPrice()
    external
    view
    returns (uint256 chainlinkPrice, uint256 minPrice, uint256 maxPrice)
  {
    (chainlinkPrice, minPrice, maxPrice) = _getSlisBNBUSDSpotPrice();
  }

  /// TODO
  /// @notice Return the SigmaClisBNB/USDT spot prices.
  /// @return prices The list of spot price among all available sources, multiplied by 1e18.
  function getSigmaClisBNBUSDTSpotPrices() external view returns (uint256[] memory prices) {
    (uint256 slisBNBBNBPrice, , ) = _getSlisBNBBNBSpotPrice();
    uint256[] memory bnbUSDTPrices = _getSpotPriceByEncoding(onchainSpotEncodings_BNBUSDT);

    // Determine the minimum length between the two arrays
    uint256 length = bnbUSDTPrices.length;

    // Initialize the prices array
    prices = new uint256[](length);

    // Populate the prices array
    for (uint256 i = 0; i < length; i++) {
      // Adjust for precision
      prices[i] = (slisBNBBNBPrice * bnbUSDTPrices[i]) / 1e18;
    }
  }

  /// @inheritdoc IPriceOracle
  /// @dev The price is valid iff |maxPrice-minPrice|/minPrice < maxPriceDeviation
  function getPrice() public view override returns (uint256 anchorPrice, uint256 minPrice, uint256 maxPrice) {
    (anchorPrice, minPrice, maxPrice) = _getSlisBNBUSDSpotPrice();

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

  /// @notice Update the on-chain spot encodings.
  /// @param encoding The slisBNB/BNB encodings to update. See `_getSpotPriceByEncoding` for more details.
  function updateOnchainSpotEncodings(bytes memory encoding) external onlyOwner {
    // validate encoding
    _getSpotPriceByEncoding(encoding);

    onchainSpotEncodings_BNBUSDT = encoding;
  }

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

  /// @dev Internal function to calculate the slisBNB/BNB spot price.
  /// @return chainlinkPrice The exchange rate from ListaStakeManager, multiplied by 1e18.
  /// @return minPrice The minimum spot price among all available sources, multiplied by 1e18.
  /// @return maxPrice The maximum spot price among all available sources, multiplied by 1e18.
  function _getSlisBNBBNBSpotPrice()
    internal
    view
    returns (uint256 chainlinkPrice, uint256 minPrice, uint256 maxPrice)
  {
    uint256 chainlinkPrice = IListaStakeManager(LISTA_STAKE_MANAGER).convertSnBnbToBnb(1 ether);
    minPrice = chainlinkPrice;
    maxPrice = chainlinkPrice;
  }

  /// @dev Internal function to calculate the BNB/USD spot price.
  /// @return chainlinkPrice The spot price from Chainlink price feed, multiplied by 1e18.
  /// @return minPrice The minimum spot price among all available sources, multiplied by 1e18.
  /// @return maxPrice The maximum spot price among all available sources, multiplied by 1e18.
  function _getBNBUSDTSpotPrice() internal view returns (uint256 chainlinkPrice, uint256 minPrice, uint256 maxPrice) {
    // BNB/USD
    chainlinkPrice = _readSpotPriceByChainlink(Chainlink_BNB_USD_Spot);
    // BNB/USDT
    // uint256[] memory prices = _getSpotPriceByEncoding(onchainSpotEncodings_BNBUSDT);
    minPrice = chainlinkPrice;
    maxPrice = chainlinkPrice;
    // for (uint256 i = 0; i < prices.length; i++) {
    //   if (prices[i] > maxPrice) maxPrice = prices[i];
    //   if (prices[i] < minPrice) minPrice = prices[i];
    // }
  }

  /// @dev Internal function to calculate the slisBNB/USD spot price.
  /// @return chainlinkPrice The spot price from Chainlink price feed, multiplied by 1e18.
  /// @return minPrice The minimum spot price among all available sources, multiplied by 1e18.
  /// @return maxPrice The maximum spot price among all available sources, multiplied by 1e18.
  function _getSlisBNBUSDSpotPrice()
    internal
    view
    returns (uint256 chainlinkPrice, uint256 minPrice, uint256 maxPrice)
  {
    (uint256 price0, uint256 minPrice0, uint256 maxPrice0) = _getSlisBNBBNBSpotPrice();
    (uint256 price1, uint256 minPrice1, uint256 maxPrice1) = _getBNBUSDTSpotPrice();

    // slisBNBUSDPrice = slisBNBBNBPrice * bnbUSDTPrice / 1e18
    chainlinkPrice = (price0 * price1) / 1e18;
    minPrice = (minPrice0 * minPrice1) / 1e18;
    maxPrice = (maxPrice0 * maxPrice1) / 1e18;
  }
}
