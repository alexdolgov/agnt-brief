// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {FlatcoinModuleKeys} from "../../../utils/flatMoney/libraries/FlatcoinModuleKeys.sol";
import {IDelayedOrder} from "../../../interfaces/flatMoney/IDelayedOrder.sol";

abstract contract FlatMoneyOrderHelperGuard {
  /// @dev Types of orders which in theory can appear on behalf of the vault are limited by the contract guard for the DelayedOrder.
  /// @dev Guard's name is FlatMoneyDelayedOrderContractGuard. This way, check against OrderType.None is sufficient.
  /// @param _vault Vault address
  /// @param _moduleAddress any Flat Money module address extended from ModuleUpgradeable
  /// @return noOrder True if there is no pending order
  function _hasNoPendingOrder(address _vault, address _moduleAddress) internal view returns (bool noOrder) {
    IDelayedOrder delayedOrder = IDelayedOrder(
      IDelayedOrder(_moduleAddress).vault().moduleAddress(FlatcoinModuleKeys._DELAYED_ORDER_KEY)
    );
    noOrder = delayedOrder.getAnnouncedOrder(_vault).orderType == IDelayedOrder.OrderType.None;
  }
}
