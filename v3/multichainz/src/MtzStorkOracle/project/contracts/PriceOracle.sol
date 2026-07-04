// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import {Initializable} from '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import {PausableUpgradeable} from '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import {UUPSUpgradeable} from '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import {OwnableUpgradeable} from '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import {IPriceOracle} from './interfaces/IPriceOracle.sol';

interface IStorkTemporalNumericValueUnsafeGetter {
  function getTemporalNumericValueUnsafeV1(
    bytes32 id
  ) external view returns (StorkStructs.TemporalNumericValue memory value);
}

contract StorkStructs {
  struct TemporalNumericValue {
    // slot 1
    // nanosecond level precision timestamp of latest publisher update in batch
    uint64 timestampNs; // 8 bytes
    // should be able to hold all necessary numbers (up to 6277101735386680763835789423207666416102355444464034512895)
    int192 quantizedValue; // 8 bytes
  }
}

/**
 * @title A port of the ChainlinkAggregatorV3 interface that supports Stork price feeds
 */
contract MtzStorkOracle is Initializable, UUPSUpgradeable, OwnableUpgradeable, IPriceOracle {
  IStorkTemporalNumericValueUnsafeGetter public stork;
  mapping(address => bytes32) public assetToPriceId;

  event AssetSet(address asset, bytes32 priceId);
  event AssetRemoved(address asset);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() initializer {}

  function initialize(address _stork) external initializer {
    UUPSUpgradeable.__UUPSUpgradeable_init();
    OwnableUpgradeable.__Ownable_init(msg.sender);
    stork = IStorkTemporalNumericValueUnsafeGetter(_stork);
  }

  function _authorizeUpgrade(address newImplementation) internal virtual override onlyOwner {}

  function whitelistAsset(address _asset, bytes32 _priceId) external onlyOwner {
    //require(_asset != address(0), 'Invalid Address!');
    assetToPriceId[_asset] = _priceId;
    emit AssetSet(_asset, _priceId);
  }

  function removeAsset(address asset) public onlyOwner() {
    delete assetToPriceId[asset];
    emit AssetRemoved(asset);
  }

  function getAssetPrice(address _asset) external view returns (uint256) {
    bytes32 _priceId = assetToPriceId[_asset];
    int192 price = stork.getTemporalNumericValueUnsafeV1(_priceId).quantizedValue;
    require(price >= 0, 'Negative price value not allowed');
    return uint256(int256(price));
  }
}

