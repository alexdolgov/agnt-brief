// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import {Initializable} from '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import {UUPSUpgradeable} from '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import {OwnableUpgradeable} from '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@pythnetwork/pyth-sdk-solidity/IPyth.sol';
import '@pythnetwork/pyth-sdk-solidity/PythStructs.sol';
import {IPriceOracle} from '../interfaces/IPriceOracle.sol';

contract MtzPriceOracle is IPriceOracle, Initializable, UUPSUpgradeable, OwnableUpgradeable {
  IPyth public pyth;

  struct PriceData {
    uint256 price;
    uint64 conf;
    int32 expo;
    uint256 publishTime;
    address token;
  }

  mapping(address => PriceData) public priceFeeds;


  function initialize(address _pythOracle) external initializer() {
    UUPSUpgradeable.__UUPSUpgradeable_init();
        pyth = IPyth(_pythOracle);

  }

  function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}

  function updatePriceAndFetch(
    bytes32 priceFeedId,
    uint256 age,
    address tokenAddress
  ) public payable {
    PythStructs.Price memory currentBasePrice = pyth.getPriceNoOlderThan(priceFeedId, age);

    // Convert int64 price to uint256
    uint256 priceUint256;
    if (currentBasePrice.price < 0) {
      revert('Negative price not supported');
    } else {
      priceUint256 = uint256(uint64(currentBasePrice.price));
    }

    // Store the price data in the struct
    priceFeeds[tokenAddress] = PriceData(
      priceUint256,
      currentBasePrice.conf,
      currentBasePrice.expo,
      currentBasePrice.publishTime,
      tokenAddress
    );

    // Emit an event with the required fields
    emit PriceUpdated(
      priceFeedId,
      priceUint256,
      currentBasePrice.conf,
      currentBasePrice.expo,
      currentBasePrice.publishTime
    );
  }

  function getAssetPrice(address tokenAddress) external view returns (uint256) {
    PriceData memory priceData = priceFeeds[tokenAddress];
    require(priceData.token != address(0), 'Price not found for token');
    return priceData.price * (10 ** uint256(int256(-priceData.expo)));
  }

  function getFee(bytes[] calldata updateData) public view returns (uint256) {
    uint256 updateFee = pyth.getUpdateFee(updateData);
    return updateFee;
  }

  function getPriceData(address tokenAddress) public view returns (PriceData memory) {
    return priceFeeds[tokenAddress];
  }

  function setAssetPrice(address asset, uint256 price) external {}

  event PriceUpdated(
    bytes32 indexed priceFeedId,
    uint256 price,
    uint64 conf,
    int32 expo,
    uint256 timestamp
  );
}
