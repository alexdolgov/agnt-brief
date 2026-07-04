// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface IDepositVault {
    /**
     * @notice depositing proccess with auto mint if
     * account fit daily limit and token allowance.
     * Transfers token from the user.
     * Transfers fee in tokenIn to feeReceiver.
     * Mints mToken to user.
     * @param tokenIn address of tokenIn
     * @param amountToken amount of `tokenIn` that will be taken from user (decimals 18)
     * @param minReceiveAmount minimum expected amount of mToken to receive (decimals 18)
     * @param referrerId referrer id
     */
    function depositInstant(
        address tokenIn,
        uint256 amountToken,
        uint256 minReceiveAmount,
        bytes32 referrerId
    ) external;

    /**
     * @notice depositing proccess with mint request creating if
     * account fit token allowance.
     * Transfers token from the user.
     * Transfers fee in tokenIn to feeReceiver.
     * Creates mint request.
     * @param tokenIn address of tokenIn
     * @param amountToken amount of `tokenIn` that will be taken from user (decimals 18)
     * @param referrerId referrer id
     * @return request id
     */
    function depositRequest(
        address tokenIn,
        uint256 amountToken,
        bytes32 referrerId
    ) external returns (uint256);

    /**
     * @notice approving request if inputted token rate fit price diviation percent
     * Mints mToken to user.
     * Sets request flag to Processed.
     * @param requestId request id
     * @param newOutRate mToken rate inputted by vault admin
     */
    function safeApproveRequest(uint256 requestId, uint256 newOutRate) external;

    /**
     * @notice approving request without price diviation check
     * Mints mToken to user.
     * Sets request flag to Processed.
     * @param requestId request id
     * @param newOutRate mToken rate inputted by vault admin
     */
    function approveRequest(uint256 requestId, uint256 newOutRate) external;

    /**
     * @notice rejecting request
     * Sets request flag to Canceled.
     * @param requestId request id
     */
    function rejectRequest(uint256 requestId) external;

    /**
     * @notice sets new minimal amount to deposit in EUR.
     * can be called only from vault`s admin
     * @param newValue new min. deposit value
     */
    function setMinMTokenAmountForFirstDeposit(uint256 newValue) external;
}