// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

import {WithdrawalRequest} from "../structs/SprBTCStructs.sol";

interface ISprBTCVault {
    // ==================== DEPOSIT ====================

    /// @notice Deposit wBTC and receive sprBTC shares
    /// @param wbtcAmount Amount of wBTC to deposit (8 decimals)
    /// @return shares Amount of sprBTC shares minted (18 decimals)
    function deposit(uint256 wbtcAmount) external returns (uint256 shares);

    // ==================== WITHDRAWAL ====================

    /// @notice Request withdrawal by burning sprBTC shares
    /// @param shareAmount Amount of sprBTC shares to burn
    /// @return requestId The ID of the withdrawal request
    function withdraw(uint256 shareAmount) external returns (uint256 requestId);

    /// @notice Cancel a pending withdrawal request
    /// @param requestId The ID of the request to cancel
    function cancelWithdrawalRequest(uint256 requestId) external;

    /// @notice Process pending withdrawal requests (operator only)
    /// @dev Allocates funds to users, who must then call claim() to receive them
    /// @param maxRequests Maximum number of requests to process
    function processWithdrawalQueue(uint256 maxRequests) external;

    /// @notice Claim allocated wBTC after withdrawal request has been processed
    /// @dev User must have a non-zero allocated balance
    function claim() external;

    // ==================== REWARDS ====================

    /// @notice Distribute wBTC rewards to the vault (increases price per share)
    /// @param wbtcAmount Amount of wBTC rewards to distribute
    function distributeRewards(uint256 wbtcAmount) external;

    // ==================== VIEW FUNCTIONS ====================

    /// @notice Get total wBTC assets in the vault
    function totalAssets() external view returns (uint256);

    /// @notice Get current price per share (18 decimals precision)
    function pricePerShare() external view returns (uint256);

    /// @notice Convert wBTC amount to shares
    function convertToShares(uint256 wbtcAmount) external view returns (uint256);

    /// @notice Convert shares to wBTC amount
    function convertToAssets(uint256 shares) external view returns (uint256);

    /// @notice Get user's withdrawal requests
    function getUserWithdrawalRequests(address user) external view returns (WithdrawalRequest[] memory);

    /// @notice Get all pending withdrawal requests
    function getAllPendingRequests() external view returns (WithdrawalRequest[] memory);

    /// @notice Get pending withdrawal count
    function getPendingWithdrawalCount() external view returns (uint256);

    /// @notice Get available balance for withdrawals (excluding already allocated funds)
    function getAvailableBalance() external view returns (uint256);

    /// @notice Get allocated balance for a user (claimable wBTC)
    function getAllocatedBalance(address user) external view returns (uint256);

    /// @notice Get total allocated balance across all users
    function getTotalAllocatedBalance() external view returns (uint256);

    /// @notice Check if queue is paused
    function isQueuePaused() external view returns (bool);

    /// @notice Check if emergency paused
    function isEmergencyPaused() external view returns (bool);

    /// @notice Check if the withdrawal queue can be processed
    /// @return canProcess True if there are pending requests and sufficient balance for at least one
    /// @return pendingCount Number of pending withdrawal requests
    /// @return availableBalance Current wBTC balance available for withdrawals
    /// @return nextRequestWbtcAmount wBTC amount needed for the next processable request (0 if none)
    function canProcessQueue()
        external
        view
        returns (bool canProcess, uint256 pendingCount, uint256 availableBalance, uint256 nextRequestWbtcAmount);

    /// @notice Estimate how many requests can be processed with current balance
    /// @return processableCount Number of requests that can be processed with current balance
    /// @return totalWbtcNeeded Total wBTC needed to process all pending requests
    /// @return totalWbtcForProcessable Total wBTC needed for the processable requests only
    function estimateProcessableRequests()
        external
        view
        returns (uint256 processableCount, uint256 totalWbtcNeeded, uint256 totalWbtcForProcessable);
}
