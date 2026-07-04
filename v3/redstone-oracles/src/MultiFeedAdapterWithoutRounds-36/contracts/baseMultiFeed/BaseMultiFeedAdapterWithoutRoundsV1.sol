// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";
import {MultiFeedAdapterWithoutRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/MultiFeedAdapterWithoutRoundsPrimaryProd.sol";

contract BaseMultiFeedAdapterWithoutRoundsV1 is
  MultiFeedAdapterWithoutRoundsPrimaryProd
{
  address internal constant MAIN_UPDATER_ADDRESS =
    0xF5659859aA2E19187A58695eF854643852b8C3Ba;
  address internal constant FALLBACK_UPDATER_ADDRESS =
    0x7792C50276030AC00cb0Df4487E2C3a4FAe3FdFB;
  address internal constant MANUAL_UPDATER_ADDRESS =
    0x4aE4b822E45B9964219f83c26cdfeb4a59cab505;

  function _validateBlockTimestamp(
    uint256 lastBlockTimestamp
  ) internal view virtual override returns (bool) {
    if (
      msg.sender == MAIN_UPDATER_ADDRESS ||
      msg.sender == FALLBACK_UPDATER_ADDRESS ||
      msg.sender == MANUAL_UPDATER_ADDRESS ||
      msg.sender == GelatoAddress.ADDR ||
      msg.sender == OldGelatoAddress.ADDR
    ) {
      // For whitelisted addresses we only require a newer block
      return block.timestamp > lastBlockTimestamp;
    } else {
      // For non-whitelisted addresses we require some time to pass after the latest update
      return block.timestamp > lastBlockTimestamp + 40 seconds;
    }
  }
}
