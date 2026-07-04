// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {MergedPriceFeedAdapterWithoutRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/MergedPriceFeedAdapterWithoutRoundsPrimaryProd.sol";
import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";

contract MergedAdapterWithoutRoundsBtcV1 is MergedPriceFeedAdapterWithoutRoundsPrimaryProd {
  
  address internal constant MAIN_UPDATER_ADDRESS = 0xb882079486030350629e896A312009391Da0514E;
  address internal constant FALLBACK_UPDATER_ADDRESS = 0xD5f021162878c0f38480A438B1DC05cA31139CF7;
  address internal constant MANUAL_UPDATER_ADDRESS = 0xC4f0B1f9DcC6D3ED544a67e308eB390A54980052;

  error UpdaterNotAuthorised(address signer);

  function getDataFeedId() public pure virtual override returns (bytes32) {
    return bytes32("BTC");
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
