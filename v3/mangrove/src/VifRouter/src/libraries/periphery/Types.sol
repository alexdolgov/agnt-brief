// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.30;

import {Authorization} from "../../interfaces/base/IVifAuthorizer.sol";

/// @notice Result of a dispatch
/// @param success Whether the dispatched action was successful
/// @param returnData The return data of the dispatched action
/// @dev if the action failed, the return data can contain the revert data
struct DispatchResult {
  bool success;
  bytes returnData;
}

// ================================================
// =============     Arguments      ===============
// ================================================

/// @notice Arguments for a market order
/// @param marketId The id of the market to consume from
/// @param maxTick The maximum tick at which we will match orders
/// @param fillVolume if fillWants is false, the amount to send, if fillWants is true, the amount to receive
/// @param fillWants Whether to fillVolume represents the amount to send or receive
/// @param maxOffers The maximum number of offers to consume
struct ConsumeArgs {
  bytes32 marketId;
  int24 maxTick;
  uint256 fillVolume;
  bool fillWants;
  uint256 maxOffers;
}

/// @notice Arguments for a multi-market order
/// @param marketIds The ids of the markets to consume from
/// @param fillVolume if fillWants is false, the amount to send, if fillWants is true, the amount to receive
/// @param fillWants Whether to fillVolume represents the amount to send or receive
/// @param maxOffers The maximum number of offers to consume per market
/// @param limitVolume If fillWants is false, the minimum amount of volume to receive, if fillWants is true, the maximum amount of volume to send
struct ConsumeMultiArgs {
  bytes32[] marketIds;
  uint256 fillVolume;
  bool fillWants;
  uint256 maxOffers;
  uint256 limitVolume;
}

/// @notice Arguments for a limit order
/// @param marketId The id of the market to post an offer on
/// @param initialOfferId if not 0, a previous offer will be edited, if 0, a new offer will be created
/// @param gives The amount of tokens to sell
/// @param tick The tick at which to post the offer
/// @param expiry The expiry of the offer
/// @param provision The provision of the offer
struct LimitArgs {
  bytes32 marketId;
  uint40 initialOfferId;
  uint256 gives;
  int24 tick;
  uint32 expiry;
  uint24 provision;
}

/// @notice Arguments for a claim or cancel order
/// @param marketId The id of the market to claim or cancel
/// @param offerId The id of the offer to claim or cancel
struct ClaimCancelArgs {
  bytes32 marketId;
  uint40 offerId;
}

/// @notice Arguments for a sweep
/// @dev sweeping will remove all the tokens from the router to the receiver
/// @param token The token to sweep
/// @param receiver The receiver of the sweep
struct SweepArgs {
  address token;
  address receiver;
}

/// @notice Arguments for a authorization
/// @param authorization The authorization to set
/// @param signature The signature of the authorization
/// @dev the signature is the EIP-712 signature of the authorization
struct AuthorizeArgs {
  Authorization authorization;
  bytes signature;
}

/// @notice Arguments for a clear or claim
/// @param token The token to clear or claim
/// @param maxClearAmount The maximum amount to clear
/// @param receiver The receiver in case the full amount is claimed
struct ClearOrClaimArgs {
  address token;
  uint256 maxClearAmount;
  address receiver;
}

// ================================================
// =============      Results      ================
// ================================================

/// @notice Result of a consume
/// @param gave The amount of tokens sent by the taker
/// @param got The amount of tokens received by the taker
/// @param fee The fee paid by the taker on the sent tokens
/// @param bounty The bounty paid to the taker for cleaning expired offers
struct ConsumeResult {
  uint256 gave;
  uint256 got;
  uint256 fee;
  uint256 bounty;
}

/// @notice Result of a claim or cancel
/// @param inbound The amount of inbound tokens credited
/// @param outbound The amount of outbound tokens debited
/// @param provision The amount of native tokens credited
struct ClaimCancelResult {
  uint256 inbound;
  uint256 outbound;
  uint256 provision;
}
