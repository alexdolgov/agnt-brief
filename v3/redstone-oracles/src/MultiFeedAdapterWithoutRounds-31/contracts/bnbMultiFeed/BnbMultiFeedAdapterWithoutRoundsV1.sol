// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";
import {MultiFeedAdapterWithoutRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/MultiFeedAdapterWithoutRoundsPrimaryProd.sol";

contract BnbMultiFeedAdapterWithoutRoundsV1 is
  MultiFeedAdapterWithoutRoundsPrimaryProd
{
  address internal constant MAIN_UPDATER_ADDRESS =
    0x1d6D5dB8A293d7815093f9bb237eCdC0687D361D;
  address internal constant FALLBACK_UPDATER_ADDRESS =
    0x3ED38b11Cc297a7c5a76092785C79Dc4188d595b;
  address internal constant MANUAL_UPDATER_ADDRESS =
    0x925CCa272D0eA0DE5330dbc318461CF508F1fBA5;

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
