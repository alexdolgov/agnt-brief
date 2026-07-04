// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {MergedPriceFeedAdapterWithRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/MergedPriceFeedAdapterWithRoundsPrimaryProd.sol";
import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";

contract MergedAdapterWithRoundsStoneV1 is MergedPriceFeedAdapterWithRoundsPrimaryProd {
  
  address internal constant MAIN_UPDATER_ADDRESS = 0x122E8c5eF44497E48646F9A168f36eD3e1Fc0021;
  address internal constant FALLBACK_UPDATER_ADDRESS = 0x495FE686e627fC67f66a42FF6FdA6C9dFED0AFDf;
  address internal constant MANUAL_UPDATER_ADDRESS = 0x83EE2e09591de7Ec2C65000565e117770A1B9669;

  error UpdaterNotAuthorised(address signer);

  function getDataFeedId() public pure virtual override returns (bytes32) {
    return bytes32("STONE");
  }

  function requireAuthorisedUpdater(address updater) public view override virtual {
    if (
      updater != MAIN_UPDATER_ADDRESS &&
      updater != FALLBACK_UPDATER_ADDRESS &&
      updater != MANUAL_UPDATER_ADDRESS &&
      updater != GelatoAddress.ADDR &&
      updater != OldGelatoAddress.ADDR
    ) {
      // We allow anyone to publish the new price if 40 seconds have passed since the latest update
      uint256 lastUpdateBlockTimestamp = getBlockTimestampFromLatestUpdate();
      if (getBlockTimestamp() - lastUpdateBlockTimestamp < 40 seconds) {
        revert UpdaterNotAuthorised(updater);
      }
    }
  }
}
