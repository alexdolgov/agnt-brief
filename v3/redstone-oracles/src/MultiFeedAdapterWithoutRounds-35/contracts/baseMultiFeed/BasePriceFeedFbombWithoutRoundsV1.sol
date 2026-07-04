// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {PriceFeedWithoutRoundsForMultiFeedAdapter} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/without-rounds/PriceFeedWithoutRoundsForMultiFeedAdapter.sol";
import {IRedstoneAdapter} from "@redstone-finance/on-chain-relayer/contracts/core/IRedstoneAdapter.sol";

contract BasePriceFeedFbombWithoutRoundsV1 is PriceFeedWithoutRoundsForMultiFeedAdapter {
  function description() public view virtual override returns (string memory) {
    return "RedStone Price Feed for fBOMB";
  }

  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("fBOMB");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0xb81131B6368b3F0a83af09dB4E39Ac23DA96C2Db);
  }
}
