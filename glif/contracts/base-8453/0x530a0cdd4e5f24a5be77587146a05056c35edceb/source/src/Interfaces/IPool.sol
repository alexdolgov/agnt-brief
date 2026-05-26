// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IICNProtocolMini} from "@src/Interfaces/IICNProtocolMini.sol";
import {IRewardHandler} from "@src/Interfaces/IRewardHandler.sol";

/**
 * @title IPool
 * @notice Interface for the ERC4626 Pool contract that manages deposits, delegations, and rewards
 */
interface IPool is IERC20 {
    /**
     * @notice Error thrown when invalid parameters are provided
     */
    error InvalidParams();

    /**
     * @notice Error thrown when a function is locked and cannot be called
     */
    error LockedFunction();

    /**
     * @notice Error thrown when deposit amount is too small
     * @param assets The provided assets amount
     * @param minDepositAmount The minimum required deposit amount
     */
    error DepositTooSmall(uint256 assets, uint256 minDepositAmount);

    /**
     * @notice Error thrown when the reward claims limit would be surpassed by initializing another reward claim
     * @param newTotalRewardClaims The new total reward claims that would be created
     * @param maxOutstandingRewardClaims The maximum allowed outstanding reward claims
     */
    error RewardsClaimLimitExceeded(uint256 newTotalRewardClaims, uint256 maxOutstandingRewardClaims);

    /**
     * @notice Error thrown when the unclaimed rewards are too small to initialize a reward claim
     * @param unclaimedRewards The unclaimed rewards amount
     * @param triggerInitiateRewardClaimAbs The trigger value
     */
    error UnclaimedRewardsTooSmall(uint256 unclaimedRewards, uint256 triggerInitiateRewardClaimAbs);

    /**
     * @notice Error thrown when there are outstanding reward claims when trying to change the treasury fee
     */
    error OutstandingRewardClaims();

    /**
     * @notice Struct representing a delegation position in the underlying ICN Protocol
     * @param userDelegationIndex The user delegation array index
     * @param nodeDelegationIndex The node delegation array index
     */
    struct DelegationPosition {
        uint256 userDelegationIndex;
        uint256 nodeDelegationIndex;
    }

    /**
     * @notice Struct representing a vault configuration that is used in the portfolio
     * @param weight The weight of the vault in the portfolio
     * @param lockupDuration The lockup duration for the vault
     */
    struct VaultConfig {
        uint256 weight;
        uint256 lockupDuration;
    }

    /**
     * @notice Struct containing delegation variables for internal use
     * @param icnp The ICN protocol contract
     * @param asset The asset token
     * @param portfolioConfig The portfolio configuration
     * @param totalNodes The total number of nodes this contract can delegate to
     * @param totalPositions The total number of existing delegated positions
     * @param portfolioWeight The aggregate weight of all vault configs in each portfolio
     * @param portfolioConfigLength The length of the portfolio config array
     */
    struct DelegationVars {
        IICNProtocolMini icnp;
        IERC20 asset;
        VaultConfig[] portfolioConfig;
        uint256[] scalarNodeIDs;
        uint256 totalNodes;
        uint256 totalPositions;
        uint256 portfolioWeight;
        uint256 portfolioConfigLength;
    }

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when assets are deposited into the pool
     * @param caller The address that initiated the deposit
     * @param owner The address that owns the shares
     * @param assets The amount of assets deposited
     * @param shares The amount of shares minted
     */
    event Deposit(address indexed caller, address indexed owner, uint256 assets, uint256 shares);

    /**
     * @notice Emitted when assets are withdrawn from the pool
     * @param caller The address that initiated the withdrawal
     * @param receiver The address that receives the assets
     * @param owner The address that owns the shares
     * @param assets The amount of assets withdrawn
     * @param shares The amount of shares burned
     */
    event Withdraw(address indexed caller, address indexed receiver, address indexed owner, uint256 assets, uint256 shares);

    /**
     * @notice Emitted when a new position is created
     * @param positionNum The position number
     * @param nodeID The node ID for the delegation
     * @param delegatedAmount The amount delegated
     * @param lockupDuration The lockup duration
     */
    event CreatedPosition(uint256 indexed positionNum, uint256 indexed nodeID, uint256 delegatedAmount, uint256 lockupDuration);

