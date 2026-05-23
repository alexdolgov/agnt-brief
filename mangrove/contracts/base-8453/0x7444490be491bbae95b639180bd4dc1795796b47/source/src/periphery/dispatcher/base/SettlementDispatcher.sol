// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {IVifCore} from "../../../interfaces/base/IVifCore.sol";
import {LibCall} from "lib/solady/src/utils/LibCall.sol";
import {SafeTransferLib} from "lib/solady/src/utils/SafeTransferLib.sol";
import {LibDeltasExt} from "../../../libraries/external/LibDeltasExt.sol";

import {FixedPointMathLib} from "lib/solady/src/utils/FixedPointMathLib.sol";
import {DispatchResult, ClearOrClaimArgs} from "../../../libraries/periphery/Types.sol";

contract SettlementDispatcher {
  using LibCall for bytes;
  using LibDeltasExt for address;
  using SafeTransferLib for address;

  /// @dev internal function to settle a single token
  /// @dev this function will pull the specified amount of the token from the router balance first, then from the user balance
  /// @dev Pulling will happen via the `settle` function of the core contract and consume allowance towards the core contract
  /// @param from The sender of the settlement.
  /// @param token The token to settle.
  /// @param amount The amount to settle.
  /// @param canFail Whether to bubble up the revert if the settlement fails
  /// @return result The result of the settlement
  function _settleSingle(address from, address token, uint256 amount, bool canFail)
    internal
    returns (DispatchResult memory result)
  {
    uint256 value;

    if (token != LibDeltasExt.NATIVE) {
      uint256 balance = token.balanceOf(address(this));
      uint256 sending = FixedPointMathLib.min(amount, balance);
      if (sending > 0) {
        token.safeApprove(msg.sender, sending);
        IVifCore(msg.sender).settle(token, sending, address(this));
        amount -= sending;
        result.success = amount == 0;
      }
    } else {
      value = amount;
      // since the router contract is the one calling settle
      // the funds will be sent directly from the router contract itself
      from = address(this);
    }

    if (amount > 0) {
      try IVifCore(msg.sender).settle{value: value}(token, amount, from) {
        result.success = true;
      } catch (bytes memory err) {
        if (!canFail) {
          err.bubbleUpRevert();
        }
        result.success = false;
        result.returnData = err;
      }
    }
  }

  /// @dev internal function to settle a single token
  /// @dev sends the specifed amount to the core contract via the `settle` function
  /// @param from The sender of the settlement.
  /// @param args encodes (address token, uint256 amount)
  /// @param canFail Whether to bubble up the revert if the settlement fails
  /// @return result The result of the settlement
  function _settle(address from, bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    (address token, uint256 amount) = abi.decode(args, (address, uint256));
    return _settleSingle(from, token, amount, canFail);
  }

  /// @dev internal function to take a single token
  /// @dev sends the specifed amount to the specified receiver via the `take` function
  /// @param args encodes (address token, uint256 amount, address receiver)
  /// @param canFail Whether to bubble up the revert if the take fails
  /// @return result The result of the take
  function _take(bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    (address token, uint256 amount, address receiver) = abi.decode(args, (address, uint256, address));

    try IVifCore(msg.sender).take(token, amount, receiver) {
      result.success = true;
    } catch (bytes memory err) {
      if (!canFail) {
        err.bubbleUpRevert();
      }
      result.returnData = err;
    }
  }

  /// @dev internal function to settle all tokens
  /// @dev sends the total debt amount to the core contract via the `settle` function
  /// @param from The sender of the settlement.
  /// @param args encodes (address token)
  /// @param canFail Whether to bubble up the revert if the settlement fails
  /// @return result The result of the settlement
  function _settleAll(address from, bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    (address token) = abi.decode(args, (address));

    unchecked {
      int256 amount = msg.sender.deltaOf(token);
      if (amount > 0) {
        result.success = true;
        return result;
      }
      // forge-lint: disable-next-line(unsafe-typecast)
      return _settleSingle(from, token, uint256(-amount), canFail);
    }
  }

  /// @dev internal function to take all tokens
  /// @dev sends the total credit amount to the specified receiver via the `take` function
  /// @param args encodes (address token, address receiver)
  /// @param canFail Whether to bubble up the revert if the take fails
  /// @return result The result of the take
  function _takeAll(bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    (address token, address receiver) = abi.decode(args, (address, address));

    unchecked {
      int256 amount = msg.sender.deltaOf(token);

      if (amount > 0) {
        // forge-lint: disable-next-line(unsafe-typecast)
        try IVifCore(msg.sender).take(token, uint256(amount), receiver) {
          result.success = true;
        } catch (bytes memory err) {
          if (!canFail) {
            err.bubbleUpRevert();
          }
          result.returnData = err;
        }
      } else {
        result.success = true;
      }
    }
  }

  /// @dev internal function to clear all dust credit for a token
  /// @param args encodes (address token)
  /// @param canFail Whether to bubble up the revert if the clearing fails
  /// @return result The result of the clearing
  function _clearAll(bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    canFail; // ignored
    (address token) = abi.decode(args, (address));

    unchecked {
      int256 amount = msg.sender.deltaOf(token);

      if (amount > 0) {
        // casting to 'uint256' is safe because amount is positive
        // forge-lint: disable-next-line(unsafe-typecast)
        IVifCore(msg.sender).clear(token, uint256(amount));
      }
      result.success = true;
    }
  }

  /// @dev internal function to clear dust credit for a token up to a maximum amount or claim the full amount
  /// @param args encodes (address token, uint256 maxClearAmount, address receiver)
  /// @param canFail Whether to bubble up the revert if the clearing fails
  /// @return result The result of the clearing
  function _clearUpToOrClaim(bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    ClearOrClaimArgs memory params = abi.decode(args, (ClearOrClaimArgs));

    unchecked {
      int256 amount = msg.sender.deltaOf(params.token);

      if (amount > 0) {
        // casting to 'uint256' is safe because amount is positive
        // forge-lint: disable-next-line(unsafe-typecast)
        if (uint256(amount) > params.maxClearAmount) {
          // casting to 'uint256' is safe because amount is positive
          // forge-lint: disable-next-line(unsafe-typecast)
          try IVifCore(msg.sender).take(params.token, uint256(amount), params.receiver) {
            result.success = true;
          } catch (bytes memory err) {
            if (!canFail) {
              err.bubbleUpRevert();
            }
            result.returnData = err;
            return result;
          }
        } else {
          // casting to 'uint256' is safe because amount is positive
          // forge-lint: disable-next-line(unsafe-typecast)
          IVifCore(msg.sender).clear(params.token, uint256(amount));
        }
      }
      result.success = true;
    }
  }
}
