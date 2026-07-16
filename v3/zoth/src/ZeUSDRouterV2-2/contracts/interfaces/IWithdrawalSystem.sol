// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import './events/IWithdrawalSystemEvents.sol';
import './errors/IWithdrawalSystemErrors.sol';
import '../libraries/DataTypes.sol';
import '../libraries/WithdrawalSystemTypes.sol';

/**
 * @title Withdrawal System Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for managing withdrawal requests and processing in the ZeUSD protocol
 * @dev Handles the complete lifecycle of withdrawal requests from initiation to claim
 */
interface IWithdrawalSystem is IWithdrawalSystemEvents, IWithdrawalSystemErrors {
    /**
     * @notice Initiates a withdrawal request for a deposit NFT
     * @param nftTokenId The ID of the deposit NFT to withdraw against
     * @param user Address of the user requesting withdrawal
     * @param metadata Original deposit metadata associated with the NFT
     * @custom:security Requires NFT ownership verification
     * @custom:emits WithdrawalInitiated
     */
    function initiateWithdrawal(
        uint256 nftTokenId,
        address user,
        DataTypes.DepositMetadata calldata metadata
    ) external;

    /**
     * @notice Processes a batch of pending withdrawal requests
     * @dev Groups and processes requests by asset and subvault
     * @param _amountTransferToVault Amount to transfer to vault
     * @custom:security Only callable by authorized operators
     * @custom:emits WithdrawalProcessed for each request
     */
    function processBatch(uint256 _amountTransferToVault) external;

    /**
     * @notice Processes a specific withdrawal request
     * @param requestId ID of the request to process
     */
    function processRequest(uint256 requestId) external;

    /**
     * @notice Updates an existing withdrawal request
     * @dev Only admin can update requests
     * @param update Struct containing update parameters
     * @custom:security Only callable by TREASURY_ROLE
     * @custom:emits RequestUpdated
     */
    function updateRequest(WithdrawalSystemTypes.WithdrawalRequestUpdate calldata update) external;

    /**
     * @notice Gets all active withdrawal requests for a user
     * @param user Address of the user
     * @return requestIds Array of active request IDs
     * @return requests Array of corresponding request details
     * @dev Returns only IN_QUEUE and PROCESSING requests
     */
    function getUserActiveRequests(
        address user
    )
        external
        view
        returns (
            uint256[] memory requestIds,
            WithdrawalSystemTypes.WithdrawalRequest[] memory requests
        );

    /**
     * @notice Public mapping of NFT token ID to withdrawal request details
     * @param nftTokenId ID of the NFT token representing the withdrawal
     * @return request Details of the withdrawal request
     */
    function withdrawalRequestsDetails(
        uint256 nftTokenId
    ) external view returns (WithdrawalSystemTypes.WithdrawalRequest memory);

    /**
     * @notice Emitted when a batch of requests is processed
     * @param count Number of requests processed in the batch
     */
    event BatchProcessed(uint256 count);
}