    /**
     * @notice Emitted when locked tokens are delegated to a new node
     * @param userDelegationIdx The user delegation index
     * @param newNodeID The new node ID
     * @param oldNodeID The old node ID
     * @param delegatedAmount The amount delegated
     */
    event DelegateLockedTokens(
        uint256 indexed userDelegationIdx, uint256 indexed newNodeID, uint256 oldNodeID, uint256 delegatedAmount
    );

    /**
     * @notice Emitted when a reward claim is initialized
     * @param userDelegationIdx The userDelegation array index of the position that initialized a reward claim
     * @param nodeDelegationIdx The nodeDelegation array index of the position that initialized a reward claim
     * @param amount The reward amount to claim
     */
    event InitializedRewardClaim(uint256 indexed userDelegationIdx, uint256 indexed nodeDelegationIdx, uint256 amount);

    /**
     * @notice Emitted when rewards are claimed
     * @param rewardIdx The index of the pending reward claim to claim from
     * @param totalRewardsClaimed The total rewards claimed
     */
    event ClaimedRewards(uint256 indexed rewardIdx, uint256 totalRewardsClaimed);

    /**
     * @notice Emitted when collateral is undelegated
     * @param userDelegationIdx The userDelegation array index of the position that is being undelegated
     * @param nodeDelegationIdx The nodeDelegation array index of the position that is being undelegated
     * @param unclaimedRewards Any unclaimed rewards that result from undelegating the position
     */
    event UndelegatedCollateral(uint256 indexed userDelegationIdx, uint256 indexed nodeDelegationIdx, uint256 unclaimedRewards);

    /**
     * @notice Emitted when undelegated collateral is reclaimed
     * @param userDelegationIdx The userDelegation array index of the position that is being reclaimed
     * @param nodeDelegationIdx The nodeDelegation array index of the position that is being reclaimed
     * @param reclaimedAmount The amount reclaimed
     */
    event ReclaimedUndelegatedCollateral(
        uint256 indexed userDelegationIdx, uint256 indexed nodeDelegationIdx, uint256 reclaimedAmount
    );

    /**
     * @notice Emitted during emergency withdrawal
     * @param amount The amount withdrawn
     */
    event EmergencyWithdrawal(uint256 amount);

    /**
     * @notice Emitted when the ICN protocol contract is updated
     * @param oldIcnp The previous ICN protocol contract address
     * @param newIcnp The new ICN protocol contract address
     */
    event IcnpUpdated(address indexed oldIcnp, address indexed newIcnp);

    /**
     * @notice Emitted when the reward handler contract is updated
     * @param oldRewardHandler The previous reward handler contract address
     * @param newRewardHandler The new reward handler contract address
     */
    event RewardHandlerUpdated(address indexed oldRewardHandler, address indexed newRewardHandler);

    /**
     * @notice Emitted when the treasury address is updated
     * @param oldTreasury The previous treasury address
     * @param newTreasury The new treasury address
     */
    event TreasuryUpdated(address indexed oldTreasury, address indexed newTreasury);

    /**
     * @notice Emitted when the portfolio configuration is updated
     * @param oldTotalWeight The previous total portfolio weight
     * @param newTotalWeight The new total portfolio weight
     * @param oldConfigLength The previous portfolio config length
     * @param newConfigLength The new portfolio config length
     */
    event PortfolioConfigUpdated(
        uint256 oldTotalWeight, uint256 newTotalWeight, uint256 oldConfigLength, uint256 newConfigLength
    );

    /**
     * @notice Emitted when the scalar node IDs are updated
     * @param oldNodeCount The previous number of nodes
     * @param newNodeCount The new number of nodes
     */
    event ScalarNodeIDsUpdated(uint256 oldNodeCount, uint256 newNodeCount);

    /**
     * @notice Emitted when the minimum portfolio delegation size is updated
     * @param oldMinSize The previous minimum portfolio delegation size
     * @param newMinSize The new minimum portfolio delegation size
     */
    event MinPortfolioDelegationSizeUpdated(uint256 oldMinSize, uint256 newMinSize);

    /**
     * @notice Emitted when the maximum portfolio delegation size is updated
     * @param oldMaxSize The previous maximum portfolio delegation size
     * @param newMaxSize The new maximum portfolio delegation size
     */
    event MaxPortfolioDelegationSizeUpdated(uint256 oldMaxSize, uint256 newMaxSize);

    /**
     * @notice Emitted when the delegation throttle seconds is updated
     * @param oldThrottleSeconds The previous delegation throttle duration
     * @param newThrottleSeconds The new delegation throttle duration
     */
    event DelegationThrottleSecondsUpdated(uint256 oldThrottleSeconds, uint256 newThrottleSeconds);

