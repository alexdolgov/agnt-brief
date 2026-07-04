// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {Commands} from "../../libraries/periphery/Commands.sol";

import {OrdersDispatcher} from "./base/OrdersDispatcher.sol";
import {SettlementDispatcher} from "./base/SettlementDispatcher.sol";
import {GeneralDispatcher} from "./base/GeneralDispatcher.sol";
import {DispatchResult} from "../../libraries/periphery/Types.sol";

contract Dispatcher is OrdersDispatcher, SettlementDispatcher, GeneralDispatcher {
  using Commands for bytes1;

  constructor(address weth) GeneralDispatcher(weth) {}

  /// @dev internal function to dispatch a single command
  /// @param sender The sender of the command.
  /// @param rawCommand The raw command to dispatch.
  /// @param args The arguments to the command.
  /// @return result The result of the command.
  function _dispatch(address sender, bytes1 rawCommand, bytes memory args)
    internal
    returns (DispatchResult memory result)
  {
    (uint8 command, bool canFail) = rawCommand.parseCommand();
    if (command < Commands.SETTLE) {
      // order management commands
      if (command == Commands.ORDER_SINGLE) {
        return _orderSingle(sender, args, canFail);
      } else if (command == Commands.ORDER_MULTI) {
        return _orderMulti(sender, args, canFail);
      } else if (command == Commands.LIMIT_SINGLE) {
        return _limitSingle(sender, args, canFail);
      } else if (command == Commands.CLAIM) {
        return _claim(sender, args, canFail);
      } else if (command == Commands.CANCEL) {
        return _cancel(sender, args, canFail);
      }
    } else if (command < Commands.SWEEP) {
      // settlement commands
      if (command == Commands.SETTLE) {
        return _settle(sender, args, canFail);
      } else if (command == Commands.TAKE) {
        return _take(args, canFail);
      } else if (command == Commands.SETTLE_ALL) {
        return _settleAll(sender, args, canFail);
      } else if (command == Commands.TAKE_ALL) {
        return _takeAll(args, canFail);
      }
    } else if (command < Commands.CLEAR_ALL) {
      // additional actions commands
      if (command == Commands.SWEEP) {
        return _sweep(args, canFail);
      } else if (command == Commands.WRAP_NATIVE) {
        return _wrapNative(args, canFail);
      } else if (command == Commands.UNWRAP_NATIVE) {
        return _unwrapNative(args, canFail);
      } else if (command == Commands.AUTHORIZE) {
        return _authorize(args, canFail);
      }
    } else {
      // clearing commands
      if (command == Commands.CLEAR_ALL) {
        return _clearAll(args, canFail);
      } else if (command == Commands.CLEAR_UPTO_OR_CLAIM) {
        return _clearUpToOrClaim(args, canFail);
      }
    }
  }
}
