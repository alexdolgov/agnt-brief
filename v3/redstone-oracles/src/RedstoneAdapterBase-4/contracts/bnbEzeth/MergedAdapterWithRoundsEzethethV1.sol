// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {MergedPriceFeedAdapterWithRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/MergedPriceFeedAdapterWithRoundsPrimaryProd.sol";
import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";

contract MergedAdapterWithRoundsEzethethV1 is MergedPriceFeedAdapterWithRoundsPrimaryProd {
  
  address internal constant MAIN_UPDATER_ADDRESS = 0x917Aa108e3a75a425D4a9848A3156f674E606258;
  address internal constant FALLBACK_UPDATER_ADDRESS = 0xD743E702164b57d9209c9716c0e38fa9cD72FF50;
  address internal constant MANUAL_UPDATER_ADDRESS = 0xcbdA19577B0F05481684d483CEcC51a6A818521E;

  error UpdaterNotAuthorised(address signer);

  function getDataFeedId() public pure virtual override returns (bytes32) {
    return bytes32("ezETH/ETH");
  }

  function requireAuthorisedUpdater(address updater) public view override virtual {
    if (
      updater != MAIN_UPDATER_ADDRESS &&
      updater != FALLBACK_UPDATER_ADDRESS &&
      updater != MANUAL_UPDATER_ADDRESS &&
      updater != GelatoAddress.ADDR &&
      updater != OldGelatoAddress.ADDR
    ) {
      // We allow anyone to publish the new price if 40 seconds passed from the latest update
      uint256 lastUpdateBlockTimestamp = getBlockTimestampFromLatestUpdate();
      if (getBlockTimestamp() - lastUpdateBlockTimestamp < 40 seconds) {
        revert UpdaterNotAuthorised(updater);
      }
    }
  }
}