    /**
     * @notice Emitted when the trigger initiate reward claim absolute value is updated
     * @param oldTriggerValue The previous trigger value
     * @param newTriggerValue The new trigger value
     */
    event TriggerInitiateRewardClaimAbsUpdated(uint256 oldTriggerValue, uint256 newTriggerValue);

    /**
     * @notice Emitted when the maximum outstanding reward claims is updated
     * @param oldMaxClaims The previous maximum outstanding reward claims
     * @param newMaxClaims The new maximum outstanding reward claims
     */
    event MaxOutstandingRewardClaimsUpdated(uint256 oldMaxClaims, uint256 newMaxClaims);

    /**
     * @notice Emitted when the restake percentage is updated
     * @param oldRestakePercentage The previous restake percentage
     * @param newRestakePercentage The new restake percentage
     */
    event RestakePercentageUpdated(uint256 oldRestakePercentage, uint256 newRestakePercentage);

    /**
     * @notice Emitted when the treasury fee is updated
     * @param oldTreasuryFee The previous treasury fee rate
     * @param newTreasuryFee The new treasury fee rate
     */
    event TreasuryFeeUpdated(uint256 oldTreasuryFee, uint256 newTreasuryFee);

    /*//////////////////////////////////////////////////////////////
                                 FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Initializes the contract
     * @param _initialOwner The initial owner of the contract
     * @param _name The name of the ERC20 token
     * @param _symbol The symbol of the ERC20 token
     * @param _asset The asset that will be used as collateral
     * @param _icnp The ICN Protocol contract
     * @param _treasury The treasury address
     * @param _nodeIDs The node IDs array to delegate to
     * @param _portfolioVaultConfigs The portfolio vault configurations array
     * @param _minPortfolioDelegationAmt The minimum portfolio delegation amount
     * @param _maxPortfolioDelegationAmt The maximum portfolio delegation amount
     */
    function initialize(
        address _initialOwner,
        string memory _name,
        string memory _symbol,
        IERC20 _asset,
        IICNProtocolMini _icnp,
        address _treasury,
        uint256[] memory _nodeIDs,
        VaultConfig[] memory _portfolioVaultConfigs,
        uint256 _minPortfolioDelegationAmt,
        uint256 _maxPortfolioDelegationAmt
    ) external;

    // View functions from PoolStorage
    /**
     * @notice Returns the ICN protocol contract
     * @return icnp The ICN protocol contract address
     */
    function icnp() external view returns (IICNProtocolMini icnp);

    /**
     * @notice Returns the asset token address
     * @return asset The asset token address
     */
    function asset() external view returns (address asset);

    /**
     * @notice Returns the reward handler contract address
     * @return rewardHandler The reward handler contract address
     */
    function rewardHandler() external view returns (address rewardHandler);

    /**
     * @notice Returns the portfolio configuration
     * @return portfolioConfig The portfolio vault configurations array
     */
    function portfolioConfig() external view returns (VaultConfig[] memory portfolioConfig);

    /**
     * @notice Returns the scalar node IDs
     * @return scalarNodeIDs The array of scalar node IDs
     */
    function scalarNodeIDs() external view returns (uint256[] memory scalarNodeIDs);

    /**
     * @notice Returns the treasury address
     * @return treasury The treasury address
     */
    function treasury() external view returns (address treasury);

    /**
     * @notice Returns the total number of positions
     * @return totalPositions The total number of positions
     */
    function totalPositions() external view returns (uint256 totalPositions);

    /**
     * @notice Returns the total outstanding reward claims
     * @return totalOutstandingRewardClaims The total outstanding reward claims
     */
    function totalOutstandingRewardClaims() external view returns (uint256 totalOutstandingRewardClaims);

    /**
     * @notice Returns the maximum outstanding reward claims
     * @return maxOutstandingRewardClaims The maximum outstanding reward claims
     */
    function maxOutstandingRewardClaims() external view returns (uint256 maxOutstandingRewardClaims);

    /**
     * @notice Returns the minimum portfolio delegation size
     * @return minPortfolioDelegationSize The minimum portfolio delegation size
     */
    function minPortfolioDelegationSize() external view returns (uint256 minPortfolioDelegationSize);

    /**
     * @notice Returns the maximum portfolio delegation size
     * @return maxPortfolioDelegationSize The maximum portfolio delegation size
     */
    function maxPortfolioDelegationSize() external view returns (uint256 maxPortfolioDelegationSize);

