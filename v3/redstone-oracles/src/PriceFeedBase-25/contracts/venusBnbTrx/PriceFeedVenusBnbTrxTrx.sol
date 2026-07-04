// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import "redstone-oracles-monorepo/packages/on-chain-relayer/contracts/price-feeds/without-rounds/PriceFeedWithoutRounds.sol";
import {IRedstoneAdapter} from "redstone-oracles-monorepo/packages/on-chain-relayer/contracts/core/IRedstoneAdapter.sol";

contract PriceFeedVenusBnbTrxTrx is PriceFeedWithoutRounds {
  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("TRX");
  }

  function getPriceFeedAdapter() public view virtual override returns (IRedstoneAdapter) {
    return IRedstoneAdapter(0xd65D50ebA419FAcB6ac4957b564765DDe932ba0F);
  }
}
