// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {PriceFeedWithoutRoundsForMultiFeedAdapter} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/without-rounds/PriceFeedWithoutRoundsForMultiFeedAdapter.sol";
import {IRedstoneAdapter} from "@redstone-finance/on-chain-relayer/contracts/core/IRedstoneAdapter.sol";

contract BnbPriceFeedBfbtcFundamentalWithoutRoundsV1 is PriceFeedWithoutRoundsForMultiFeedAdapter {
  function description() public view virtual override returns (string memory) {
    return "RedStone Price Feed for bfBTC_FUNDAMENTAL";
  }

  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("bfBTC_FUNDAMENTAL");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0x97c19d3Ae8e4d74e25EF3AFf3a277fB614ed76D4);
  }
}