    /**
     * @notice Returns the trigger initiate reward claim value
     * @return triggerInitiateRewardClaimAbs The trigger value
     * @dev This value is used to compare against the total outstanding reward claims to determine if a reward claim should be initialized
     */
    function triggerInitiateRewardClaimAbs() external view returns (uint256 triggerInitiateRewardClaimAbs);

    /**
     * @notice Returns the delegated assets amount
     * @return delegatedAssets The delegated assets amount
     */
    function delegatedAssets() external view returns (uint256 delegatedAssets);

    /**
     * @notice Returns the pending LP rewards
     * @return pendingLPRewards The pending LP rewards amount
     */
    function pendingLPRewards() external view returns (uint256 pendingLPRewards);

    /**
     * @notice Returns the claimed LP rewards
     * @return claimedLPRewards The claimed LP rewards amount
     */
    function claimedLPRewards() external view returns (uint256 claimedLPRewards);

    /**
     * @notice Returns amount of assets that have been emergency withdrawn
     * @return emergencyWithdrawnAssets The emergency withdrawn assets amount
     */
    function emergencyWithdrawnAssets() external view returns (uint256 emergencyWithdrawnAssets);

    /**
     * @notice Returns the next node ID to delegate to
     * @return nextNodeIndexToDelegateTo The next node index to delegate to
     */
    function nextNodeIndexToDelegateTo() external view returns (uint256 nextNodeIndexToDelegateTo);

    /**
     * @notice Returns the last time a delegation was created
     * @return lastTimeStampCheckpoint The last timestamp checkpoint
     */
    function lastTimeStampCheckpoint() external view returns (uint256 lastTimeStampCheckpoint);

    /**
     * @notice Returns the delegation throttle seconds, used to limit the number of delegations that can be made in a given time period
     * @return delegationThrottleSeconds The delegation throttle duration in seconds
     */
    function delegationThrottleSeconds() external view returns (uint256 delegationThrottleSeconds);

    /**
     * @notice Returns the treasury fee percentage
     * @return treasuryFee The treasury fee rate
     * @dev 1e17 = 10%
     */
    function treasuryFee() external view returns (uint256 treasuryFee);

    /**
     * @notice Returns the percentage of rewards that are restaked into positions
     * @return restakePercentage The restake percentage
     * @dev 1e18 = 100%
     */
    function restakePercentage() external view returns (uint256 restakePercentage);

    /**
     * @notice Returns the combined weight of all vaults in the portfolio
     * @return totalPortfolioWeight The combined weight of all vaults in the portfolio
     */
    function totalPortfolioWeight() external view returns (uint256 totalPortfolioWeight);

    /**
     * @notice Returns the version of the pool contract
     * @return version The version number
     */
    function version() external view returns (uint64 version);

    // View functions from ERC4626
    /**
     * @notice Returns the total assets in the pool
     * @return totalAssets The total assets amount
     */
    function totalAssets() external view returns (uint256 totalAssets);

    /**
     * @notice Converts assets to shares
     * @param assets The amount of assets
     * @return shares The equivalent amount of shares
     */
    function convertToShares(uint256 assets) external view returns (uint256 shares);

    /**
     * @notice Converts shares to assets
     * @param shares The amount of shares
     * @return assets The equivalent amount of assets
     */
    function convertToAssets(uint256 shares) external view returns (uint256 assets);

    /**
     * @notice Previews the shares that would be minted for a given asset amount
     * @param assets The amount of assets to deposit
     * @return shares The amount of shares that would be minted
     * @dev Will revert if the pool is paused
     */
    function previewDeposit(uint256 assets) external view returns (uint256 shares);

    /**
     * @notice Previews the assets that would be required to mint a given share amount
     * @param shares The amount of shares to mint
     * @return assets The amount of assets required
     * @dev Will revert if the pool is paused
     */
    function previewMint(uint256 shares) external view returns (uint256 assets);

    /**
     * @notice Previews the shares that would be burned for a given asset withdrawal
     * @param assets The amount of assets to withdraw
     * @return shares The amount of shares that would be burned
     * @dev Always reverts in v1 of the contract
     */
    function previewWithdraw(uint256 assets) external view returns (uint256 shares);

    /**
     * @notice Previews the assets that would be received for a given share redemption
     * @param shares The amount of shares to redeem
     * @return assets The amount of assets that would be received
     * @dev Always reverts in v1 of the contract
     */
    function previewRedeem(uint256 shares) external view returns (uint256 assets);

