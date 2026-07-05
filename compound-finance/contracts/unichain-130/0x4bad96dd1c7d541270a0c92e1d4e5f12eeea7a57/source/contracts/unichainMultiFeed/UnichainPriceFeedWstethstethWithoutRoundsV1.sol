// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {PriceFeedWithoutRoundsForMultiFeedAdapter} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/without-rounds/PriceFeedWithoutRoundsForMultiFeedAdapter.sol";
import {IRedstoneAdapter} from "@redstone-finance/on-chain-relayer/contracts/core/IRedstoneAdapter.sol";

contract UnichainPriceFeedWstethstethWithoutRoundsV1 is PriceFeedWithoutRoundsForMultiFeedAdapter {
  function description() public view virtual override returns (string memory) {
    return "RedStone Price Feed for wstETH/stETH";
  }

  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("wstETH/stETH");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0xFB1267A29C0aa19daae4a483ea895862A69e4AA5);
  }
}
