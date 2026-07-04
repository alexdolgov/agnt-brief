// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {PriceFeedWithoutRoundsForMultiFeedAdapter} from "@redstone-finance/evm-adapters/contracts/price-feeds/without-rounds/PriceFeedWithoutRoundsForMultiFeedAdapter.sol";
import {IRedstoneAdapter} from "@redstone-finance/evm-adapters/contracts/core/IRedstoneAdapter.sol";

contract BasePriceFeedSusdpBaseFundamentalusdWithoutRoundsV1 is PriceFeedWithoutRoundsForMultiFeedAdapter {
  function description() public view virtual override returns (string memory) {
    return "RedStone Price Feed for sUSDp_BASE_FUNDAMENTAL/USD";
  }

  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("sUSDp_BASE_FUNDAMENTAL/USD");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0xb81131B6368b3F0a83af09dB4E39Ac23DA96C2Db);
  }
}
