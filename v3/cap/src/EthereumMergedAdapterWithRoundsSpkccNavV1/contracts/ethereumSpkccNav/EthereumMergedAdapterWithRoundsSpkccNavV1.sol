// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import {MergedPriceFeedAdapterWithRoundsPrimaryProd} from "@redstone-finance/evm-adapters/contracts/price-feeds/data-services/MergedPriceFeedAdapterWithRoundsPrimaryProd.sol";
import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";

contract EthereumMergedAdapterWithRoundsSpkccNavV1 is MergedPriceFeedAdapterWithRoundsPrimaryProd {

  address internal constant MAIN_UPDATER_ADDRESS = 0xBE085EF98eEedfEf036E33B623bBB44a5D105A3E;
  address internal constant FALLBACK_UPDATER_ADDRESS = 0xCf443a92236D75d2F9288c7Dc1021a2499E846B7;
  address internal constant MANUAL_UPDATER_ADDRESS = 0x6BD3bb71e0bDbb6213FC31743b9A1f29E71DC950;

  error UpdaterNotAuthorised(address signer);

  function getDataFeedId() public pure virtual override returns (bytes32) {
    return bytes32("SPKCC_NAV");
  }

  function requireAuthorisedUpdater(address updater) public view override virtual {
    if (
      updater != MAIN_UPDATER_ADDRESS &&
      updater != FALLBACK_UPDATER_ADDRESS &&
      updater != MANUAL_UPDATER_ADDRESS &&
      updater != GelatoAddress.ADDR &&
      updater != OldGelatoAddress.ADDR
    ) {
      revert UpdaterNotAuthorised(updater);
    }
  }
}
