// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {PriceFeedWithoutRoundsForMultiFeedAdapter} from "@redstone-finance/evm-adapters/contracts/price-feeds/without-rounds/PriceFeedWithoutRoundsForMultiFeedAdapter.sol";
import {IRedstoneAdapter} from "@redstone-finance/evm-adapters/contracts/core/IRedstoneAdapter.sol";

contract BnbPriceFeedFilWithoutRoundsV1 is PriceFeedWithoutRoundsForMultiFeedAdapter {
  function description() public view virtual override returns (string memory) {
    return "RedStone Price Feed for FIL";
  }

  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("FIL");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0x97c19d3Ae8e4d74e25EF3AFf3a277fB614ed76D4);
  }
}