    /**
     * @notice Returns the maximum amount of assets that can be deposited by a user
     * @param receiver The address of the receiver
     * @return maxDeposit The maximum deposit amount
     */
    function maxDeposit(address receiver) external view returns (uint256 maxDeposit);

    /**
     * @notice Returns the maximum amount of shares that can be minted by a user
     * @param receiver The address of the receiver
     * @return maxMint The maximum mint amount
     */
    function maxMint(address receiver) external view returns (uint256 maxMint);

    /**
     * @notice Returns the maximum amount of assets that can be withdrawn by a user
     * @param owner The address of the owner
     * @return maxWithdraw The maximum withdrawal amount
     */
    function maxWithdraw(address owner) external view returns (uint256 maxWithdraw);

    /**
     * @notice Returns the maximum amount of shares that can be redeemed by a user
     * @param owner The address of the owner
     * @return maxRedeem The maximum redemption amount
     */
    function maxRedeem(address owner) external view returns (uint256 maxRedeem);

    // State-changing functions from Pool
    /**
     * @notice Deposits assets into the pool and mints shares
     * @param assets The amount of assets to deposit
     * @param receiver The address to receive the shares
     * @return shares The amount of shares minted
     */
    function deposit(uint256 assets, address receiver) external returns (uint256 shares);

    /**
     * @notice Mints shares by depositing the required assets
     * @param shares The amount of shares to mint
     * @param receiver The address to receive the shares
     * @return assets The amount of assets required
     */
    function mint(uint256 shares, address receiver) external returns (uint256 assets);

    /**
     * @notice Withdraws assets by burning shares
     * @param assets The amount of assets to withdraw
     * @param receiver The address to receive the assets
     * @param owner The address that owns the shares
     * @return shares The amount of shares burned
     */
    function withdraw(uint256 assets, address receiver, address owner) external returns (uint256 shares);

    /**
     * @notice Redeems shares for assets
     * @param shares The amount of shares to redeem
     * @param receiver The address to receive the assets
     * @param owner The address that owns the shares
     * @return assets The amount of assets received
     */
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);

    /**
     * @notice Flushes deposits to delegations in the ICNProtocol
     */
    function flushDeposits() external;

    /**
     * @notice Claims rewards for the given pending reward queue indices
     * @param rewardIdxs The indices of the rewards to claim
     * @dev Reward indexes must be in ascending order for accurate execution
     */
    function claimRewards(uint256[] calldata rewardIdxs) external;

    /**
     * @notice Initializes reward claims for the given positions
     * @param positions The delegation positions to initialize reward claims for
     */
    function initializeRewardClaims(DelegationPosition[] calldata positions) external;

    // Owner setter functions

    /**
     * @notice Updates the ICN protocol contract
     * @param newIcnp The new ICN protocol contract address
     */
    function setIcnp(IICNProtocolMini newIcnp) external;

    /**
     * @notice Updates the reward handler contract
     * @param newRewardHandler The new reward handler contract address
     */
    function setRewardHandler(IRewardHandler newRewardHandler) external;

    /**
     * @notice Updates the treasury address
     * @param newTreasury The new treasury address
     */
    function setTreasury(address newTreasury) external;

    /**
     * @notice Updates the portfolio configuration
     * @param newPortfolioConfig The new portfolio configuration
     */
    function setPortfolioConfig(VaultConfig[] memory newPortfolioConfig) external;

    /**
     * @notice Updates the scalar node IDs
     * @param newScalarNodeIDs The new scalar node IDs array
     */
    function setScalarNodeIDs(uint256[] memory newScalarNodeIDs) external;

    /**
     * @notice Updates the minimum portfolio delegation size
     * @param newMinPortfolioDelegationSize The new minimum portfolio delegation size
     */
    function setMinPortfolioDelegationSize(uint256 newMinPortfolioDelegationSize) external;

    /**
     * @notice Updates the maximum portfolio delegation size
     * @param newMaxPortfolioDelegationSize The new maximum portfolio delegation size
     */
    function setMaxPortfolioDelegationSize(uint256 newMaxPortfolioDelegationSize) external;

    /**
     * @notice Updates the delegation throttle seconds
     * @param newDelegationThrottleSeconds The new delegation throttle duration in seconds
     */
    function setDelegationThrottleSeconds(uint256 newDelegationThrottleSeconds) external;

    /**
     * @notice Updates the trigger initiate reward claim absolute value
     * @param newTriggerInitiateRewardClaimAbs The new trigger value
     */
    function setTriggerInitiateRewardClaimAbs(uint256 newTriggerInitiateRewardClaimAbs) external;

    /**
     * @notice Updates the maximum outstanding reward claims
     * @param newMaxOutstandingRewardClaims The new maximum number of outstanding reward claims
     */
    function setMaxOutstandingRewardClaims(uint256 newMaxOutstandingRewardClaims) external;

    /**
     * @notice Updates the restake percentage
     * @param newRestakePercentage The new restake percentage (1e18 = 100%)
     */
    function setRestakePercentage(uint256 newRestakePercentage) external;

    /**
     * @notice Updates the treasury fee
     * @param newTreasuryFee The new treasury fee rate (1e18 = 100%)
     */
    function setTreasuryFee(uint256 newTreasuryFee) external;

    // admin/emergency functions
    /**
     * @notice Undelegates collateral for the given positions
     * @param positions The delegation positions to undelegate
     */
    function undelegateCollateral(DelegationPosition[] calldata positions) external;

    /**
     * @notice Delegates locked tokens to new nodes (owner only)
     * @param positions The delegation positions
     * @param delegateToNodeIds The node IDs to delegate to
     */
    function delegateLockedTokens(DelegationPosition[] calldata positions, uint256[] calldata delegateToNodeIds) external;

    /**
     * @notice Reclaims undelegated collateral for the given positions (owner only)
     * @param positions The delegation positions to reclaim
     */
    function withdrawUnlockedDelegatedTokens(DelegationPosition[] calldata positions) external;

    /**
     * @notice Performs emergency withdrawal when contract is paused
     */
    function emergencyWithdraw() external;
}

