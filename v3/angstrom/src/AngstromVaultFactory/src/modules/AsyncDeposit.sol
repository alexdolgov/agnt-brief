// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import { ERC20 } from "solady/tokens/ERC20.sol";
import { SafeTransferLib } from "solady/utils/SafeTransferLib.sol";
import { IAsyncDeposit, DepositRequest, DepositId } from "../interfaces/IAsyncDeposit.sol";
import { RequestStatus } from "../types/RequestStatus.sol";
import { Events } from "../Events.sol";
import { Errors } from "../Errors.sol";

using SafeTransferLib for address;

/// @title AsyncDeposit
/// @notice Two-phase async deposit interface: users request deposits (transferring tokens upfront),
///         then an approver fulfills them in batches, minting vault shares at the prevailing exchange rate.
///         The exchange rate is determined off-chain; `minSharesOut` provides on-chain slippage protection.
abstract contract AsyncDeposit is IAsyncDeposit {
    struct AsyncDepositStorage {
        DepositId nextDepositIdCounter;
        uint128 minDepositAmount;
        uint128 maxDepositAmount;
        mapping(DepositId => DepositRequest) depositRequests;
        uint256 totalPendingDeposits;
    }

    AsyncDepositStorage private asyncDepositStorage;

    /// @inheritdoc IAsyncDeposit
    function totalPendingDeposits() external view returns (uint256) {
        return asyncDepositStorage.totalPendingDeposits;
    }

    /// @inheritdoc IAsyncDeposit
    function minDepositAmount() public view returns (uint128) {
        return asyncDepositStorage.minDepositAmount;
    }

    /// @inheritdoc IAsyncDeposit
    function maxDepositAmount() public view returns (uint128) {
        return asyncDepositStorage.maxDepositAmount;
    }

    /// @dev This function is included so that we can invoke it within this contract but maintain our desired
    /// inheritance pattern.
    function asset() public view virtual returns (ERC20);

    /// @inheritdoc IAsyncDeposit
    function getDepositRequest(
        DepositId id
    ) external view returns (DepositRequest memory) {
        return asyncDepositStorage.depositRequests[id];
    }

    /// @dev Creates a DepositRequest, transferring `amount` of `asset` into this contract and recording the desire for
    /// `minSharesOut`, which will be checked against on fulfillment.
    /// @dev Assumes that the depositor is the `msg.sender`.
    /// @dev Will revert if `amount` is outside of the min and max deposit request size limits.
    function _createDepositRequest(
        uint256 amount,
        uint256 minSharesOut,
        uint256 referralId
    ) internal returns (DepositId id) {
        require(amount >= asyncDepositStorage.minDepositAmount, Errors.DepositAmountTooLow());
        require(amount <= asyncDepositStorage.maxDepositAmount, Errors.DepositAmountTooHigh());

        id = asyncDepositStorage.nextDepositIdCounter;
        asyncDepositStorage.nextDepositIdCounter = asyncDepositStorage.nextDepositIdCounter.increment();
        asyncDepositStorage.totalPendingDeposits += amount;
        asyncDepositStorage.depositRequests[id] = DepositRequest({
            depositor: msg.sender, amount: amount, minSharesOut: minSharesOut, status: RequestStatus.PENDING
        });

        address(asset()).safeTransferFrom2(msg.sender, address(this), amount);
        emit Events.DepositRequested(id, msg.sender, amount, minSharesOut, referralId);
    }

    /// @dev Cancels the DepositRequest corresponding to `requestId`, returning the assets to the initiator of the
    /// request.
    /// @dev Does *NOT* perform access control checks. These are assumed to be implemented within any external function
    /// which invokes this internal function.
    function _cancelDepositRequest(
        DepositId requestId
    ) internal {
        DepositRequest storage request = asyncDepositStorage.depositRequests[requestId];
        require(request.status == RequestStatus.PENDING, Errors.DepositNotPending());
        // INVARIANT
        assert(asyncDepositStorage.totalPendingDeposits >= request.amount);

        request.status = RequestStatus.CANCELED;
        asyncDepositStorage.totalPendingDeposits -= request.amount;

        emit Events.DepositRequestCanceled(requestId, request.depositor);
        address(asset()).safeTransfer(request.depositor, request.amount);
    }

    /// @dev Does *NOT* perform access control checks. These are assumed to be implemented within any external function
    /// which invokes this internal function.
    function _setDepositAmountLimits(
        uint128 minAmount,
        uint128 maxAmount
    ) internal {
        require(minAmount <= maxAmount, Errors.InvalidDepositLimits());
        asyncDepositStorage.minDepositAmount = minAmount;
        asyncDepositStorage.maxDepositAmount = maxAmount;
        emit Events.DepositLimitsSet(minAmount, maxAmount);
    }

    /// @dev Marks the request fulfilled, decrements the pending tally, enforces `minSharesOut`, and delegates the
    /// integration-specific share minting / asset hand-off to `_onFulfillDeposit`.
    /// @dev Does *NOT* perform access control or exchange-rate validation. These are assumed to be implemented in the
    /// external caller.
    function _fulfillDepositRequest(
        DepositId requestId,
        uint256 sharesToMint
    ) internal {
        DepositRequest storage request = asyncDepositStorage.depositRequests[requestId];
        address depositor = request.depositor;
        uint256 amount = request.amount;

        request.status = RequestStatus.FULFILLED;
        asyncDepositStorage.totalPendingDeposits -= amount;

        require(sharesToMint >= request.minSharesOut, Errors.InsufficientSharesOut());
        _onFulfillDeposit(depositor, amount, sharesToMint);
        emit Events.DepositFulfilled(requestId, depositor, amount, sharesToMint);
    }

    /// @dev Hook invoked from `_fulfillDepositRequest` to perform the integration-specific portion of fulfillment
    /// (e.g., minting shares from the vault and forwarding the deposited assets).
    function _onFulfillDeposit(
        address depositor,
        uint256 amount,
        uint256 sharesToMint
    ) internal virtual;

    function _depositor(
        DepositId id
    ) internal view returns (address) {
        return asyncDepositStorage.depositRequests[id].depositor;
    }

    function _depositRequest(
        DepositId id
    ) internal view returns (DepositRequest storage) {
        return asyncDepositStorage.depositRequests[id];
    }

    function _totalPendingDeposits() internal view returns (uint256) {
        return asyncDepositStorage.totalPendingDeposits;
    }
}
