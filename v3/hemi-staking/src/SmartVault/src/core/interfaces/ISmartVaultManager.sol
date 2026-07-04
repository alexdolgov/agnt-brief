// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { IDebtToken } from "../../dependencies/satoshi-core/interfaces/IDebtToken.sol";

import { IPriceFeedAggregator } from "../../dependencies/satoshi-core/interfaces/IPriceFeedAggregator.sol";
import { IStakingVault } from "../../dependencies/satoshi-staking-pool/interfaces/IStakingVault.sol";
import { IPriceFeed } from "../../priceFeed/interfaces/IPriceFeed.sol";

import { IRewardVault } from "./IRewardVault.sol";
import { ISmartVault, VaultConfig } from "./ISmartVault.sol";
import { ISmartVault, RewardConfig, VaultConfig } from "./ISmartVault.sol";
import { IERC20 } from "@openzeppelin/contracts/interfaces/IERC20.sol";
import { IBeacon } from "@openzeppelin/contracts/proxy/beacon/IBeacon.sol";

/**
 * @notice The oracle record
 * @param priceFeed The price feed address
 * @param decimals The decimals
 */
struct OracleRecord {
    IPriceFeed priceFeed;
    uint8 decimals;
}

/**
 * @notice The parameters for depositing
 * @param vault The vault to deposit
 * @param amount The amount to deposit
 * @param receiver The receiver of the deposit
 */
struct DepositParams {
    ISmartVault vault;
    uint256 amount;
    address receiver;
}

/**
 * @notice The parameters for withdrawing
 * @param vault The vault to withdraw
 * @param amount The amount to withdraw underlying asset
 * @param receiver The receiver of the withdrawal
 */
struct WithdrawParams {
    ISmartVault vault;
    uint256 amount;
    address receiver;
}

/**
 * @notice The parameters for claim
 * @dev Only used if the reward vault delay time is 0
 * @param vault The vault to claim
 * @param amount The amount to claim
 * @param receiver The receiver of the claim
 */
struct ClaimParams {
    ISmartVault vault;
    address receiver;
}

/**
 * @title ISmartVaultManager interface
 * @notice The interface for the smart vault manager
 */
interface ISmartVaultManager {
    event VaultConfigUpdated(ISmartVault vault, VaultConfig vaultConfig);
    event SmartVaultCreated(
        ISmartVault indexed smartVault,
        IERC20 indexed underlyingAsset,
        IRewardVault rewardVault,
        VaultConfig vaultConfig,
        string name,
        string symbol
    );
    event Deposit(ISmartVault indexed vault, uint256 amount, address indexed sender, address indexed receiver);
    event Withdraw(ISmartVault indexed vault, uint256 amount, address indexed owner, address indexed receiver);
    event Claim(ISmartVault indexed vault, address indexed owner, address indexed receiver);
    event RewardVaultUpdated(IRewardVault indexed rewardVault);
    event StakingVaultUpdated(IStakingVault indexed stakingVault);
    event NewOracleRegistered(IERC20 indexed token, IPriceFeed priceFeed);
    event StrategySet(ISmartVault indexed vault, address strategy, bool whitelisted);
    event StakingFactorUpdated(ISmartVault indexed vault, uint256 factor);
    event StakingEnabledUpdated(ISmartVault indexed vault, bool indexed enabled);
    event RewardConfigUpdated(ISmartVault indexed vault, IERC20 rewardToken, RewardConfig rewardConfig);
    event RewardPerTokenIncreased(ISmartVault indexed vault, IERC20 indexed asset, uint256 amount);
    event RewardTokenListUpdated(ISmartVault indexed vault, IERC20[] rewardTokens);
    event RewardTokenAdded(ISmartVault indexed vault, IERC20 token);
    event WhitelistModeSet(ISmartVault indexed vault, bool indexed isWhitelistMode);
    event WhitelistedSet(ISmartVault indexed vault, address indexed account, bool indexed whitelisted);
    event ManageDebtAndStake(ISmartVault indexed vault, address indexed caller);

