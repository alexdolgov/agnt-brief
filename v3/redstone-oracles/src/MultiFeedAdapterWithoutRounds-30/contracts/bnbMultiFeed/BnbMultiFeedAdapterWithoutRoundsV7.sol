// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {GelatoAddress} from "../__addresses/Addresses.sol";
import {BnbMultiFeedAdapterWithoutRoundsV6} from "./BnbMultiFeedAdapterWithoutRoundsV6.sol";

contract BnbMultiFeedAdapterWithoutRoundsV7 is BnbMultiFeedAdapterWithoutRoundsV6 {
  address internal constant OEV_EXECUTOR_ADDRESS_V7 = 0x95Fb15a0775a0dEB9298396DE95bF5B7B0b421F2;

  function _validateBlockTimestamp(
    uint256 lastBlockTimestamp
  ) internal view virtual override returns (bool) {
    if (
      msg.sender == MAIN_UPDATER_ADDRESS ||
      msg.sender == FALLBACK_UPDATER_ADDRESS ||
      msg.sender == MANUAL_UPDATER_ADDRESS ||
      msg.sender == OEV_EXECUTOR_ADDRESS_V6 ||
      msg.sender == OEV_EXECUTOR_ADDRESS_V7 ||
      msg.sender == GelatoAddress.ADDR
    ) {
      return block.timestamp > lastBlockTimestamp;
    }
    return false;
  }
}
