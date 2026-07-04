// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IRewardVault } from "./IRewardVault.sol";
import { ISmartVaultManager } from "./ISmartVaultManager.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";

/**
 * @notice The vault configuration
 * @param depositCap deposit cap for the vault
 * @param depositCapPerUser deposit cap per user
 * @param depositStartTime deposit start time
 * @param depositEndTime deposit end time
 * @param claimStartTime claim start time
 * @param claimEndTime claim end time
 * @param withdrawStartTime withdraw start time
 * @param withdrawEndTime withdraw end time
 * @param stakingFactor staking factor
 * @param isStakingEnabled staking enabled
 * @param isWhitelistMode whitelist mode
 */
struct VaultConfig {
    uint256 depositCap;
    uint256 depositCapPerUser;
    uint256 depositStartTime;
    uint256 depositEndTime;
    uint256 claimStartTime;
    uint256 claimEndTime;
    uint256 withdrawStartTime;
    uint256 withdrawEndTime;
    uint256 stakingFactor;
    bool isStakingEnabled;
    bool isWhitelistMode;
}

/**
 * @notice The reward configuration
 * @param rewardRate reward rate
 * @param rewardStartTime reward start time
 * @param rewardEndTime reward end time
 */
struct RewardConfig {
    uint256 rewardRate;
    uint256 rewardStartTime;
    uint256 rewardEndTime;
}

/**
 * @notice The smart vault interface
 */
interface ISmartVault is IERC20 {
    event StrategyUpdated(address indexed strategy, bool indexed whitelisted);
    event VaultConfigUpdated(VaultConfig vaultConfig);
    event StakingFactorUpdated(uint256 stakingFactor);
    event StakingEnabledUpdated(bool stakingEnabled);
    event Deposit(uint256 amount, address indexed depositor, address indexed receiver);
    event Withdraw(uint256 amount, address indexed owner, address indexed receiver);
    event LastRewardPerTokenUpdated(IERC20 indexed asset, uint256 lastRewardPerToken);
    event UserRewardPerTokenUpdated(IERC20 indexed asset, address indexed addr, uint256 lastUserRewardPerToken);
    event PendingRewardUpdated(IERC20 indexed asset, address indexed addr, uint256 amount, bool add);
    event RewardPerTokenIncreased(IERC20 indexed asset, uint256 amount);
    event Claimed(address indexed user, address indexed receiver, IERC20 asset, uint256 amount);
    event StrategyExecuted(address indexed strategy, bytes data);
    event RewardConfigUpdated(IERC20 indexed rewardToken, RewardConfig rewardConfig);
    event StrategyWhitelistedUpdated(address indexed strategy, bool indexed whitelisted);
    event OracleEnabledUpdated(bool);
    event RewardTokenListUpdated(IERC20[] rewardTokenList);
    event RewardTokenAdded(IERC20 rewardToken);
    event WhitelistModeUpdated(bool isWhitelistMode);
    event WhitelistedUpdated(address indexed account, bool indexed whitelisted);
    event StakedDebtToken(uint256 amount, uint256 shares);
    event UnstakedDebtToken(uint256 amount, uint256 shares);
    event MintedDebtToken(uint256 amount);
    event BurnedDebtToken(uint256 amount);

    error InvalidZeroAddress();
    error InvalidZeroAmount();
    error DepositCapExceeded(uint256 amount, uint256 depositCap);
    error DepositCapPerUserExceeded(uint256 amount, uint256 depositCapPerUser);
    error AmountExceedsShares(uint256 amount, uint256 shares);
    error InvalidClaimTime(uint256 currentTime);
    error InvalidDepositTime(uint256 currentTime, uint256 depositStartTime, uint256 depositEndTime);
    error InvalidConfigDepositTime(uint256 depositStartTime, uint256 depositEndTime);
    error InvalidConfigClaimTime(uint256 claimStartTime, uint256 claimEndTime);
    error InvalidConfigDepositCap(uint256 depositCap, uint256 depositCapPerUser);
    error InvalidSmartVaultManager(address msgSender);
    error InvalidConfigWithdrawTime(uint256 withdrawStartTime, uint256 withdrawEndTime);
    error DebtTokenBalanceChangedUnexpectedly(uint256 expected, uint256 actual);
    error InvalidWithdrawTime(uint256 currentTime, uint256 withdrawStartTime);
    error InvalidStrategy(address strategy);
    error InvalidIncreaseRewardPerToken();
    error InvalidConfigStakingFactor(uint256 stakingFactor);
    error NotWhitelisted(address account);

