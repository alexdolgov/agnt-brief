// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

enum RequestStatus {
    Pending,
    Processed,
    Canceled
}

/**
 * @notice Redeem request scruct
 * @param sender user address who create
 * @param tokenOut tokenOut address
 * @param status request status
 * @param amountMToken amount mToken
 * @param mTokenRate rate of mToken at request creation time
 * @param tokenOutRate rate of tokenOut at request creation time
 */
struct Request {
    address sender;
    address tokenOut;
    RequestStatus status;
    uint256 amountMToken;
    uint256 mTokenRate;
    uint256 tokenOutRate;
}

/**
 * @title IRedemptionVault
 * @author RedDuck Software
 */
interface IRedemptionVault {
    function redeemRequests(uint256 id) external view returns (Request memory);

    /**
     * @notice redeem mToken to tokenOut if daily limit and allowance not exceeded
     * Burns mTBILL from the user.
     * Transfers fee in mToken to feeReceiver
     * Transfers tokenOut to user.
     * @param tokenOut stable coin token address to redeem to
     * @param amountMTokenIn amount of mTBILL to redeem (decimals 18)
     * @param minReceiveAmount minimum expected amount of tokenOut to receive (decimals 18)
     */
    function redeemInstant(address tokenOut, uint256 amountMTokenIn, uint256 minReceiveAmount) external;

    /**
     * @notice creating redeem request if tokenOut not fiat
     * Transfers amount in mToken to contract
     * Transfers fee in mToken to feeReceiver
     * @param tokenOut stable coin token address to redeem to
     * @param amountMTokenIn amount of mToken to redeem (decimals 18)
     * @return request id
     */
    function redeemRequest(address tokenOut, uint256 amountMTokenIn) external returns (uint256);

    /**
     * @notice creating redeem request if tokenOut is fiat
     * Transfers amount in mToken to contract
     * Transfers fee in mToken to feeReceiver
     * @param amountMTokenIn amount of mToken to redeem (decimals 18)
     * @return request id
     */
    function redeemFiatRequest(uint256 amountMTokenIn) external returns (uint256);

    /**
     * @notice approving redeem request if not exceed tokenOut allowance
     * Burns amount mToken from contract
     * Transfers tokenOut to user
     * Sets flag Processed
     * @param requestId request id
     * @param newMTokenRate new mToken rate inputted by vault admin
     */
    function approveRequest(uint256 requestId, uint256 newMTokenRate) external;

    /**
     * @notice approving request if inputted token rate fit price diviation percent
     * Burns amount mToken from contract
     * Transfers tokenOut to user
     * Sets flag Processed
     * @param requestId request id
     * @param newMTokenRate new mToken rate inputted by vault admin
     */
    function safeApproveRequest(uint256 requestId, uint256 newMTokenRate) external;

    /**
     * @notice rejecting request
     * Sets request flag to Canceled.
     * @param requestId request id
     */
    function rejectRequest(uint256 requestId) external;
}
