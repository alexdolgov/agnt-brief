// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";
import {BnbMultiFeedAdapterWithoutRoundsV3} from "./BnbMultiFeedAdapterWithoutRoundsV3.sol";

contract BnbMultiFeedAdapterWithoutRoundsV4 is BnbMultiFeedAdapterWithoutRoundsV3 {

  function _validateBlockTimestamp(uint256 lastBlockTimestamp) internal view virtual override returns (bool) {
    if (
      msg.sender == MAIN_UPDATER_ADDRESS ||
      msg.sender == FALLBACK_UPDATER_ADDRESS ||
      msg.sender == MANUAL_UPDATER_ADDRESS ||
      msg.sender == OEV_UPDATER_ADDRESS ||
      msg.sender == GelatoAddress.ADDR ||
      msg.sender == OldGelatoAddress.ADDR
    ) {
      return block.timestamp > lastBlockTimestamp;
    }
    return false;
  }
}
