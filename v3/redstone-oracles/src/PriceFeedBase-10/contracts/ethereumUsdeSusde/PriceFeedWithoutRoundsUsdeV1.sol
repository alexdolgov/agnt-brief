// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {PriceFeedWithoutRounds} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/without-rounds/PriceFeedWithoutRounds.sol";
import {IRedstoneAdapter} from "@redstone-finance/on-chain-relayer/contracts/core/IRedstoneAdapter.sol";

contract PriceFeedWithoutRoundsUsdeV1 is PriceFeedWithoutRounds {
  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("USDe");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0x1B9b4b6705797968954A597362898AcE5F30C1C5);
  }
}
