// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.29;

import {ReceiptTokens} from "@src/spreads-vault/structs/ReceiptTokens.sol";

interface IVaultManagerRepository {
    /**
     * @dev Set the collateral token for the vault.
     * @param _token The address of the collateral token.
     */
    function setCollateralToken(address _token) external;

    /**
     * @dev Set the receipt tokens for the vault that will be minted at deposit.
     * @param _tokens An array of addresses of the receipt tokens.
     */
    function setReceiptTokens(ReceiptTokens[] memory _tokens) external;

    /**
     * @dev Set the deposit fee factor for the vault.
     * @param _depositFeeFactor The deposit fee factor(PRECISION).
     */
    function setDepositFeeFactor(uint256 _depositFeeFactor) external;

    /**
     * @dev Set the withdrawal fee factor for the vault.
     * @param _withdrawalFeeFactor The withdrawal fee factor(PRECISION).
     */
    function setWithdrawalFeeFactor(uint256 _withdrawalFeeFactor) external;

    /**
     * @dev Set the minimum deposit amount for the vault.
     * @param _minimumDepositAmount The minimum deposit amount.
     */
    function setMinimumDepositAmount(uint256 _minimumDepositAmount) external;

    /**
     * @dev Set the minimum withdrawal amount for the vault.
     * @param _minimumWithdrawalAmount The minimum withdrawal amount.
     */
    function setMinimumWithdrawalAmount(uint256 _minimumWithdrawalAmount) external;

    /**
     * @dev Set the desired token for fees for swap.
     * @param _feesDesiredToken The address of the desired token for fees.
     */
    function setFeesDesiredToken(address _feesDesiredToken) external;

    /**
     * @dev Get the collateral token for the vault.
     * @return The address of the collateral token.
     */
    function getCollateralToken() external view returns (address);

    /**
     * @dev Get the receipt tokens for the vault that will be minted at deposit.
     * @return An array of addresses of the receipt tokens.
     */
    function getReceiptTokens() external view returns (ReceiptTokens[] memory);

    /**
     * @dev Get the receipt tokens list for the vault.
     * @return An array of addresses of the receipt tokens.
     */
    function getReceiptTokensAddresses() external view returns (address[] memory);

    /**
     * @dev Get the deposit fee factor for the vault.
     * @return The deposit fee factor(PRECISION).
     */
    function getDepositFeeFactor() external view returns (uint256);

    /**
     * @dev Get the withdrawal fee factor for the vault.
     * @return The withdrawal fee factor(PRECISION).
     */
    function getWithdrawalFeeFactor() external view returns (uint256);

    /**
     * @dev Get the minimum deposit amount for the vault.
     * @return The minimum deposit amount.
     */
    function getMinimumDepositAmount() external view returns (uint256);

    /**
     * @dev Get the minimum withdrawal amount for the vault.
     * @return The minimum withdrawal amount.
     */
    function getMinimumWithdrawalAmount() external view returns (uint256);

    /**
     * @dev Get the address of the desired token for fees.
     * @return The address of the desired token for fees.
     */
    function getFeesDesiredToken() external view returns (address);

    /**
     * @dev Set the cancellation fee factor for withdrawal requests.
     */
    function getCancellationFeeFactor() external view returns (uint256);

    /**
     * @dev Get the cancellation fee factor for withdrawal requests.
     * @param _cancellationFeeFactor The cancellation fee factor (PRECISION).
     */
    function setCancellationFeeFactor(uint256 _cancellationFeeFactor) external;

    //****------------------- AirDropVault Parameters -------------------****//
    /**
     * @dev Set the maximum lock duration for the vault.
     * @param _weeks The maximum lock duration in weeks.
     */
    function setMaxLockDuration(uint256 _weeks) external;

    /**
     * @dev Set the minimum lock duration for the vault.
     * @param _weeks The minimum lock duration in weeks.
     */
    function setMinLockDuration(uint256 _weeks) external;

    /**
     * @dev Set the daily point emission for the vault.
     * @param _points The daily point emission.
     */
    function setDailyPointEmission(uint256 _points) external;

    /**
     * @dev Set the points distributor for the vault.
     * @param _distributor The address of the points distributor.
     */
    function setPointsDistributor(address _distributor) external;

    /**
     * @dev Set the minimum lock amount for the vault.
     * @param _amount The minimum lock amount.
     */
    function setMinimumLockAmount(uint256 _amount) external;

    /**
     * @dev Set the early unlock penalty rate for the vault.
     * @param _rate The early unlock penalty rate.
     */
    function setEarlyUnlockPenaltyRate(uint256 _rate) external;

    /**
     * @dev Get the maximum lock duration for the vault.
     * @return The maximum lock duration in weeks.
     */
    function getMaxLockDuration() external view returns (uint256);

    /**
     * @dev Get the minimum lock duration for the vault.
     * @return The minimum lock duration in weeks.
     */
    function getMinLockDuration() external view returns (uint256);