    error InvalidVault(ISmartVault vault);
    error VaultAlreadyExists(ISmartVault vault);
    error InvalidZeroAddress();
    error InvalidFeedResponse();
    error AssetBalanceChangedUnexpectedly(
        IERC20 token, ISmartVault vault, address from, uint256 amount, uint256 balanceDiff
    );
    error DebtTokenMintingFailed(uint256 amount);
    error DebtTokenBurningFailed(uint256 amount);

    /**
     * @notice Initialize the vault manager
     * @param _vaultBeacon The smart vault beacon contract
     * @param _debtToken The debt token
     * @param _rewardVault The reward vault
     * @param _stakingVault The staking vault
     */
    function initialize(
        IBeacon _vaultBeacon,
        IDebtToken _debtToken,
        IRewardVault _rewardVault,
        IStakingVault _stakingVault
    )
        external;

    /**
     * @notice Pause the vault manager
     */
    function pause() external;

    /**
     * @notice Resume the vault manager
     */
    function resume() external;

    /**
     * @notice Pause the smart vault
     * @param vault The vault to pause
     */
    function pauseSmartVault(ISmartVault vault) external;

    /**
     * @notice Resume the smart vault
     * @param vault The vault to resume
     */
    function resumeSmartVault(ISmartVault vault) external;

    /**
     * @notice Set the price feed
     * @param _token The token address
     * @param _priceFeed The price feed address
     */
    function setPriceFeed(IERC20 _token, IPriceFeed _priceFeed) external;

    /**
     * @notice Fetch the price
     * @param _token The token address
     * @return price The price
     */
    function fetchPrice(IERC20 _token) external returns (uint256);

    /**
     * @notice Fetch the price without checking the last update time
     * @param _token The token address
     * @return price The price
     */
    function fetchPriceUnsafe(IERC20 _token) external returns (uint256, uint256);

    /**
     * @notice Create a vault
     * @param underlyingAsset The underlying asset of the vault
     * @param vaultConfig The vault configuration
     * @param name The name of the vault
     * @param symbol The symbol of the vault
     * @return vault The vault address
     */
    function createSmartVault(
        IERC20 underlyingAsset,
        VaultConfig memory vaultConfig,
        string memory name,
        string memory symbol
    )
        external
        returns (address);

    /**
     * @notice Update the vault configuration
     * @param vault The vault to update
     * @param vaultConfig The new vault configuration
     */
    function updateVaultConfig(ISmartVault vault, VaultConfig memory vaultConfig) external;

    /**
     * @notice Set the strategy
     * @param vault The vault to set the strategy
     * @param _strategy The strategy address
     * @param _whitelisted The strategy is whitelisted or not
     */
    function setStrategy(ISmartVault vault, address _strategy, bool _whitelisted) external;

    /**
     * @notice Set the whitelist mode
     * @param vault The vault to set the whitelist mode
     * @param isWhitelistMode The new whitelist mode
     */
    function setWhitelistMode(ISmartVault vault, bool isWhitelistMode) external;

    /**
     * @notice Set the whitelisted status
     * @param vault The vault to set the whitelisted status
     * @param account The account to set the whitelisted status
     * @param whitelisted The new whitelisted status
     */
    function setWhitelisted(ISmartVault vault, address account, bool whitelisted) external;

    /**
     * @notice Update the staking vault
     * @param _stakingVault The new staking vault
     */
    function updateStakingVault(IStakingVault _stakingVault) external;

    /**
     * @notice Update the staking enabled
     * @param vault The vault to update
     * @param enabled The new staking enabled
     */
    function updateStakingEnabled(ISmartVault vault, bool enabled) external;

    /**
     * @notice Update the staking factor
     * @param vault The vault to update
     * @param factor The new staking factor
     */
    function updateStakingFactor(ISmartVault vault, uint256 factor) external;

