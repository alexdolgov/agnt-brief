// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {EthereumPriceFeedRswethethWithoutRoundsV1} from "./EthereumPriceFeedRswethethWithoutRoundsV1.sol";

contract EthereumPriceFeedRswethFundamentalWithoutRoundsV2 is
  EthereumPriceFeedRswethethWithoutRoundsV1
{
  function description() public view virtual override returns (string memory) {
    return "RedStone Price Feed for rswETH_FUNDAMENTAL";
  }

  function getDataFeedId() public view virtual override returns (bytes32) {
    return bytes32("rswETH_FUNDAMENTAL");
  }
}
