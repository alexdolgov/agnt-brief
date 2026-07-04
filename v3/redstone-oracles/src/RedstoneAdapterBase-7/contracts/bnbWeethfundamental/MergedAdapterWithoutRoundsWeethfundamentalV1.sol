// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {MergedPriceFeedAdapterWithoutRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/MergedPriceFeedAdapterWithoutRoundsPrimaryProd.sol";
import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";

contract MergedAdapterWithoutRoundsWeethfundamentalV1 is MergedPriceFeedAdapterWithoutRoundsPrimaryProd {
  
  address internal constant MAIN_UPDATER_ADDRESS = 0xde49EF7b2DBa1A94dBF8971589108d32226f8943;
  address internal constant FALLBACK_UPDATER_ADDRESS = 0x2C46771bEE996C172727417Be657C119d22478F6;
  address internal constant MANUAL_UPDATER_ADDRESS = 0xdFDF901f7EB9b5c0022Fb4abE175221DA6E389D2;

  error UpdaterNotAuthorised(address signer);

  function getDataFeedId() public pure virtual override returns (bytes32) {
    return bytes32("weETH_FUNDAMENTAL");
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
