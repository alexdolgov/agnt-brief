// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {PriceFeedWithoutRounds} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/without-rounds/PriceFeedWithoutRounds.sol";
import {IRedstoneAdapter} from "@redstone-finance/on-chain-relayer/contracts/core/IRedstoneAdapter.sol";

contract PriceFeedStaderEthxWithoutRoundsV3 is PriceFeedWithoutRounds {
  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("ETHx");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0xfcF1CBead3dAefe4f345442c5fb8fDB08757478a);
  }
}