    /**
     * @dev Get the daily point emission for the vault.
     * @return The daily point emission.
     */
    function getDailyPointEmission() external view returns (uint256);
    /**
     * @dev Get the points distributor for the vault.
     * @return The address of the points distributor.
     */
    function getPointsDistributor() external view returns (address);
    /**
     * @dev Get the minimum lock amount for the vault.
     * @return The minimum lock amount.
     */
    function getMinimumLockAmount() external view returns (uint256);
    /**
     * @dev Get the early unlock penalty rate for the vault.
     * @return The early unlock penalty rate.
     */
    function getEarlyUnlockPenaltyRate() external view returns (uint256);

    // ==================== SPR TOKEN ====================

    /**
     * @dev Set the SPR token address
     * @param _sprToken The address of the SPR token
     */
    function setSPRToken(address _sprToken) external;

    /**
     * @dev Get the SPR token address
     * @return The address of the SPR token
     */
    function getSPRToken() external view returns (address);

    // ==================== REWARD DISTRIBUTORS ====================

    /**
     * @dev Set the reward distributor for FarmVault
     * @param _distributor The address of the reward distributor
     */
    function setFarmVaultRewardDistributor(address _distributor) external;

    /**
     * @dev Get the reward distributor for FarmVault
     * @return The address of the reward distributor
     */
    function getFarmVaultRewardDistributor() external view returns (address);

    /**
     * @dev Set the reward distributor for AirdropVault
     * @param _distributor The address of the reward distributor
     */
    function setAirdropVaultRewardDistributor(address _distributor) external;

    /**
     * @dev Get the reward distributor for AirdropVault
     * @return The address of the reward distributor
     */
    function getAirdropVaultRewardDistributor() external view returns (address);

    function setCustodian(address _custodian) external;

    function getCustodian() external view returns (address);

    // ==================== DEPLOYMENT CONFIGURATION ====================

    /// @notice Set waterfall base APR
    function setWaterfallBaseAPR(uint256 _baseAPR) external;

    /// @notice Get waterfall base APR
    function getWaterfallBaseAPR() external view returns (uint256);

    /// @notice Set waterfall cap ratio
    function setWaterfallCapRatio(uint256 _capRatio) external;

    /// @notice Get waterfall cap ratio
    function getWaterfallCapRatio() external view returns (uint256);

    /// @notice Set initial exchange rate
    function setInitialExchangeRate(uint256 _rate) external;

    /// @notice Get initial exchange rate
    function getInitialExchangeRate() external view returns (uint256);

    /// @notice Set farm vault fee rate
    function setFarmVaultFeeRate(uint256 _feeRate) external;

    /// @notice Get farm vault fee rate
    function getFarmVaultFeeRate() external view returns (uint256);

    // ==================== AIRDROP VAULT CONFIGURATION ====================

    /// @notice Set maximum locks per user
    function setMaxLocksPerUser(uint256 _maxLocks) external;

    /// @notice Get maximum locks per user
    function getMaxLocksPerUser() external view returns (uint256);

    /// @notice Set minimum lock weight
    function setMinLockWeight(uint256 _minWeight) external;

    /// @notice Get minimum lock weight
    function getMinLockWeight() external view returns (uint256);

    /// @notice Set maximum lock weight
    function setMaxLockWeight(uint256 _maxWeight) external;

    /// @notice Get maximum lock weight
    function getMaxLockWeight() external view returns (uint256);

    /// @notice Set optimal lock duration
    function setOptimalLockDuration(uint256 _weeks) external;

    /// @notice Get optimal lock duration
    function getOptimalLockDuration() external view returns (uint256);

    // ==================== QUEUE CONFIGURATION ====================

    /**
     * @dev Set the maximum queue size for the vault.
     * @param _maxQueueSize The maximum queue size.
     */
    function setMaxQueueSize(uint256 _maxQueueSize) external;

    /**
     * @dev Get the maximum queue size for the vault.
     * @return The maximum queue size.
     */
    function getMaxQueueSize() external view returns (uint256);

    // ==================== EXCHANGE RATE ====================

    /**
     * @dev Set the exchange rate for the vault.
     * @param _rate The exchange rate.
     * @param _timestamp The timestamp when the rate was set.
     */
    function setExchangeRate(uint256 _rate, uint256 _timestamp) external;

    /**
     * @dev Get the exchange rate for the vault.
     * @return rate The exchange rate.
     * @return lastUpdated The timestamp when the rate was last updated.
     */
    function getExchangeRate() external view returns (uint256 rate, uint256 lastUpdated);

    // ==================== SHARE TOKEN ====================

    /**
     * @dev Set the share token address
     * @param _shareToken The address of the share token
     */
    function setShareToken(address _shareToken) external;

    /**
     * @dev Get the share token address
     * @return The address of the share token
     */
    function getShareToken() external view returns (address);
}
