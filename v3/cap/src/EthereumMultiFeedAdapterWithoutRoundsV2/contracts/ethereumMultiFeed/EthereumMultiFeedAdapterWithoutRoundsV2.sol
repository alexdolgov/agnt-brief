// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";
import {MultiFeedAdapterWithoutRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/MultiFeedAdapterWithoutRoundsPrimaryProd.sol";

contract EthereumMultiFeedAdapterWithoutRoundsV2 is
  MultiFeedAdapterWithoutRoundsPrimaryProd
{
  address internal constant MAIN_UPDATER_ADDRESS =
    0x6809b95622B2dcC53d2F3Fb2301B36F6a8c5B584;
  address internal constant FALLBACK_UPDATER_ADDRESS =
    0x12c88f64e5E35393D38255aB42858010Cbd72eBd;
  address internal constant MANUAL_UPDATER_ADDRESS =
    0x9E7CaAb1924A7e5Bb4305dFd843194B5E19480D3;

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
