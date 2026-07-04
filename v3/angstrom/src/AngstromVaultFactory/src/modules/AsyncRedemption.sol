// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { IAsyncRedemption, RedemptionRequest, RedemptionId } from "../interfaces/IAsyncRedemption.sol";
import { RequestStatus } from "../types/RequestStatus.sol";
import { Events } from "../Events.sol";
import { Errors } from "../Errors.sol";

/// @notice Implements a queued redemption flow, whereby a user first creates a RedemptionRequest which is later
/// fulfilled.
abstract contract AsyncRedemption is IAsyncRedemption {
    struct AsyncRedemptionStorage {
        RedemptionId nextRedemptionIdCounter;
        mapping(RedemptionId => RedemptionRequest) redemptionRequests;
        uint128 minRedemptionAmount;
        uint128 maxRedemptionAmount;
        uint256 totalPendingRedemptions;
    }

    AsyncRedemptionStorage private asyncRedemptionStorage;

    /// @inheritdoc IAsyncRedemption
    function totalPendingRedemptions() external view returns (uint256) {
        return asyncRedemptionStorage.totalPendingRedemptions;
    }

    /// @inheritdoc IAsyncRedemption
    function minRedemptionAmount() public view returns (uint128) {
        return asyncRedemptionStorage.minRedemptionAmount;
    }

    /// @inheritdoc IAsyncRedemption
    function maxRedemptionAmount() public view returns (uint128) {
        return asyncRedemptionStorage.maxRedemptionAmount;
    }

    /// @dev This function is included so that we can invoke it within this contract but maintain our desired
    /// inheritance pattern.
    function _transfer(
        address from,
        address to,
        uint256 amount
    ) internal virtual;

    /// @inheritdoc IAsyncRedemption
    function getRedemptionRequest(
        RedemptionId id
    ) external view returns (RedemptionRequest memory) {
        return asyncRedemptionStorage.redemptionRequests[id];
    }

    /// @dev Creates a RedemptionRequest, transferring `shares` into this contract and recording the desire for
    /// `minAssetsOut`, which will be checked against on fulfillment.
    /// @dev Assumes that the redeemer is the `msg.sender`.
    /// @dev Will revert if `shares` is outside of the min and max redemption request size limits.
    function _createRedemptionRequest(
        uint256 shares,
        uint256 minAssetsOut
    ) internal returns (RedemptionId id) {
        // zero input explicitly disallowed, to prevent division-by-zero errors on fulfillment
        require(shares != 0, Errors.RedemptionAmountTooLow());
        require(shares >= asyncRedemptionStorage.minRedemptionAmount, Errors.RedemptionAmountTooLow());
        require(shares <= asyncRedemptionStorage.maxRedemptionAmount, Errors.RedemptionAmountTooHigh());
        id = asyncRedemptionStorage.nextRedemptionIdCounter;
        asyncRedemptionStorage.nextRedemptionIdCounter = id.increment();
        asyncRedemptionStorage.totalPendingRedemptions += shares;
        asyncRedemptionStorage.redemptionRequests[id] = RedemptionRequest({
            redeemer: msg.sender, shares: shares, minAssetsOut: minAssetsOut, status: RequestStatus.PENDING
        });

        emit Events.RedemptionRequested(id, msg.sender, shares, minAssetsOut);
        _transfer(msg.sender, address(this), shares);

        return id;
    }

    /// @dev Cancels the RedemptionRequest corresponding to `requestId`, returning the shares to the initiator of the
    /// request.
    /// @dev Does *NOT* perform access control checks. These are assumed to be implemented within any external function
    /// which invokes this internal function.
    function _cancelRedemptionRequest(
        RedemptionId requestId
    ) internal {
        RedemptionRequest storage request = asyncRedemptionStorage.redemptionRequests[requestId];
        require(request.status == RequestStatus.PENDING, Errors.RedemptionNotPending());
        // INVARIANT
        assert(asyncRedemptionStorage.totalPendingRedemptions >= request.shares);

        request.status = RequestStatus.CANCELED;
        asyncRedemptionStorage.totalPendingRedemptions -= request.shares;

        emit Events.RedemptionRequestCanceled(requestId, request.redeemer);

        _transfer(address(this), request.redeemer, request.shares);
    }

    /// @dev Does *NOT* perform access control checks. These are assumed to be implemented within any external function
    /// which invokes this internal function.
    function _setRedemptionAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) internal {
        require(minAmount <= maxAmount, Errors.InvalidRedemptionLimits());
        asyncRedemptionStorage.minRedemptionAmount = minAmount;
        asyncRedemptionStorage.maxRedemptionAmount = maxAmount;
        emit Events.RedemptionLimitsSet(minAmount, maxAmount);
    }

    /// @dev Marks the request fulfilled, decrements the pending tally, enforces `minAssetsOut`, and delegates the
    /// integration-specific share burning / asset payout to `_onFulfillRedemption`.
    /// @dev Does *NOT* perform access control or exchange-rate validation. These are assumed to be implemented in the
    /// external caller.
    function _fulfillRedemptionRequest(
        RedemptionId requestId,
        uint256 assets
    ) internal {
        RedemptionRequest storage request = asyncRedemptionStorage.redemptionRequests[requestId];
        address redeemer = request.redeemer;
        uint256 shares = request.shares;

        request.status = RequestStatus.FULFILLED;
        asyncRedemptionStorage.totalPendingRedemptions -= shares;

        require(assets >= request.minAssetsOut, Errors.InsufficientAssetsOut());
        _onFulfillRedemption(redeemer, shares, assets);
        emit Events.RedemptionFulfilled(requestId, redeemer, shares, assets);
    }

    /// @dev Hook invoked from `_fulfillRedemptionRequest` to perform the integration-specific portion of fulfillment
    /// (e.g., burning shares held in escrow and paying out the redeemed assets).
    function _onFulfillRedemption(
        address redeemer,
        uint256 shares,
        uint256 assets
    ) internal virtual;

    function _redeemer(
        RedemptionId id
    ) internal view returns (address) {
        return asyncRedemptionStorage.redemptionRequests[id].redeemer;
    }

    function _redemptionRequest(
        RedemptionId id
    ) internal view returns (RedemptionRequest storage) {
        return asyncRedemptionStorage.redemptionRequests[id];
    }
}