    /**
     * @notice Update the reward configuration
     * @param vault The vault to update
     * @param rewardToken The reward token
     * @param rewardConfig The new reward configuration
     */
    function updateRewardConfig(ISmartVault vault, IERC20 rewardToken, RewardConfig memory rewardConfig) external;

    /**
     * @notice Update the reward token list
     * @param vault The vault to update
     * @param rewardTokens The new reward token list
     */
    function updateRewardTokenList(ISmartVault vault, IERC20[] memory rewardTokens) external;

    /**
     * @notice Add token to the reward list
     * @param vault The vault to update
     * @param token The token to add
     */
    function addTokenToRewardList(ISmartVault vault, IERC20 token) external;

    /**
     * @notice Increase the reward per token
     * @param vault The vault to update
     * @param asset The asset to update
     * @param amount The amount to increase
     */
    function increaseRewardPerToken(ISmartVault vault, IERC20 asset, uint256 amount) external;

    /**
     * @notice Deposit ERC20
     * @dev Only used if the underlying asset is ERC20
     * @param depositParams The deposit parameters
     */
    function depositERC20(DepositParams memory depositParams) external;

    /**
     * @notice Withdraw
     * @param withdrawParams The withdraw parameters
     */
    function withdraw(WithdrawParams memory withdrawParams) external;

    /**
     * @notice claim
     * @param claimParams The claim parameters
     */
    function claim(ClaimParams memory claimParams) external;

    /**
     * @notice Manage debt and stake
     * @param vault The vault to manage debt and stake
     */
    function manageDebtAndStake(ISmartVault vault) external;

    /**
     * @notice mint debt token callback function
     * @param amount The amount to mint
     */
    function vaultMintDebtTokenCallback(uint256 amount) external;

    /**
     * @notice burn debt token callback function
     * @param amount The amount to burn
     */
    function vaultBurnDebtTokenCallback(uint256 amount) external;

    /**
     * @notice Transfer callback function
     * @param token The token address
     * @param from The sender address
     * @param amount The amount to transfer
     */
    function transferCallback(IERC20 token, address from, uint256 amount) external;

    /**
     * @notice Claim reward from staking vault
     * @param vault The vault to claim
     */
    function claimRewardFromStakingVault(ISmartVault vault) external;

    /**
     * @notice Transfer vault token
     * @param vault The vault
     * @param token The token to transfer
     * @param to The receiver address
     * @param amount The amount to transfer
     */
    function transferVaultToken(ISmartVault vault, IERC20 token, address to, uint256 amount) external;

    /**
     * @notice Transfer token
     * @param token The token to transfer
     * @param to The receiver address
     * @param amount The amount to transfer
     */
    function transferToken(IERC20 token, address to, uint256 amount) external;

    /**
     * @notice Execute strategy
     * @param vault The vault to execute the strategy
     * @param strategy The strategy address
     * @param data The data to execute the strategy
     */
    function executeStrategy(ISmartVault vault, address strategy, bytes calldata data) external;

    /**
     * @notice Get the price target digits for price feed from oracle source
     * @return PRICE_TARGET_DIGITS The price target digits
     */
    function PRICE_TARGET_DIGITS() external view returns (uint256);

    /**
     * @notice Get the paused status
     * @return paused The paused status
     */
    function paused() external view returns (bool);

    /**
     * @notice Get the vault beacon
     * @return vaultBeacon The vault beacon
     */
    function vaultBeacon() external view returns (IBeacon vaultBeacon);

    /**
     * @notice Get the reward vault
     * @return rewardVault The reward vault
     */
    function rewardVault() external view returns (IRewardVault);

    /**
     * @notice Total shares of the vault
     * @param vault The vault to query
     * @return totalShares The total shares of the vault
     */
    function totalShares(ISmartVault vault) external view returns (uint256 totalShares);

    /**
     * @notice Shares of the user
     * @param vault The vault to query
     * @param addr The user address
     * @return shares The shares of the user
     */
    function shares(ISmartVault vault, address addr) external view returns (uint256 shares);

