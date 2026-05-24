// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../libraries/WithdrawalSystemTypes.sol';

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
     * @param requestId Unique identifier for the withdrawal request
     * @param user Address of the user initiating the withdrawal
     * @param asset Contract address of the asset being withdrawn
     * @param amount Amount of asset requested for withdrawal
     * @param nftTokenId ID of the deposit NFT being used for withdrawal
     * @param isStable Boolean indicating if the asset is a stablecoin
     */
    event WithdrawalRequested(
        uint256 indexed requestId,
        address indexed user,
        address asset,
        uint256 amount,
        uint256 nftTokenId,
        bool isStable
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
     * @param requestId ID of the processed withdrawal request
     * @param user Address of the user receiving the withdrawal
     * @param amount Final amount processed for withdrawal
     */
    event WithdrawalProcessed(uint256 indexed requestId, address user, uint256 amount);

    /**
     * @notice Emitted when a withdrawal request enters the processing queue
     * @dev Used for tracking requests that are ready for batch processing
     * @param requestId ID of the queued withdrawal request
     */
    event WithdrawalQueued(uint256 indexed requestId);

    /**
     * @notice Emitted when an asset's withdrawal configuration is updated
     * @dev Used to track changes in asset-specific withdrawal parameters
     * @param asset Address of the asset whose configuration was updated
     * @param config New configuration parameters for the asset
     */
    event AssetConfigUpdated(address asset, WithdrawalSystemTypes.AssetConfig config);

    /**
     * @notice Emitted when the router address is set
     * @dev Used to track the router address
     * @param router Address of the router
     */
    event RouterSet(address indexed router);

    /**
     * @notice Emitted when router address is updated
     * @param newRouter Address of the new router
     * @dev Tracks router address changes
     */
    event RouterUpdated(address indexed newRouter);

    /**
     * @notice Emitted when the TBill subvault address is updated
     * @param newTBillSubVault Address of the new TBill subvault
     */
    event TBillSubVaultUpdated(address indexed newTBillSubVault);

    /**
     * @notice Emitted when the USYC subvault address is updated
     * @param newUSYCSubVault Address of the new USYC subvault
     */
    event USYCSubVaultUpdated(address indexed newUSYCSubVault);

    /**
     * @notice Emitted when the USDC address is updated
     * @param newUSDC Address of the new USDC address
     */
    event USDCUpdated(address indexed newUSDC);

    /**
     * @notice Emitted when a withdrawal request is updated
     * @dev Used to track updates to withdrawal requests
     * @param requestId ID of the withdrawal request being updated
     * @param asset Address of the asset being updated
     * @param amount New amount for the withdrawal request
     */
    event RequestUpdated(uint256 requestId, address asset, uint256 amount);
}