    /**
     * @notice Initialize the smart vault
     * @param _underlyingAsset The address of the underlying asset
     * @param _vaultManager The address of the smart vault manager
     * @param _rewardVault The address of the reward vault
     * @param _vaultConfig The vault configuration
     * @param name_ The name of the smart vault
     * @param symbol_ The symbol of the smart vault
     */
    function initialize(
        address _underlyingAsset,
        address _vaultManager,
        address _rewardVault,
        VaultConfig memory _vaultConfig,
        string memory name_,
        string memory symbol_
    )
        external;

    /**
     * @notice Pause the smart vault
     */
    function pause() external;

    /**
     * @notice Unpause the smart vault
     */
    function unpause() external;

    /**
     * @notice Set the strategy contract
     * @param _strategy The address of the strategy contract
     * @param _whitelisted True if the strategy is whitelisted
     */
    function setStrategy(address _strategy, bool _whitelisted) external;

    /**
     * @notice Set whitelist mode
     * @param isWhitelistMode True if the whitelist mode is enabled
     */
    function setWhitelistMode(bool isWhitelistMode) external;

    /**
     * @notice Set whitelisted address
     * @param account The address of the account
     * @param whitelisted True if the account is whitelisted
     */
    function setWhitelisted(address account, bool whitelisted) external;

    /**
     * @notice Update the vault configuration
     * @param VaultConfig The vault configuration
     */
    function updateVaultConfig(VaultConfig memory VaultConfig) external;

    /**
     * @notice Update the staking factor
     * @param factor The staking factor
     */
    function updateStakingFactor(uint256 factor) external;

    /**
     * @notice Update the staking enabled
     * @param enabled True if the staking is enabled
     */
    function updateStakingEnabled(bool enabled) external;

    /**
     * @notice Update the reward configuration
     * @param rewardToken The address of the reward token
     * @param rewardConfig The reward configuration
     */
    function updateRewardConfig(IERC20 rewardToken, RewardConfig memory rewardConfig) external;

    /**
     * @notice Update the reward token list
     * @param rewardTokenList The new reward token list
     */
    function updateRewardTokenList(IERC20[] memory rewardTokenList) external;

    /**
     * @notice Add token to reward list
     * @param rewardToken The address of the reward token
     */
    function addTokenToRewardList(IERC20 rewardToken) external;

    /**
     * @notice Increase reward per token
     * @param asset The address of the asset
     * @param amount The amount of the asset
     */
    function increaseRewardPerToken(IERC20 asset, uint256 amount) external;

    /**
     * @notice Execute the strategy
     * @param _strategy The address of the strategy
     * @param data The data for the strategy
     */
    function executeStrategy(address _strategy, bytes calldata data) external;

    /**
     * @notice Deposit ERC20
     * @dev Only when underlying asset is ERC20
     * @param amount The amount of the ERC20
     * @param depositor The address of the depositor
     * @param receiver The address of the receiver
     */
    function depositERC20(uint256 amount, address depositor, address receiver) external;

    /**
     * @notice Withdraw underlying asset
     * @param amount The amount of the underlying asset
     * @param receiver The address of the receiver
     * @param owner The address of the owner
     */
    function withdraw(uint256 amount, address receiver, address owner) external;

    /**
     * @notice Claim reward
     * @param owner The address of the owner
     * @param receiver The address of the receiver
     */
    function claim(address owner, address receiver) external;

    /**
     * @notice Manage debt and stake
     */
    function manageDebtAndStake() external;

    /**
     * @notice Staking factor precision
     * @return STAKING_PRECISION The staking factor precision
     */
    function STAKING_PRECISION() external view returns (uint256);

    /**
     * @notice Decimal precision
     * @return DECIMAL_PRECISION The decimal precision
     */
    function DECIMAL_PRECISION() external view returns (uint256);