    /**
     * @notice Preview reward of the user
     * @param vault The vault to query
     * @param asset The asset to query
     * @param addr The user address
     * @return reward The preview reward of the user
     */
    function previewReward(ISmartVault vault, IERC20 asset, address addr) external view returns (uint256 reward);

    /**
     * @notice Last reward per token
     * @param vault The vault to query
     * @param asset The asset to query
     * @return lastRewardPerToken The last reward per token
     */
    function lastRewardPerToken(ISmartVault vault, IERC20 asset) external view returns (uint256 lastRewardPerToken);

    /**
     * @notice Last update time
     * @param vault The vault to query
     * @return lastUpdateTime The last update time
     */
    function lastUpdateTime(ISmartVault vault) external view returns (uint256 lastUpdateTime);

    /**
     * @notice Last user reward per token
     * @param vault The vault to query
     * @param asset The asset to query
     * @param addr The user address
     * @return lastUserRewardPerToken The last user reward per token
     */
    function getLastUserRewardPerToken(
        ISmartVault vault,
        IERC20 asset,
        address addr
    )
        external
        view
        returns (uint256 lastUserRewardPerToken);

    /**
     * @notice Pending reward of the user
     * @param vault The vault to query
     * @param asset The asset to query
     * @param addr The user address
     * @return pendingReward The pending reward of the user
     */
    function getPendingReward(
        ISmartVault vault,
        IERC20 asset,
        address addr
    )
        external
        view
        returns (uint256 pendingReward);

    /**
     * @notice Deposit is enabled or not
     * @param vault The vault to query
     * @return depositEnabled The deposit is enabled or not
     */
    function isDepositEnabled(ISmartVault vault) external view returns (bool depositEnabled);

    /**
     * @notice Claim is enabled or not
     * @param vault The vault to query
     * @return claimable The claim is enabled or not
     */
    function isClaimable(ISmartVault vault) external view returns (bool claimable);

    /**
     * @notice vault is valid or not
     * @param vault The vault to query
     * @return validVault The vault is valid or not
     */
    function isValidVault(ISmartVault vault) external view returns (bool validVault);

    /**
     * @notice Check if the vault is in whitelist mode
     * @param vault The vault to query
     * @return isWhitelistMode The whitelist mode status
     */
    function isWhitelistMode(ISmartVault vault) external view returns (bool);

    /**
     * @notice Check if the user is whitelisted
     * @param vault The vault to query
     * @param account The user address
     * @return isWhitelisted The whitelisted status
     */
    function isWhitelisted(ISmartVault vault, address account) external view returns (bool);

    /**
     * @notice Get the underlying asset of the vault
     * @param vault The vault to query
     * @return underlyingAsset The underlying asset of the vault
     */
    function getUnderlyingAsset(ISmartVault vault) external view returns (IERC20 underlyingAsset);

    /**
     * @notice Get the vault configuration
     * @param vault The vault to query
     * @return vaultConfig The vault configuration
     */
    function getVaultConfig(ISmartVault vault) external view returns (VaultConfig memory vaultConfig);

    /**
     * @notice Get the reward configuration
     * @param vault The vault to query
     * @param rewardToken The reward token
     * @return rewardConfig The reward configuration
     */
    function getRewardConfig(
        ISmartVault vault,
        IERC20 rewardToken
    )
        external
        view
        returns (RewardConfig memory rewardConfig);

    /**
     * @notice Debt token contract
     * @return debtToken The debt token contract
     */
    function debtToken() external view returns (IDebtToken);

    /**
     * @notice Get the staking vault
     * @return stakingVault The staking vault
     */
    function stakingVault() external view returns (IStakingVault);

    /**
     * @notice Fetch the oracle records
     * @param _token The token address
     * @return priceFeed The price feed
     * @return decimals The decimals
     */
    function oracleRecords(IERC20 _token) external view returns (IPriceFeed priceFeed, uint8 decimals);
}
