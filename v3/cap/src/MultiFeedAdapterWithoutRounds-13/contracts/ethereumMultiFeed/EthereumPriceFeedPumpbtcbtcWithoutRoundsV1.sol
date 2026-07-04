// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {PriceFeedWithoutRoundsForMultiFeedAdapter} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/without-rounds/PriceFeedWithoutRoundsForMultiFeedAdapter.sol";
import {IRedstoneAdapter} from "@redstone-finance/on-chain-relayer/contracts/core/IRedstoneAdapter.sol";

contract EthereumPriceFeedPumpbtcbtcWithoutRoundsV1 is PriceFeedWithoutRoundsForMultiFeedAdapter {
  function description() public view virtual override returns (string memory) {
    return "RedStone Price Feed for pumpBTC/BTC";
  }

  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("pumpBTC/BTC");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0xd72a6BA4a87DDB33e801b3f1c7750b2d0911fC6C);
  }
}
