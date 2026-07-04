// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {GelatoAddress} from "../__addresses/Addresses.sol";
import {BnbMultiFeedAdapterWithoutRoundsV4} from "./BnbMultiFeedAdapterWithoutRoundsV4.sol";

contract BnbMultiFeedAdapterWithoutRoundsV5 is BnbMultiFeedAdapterWithoutRoundsV4 {
  address internal constant OEV_EXECUTOR_ADDRESS = 0xa6dcd68fB16243c02537307A853185106F2c7C6B;

  function _validateBlockTimestamp(
    uint256 lastBlockTimestamp
  ) internal view virtual override returns (bool) {
    if (
      msg.sender == MAIN_UPDATER_ADDRESS ||
      msg.sender == FALLBACK_UPDATER_ADDRESS ||
      msg.sender == MANUAL_UPDATER_ADDRESS ||
      msg.sender == OEV_EXECUTOR_ADDRESS ||
      msg.sender == GelatoAddress.ADDR
    ) {
      return block.timestamp > lastBlockTimestamp;
    }
    return false;
  }
}
