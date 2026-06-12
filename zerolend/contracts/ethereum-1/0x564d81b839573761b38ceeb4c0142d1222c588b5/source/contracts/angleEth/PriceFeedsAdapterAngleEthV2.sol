// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import "./PriceFeedsAdapterAngleEth.sol";
import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";

contract PriceFeedsAdapterAngleEthV2 is PriceFeedsAdapterAngleEth {
  address internal constant FALLBACK_UPDATER_ADDRESS = 0x01bca6c2749bB163d7e9A5C43B44EfedfdC19A10;
  address internal constant MANUAL_UPDATER_ADDRESS = 0x0cd59F4f2024c036C2F91c361bB108677d86E18C;

  function requireAuthorisedUpdater(address updater) public view override virtual {
    if (
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
