// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {FlatMoneyCollateralAssetGuard} from "./FlatMoneyCollateralAssetGuard.sol";
import {LendingEnabledAssetGuard} from "../LendingEnabledAssetGuard.sol";

/// @notice Combined guard for FlatMoney collateral assets with lending capability
/// @dev AssetType = 33
contract FlatMoneyCollateralLendingEnabledGuard is LendingEnabledAssetGuard, FlatMoneyCollateralAssetGuard {
  constructor(address _orderModule) FlatMoneyCollateralAssetGuard(_orderModule) {}

  function removeAssetCheck(
    address _pool,
    address _asset
  ) public view override(LendingEnabledAssetGuard, FlatMoneyCollateralAssetGuard) {
    LendingEnabledAssetGuard.removeAssetCheck(_pool, _asset);
    FlatMoneyCollateralAssetGuard.removeAssetCheck(_pool, _asset);
  }
}
