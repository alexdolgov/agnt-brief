// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {IExchange} from "./IExchange.sol";
import {IQueuedRequestsV2 as IQRV2} from "./IQueuedRequestsV2.sol";

interface IRouterV2 {
    enum EventType {
        NewQueuedRequest, // REMOVE
        Deposited, // bytes args -> address account,address token, uint256 tokenAmount, uint256 chainId
        QueuedRequestAccepted, // REMOVE
        QueuedRequestDeclined, // REMOVE
        QueuedRequestFailed, // REMOVE
        OrderEnqueue, // REMOVE
        OrderDequeue, // REMOVE
        MarketOrderDeleted, // REMOVE
        AddLimitOrder, // REMOVE
        ExecuteLimitOrder, // REMOVE
        OrderExecutionFailed, // REMOVE
        ExecuteLiqBatchFailed, // REMOVE
        ExecuteLiqBatchSuccess, // REMOVE
        InsuranceDeposited, // bytes args -> address account, address collateralToken, uint256 tokenAmount
        RequestsExecuted, // bytes args -> (bytes32[] executedRequestsIds, bytes32 indexed errorRequestId, ErrorRequestType errorRequestType, bytes reason)
        RequestCanceled, // bytes args -> bytes32 cancelledRequestHash
        AccountLinked, // bytes args -> (address linkedAddress, address ownerAddress)
        AccountUnlinked, // bytes args -> (address linkedAddress, address ownerAddress)
        Liquidation, // bytes args -> (address userAddress, bytes32 underling, uint256 liquidationSize, uint256 liquidationTime)
        Processing // bytes -> (address account, uinbt256 nonce, bytes32 requestHash, RequestType requestType, bytes requestArgs)
    }

    enum ErrorRequestType {
        NoError, // Default value
        Internal, // bytes -> [RouterErrors errorEnum, bytes args]
        Error, // bytes reason -> string
        Panic, // bytes code -> uint256
        Low // bytes lowLevelData
    }

    enum RouterErrors {
        AlreadyCompleted,
        CancelledRequestInvalidSignature,
        CannotIncreasePositionWhileInsolvent,
        InsufficientBalance,
        InvalidOrder,
        InvalidOrderAccount,
        InvalidSignature,
        InvalidSignerAccount,
        OrderSizeDeltaCannotBeEmpty,
        NotTradeableOrPausedMarket,
        NotOwnerOfLinkedAccount,
        WrongSizeDelta,
        InvalidRequestType,
        ExpiredSignerAccount
    }

    struct Order {
        bool limitOrder;
        address account;
        bytes32 underlying;
        int256 sizeDelta;
        int256 limitPrice;
        uint8 slTpType; // 0: None, 1: Stop loss, 2: Take profit
    }

    /**
     * EVENTS *
     */

    event ContractEvent(EventType indexed eventName, bytes args);

    event AllowExternalWithdrawSet(bool allowExternalWithdraw);

    /**
     * ERRORS *
     */
    error ZeroAddressSet();
    error NotOwnerOfLinkedAccount(address abstractAccountAddress, address ownerAddress);
    error LiquidationFailed(bytes32 failedOrderId, ErrorRequestType errorRequestType, bytes errorRequestData);
    error InvalidRequestType();
    error InvalidDepositRequest(bytes32 depositRequestId, ErrorRequestType errorRequestType, bytes errorRequestData);
    error AlreadyCompleted(bytes32 requestHash);
    error InvalidSignerAccount(bytes32 requestHash);
    error ExpiredSignerAccount(bytes32 requestHash);
    error InvalidSignature(bytes32 requestHash);
    error InvalidProofSignature(bytes32 requestHash);
    error InvalidIsolateAccount(bytes32 requestHash);
    error InvalidIsolateProofSigner(bytes32 requestHash);
    error InvalidIsolateProofSignature(bytes32 requestHash);
    error InvalidProofArgLength(bytes32 requestHash);
    error NotAllowedWithdraw(bytes32 requestHash);
    error AccountAndRecipientMismatch(bytes32 requestHash);

    /**
     * @notice Pauses the Router contract.
     * @dev This function can only be called by an account with the EXCHANGE_ROLE.
     * Emits a {Paused} event.
     */
    function pauseRouter() external;

    /**
     * @notice to generage event on router, so we don't have to listen to exchange
     * @dev This function can only be called by an account with the EXCHANGE_ROLE.
     * @param eventType see IRouter EventType for details
     * @param args encoded packets variables of the event
     * Emits an {ContractEvent} event.
     */
    function generateRouterEvent(EventType eventType, bytes memory args) external;

    /**
     * @notice Unpauses the Router contract.
     * @dev This function can only be called by an account with the EXCHANGE_ROLE.
     * Emits an {Unpaused} event.
     */
    function unpauseRouter() external;

    function processQueuedRequestsV2(
        IQRV2.MultiTypeRequestV3[] memory mtRequests,
        IExchange.StateUpdate[] memory stateVariablesToUpdate
    ) external;
}
