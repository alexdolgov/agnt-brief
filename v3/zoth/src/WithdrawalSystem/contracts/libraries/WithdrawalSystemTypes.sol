// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

/**
 * @title Withdrawal System Types Library
 * @author ZeUSD Protocol Team
 * @notice Contains all type definitions used in the withdrawal system
 * @dev Central location for withdrawal-related data structures
 */
library WithdrawalSystemTypes {
    /**
     * @notice Status of a withdrawal request
     * @dev Represents the lifecycle states of a withdrawal
     * State transitions:
     * NONE -> PENDING -> IN_QUEUE -> PROCESSING -> COMPLETED
     *                              -> EXPIRED
     *                              -> FAILED
     */
    enum RequestStatus {
        NONE, // Uninitialized/non-existent request (default value)
        PENDING, // Initial request received
        IN_QUEUE, // Validated and queued for processing
        PROCESSING, // Under active processing by operators
        COMPLETED, // Successfully claimed by user
        FAILED, // Processing failed, needs review
        EXPIRED // Past claim window, needs resubmission
    }

    /**
     * @notice Information about a withdrawal request
     * @dev Stores all relevant data for a withdrawal
     * @param nftTokenId Unique identifier for the request
     * @param user Address of the requesting user
     * @param assetAddress Contract address of the asset to withdraw
     * @param assetAmount Amount requested (in asset's smallest unit)
     * @param rwaAmount Amount requested (in RWA's smallest unit)
     * @param timestamp Request creation time
     * @param status Current status of the request
     * @param nftTokenId Associated deposit NFT ID
     * @param subVault Source subvault address
     */
    struct WithdrawalRequest {
        uint256 nftTokenId;
        address user;
        address assetAddress;
        address subVault;
        address rwa;
        uint256 assetAmount;
        uint256 rwaAmount;
        uint256 timestamp;
        RequestStatus status;
    }
    /**
     * @notice Information about a withdrawal request update
     * @dev Stores fields that can be updated for a withdrawal request
     * @param updateAsset Whether to update the asset address
     * @param updateAmount Whether to update the amount
     * @param asset New asset address (if updateAsset is true)
     * @param nftTokenId Identifier of the withdrawal request to update
     * @param amount New amount in asset's smallest unit (if updateAmount is true)
     */
    struct WithdrawalRequestUpdate {
        bool updateAsset;
        bool updateAmount;
        address asset;
        uint256 nftTokenId;
        uint256 amount;
    }
}
