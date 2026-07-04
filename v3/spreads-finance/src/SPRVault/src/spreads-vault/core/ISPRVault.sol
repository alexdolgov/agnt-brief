// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.29;

import {WithdrawalRequest} from "@src/spreads-vault/structs/WithdrawalRequest.sol";

interface ISPRVault {
    /**
     * @dev Deposit collateral and receive shares based on the current exchange rate.
     * @param _amount The amount of collateral to deposit.
     * Emits a {DepositV2} event.
     */
    function deposit(uint256 _amount) external;

    /**
     * @dev Withdraw shares for collateral based on the current exchange rate.
     * If vault has sufficient balance, immediate withdrawal occurs.
     * Otherwise, a withdrawal request is queued for later allocation.
     * @param _shareAmount The amount of shares to withdraw.
     * Emits either {WithdrawV2} or {WithdrawalQueued} event.
     */
    function withdraw(uint256 _shareAmount) external;

    /**
     * @dev Claim allocated collateral from processed withdrawal requests.
     * Emits a {WithdrawalClaimed} event.
     */
    function claim() external;

    /**
     * @dev Cancel a pending withdrawal request.
     * @param _requestId The ID of the withdrawal request to cancel.
     * Emits a {WithdrawalCancelled} event.
     */
    function cancelWithdrawalRequest(uint256 _requestId) external;

    /**
     * @dev Process pending withdrawal requests in the queue.
     * Allocates collateral to as many requests as possible with available vault balance.
     * Users must then call claim() to receive their allocated funds.
     * Emits {WithdrawalAllocated} events for each processed request.
     * Emits a {QueueProcessed} event at the end.
     */
    function processWithdrawalQueue(uint256 _maxRequests) external;

    /**
     * @dev Get pending withdrawal requests for a specific user.
     * @param _user The address of the user.
     * @return Array of withdrawal requests for the user.
     */
    function getUserWithdrawalRequests(address _user) external view returns (WithdrawalRequest[] memory);

    /**
     * @dev Get all pending withdrawal requests in the queue.
     * @return Array of all withdrawal requests.
     */
    function getAllWithdrawalRequests() external view returns (WithdrawalRequest[] memory);

    /**
     * @dev Get the current exchange rate.
     * @return rate The current exchange rate.
     * @return lastUpdated Timestamp of last update.
     */
    function getExchangeRate() external view returns (uint256 rate, uint256 lastUpdated);

    /**
     * @dev Calculate shares to mint for a given collateral amount.
     * @param _collateralAmount The amount of collateral.
     * @return shareAmount The amount of shares to mint (before fees).
     * @return fee The deposit fee amount.
     * @return netShares The net shares after fees.
     */
    function calculateDeposit(uint256 _collateralAmount)
        external
        view
        returns (uint256 shareAmount, uint256 fee, uint256 netShares);

    /**
     * @dev Calculate collateral to return for a given share amount.
     * @param _shareAmount The amount of shares.
     * @return collateralAmount The amount of collateral (before fees).
     * @return fee The withdrawal fee amount.
     * @return netCollateral The net collateral after fees.
     */
    function calculateWithdrawal(uint256 _shareAmount)
        external
        view
        returns (uint256 collateralAmount, uint256 fee, uint256 netCollateral);

    /**
     * @dev Get the available collateral balance in the vault.
     * @return balance The available collateral balance.
     */
    function getAvailableBalance() external view returns (uint256 balance);

    /**
     * @dev Get the total number of pending withdrawal requests.
     * @return count The number of pending requests.
     */
    function getPendingWithdrawalCount() external view returns (uint256 count);

    /**
     * @dev Get the claimable collateral balance for a user.
     * @param _user The address of the user.
     * @return amount The claimable collateral amount.
     */
    function getClaimableBalance(address _user) external view returns (uint256 amount);

    /**
     * @dev Get the share token address.
     * @return The address of the share token contract.
     */
    function getSPRToken() external view returns (address);

    function getMinimumDepositAmount() external view returns (uint256 minimumDeposit);

    /**
     * @dev Set the queue paused state.
     * @param _paused Whether to pause the queue.
     */
    function setQueuePaused(bool _paused) external;

    /**
     * @dev Get the current queue paused state.
     * @return Whether the queue is paused.
     */
    function isQueuePaused() external view returns (bool);

    // /**
    //  * @dev Transfer collateral for rebalancing purposes (WaterfallAccounting only).
    //  * @param _recipient The address to transfer collateral to.
    //  * @param _amount The amount of collateral to transfer.
    //  */
    // function transferForRebalance(address _recipient, uint256 _amount) external;
}
