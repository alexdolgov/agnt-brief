// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";
import {LayerBankOracleAdapterBaseModeV1} from "./LayerBankOracleAdapterBaseModeV1.sol";

contract LayerBankOracleAdapterModeV1 is LayerBankOracleAdapterBaseModeV1 {

  address internal constant MAIN_UPDATER_ADDRESS = 0x3Ca26810620f49E5EF2bee066511f9029E505351;
  address internal constant FALLBACK_UPDATER_ADDRESS = 0x79904364F1807e89Bc000f286c6d6F1bB36128d9;
  address internal constant MANUAL_UPDATER_ADDRESS = 0x17a1E90337b62e737d61b168C23Ac12d54a5Cd06;

  error UpdaterNotAuthorised(address signer);

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