/**
 * @title IPoolV2
 * @notice Interface for the ERC4626 Pool contract that manages deposits, delegations, and rewards
 * @dev This is an upgraded interface from IPool.
 */
interface IPoolV2 is IPool {
    /**
     * @notice Initializes the contract
     */
    function initializeV2() external;

    /*//////////////////////////////////////////////////////////////
                                 EVENTS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Emitted when the exit reserve percentage is updated
     * @param oldExitReservePercentage The previous exit reserve percentage
     * @param newExitReservePercentage The new exit reserve percentage
     */
    event ExitReservePercentageUpdated(uint256 oldExitReservePercentage, uint256 newExitReservePercentage);

    /**
     * @notice Emitted when the exit fee percentage is updated
     * @param oldExitFeePercentage The previous exit fee percentage
     * @param newExitFeePercentage The new exit fee percentage
     */
    event ExitFeePercentageUpdated(uint256 oldExitFeePercentage, uint256 newExitFeePercentage);

    /*//////////////////////////////////////////////////////////////
                                 FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Returns the minimum amount of assets that are to be left in the pool for exits
     * @return exitReserve The exit reserve amount
     */
    function exitReserve() external view returns (uint256 exitReserve);

    /**
     * @notice Returns the maximum amount of assets that can be withdrawn by a user without considering the liquidity cap
     * @param owner The address of the owner
     * @return maxUnboundedWithdraw The maximum withdrawal amount without the liquidity cap
     */
    function maxUnboundedWithdraw(address owner) external view returns (uint256 maxUnboundedWithdraw);

    /**
     * @notice Returns the maximum amount of shares that can be redeemed by a user without considering the liquidity cap
     * @param owner The address of the owner
     * @return maxUnboundedRedeem The maximum redemption amount without the liquidity cap
     */
    function maxUnboundedRedeem(address owner) external view returns (uint256 maxUnboundedRedeem);

    /**
     * @notice Returns the percentage of the pool's total assets that should be kept in the reserve
     * @return exitReservePercentage The exit reserve percentage
     * @dev 1e18 = 100%
     */
    function exitReservePercentage() external view returns (uint256 exitReservePercentage);

    /**
     * @notice Returns the withdrawal fee to discourage flash-loan-style attacks
     * @return exitFeePercentage The exit fee percentage
     * @dev 1e18 = 100%
     */
    function exitFeePercentage() external view returns (uint256 exitFeePercentage);

    /**
     * @notice Updates the exit reserve percentage
     * @param newExitReservePercentage The new exit reserve percentage (1e18 = 100%)
     */
    function setExitReservePercentage(uint256 newExitReservePercentage) external;

    /**
     * @notice Updates the exit fee percentage
     * @param newExitFeePercentage The new exit fee percentage (1e18 = 100%)
     */
    function setExitFeePercentage(uint256 newExitFeePercentage) external;
}
