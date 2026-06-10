// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

import {IRewardVault} from "./IRewardVault.sol";

struct RewardParams {
    uint256 rewardRate;
    uint256 rewardIntegral;
    uint32 claimStartTime;
}

interface IStakingVault is IERC4626 {
    /// @notice The underlying token that this vault accepts for deposits
    /// @dev This is set during initialization and cannot be changed
    function UNDERLYING() external view returns (IERC20);

    /// @notice The name of the shares issued by this vault
    /// @dev This is a constant and set during deployment
    /// @return The name of the shares
    function SHARE_NAME() external view returns (string memory);

    /// @notice The symbol of the shares issued by this vault
    /// @dev This is a constant and set during deployment
    /// @return The symbol of the shares
    function SHARE_SYMBOL() external view returns (string memory);

    /// @notice The deposit limit for the vault when initialization
    /// @dev This is set during initialization and cannot be changed
    /// @dev Initial deposit to avoid 4626 inflation attack
    /// @return The deposit limit in terms of underlying tokens
    function INITIAL_DEPOSIT_LIMIT() external view returns (uint256);

    /// @notice The address of the reward vault associated with this staking vault
    /// @dev This is set during initialization and cannot be changed
    /// @return The address of the reward vault
    function rewardVault() external view returns (IRewardVault);

    /// @notice Timestamp of the last reward update
    /// @return The timestamp of the last update
    function lastUpdate() external view returns (uint32);

    /// @notice Maps reward tokens to user addresses to their reward integral values
    /// @param asset The address of the asset
    /// @param account The address of the user
    /// @return The reward integral value for the specified asset and account
    function rewardIntegralFor(address asset, address account) external view returns (uint256);

    /// @notice Maps reward tokens to user addresses to their pending rewards
    /// @param asset The address of the asset
    /// @param account The address of the user
    /// @return The pending reward amount for the specified asset and account
    function storedPendingReward(address asset, address account) external view returns (uint256);

    /// @notice Maps reward tokens to their reward parameters
    /// @param token The address of the reward token
    /// @return rewardRate The rate at which rewards are distributed
    /// @return rewardIntegral The integral of rewards for the token
    /// @return claimStartTime The timestamp when rewards can start being claimed
    function rewardParamsMap(address token)
        external
        view
        returns (uint256 rewardRate, uint256 rewardIntegral, uint32 claimStartTime);

    /// @notice Initializes the vault with a reward vault address
    /// @param _underlying The address of the underlying token contract
    /// @param _rewardVault The address of the reward vault contract
    function initialize(address _underlying, address _rewardVault) external;

    /// @notice Pauses all deposit, mint, redeem, withdraw, and claim operations
    /// @dev Can only be called by the contract owner
    function pause() external;

    /// @notice Resumes all deposit, mint, redeem, withdraw, and claim operations
    /// @dev Can only be called by the contract owner
    function resume() external;

    /// @notice Checks if the contract is currently paused
    /// @return True if the contract is paused, false otherwise
    function paused() external view returns (bool);

    /// @notice Adds a new asset to the emission list for rewards
    /// @param asset_ The address of the asset to add
    function addAssetToEmissionList(address asset_) external;

    /// @notice Removes an asset from the emission list and resets its reward rate
    /// @param asset_ The address of the asset to remove
    function removeAssetFromEmissionList(address asset_) external;

    /// @notice Sets reward parameters for a specific token
    /// @param token The address of the reward token
    /// @param rewardRate The rate at which rewards are distributed
    /// @param claimStartTime The timestamp when rewards can start being claimed
    function setRewardParams(address token, uint256 rewardRate, uint32 claimStartTime) external;

    /// @notice Updates the reward vault address
    /// @param _rewardVault The address of the new reward vault contract
    /// @dev Can only be called by the contract owner
    function setRewardVault(address _rewardVault) external;

    /// @notice Claims accumulated rewards for the caller
    /// @dev Updates reward integrals and transfers rewards through the reward vault
    function claimReward() external;

    /// @notice Calculates claimable rewards for a specific token and account
    /// @param token The address of the reward token
    /// @param account The address of the account to check
    /// @return The amount of rewards claimable
    function claimableReward(address token, address account) external view returns (uint256);

    /// @notice Checks if claiming has started for a specific token
    /// @param token The address of the token to check
    /// @return True if claiming period has started, false otherwise
    function isClaimStart(address token) external view returns (bool);

    /// @notice List of tokens that are currently being distributed as rewards
    /// @dev Can be modified by the owner through add/remove emission functions
    function emissionList(uint256 index) external view returns (address);

    /// @notice Returns the length of the emission list
    function emissionListLength() external view returns (uint256);

    /// @notice Simulates a deposit operation
    /// @param assets The amount of assets to deposit
    /// @return The number of shares that would be minted
    function simulateDeposit(uint256 assets) external view returns (uint256);

    /// @notice Simulates a mint operation
    /// @param shares The number of shares to mint
    /// @return The amount of assets that would be deposited
    function simulateMint(uint256 shares) external view returns (uint256);

    /// @notice Simulates a withdraw operation
    /// @param assets The amount of assets to withdraw
    /// @return The number of shares that would be burned
    function simulateWithdraw(uint256 assets) external view returns (uint256);

    /// @notice Simulates a redeem operation
    /// @param shares The number of shares to redeem
    /// @return The amount of assets that would be withdrawn
    function simulateRedeem(uint256 shares) external view returns (uint256);
}
