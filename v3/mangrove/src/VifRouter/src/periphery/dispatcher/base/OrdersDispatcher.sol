// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {LibCall} from "lib/solady/src/utils/LibCall.sol";

import {IVifTaking} from "../../../interfaces/base/IVifTaking.sol";
import {IVifMaking} from "../../../interfaces/base/IVifMaking.sol";

import {
  LimitArgs,
  DispatchResult,
  ConsumeArgs,
  ConsumeMultiArgs,
  ClaimCancelArgs
} from "../../../libraries/periphery/Types.sol";

import {LibOfferExt} from "../../../libraries/external/LibOfferExt.sol";
import {LibMarketExt, Market} from "../../../libraries/external/LibMarketExt.sol";

import {Ownable} from "lib/solady/src/auth/Ownable.sol";

contract OrdersDispatcher {
  using LibCall for bytes;
  using LibOfferExt for address;
  using LibMarketExt for address;

  /// @notice Thrown if the multi-order was called with a canFail flag
  error MultiOrderCannotFail();

  /// @notice Thrown if the multi-order was called with a slippage too high
  error SlippageTooHigh();

  /// @notice Thrown if the multi-order exact out has not enough liquidity
  error NotEnoughLiquidityMultiOrderExactOut();

  /// @notice Order a single market
  /// @param sender The sender of the order
  /// @param args encodes ConsumeArgs
  /// @param canFail Whether to bubble up the revert if the order fails
  /// @return result The result of the order
  function _orderSingle(address sender, bytes memory args, bool canFail)
    internal
    returns (DispatchResult memory result)
  {
    ConsumeArgs memory params = abi.decode(args, (ConsumeArgs));

    try IVifTaking(msg.sender)
      .consume(sender, params.marketId, params.maxTick, params.fillVolume, params.fillWants, params.maxOffers) returns (
      uint256 gave, uint256 got, uint256 fee, uint256 bounty
    ) {
      result.success = true;
      result.returnData = abi.encode(gave, got, fee, bounty);
    } catch (bytes memory err) {
      if (!canFail) {
        err.bubbleUpRevert();
      }
      result.returnData = err;
    }
  }

  /// @notice Order a market with multihopping (exact in only)
  /// @param sender The sender of the order
  /// @param params encodes ConsumeMultiArgs
  /// @return result The result of the order
  function _orderMultiIn(address sender, ConsumeMultiArgs memory params)
    internal
    returns (DispatchResult memory result)
  {
    uint256 len = params.marketIds.length;
    for (uint256 i = 0; i < len; i++) {
      (, params.fillVolume,,) = IVifTaking(msg.sender)
        .consume(sender, params.marketIds[i], type(int24).max, params.fillVolume, params.fillWants, params.maxOffers);
    }
    // if we get less than the limit volume, revert
    if (params.fillVolume < params.limitVolume) revert SlippageTooHigh();
    result.success = true;
    result.returnData = abi.encode(params.fillVolume);
  }

  /// @notice Order a market with multihopping (exact out only)
  /// @param sender The sender of the order
  /// @param params encodes ConsumeMultiArgs
  /// @return result The result of the order
  function _orderMultiOut(address sender, ConsumeMultiArgs memory params)
    internal
    returns (DispatchResult memory result)
  {
    uint256 len = params.marketIds.length;
    Market memory market;
    for (uint256 i = 0; i < len; i++) {
      bytes32 marketId = params.marketIds[len - i - 1];
      market = msg.sender.market(marketId);
      if (i > 0) {
        // round fillVolume up to the nearest possible volume
        uint256 mod = params.fillVolume % market.outboundUnits;
        if (mod > 0) {
          params.fillVolume = params.fillVolume + market.outboundUnits - mod;
        }
      }
      (uint256 gave, uint256 got, uint256 fee,) = IVifTaking(msg.sender)
        .consume(sender, marketId, type(int24).max, params.fillVolume, params.fillWants, params.maxOffers);

      // in order to protect from slippage, we need to check that all params.fillVolume was consumed
      // excluding units rounding which is static and known
      if (got / market.outboundUnits < params.fillVolume / market.outboundUnits) {
        revert NotEnoughLiquidityMultiOrderExactOut();
      }

      params.fillVolume = gave + fee;
    }
    // if we send more than the limit volume, revert
    if (params.fillVolume > params.limitVolume) revert SlippageTooHigh();
    result.success = true;
    result.returnData = abi.encode(params.fillVolume);
  }

  /// @notice Order a market with multihopping (exact in or out)
  /// @param sender The sender of the order
  /// @param args encodes ConsumeMultiArgs
  /// @param canFail Whether to bubble up the revert if the order fails (setting this flag to true will revert)
  /// @return result The result of the order
  function _orderMulti(address sender, bytes memory args, bool canFail)
    internal
    returns (DispatchResult memory result)
  {
    if (canFail) revert MultiOrderCannotFail();

    ConsumeMultiArgs memory params = abi.decode(args, (ConsumeMultiArgs));

    if (params.fillWants) {
      return _orderMultiOut(sender, params);
    } else {
      return _orderMultiIn(sender, params);
    }
  }

  /// @notice Create a single limit order
  /// @param sender The sender of the order
  /// @param args encodes LimitArgs
  /// @param canFail Whether to bubble up the revert if the order fails
  /// @return result The result of the order
  function _limitSingle(address sender, bytes memory args, bool canFail)
    internal
    returns (DispatchResult memory result)
  {
    LimitArgs memory params = abi.decode(args, (LimitArgs));
    try IVifMaking(msg.sender)
      .make(
        sender, params.marketId, params.initialOfferId, params.gives, params.tick, params.expiry, params.provision
      ) returns (
      uint40 offerId, uint256 claimedReceived
    ) {
      result.success = true;
      result.returnData = abi.encode(offerId, claimedReceived);
    } catch (bytes memory err) {
      if (!canFail) {
        err.bubbleUpRevert();
      }
      result.returnData = err;
    }
  }

  /// @notice Claim a single order
  /// @dev fails if sender is not the owner of the order
  /// @param sender The sender of the order
  /// @param args encodes ClaimCancelArgs
  /// @param canFail Whether to bubble up the revert if the order fails
  /// @return result The result of the order
  function _claim(address sender, bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    ClaimCancelArgs memory params = abi.decode(args, (ClaimCancelArgs));

    if (msg.sender.offerOwner(params.marketId, params.offerId) != sender) {
      if (!canFail) revert Ownable.Unauthorized();
      result.returnData = abi.encode(Ownable.Unauthorized.selector);
      return result;
    }

    try IVifMaking(msg.sender).claim(params.marketId, params.offerId) returns (
      uint256 inbound, uint256 outbound, uint256 provision
    ) {
      result.success = true;
      result.returnData = abi.encode(inbound, outbound, provision);
    } catch (bytes memory err) {
      result.returnData = err;
      if (!canFail) {
        err.bubbleUpRevert();
      }
    }
  }

  /// @notice Cancel a single order
  /// @dev fails if sender is not the owner of the order
  /// @param sender The sender of the order
  /// @param args encodes ClaimCancelArgs
  /// @param canFail Whether to bubble up the revert if the order fails
  /// @return result The result of the order
  function _cancel(address sender, bytes memory args, bool canFail) internal returns (DispatchResult memory result) {
    ClaimCancelArgs memory params = abi.decode(args, (ClaimCancelArgs));

    if (msg.sender.offerOwner(params.marketId, params.offerId) != sender) {
      if (!canFail) revert Ownable.Unauthorized();
      result.returnData = abi.encode(Ownable.Unauthorized.selector);
      return result;
    }

    try IVifMaking(msg.sender).cancel(params.marketId, params.offerId) returns (
      uint256 inbound, uint256 outbound, uint256 provision
    ) {
      result.success = true;
      result.returnData = abi.encode(inbound, outbound, provision);
    } catch (bytes memory err) {
      result.returnData = err;
      if (!canFail) {
        err.bubbleUpRevert();
      }
    }
  }
}
