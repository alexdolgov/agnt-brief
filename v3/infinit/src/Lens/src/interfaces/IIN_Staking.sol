// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * @title IIN_Staking
 * @dev Interface for the IN_Staking contract
 */
interface IIN_Staking is IERC4626 {
    /// @notice Emitted when a rewarder contract is added
    event RewarderAdded(address indexed rewarder);

    /// @notice Emitted when a rewarder contract is removed
    event RewarderRemoved(address indexed rewarder);

    /// @notice Emitted when rewards are accrued from rewarder contracts
    event RewardsAccrued(uint256 amount);

    /// @notice Emitted when the unstaking contract address is set
    event UnstakingContractSet(address indexed unstakingContract);

    /// @notice Emitted when the minimum deposit amount is set
    event MinDepositAmountSet(uint256 minDepositAmount);

    /// @notice Emitted when the minimum withdraw amount is set
    event MinWithdrawAmountSet(uint256 minWithdrawAmount);

    // Custom errors
    /// @dev Thrown when an address is zero
    error ZeroAddress();

    /// @dev Thrown when the slippage is too high
    error Slippage();

    /// @dev Thrown when the active rewarders limit is exceeded
    error ActiveRewardersLengthLimitExceeded();

    /// @dev Thrown when the deposit amount is too low
    error DepositAmountTooLow();

    /// @dev Thrown when the withdraw amount is too low
    error WithdrawAmountTooLow();

    /// @dev Thrown when the amount is zero
    error ZeroAmount();

    /// @dev Thrown when a rewarder is already added
    error AlreadyAdded(address rewarder);

    /// @dev Thrown when a rewarder does not exist
    error RewarderNotExist(address rewarder);

    /**
     * @dev Adds a new rewarder contract address (owner only)
     * @param rewarder The address of the rewarder contract to add
     */
    function addRewarder(address rewarder) external;

    /**
     * @dev Removes a rewarder contract address (owner only)
     * @param rewarder The address of the rewarder contract to remove
     */
    function removeRewarder(address rewarder) external;

    /**
     * @dev Stakes assets and mints shares to the receiver with a minimum shares requirement
     * @param assets The amount of underlying assets to stake
     * @param receiver The address to receive the minted shares
     * @param minShares The minimum amount of shares that must be minted
     * @return shares The amount of shares minted
     */
    function stake(uint256 assets, address receiver, uint256 minShares) external returns (uint256 shares);

    /**
     * @dev Unstakes shares and withdraws assets to the unstaking contract with a minimum amount requirement
     * @param shares The amount of shares to unstake
     * @param receiver The address to receive the withdrawn assets (via unstaking)
     * @param owner The address that owns the shares being unstaked
     * @param minAmount The minimum amount of underlying assets that must be withdrawn
     * @return assets The amount of underlying assets withdrawn
     */
    function unstake(uint256 shares, address receiver, address owner, uint256 minAmount)
        external
        returns (uint256 assets);

    /**
     * @dev Sets the unstaking contract address (owner only)
     * @param unstakingContract_ The unstaking contract address
     */
    function setUnstakingContract(address unstakingContract_) external;

    /**
     * @dev Gets the unstaking contract address
     * @return The unstaking contract address
     */
    function unstakingContract() external view returns (address);

    /**
     * @dev Sets the minimum deposit amount (owner only)
     * @param minDepositAmount_ The minimum deposit amount
     */
    function setMinDepositAmount(uint128 minDepositAmount_) external;

    /**
     * @dev Sets the minimum withdraw amount (owner only)
     * @param minWithdrawAmount_ The minimum withdraw amount
     */
    function setMinWithdrawAmount(uint128 minWithdrawAmount_) external;

    /**
     * @dev Gets the rewarder contract address
     * @return The rewarder contract address
     */
    function getAllRewarders() external view returns (address[] memory);

    /**
     * @dev Gets the active user by index
     * @param index The index of the active user
     * @return The active user
     */
    function getActiveUserByIndex(uint256 index) external view returns (address);

    /**
     * @dev Gets the number of active users
     * @return The number of active users
     */
    function getActiveUsersLength() external view returns (uint256);

    /**
     * @dev Gets the minimum deposit amount
     * @return The minimum deposit amount
     */
    function minDepositAmount() external view returns (uint128);

    /**
     * @dev Gets the minimum withdraw amount
     * @return The minimum withdraw amount
     */
    function minWithdrawAmount() external view returns (uint128);
}
