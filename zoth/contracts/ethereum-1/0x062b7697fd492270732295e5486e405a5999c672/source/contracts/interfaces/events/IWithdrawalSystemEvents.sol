// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../../libraries/WithdrawalSystemTypes.sol';

/**
 * @title Withdrawal System Events Interface
 * @author ZeUSD Protocol Team
 * @notice Contains all events emitted by the Withdrawal System
 * @dev Events are used for tracking state changes and important operations in the withdrawal process
 */
interface IWithdrawalSystemEvents {
    /**
     * @notice Emitted when a new withdrawal request is created
     * @dev This event should be monitored for tracking new withdrawal requests
     * @param user Address of the user initiating the withdrawal
     * @param assetAddress Contract address of the asset being withdrawn
     * @param assetAmount Amount of asset requested for withdrawal
     * @param rwaAmount Amount of RWA requested for withdrawal
     * @param rwa Contract address of the RWA being withdrawn
     * @param nftTokenId ID of the deposit NFT being used for withdrawal
     */
    event WithdrawalInitiated(
        address indexed user,
        address assetAddress,
        uint256 assetAmount,
        uint256 rwaAmount,
        address rwa,
        uint256 nftTokenId
    );

    /**
     * @notice Emitted when a withdrawal request's status changes
     * @dev Used to track the lifecycle of withdrawal requests
     * @param requestId ID of the withdrawal request being updated
     * @param newStatus Updated status from WithdrawalSystemTypes.RequestStatus enum
     */
    event RequestStatusUpdated(
        uint256 indexed requestId,
        WithdrawalSystemTypes.RequestStatus newStatus
    );

    /**
     * @notice Emitted when a withdrawal request is successfully processed
     * @dev Indicates successful completion of withdrawal processing
     * @param user Address of the user receiving the withdrawal
     * @param asset Contract address of the asset being withdrawn
     * @param amount Final amount processed for withdrawal
     * @param nftTokenId ID of the deposit NFT being used for withdrawal
     */
    event WithdrawalCompleted(address user, address asset, uint256 amount, uint256 nftTokenId);

    /**
     * @notice Emitted when a withdrawal request enters the processing queue
     * @dev Used for tracking requests that are ready for batch processing
     * @param requestId ID of the queued withdrawal request
     */
    event WithdrawalQueued(uint256 indexed requestId);

    /**
     * @notice Emitted when the router address is set
     * @dev Used to track the router address
     * @param router Address of the router
     */
    event RouterSet(address indexed router);

    /**
     * @notice Emitted when a withdrawal request is updated
     * @dev Used to track updates to withdrawal requests
     * @param requestId ID of the withdrawal request being updated
     * @param asset Address of the asset being updated
     * @param amount New amount for the withdrawal request
     */
    event RequestUpdated(uint256 requestId, address asset, uint256 amount);

    /**
     * @notice Emitted when a withdrawal request is removed from the queue
     * @dev Used to track removal of requests from the queue
     * @param nftTokenId ID of the deposit NFT being removed from queue
     */
    event RequestRemovedFromQueue(uint256 indexed nftTokenId);
}
