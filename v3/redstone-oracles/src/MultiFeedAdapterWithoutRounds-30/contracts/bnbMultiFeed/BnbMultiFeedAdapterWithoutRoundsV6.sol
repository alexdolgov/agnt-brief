// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {GelatoAddress} from "../__addresses/Addresses.sol";
import {BnbMultiFeedAdapterWithoutRoundsV5} from "./BnbMultiFeedAdapterWithoutRoundsV5.sol";

contract BnbMultiFeedAdapterWithoutRoundsV6 is BnbMultiFeedAdapterWithoutRoundsV5 {
  address internal constant OEV_EXECUTOR_ADDRESS_V6 = 0x5Ce987f19c42527af97F107B1236bb041008AE7e;

  function _validateBlockTimestamp(
    uint256 lastBlockTimestamp
  ) internal view virtual override returns (bool) {
    if (
      msg.sender == MAIN_UPDATER_ADDRESS ||
      msg.sender == FALLBACK_UPDATER_ADDRESS ||
      msg.sender == MANUAL_UPDATER_ADDRESS ||
      msg.sender == OEV_EXECUTOR_ADDRESS_V6 ||
      msg.sender == GelatoAddress.ADDR
    ) {
      return block.timestamp > lastBlockTimestamp;
    }
    return false;
  }
}
