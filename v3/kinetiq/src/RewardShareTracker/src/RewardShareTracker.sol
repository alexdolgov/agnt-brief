// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

/* ========== IMPORTS ========== */

import {
    AccessControlEnumerableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/extensions/AccessControlEnumerableUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

import {IRewardShareTracker} from "./interfaces/IRewardShareTracker.sol";
import {IStakingManager} from "./interfaces/IStakingManager.sol";
import {
    InvalidAddress,
    InvalidAmount,
    TransferFailed,
    OnlyStakingManager,
    AlreadyCompleted,
    NotMatured,
    InvalidPercentage
} from "./Errors.sol";

/* ========== CUSTOM ERRORS ========== */

error PercentageTooHigh();
error NoPendingDistributions();
error DistributionOutOfOrder();

/**
 * @title RewardShareTracker
 * @notice Manages the 10% reward share mechanism for the Kinetiq LST protocol
 * @dev Tracks reward distributions and splits 70% to Deployer (for KNTQ buybacks) and 30% to Treasury
 * @dev This contract receives HYPE from StakingAccountant when rewards are distributed
 */
contract RewardShareTracker is
    Initializable,
    AccessControlEnumerableUpgradeable,
    ReentrancyGuardUpgradeable,
    IRewardShareTracker
{
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    using Math for uint256;

    /* ========== STORAGE ========== */

    /// @dev Storage struct for RewardShareTracker
    struct RewardShareStorage {
        // Configuration
        uint256 rewardShareBps; // Percentage of rewards taken as share (default 10%)
        uint256 deployerSplitBps; // Percentage of share going to deployer (default 70%)
        // Wallet addresses
        address deployerWallet; // Receives 70% for KNTQ buybacks
        address treasuryWallet; // Receives 30% for operations
        // Authorized caller
        address stakingManager;
        // Cumulative tracking
        uint256 totalRewardShareDistributed;
        uint256 totalDeployerShareDistributed;
        uint256 totalTreasuryShareDistributed;
        // Per-validator cumulative reward share diverted (for oracle diff sync)
        mapping(address => uint256) validatorRewardShareDiverted;
        // Pending distributions tracking (FIFO queue)
        uint256 nextDistributionId;
        uint256 nextCompleteId; // FIFO head — next distribution to complete
        mapping(uint256 => IRewardShareTracker.PendingRewardDistribution) pendingDistributions;
    }

    /// @dev EIP-7201 namespaced storage position
    /// @dev keccak256(abi.encode(uint256(keccak256("kinetiq.storage.RewardShareTracker")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant REWARD_SHARE_STORAGE_LOCATION =
        0x380ec389e354e10af97f3b01597ab9eb7f98ece3f19c7ea2e3f56af99000f500;

    function _getRewardShareStorage() private pure returns (RewardShareStorage storage $) {
        assembly {
            $.slot := REWARD_SHARE_STORAGE_LOCATION
        }
    }

    // Roles
    bytes32 public constant MANAGER_ROLE = keccak256("MANAGER_ROLE");

    // Constants
    uint256 public constant BASIS_POINTS = 10000;
    uint256 public constant MAX_REWARD_SHARE_BPS = 2000; // Max 20% reward share

    /* ========== HELPER FUNCTIONS ========== */

    /**
     * @notice Get reward distribution delay from StakingManager's withdrawalDelay
     * @return Delay in seconds
     */
    function REWARD_DISTRIBUTION_DELAY() public view returns (uint256) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return IStakingManager($.stakingManager).withdrawalDelay();
    }

    /* ========== MODIFIERS ========== */

    modifier onlyStakingManager() {
        RewardShareStorage storage $ = _getRewardShareStorage();
        if (msg.sender != $.stakingManager) revert OnlyStakingManager();
        _;
    }

    /* ========== INITIALIZATION ========== */

    /**
     * @notice Initializes the RewardShareTracker contract
     * @param admin Address to be granted admin role
     * @param manager Address to be granted manager role
     * @param _stakingManager Address of the StakingManager contract
     * @param _deployerWallet Address of the deployer wallet (for KNTQ buybacks)
     * @param _treasuryWallet Address of the treasury wallet
     */
    function initialize(
        address admin,
        address manager,
        address _stakingManager,
        address _deployerWallet,
        address _treasuryWallet
    ) public initializer {
        if (admin == address(0)) revert InvalidAddress();
        if (manager == address(0)) revert InvalidAddress();
        if (_stakingManager == address(0)) revert InvalidAddress();
        if (_deployerWallet == address(0)) revert InvalidAddress();
        if (_treasuryWallet == address(0)) revert InvalidAddress();

        __AccessControlEnumerable_init();
        __ReentrancyGuard_init();

        _grantRole(DEFAULT_ADMIN_ROLE, admin);
        _grantRole(MANAGER_ROLE, manager);

        RewardShareStorage storage $ = _getRewardShareStorage();
        $.stakingManager = _stakingManager;
        $.deployerWallet = _deployerWallet;
        $.treasuryWallet = _treasuryWallet;

        // Set defaults: 10% reward share, 70% to deployer
        $.rewardShareBps = 1000;
        $.deployerSplitBps = 7000;
    }

    /* ========== PUBLIC GETTERS ========== */

    function rewardShareBps() external view override returns (uint256) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return $.rewardShareBps;
    }

    function deployerSplitBps() external view override returns (uint256) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return $.deployerSplitBps;
    }

    function treasurySplitBps() external view override returns (uint256) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return BASIS_POINTS - $.deployerSplitBps;
    }

    function deployerWallet() external view override returns (address) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return $.deployerWallet;
    }

    function treasuryWallet() external view override returns (address) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return $.treasuryWallet;
    }

    function rewardDistributionDelay() external view override returns (uint256) {
        return REWARD_DISTRIBUTION_DELAY();
    }

    function totalRewardShareDistributed() external view override returns (uint256) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return $.totalRewardShareDistributed;
    }

    function totalDeployerShareDistributed() external view override returns (uint256) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return $.totalDeployerShareDistributed;
    }

    function totalTreasuryShareDistributed() external view override returns (uint256) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return $.totalTreasuryShareDistributed;
    }

    function validatorRewardShareDiverted(address validator) external view override returns (uint256) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        return $.validatorRewardShareDiverted[validator];
    }

    /* ========== VIEW FUNCTIONS ========== */

    /**
     * @notice Calculate the reward share amount for given total rewards
     * @param totalRewards Total rewards to calculate share from
     * @return rewardShare The 10% reward share amount
     * @return netRewards The 90% remaining for kHYPE holders
     */
    function calculateRewardShare(uint256 totalRewards)
        external
        view
        override
        returns (uint256 rewardShare, uint256 netRewards)
    {
        RewardShareStorage storage $ = _getRewardShareStorage();
        rewardShare = Math.mulDiv(totalRewards, $.rewardShareBps, BASIS_POINTS);
        netRewards = totalRewards - rewardShare;
        return (rewardShare, netRewards);
    }

    /**
     * @notice Calculate the deployer/treasury split for a reward share amount
     * @param rewardShareAmount The reward share to split
     * @return deployerAmount 70% to deployer
     * @return treasuryAmount 30% to treasury
     */
    function calculateSplit(uint256 rewardShareAmount)
        external
        view
        override
        returns (uint256 deployerAmount, uint256 treasuryAmount)
    {
        RewardShareStorage storage $ = _getRewardShareStorage();
        deployerAmount = Math.mulDiv(rewardShareAmount, $.deployerSplitBps, BASIS_POINTS);
        treasuryAmount = rewardShareAmount - deployerAmount;
        return (deployerAmount, treasuryAmount);
    }

    /**
     * @notice Get all pending reward distributions
     * @return Array of pending distributions
     */
    function getPendingDistributions()
        external
        view
        override
        returns (IRewardShareTracker.PendingRewardDistribution[] memory)
    {
        RewardShareStorage storage $ = _getRewardShareStorage();
        uint256 start = $.nextCompleteId;
        uint256 end = $.nextDistributionId;
        IRewardShareTracker.PendingRewardDistribution[] memory distributions =
            new IRewardShareTracker.PendingRewardDistribution[](end > start ? end - start : 0);

        for (uint256 i = start; i < end; i++) {
            distributions[i - start] = $.pendingDistributions[i];
        }

        return distributions;
    }

    /**
     * @notice Get the first matured pending distribution
     * @return distribution The first matured pending distribution
     * @return distributionId The ID of the first matured pending distribution
     */
    function getFirstMaturedDistribution()
        external
        view
        override
        returns (IRewardShareTracker.PendingRewardDistribution memory distribution, uint256 distributionId)
    {
        distributionId = _findFirstMaturedDistributionId();
        RewardShareStorage storage $ = _getRewardShareStorage();
        distribution = $.pendingDistributions[distributionId];
        return (distribution, distributionId);
    }

    /**
     * @notice Get count of pending distributions
     * @return count Number of pending distributions
     */
    function getPendingDistributionCount() external view override returns (uint256 count) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        uint256 next = $.nextDistributionId;
        uint256 completed = $.nextCompleteId;
        return next > completed ? next - completed : 0;
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    /**
     * @notice Queue a new reward distribution (async - HYPE will arrive later from L1)
     * @param rewardShareAmount Reward share amount to distribute (already calculated as 10% by OracleManager)
     * @param validator Validator address that earned the rewards
     * @return distributionId ID of the queued distribution
     * @return rewardShare The reward share amount (passed through)
     * @return deployerAmount Amount allocated to deployer (70% of rewardShare)
     * @return treasuryAmount Amount allocated to treasury (30% of rewardShare)
     * @dev Called by StakingManager when OracleManager reports new rewards
     * @dev OracleManager pre-calculates the reward share (10%) before calling this function
     * @dev This function only splits the reward share between deployer and treasury
     * @dev Does not receive HYPE immediately - queues for later completion
     */
    function recordRewardDistribution(uint256 rewardShareAmount, address validator)
        external
        override
        onlyStakingManager
        returns (uint256 distributionId, uint256 rewardShare, uint256 deployerAmount, uint256 treasuryAmount)
    {
        RewardShareStorage storage $ = _getRewardShareStorage();
        if (rewardShareAmount == 0) revert InvalidAmount();
        if (validator == address(0)) revert InvalidAddress();

        // rewardShare is already the 10% amount from OracleManager
        rewardShare = rewardShareAmount;

        // Split between deployer (70%) and treasury (30%)
        deployerAmount = Math.mulDiv(rewardShare, $.deployerSplitBps, BASIS_POINTS);
        treasuryAmount = rewardShare - deployerAmount;

        // Create pending distribution (FIFO — completed in order via nextCompleteId)
        distributionId = $.nextDistributionId++;
        $.pendingDistributions[distributionId] = IRewardShareTracker.PendingRewardDistribution({
            validator: validator,
            newRewardAmount: rewardShareAmount,
            rewardShare: rewardShare,
            deployerAmount: deployerAmount,
            treasuryAmount: treasuryAmount,
            requestTime: block.timestamp,
            completed: false
        });

        // Track per-validator cumulative reward share for oracle diff synchronization
        $.validatorRewardShareDiverted[validator] += rewardShare;

        emit RewardDistributionQueued(
            distributionId, validator, rewardShareAmount, rewardShare, deployerAmount, treasuryAmount
        );

        return (distributionId, rewardShare, deployerAmount, treasuryAmount);
    }

    /**
     * @notice Complete a matured reward distribution (HYPE arrived from L1)
     * @param distributionId ID of the distribution to complete
     * @dev Called by StakingManager after L1 withdrawal completes
     * @dev Receives HYPE and immediately transfers to deployer/treasury wallets
     */
    function completeRewardDistribution(uint256 distributionId)
        external
        payable
        override
        onlyStakingManager
        nonReentrant
    {
        RewardShareStorage storage $ = _getRewardShareStorage();

        // FIFO: must complete distributions in order
        if (distributionId != $.nextCompleteId) revert DistributionOutOfOrder();

        IRewardShareTracker.PendingRewardDistribution storage distribution = $.pendingDistributions[distributionId];

        if (distribution.completed) revert AlreadyCompleted();
        if (msg.value != distribution.rewardShare) revert InvalidAmount();

        // Check if distribution has matured
        uint256 maturityTime = distribution.requestTime + REWARD_DISTRIBUTION_DELAY();
        if (block.timestamp < maturityTime) revert NotMatured();

        // Mark as completed and advance FIFO head
        distribution.completed = true;
        $.nextCompleteId++;

        // Update cumulative tracking
        $.totalRewardShareDistributed += distribution.rewardShare;
        $.totalDeployerShareDistributed += distribution.deployerAmount;
        $.totalTreasuryShareDistributed += distribution.treasuryAmount;

        // Transfer to deployer wallet
        (bool deployerSuccess,) = payable($.deployerWallet).call{value: distribution.deployerAmount}("");
        if (!deployerSuccess) revert TransferFailed();

        // Transfer to treasury wallet
        (bool treasurySuccess,) = payable($.treasuryWallet).call{value: distribution.treasuryAmount}("");
        if (!treasurySuccess) revert TransferFailed();

        emit RewardDistributionCompleted(distributionId, distribution.rewardShare);
        emit RewardShareCalculated(
            distribution.newRewardAmount,
            distribution.rewardShare,
            distribution.deployerAmount,
            distribution.treasuryAmount
        );
        emit DeployerShareTransferred($.deployerWallet, distribution.deployerAmount);
        emit TreasuryShareTransferred($.treasuryWallet, distribution.treasuryAmount);
    }

    /* ========== INTERNAL FUNCTIONS ========== */

    /**
     * @notice Find the first matured distribution ID
     * @return distributionId ID of the first matured distribution
     * @dev Reverts if no matured distributions exist
     */
    function _findFirstMaturedDistributionId() internal view returns (uint256 distributionId) {
        RewardShareStorage storage $ = _getRewardShareStorage();
        distributionId = $.nextCompleteId;

        if (distributionId >= $.nextDistributionId) revert NoPendingDistributions();

        IRewardShareTracker.PendingRewardDistribution storage distribution = $.pendingDistributions[distributionId];
        uint256 maturityTime = distribution.requestTime + REWARD_DISTRIBUTION_DELAY();
        if (block.timestamp < maturityTime) revert NoPendingDistributions();
    }

    /* ========== ADMIN FUNCTIONS ========== */

    /**
     * @notice Set the deployer wallet address
     * @param newDeployer New deployer wallet address
     */
    function setDeployerWallet(address newDeployer) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newDeployer == address(0)) revert InvalidAddress();
        RewardShareStorage storage $ = _getRewardShareStorage();
        address oldDeployer = $.deployerWallet;
        $.deployerWallet = newDeployer;
        emit DeployerWalletUpdated(oldDeployer, newDeployer);
    }

    /**
     * @notice Set the treasury wallet address
     * @param newTreasury New treasury wallet address
     */
    function setTreasuryWallet(address newTreasury) external override onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newTreasury == address(0)) revert InvalidAddress();
        RewardShareStorage storage $ = _getRewardShareStorage();
        address oldTreasury = $.treasuryWallet;
        $.treasuryWallet = newTreasury;
        emit TreasuryWalletUpdated(oldTreasury, newTreasury);
    }

    /**
     * @notice Set the reward share percentage
     * @param newBps New percentage in basis points (max 2000 = 20%)
     */
    function setRewardShareBps(uint256 newBps) external override onlyRole(MANAGER_ROLE) {
        if (newBps > MAX_REWARD_SHARE_BPS) revert PercentageTooHigh();
        RewardShareStorage storage $ = _getRewardShareStorage();
        uint256 oldBps = $.rewardShareBps;
        $.rewardShareBps = newBps;
        emit RewardShareBpsUpdated(oldBps, newBps);
    }

    /**
     * @notice Set the deployer split percentage
     * @param newBps New percentage in basis points (max 10000 = 100%)
     */
    function setDeployerSplitBps(uint256 newBps) external override onlyRole(MANAGER_ROLE) {
        if (newBps > BASIS_POINTS) revert InvalidPercentage();
        RewardShareStorage storage $ = _getRewardShareStorage();
        uint256 oldBps = $.deployerSplitBps;
        $.deployerSplitBps = newBps;
        emit DeployerSplitBpsUpdated(oldBps, newBps);
    }

    /**
     * @notice Update the staking manager address
     * @param newManager New staking manager address
     */
    function setStakingManager(address newManager) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (newManager == address(0)) revert InvalidAddress();
        RewardShareStorage storage $ = _getRewardShareStorage();
        address oldManager = $.stakingManager;
        $.stakingManager = newManager;
        emit StakingManagerUpdated(oldManager, newManager);
    }

    /**
     * @notice Receive function to accept HYPE
     */
    receive() external payable {}
}
