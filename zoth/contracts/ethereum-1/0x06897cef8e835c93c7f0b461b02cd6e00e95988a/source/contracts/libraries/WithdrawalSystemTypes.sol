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
     * PENDING -> IN_QUEUE -> PROCESSING -> READY -> COMPLETED
     *                    -> EXPIRED
     *                    -> FAILED
     */
    enum RequestStatus {
        PENDING, // Initial request received
        IN_QUEUE, // Validated and queued for processing
        PROCESSING, // Under active processing by operators
        READY, // Processed and ready for claim
        COMPLETED, // Successfully claimed by user
        FAILED, // Processing failed, needs review
        EXPIRED // Past claim window, needs resubmission
    }

    /**
     * @notice Configuration parameters for asset withdrawals
     * @dev Controls withdrawal behavior per asset
     * @param settlementTime Time required for withdrawal settlement (in seconds)
     * @param maxBatchSize Maximum requests per batch for gas optimization
     * @param isInstant Whether instant withdrawals are allowed
     * @param dailyLimit Maximum daily withdrawal amount (in asset's smallest unit)
     */
    struct AssetConfig {
        uint256 settlementTime;
        uint256 maxBatchSize;
        bool isInstant;
        uint256 dailyLimit;
    }

    /**
     * @notice Information about a withdrawal request
     * @dev Stores all relevant data for a withdrawal
     * @param requestId Unique identifier for the request
     * @param user Address of the requesting user
     * @param asset Contract address of the asset to withdraw
     * @param amount Amount requested (in asset's smallest unit)
     * @param timestamp Request creation time
     * @param status Current status of the request
     * @param nftTokenId Associated deposit NFT ID
     * @param subVault Source subvault address
     * @param expiryTime Time when request expires
     * @param isStable Whether the asset is a stablecoin
     */
    struct WithdrawalRequest {
        uint256 requestId;
        address user;
        address asset;
        uint256 amount;
        uint256 timestamp;
        RequestStatus status;
        uint256 nftTokenId;
        address subVault;
        uint256 expiryTime;
        bool isStable;
    }

    /**
     * @notice Information about a withdrawal request
     * @dev Stores all relevant data for a withdrawal
     * @param requestId Unique identifier for the request
     * @param user Address of the requesting user
     * @param asset Contract address of the asset to withdraw
     * @param amount Amount requested (in asset's smallest unit)
     * @param timestamp Request creation time
     * @param status Current status of the request
     * @param nftTokenId Associated deposit NFT ID
     * @param subVault Source subvault address
     * @param expiryTime Time when request expires
     * @param isStable Whether the asset is a stablecoin
     */
    struct WithdrawalRequestUpdate {
        uint256 requestId;
        bool updateAsset;
        address asset;
        bool updateAmount;
        uint256 amount;
    }

    /**
     * @notice Information about a batch of withdrawals
     * @dev Used for batch processing operations
     * @param subVault Address of the subvault to process from
     * @param asset Address of the asset being processed
     * @param totalAmount Total amount in the batch
     * @param requestIds Array of request IDs in the batch
     */
    struct BatchProcessInfo {
        address subVault;
        address asset;
        uint256 totalAmount;
        uint256[] requestIds;
    }
}
