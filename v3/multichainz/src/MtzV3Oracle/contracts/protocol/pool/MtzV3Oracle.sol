// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import {Initializable} from '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import {PausableUpgradeable} from '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import {UUPSUpgradeable} from '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import {OwnableUpgradeable} from '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {IPriceOracle} from '../../interfaces/IPriceOracle.sol';

/**
 * @title A port of the ChainlinkAggregatorV3 interface that supports Stork price feeds
 */
contract MtzV3Oracle is Initializable, UUPSUpgradeable, OwnableUpgradeable, IPriceOracle {
  mapping(address => address) public assetToPriceFeed;

  event AssetSet(address asset, address priceId);
  event AssetRemoved(address asset);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() initializer {}

  function initialize(address admin) external initializer {
    UUPSUpgradeable.__UUPSUpgradeable_init();
    OwnableUpgradeable.__Ownable_init(admin);
  }

  function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}

  function whitelistAsset(address _asset, address _priceId) external onlyOwner {
    //require(_asset != address(0), 'Invalid Address!');
    assetToPriceFeed[_asset] = _priceId;
    emit AssetSet(_asset, _priceId);
  }

  function removeAsset(address asset) public onlyOwner() {
    delete assetToPriceFeed[asset];
    emit AssetRemoved(asset);
  }

  function getAssetPrice(address _asset) external view returns (uint256) {
    address _priceFeed = assetToPriceFeed[_asset];
    (
            /* uint80 roundId */,
            int256 answer,
            /*uint256 startedAt*/,
            /*uint256 updatedAt*/,
            /*uint80 answeredInRound*/
        ) = AggregatorV3Interface(_priceFeed).latestRoundData();
    require(answer >= 0, 'Negative price value not allowed');
    return uint256(int256(answer));
  }
}

