// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.4;

import {PriceFeedsAdapterWithRoundsPrimaryProd} from "@redstone-finance/on-chain-relayer/contracts/price-feeds/data-services/PriceFeedsAdapterWithRoundsPrimaryProd.sol";
import {OldGelatoAddress, GelatoAddress} from "../__addresses/Addresses.sol";

contract PriceFeedsAdapterWithoutRoundsUsdeSusdeV1 is PriceFeedsAdapterWithRoundsPrimaryProd {

  bytes32 constant private USDE_ID = bytes32("USDe");
  bytes32 constant private SUSDE_ID = bytes32("sUSDe");

  address internal constant MAIN_UPDATER_ADDRESS = 0xF4180838BC6B215D9Da0aB173D13668D1622Ef05;
  address internal constant FALLBACK_UPDATER_ADDRESS = 0x2499aA4fa252Bb73076AA75fEF90330A74d5FD41;
  address internal constant MANUAL_UPDATER_ADDRESS = 0x7Ae5dF5c6543c4225C534c5C6c12F7CaAB55b81B;

  error UpdaterNotAuthorised(address signer);

  function getDataFeedIds() public pure override virtual returns (bytes32[] memory dataFeedIds) {
    dataFeedIds = new bytes32[](2);
    dataFeedIds[0] = USDE_ID;
    dataFeedIds[1] = SUSDE_ID;
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

  function getDataFeedIndex(bytes32 dataFeedId) public view override virtual returns (uint256) {
    if (dataFeedId == USDE_ID) { return 0; }
    else if (dataFeedId == SUSDE_ID) { return 1; }
    revert DataFeedIdNotFound(dataFeedId);
  }
}
