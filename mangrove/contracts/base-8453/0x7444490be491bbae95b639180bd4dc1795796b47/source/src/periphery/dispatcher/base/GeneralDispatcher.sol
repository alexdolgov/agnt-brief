// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {SafeTransferLib} from "lib/solady/src/utils/SafeTransferLib.sol";
import {LibDeltasExt} from "../../../libraries/external/LibDeltasExt.sol";
import {LibCall} from "lib/solady/src/utils/LibCall.sol";

import {DispatchResult, SweepArgs, AuthorizeArgs} from "../../../libraries/periphery/Types.sol";

import {WETH} from "lib/solady/src/tokens/WETH.sol";
import {Receiver} from "lib/solady/src/accounts/Receiver.sol";

import {IVifAuthorizer} from "../../../interfaces/base/IVifAuthorizer.sol";

contract GeneralDispatcher is Receiver {
  using SafeTransferLib for address;
  using LibCall for bytes;

  address internal immutable _WETH;

  constructor(address _weth) {
    _WETH = _weth;
  }

  /// @inheritdoc Receiver
  function _useReceiverFallbackBody() internal pure override returns (bool) {
    return false;
  }

  /// @notice Sweeps the given token to the given receiver
  /// @param args encodes (address token, address receiver)
  /// @param canFail Whether to bubble up the revert if the sweep fails (setting this flag to true will revert)
  /// @return result The result of the sweep
  function _sweep(bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    canFail; // ignored
    SweepArgs memory params = abi.decode(args, (SweepArgs));

    if (params.token == LibDeltasExt.NATIVE) {
      params.receiver.safeTransferAllETH();
    } else {
      params.token.safeTransferAll(params.receiver);
    }
    result.success = true;
  }

  /// @notice Wraps native tokens into the router
  /// @param args encodes (uint256 amount)
  /// @param canFail Whether to bubble up the revert if the wrap fails (setting this flag to true will revert)
  /// @return result The result of the wrap
  function _wrapNative(bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    uint256 amount = abi.decode(args, (uint256));

    try WETH(payable(_WETH)).deposit{value: amount}() {
      result.success = true;
    } catch (bytes memory err) {
      if (!canFail) {
        err.bubbleUpRevert();
      }
      result.returnData = err;
    }
  }

  /// @notice Unwraps native tokens from the router
  /// @param args encodes (uint256 amount)
  /// @param canFail Whether to bubble up the revert if the unwrap fails (setting this flag to true will revert)
  /// @return result The result of the unwrap
  function _unwrapNative(bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    uint256 amount = abi.decode(args, (uint256));
    try WETH(payable(_WETH)).withdraw(amount) {
      result.success = true;
    } catch (bytes memory err) {
      if (!canFail) {
        err.bubbleUpRevert();
      }
      result.returnData = err;
    }
  }

  /// @notice Authorizes a delegate
  /// @param args encodes (Authorization authorization, bytes signature)
  /// @param canFail Whether to bubble up the revert if the authorize fails (setting this flag to true will revert)
  /// @return result The result of the authorize
  function _authorize(bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    AuthorizeArgs memory params = abi.decode(args, (AuthorizeArgs));
    try IVifAuthorizer(msg.sender).authorizeWithSig(params.authorization, params.signature) {
      result.success = true;
    } catch (bytes memory err) {
      if (!canFail) {
        err.bubbleUpRevert();
      }
      result.returnData = err;
    }
  }
}
