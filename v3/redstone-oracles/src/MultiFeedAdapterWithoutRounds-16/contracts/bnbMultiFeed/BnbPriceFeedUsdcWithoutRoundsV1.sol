// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {PriceFeedWithoutRoundsForMultiFeedAdapter} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/without-rounds/PriceFeedWithoutRoundsForMultiFeedAdapter.sol";
import {IRedstoneAdapter} from "@redstone-finance/on-chain-relayer/contracts/core/IRedstoneAdapter.sol";

contract BnbPriceFeedUsdcWithoutRoundsV1 is PriceFeedWithoutRoundsForMultiFeedAdapter {
  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("USDC");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0x97c19d3Ae8e4d74e25EF3AFf3a277fB614ed76D4);
  }
}
