// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {MergedPriceFeedAdapterWithRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/MergedPriceFeedAdapterWithRoundsPrimaryProd.sol";
import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";

contract MergedAdapterWithRoundsRsethethV1 is MergedPriceFeedAdapterWithRoundsPrimaryProd {
  
  address internal constant MAIN_UPDATER_ADDRESS = 0x1B8Cc4b3D59494c5E195242339f18De08cA0E48c;
  address internal constant FALLBACK_UPDATER_ADDRESS = 0xc9968AdBE04E9aAD2e4b69E961D17343B75AEaB5;
  address internal constant MANUAL_UPDATER_ADDRESS = 0x41BA1734a643518065ed812eBa76aAc550481a44;

  error UpdaterNotAuthorised(address signer);

  function getDataFeedId() public pure virtual override returns (bytes32) {
    return bytes32("rsETH/ETH");
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
