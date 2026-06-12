// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {PriceFeedsAdapterSwellWithRoundsV4} from "./PriceFeedsAdapterSwellWithRoundsV4.sol";

contract PriceFeedsAdapterSwellWithRoundsV5 is PriceFeedsAdapterSwellWithRoundsV4 {
  bytes32 constant private SWETH_ETH_ID = bytes32("SWETH/ETH");

  function getDataFeedIds() public pure override virtual returns (bytes32[] memory dataFeedIds) {
    dataFeedIds = new bytes32[](1);
    dataFeedIds[0] = SWETH_ETH_ID;
  }

  function getDataFeedIndex(bytes32 dataFeedId) public view override virtual returns (uint256) {
    if (dataFeedId == SWETH_ETH_ID) { return 0; }
    revert DataFeedIdNotFound(dataFeedId);
  }
}
