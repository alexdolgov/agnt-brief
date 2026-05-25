// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.6.12;

import {IPriceOracle} from '../interfaces/IPriceOracle.sol';

contract FixedPriceOracle is IPriceOracle {
  address constant public ASSET = 0x17700282592D6917F6A73D0bF8AcCf4D578c131e;
  uint constant public PRICE = 0.001e18;

  function getAssetPrice(address _asset) external view override returns (uint256) {
    require(_asset == ASSET, 'FixedPriceOracle: wrong asset');
    return PRICE;
  }

  function setAssetPrice(address, uint256) external override {
    revert('FixedPriceOracle: not allowed');
  }
}
