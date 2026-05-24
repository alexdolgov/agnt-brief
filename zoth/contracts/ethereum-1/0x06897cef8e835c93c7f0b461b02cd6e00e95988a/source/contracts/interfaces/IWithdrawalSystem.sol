// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../events/IWithdrawalSystemEvents.sol';
import '../errors/IWithdrawalSystemErrors.sol';
import '../libraries/WithdrawalSystemTypes.sol';
import '../libraries/DataTypes.sol';

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
     * @param amount Amount of asset to withdraw
     * @param metadata Original deposit metadata associated with the NFT
     * @return requestId Unique identifier for the withdrawal request
     * @custom:security Requires NFT ownership verification
     * @custom:emits WithdrawalRequested
     */
    function initiateWithdrawal(
        uint256 nftTokenId,
        address user,
        uint256 amount,
        DataTypes.DepositMetadata calldata metadata
    ) external returns (uint256 requestId);

    /**
     * @notice Processes a batch of pending withdrawal requests
     * @dev Groups and processes requests by asset and subvault
     * @custom:security Only callable by authorized operators
     * @custom:emits WithdrawalProcessed for each request
     */
    function processBatch() external;

    /**
     * @notice Claims a processed withdrawal
     * @param requestId ID of the withdrawal request to claim
     * @custom:security Only callable by request owner when status is READY
     * @custom:emits WithdrawalClaimed
     */
    function claimWithdrawal(uint256 requestId) external;

    /**
     * @notice Sets configuration for an asset's withdrawal parameters
     * @param asset Address of the asset to configure
     * @param config New configuration parameters for the asset
     * @custom:security Only callable by admin
     */
    function setAssetConfig(
        address asset,
        WithdrawalSystemTypes.AssetConfig calldata config
    ) external;

    /**
     * @notice Gets groups of requests ready for processing
     * @return subVaults Array of subvault addresses
     * @return assets Array of asset addresses
     * @return totalAmounts Array of total amounts per group
     * @return availableBalances Array of available balances per group
     * @dev Used to determine which requests can be processed
     */
    function getProcessableGroups()
        external
        view
        returns (
            address[] memory subVaults,
            address[] memory assets,
            uint256[] memory totalAmounts,
            uint256[] memory availableBalances
        );

    /**
     * @notice Checks if a withdrawal request is ready for claiming
     * @param requestId ID of the withdrawal request to check
     * @return isClaimable Whether the request can be claimed
     * @return status Current status of the request
     * @return expiryTime Timestamp when request expires
     */
    function isRequestClaimable(
        uint256 requestId
    )
        external
        view
        returns (bool isClaimable, WithdrawalSystemTypes.RequestStatus status, uint256 expiryTime);

    /**
     * @notice Processes a specific withdrawal request
     * @param requestId ID of the request to process
     */
    function processRequest(uint256 requestId) external;

    /**
     * @notice Gets all withdrawal requests for a user
     * @param user Address of the user
     * @return requestIds Array of request IDs belonging to the user
     * @return requests Array of corresponding request details
     */
    function getUserRequests(
        address user
    )
        external
        view
        returns (
            uint256[] memory requestIds,
            WithdrawalSystemTypes.WithdrawalRequest[] memory requests
        );

    /**
     * @notice Gets all active withdrawal requests for a user
     * @param user Address of the user
     * @return requestIds Array of active request IDs
     * @return requests Array of corresponding request details
     * @dev Returns only IN_QUEUE and READY requests that haven't expired
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
}