    /**
     * @notice Preview reward amount for the address
     * @param asset The address of the asset
     * @param addr The address
     * @return reward The preview reward amount for the address
     */
    function previewReward(IERC20 asset, address addr) external view returns (uint256 reward);

    /**
     * @notice Last reward per token
     * @param asset The address of the asset
     * @return lastRewardPerToken The last reward per token
     */
    function lastRewardPerToken(IERC20 asset) external view returns (uint256 lastRewardPerToken);

    /**
     * @notice Last update time
     * @return lastUpdateTime The last update time
     */
    function lastUpdateTime() external view returns (uint256 lastUpdateTime);

    /**
     * @notice Last user reward per token
     * @param asset The address of the asset
     * @param addr The address
     * @return lastUserRewardPerToken The last user reward per token
     */
    function getLastUserRewardPerToken(
        IERC20 asset,
        address addr
    )
        external
        view
        returns (uint256 lastUserRewardPerToken);

    /**
     * @notice Pending reward for the address
     * @param asset The address of the asset
     * @param addr The address
     * @return pendingReward The pending reward for the address
     */
    function getPendingReward(IERC20 asset, address addr) external view returns (uint256 pendingReward);

    /**
     * @notice The claim function is open
     * @return isClaimable True if the claim function is open
     */
    function isClaimable() external view returns (bool isClaimable);

    /**
     * @notice The deposit function is open
     * @return isDepositEnabled True if the deposit function is open
     */
    function isDepositEnabled() external view returns (bool isDepositEnabled);

    /**
     * @notice underlying asset of the vault
     * @return underlyingAsset The address of the underlying asset
     */
    function underlyingAsset() external view returns (IERC20 underlyingAsset);

    /**
     * @notice smart vault manager of the vault
     * @return smartVaultManager The address of the smart vault manager
     */
    function smartVaultManager() external view returns (ISmartVaultManager smartVaultManager);

    /**
     * @notice reward vault of the vault
     * @return rewardVault The address of the reward vault
     */
    function rewardVault() external view returns (IRewardVault rewardVault);

    /**
     * @notice vault config of the vault
     * @return vaultConfig The vault configuration
     */
    function getVaultConfig() external view returns (VaultConfig memory vaultConfig);

    /**
     * @notice staking factor of the vault
     * @return stakingFactor The staking factor
     */
    function stakingFactor() external view returns (uint256 stakingFactor);

    /**
     * @notice get the staking amount
     * @return stakingAmount The staking amount
     */
    function getStakingAmount() external view returns (uint256 stakingAmount);

    /**
     * @notice get the minted debt
     * @return mintedDebt The minted debt
     */
    function getMintedDebt() external view returns (uint256 mintedDebt);

    /**
     * @notice get the reward token list
     * @return rewardTokenList The reward token list
     */
    function getRewardTokenList() external view returns (IERC20[] memory rewardTokenList);

    /**
     * @notice get the reward config
     * @param asset The address of the asset
     * @return rewardConfig The reward configuration
     */
    function getRewardConfig(IERC20 asset) external view returns (RewardConfig memory rewardConfig);

    /**
     * @notice get the total deposited underlying asset amount
     * @return totalDepositedUnderlying The total deposited underlying asset amount
     */
    function getTotalDepositedUnderlying() external view returns (uint256 totalDepositedUnderlying);

    /**
     * @notice get the strategy or not
     * @param _strategy The address of the strategy
     * @return isStrategy True if the address is the strategy
     */
    function isStrategy(address _strategy) external view returns (bool);

    /**
     * @notice check if whitelist mode is enabled
     * @return isWhitelistMode True if whitelist mode is enabled
     */
    function isWhitelistMode() external view returns (bool);

    /**
     * @notice check if the account is whitelisted
     * @param account The address of the account
     * @return isWhitelisted True if the account is whitelisted
     */
    function isWhitelisted(address account) external view returns (bool);

    /**
     * @notice withdraw from staking vault
     * @param amount The token amount
     */
    function withdrawFromStakingVault(uint256 amount) external;

    /**
     * @notice claim from staking vault
     */
    function claimRewardFromStakingVault() external;

    /**
     * @notice transfer token
     * @param asset The address of the asset
     * @param to The address of the receiver
     * @param amount The amount of the asset
     */
    function transferToken(IERC20 asset, address to, uint256 amount) external;
}
