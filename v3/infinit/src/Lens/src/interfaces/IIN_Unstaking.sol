// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/**
 * @title IIN_Unstaking Interface
 * @dev Interface for the IN_Unstaking contract that manages token unstaking schedules
 */
interface IIN_Unstaking {
    enum UnstakingStatus {
        Inactive,
        Active,
        Canceled,
        Claimed
    }

    /**
     * @dev Struct containing unstaking information
     * @param user User address
     * @param status Unstaking status
     * @param amount Total amount of tokens to be unstaked
     * @param startTs Timestamp when unstaking starts
     * @param endTs Timestamp when unstaking ends and tokens can be claimed
     * @param lastUpdatedTs Timestamp when the unstaking status was last updated
     */
    struct UnstakingInfo {
        address user;
        uint32 startTs;
        uint32 endTs;
        uint128 amount;
        UnstakingStatus status;
        uint32 lastUpdatedTs;
    }

    // Events
    /// @dev Emitted when a new unstaking schedule is created
    event UnstakingStarted(address indexed user, uint256 indexed index, uint256 amount, uint256 startTs, uint256 endTs);
    /// @dev Emitted when a user claims their unstaked tokens
    event UnstakingClaimed(address indexed user, uint256 indexed index, uint256 amount);
    /// @dev Emitted when a user cancels their unstaking schedule
    event UnstakingCanceled(address indexed user, uint256 indexed index, uint256 amount);
    /// @dev Emitted when the unstaking duration is set
    event UnstakingDurationSet(uint256 unstakingDuration);

    // Custom errors
    /// @dev Emitted when the caller is not the staking vault
    error NotStakingVault();
    /// @dev Emitted when the unstaking schedule is not yet claimable
    error NotYetClaimable();
    /// @dev Emitted when the amount is invalid
    error ZeroAmount();
    /// @dev Emitted when the unstaking schedule is not active
    error NotActive();
    /// @dev Emitted when the user index is invalid
    error InvalidUserIndex();
    /// @dev Emitted when the address is zero
    error ZeroAddress();
    /// @dev Emitted when the unstaking balance is insufficient
    error InsufficientBalance();

    // state variables

    /**
     * @dev The token being unstaked (retrieved from stakingVault)
     * @return The asset token contract
     */
    function asset() external view returns (IERC20);

    /**
     * @dev The staking vault contract that can transfer assets to this contract
     * @return The staking vault contract
     */
    function stakingVault() external view returns (IERC4626);

    /**
     * @dev The unstaking duration
     * @return The unstaking duration
     */
    function unstakingDuration() external view returns (uint32);

    /**
     * @dev Returns the total balance of unstaking tokens
     */
    function totalUnstakingBalance() external view returns (uint256);

    /**
     * @dev Initializes the unstaking contract
     * @param stakingVault_ The staking vault contract
     * @param unstakingDuration_ The unstaking duration
     *
     * Requirements:
     * - _stakingVault must not be zero address
     * - _unstakingDuration must be greater than 0
     */
    function initialize(address stakingVault_, uint32 unstakingDuration_) external;

    /**
     * @dev Creates a new unstaking schedule for a user (staking vault will transfer assets to this contract)
     * @param user Address of the user to create unstaking for
     * @param amount Amount of tokens to unstake
     */
    function unstake(address user, uint256 amount) external;

    /**
     * @dev Sets the unstaking duration
     * @param unstakingDuration_ The new unstaking duration
     */
    function setUnstakingDuration(uint32 unstakingDuration_) external;

    /**
     * @dev Claims unstaked tokens
     * @param userIndices Array of indices in the user's active unstaking array
     */
    function claim(uint256[] calldata userIndices) external;

    /**
     * @dev Cancels multiple unstaking schedules for the caller
     * @param userIndices Array of indices in the user's active unstaking array
     */
    function cancelUnstaking(uint256[] calldata userIndices) external;

    /**
     * @dev Returns unstaking info at given index
     * @param index Index in the unstakingInfos array
     */
    function getUnstakingInfoByIndex(uint256 index) external view returns (UnstakingInfo memory);

    /**
     * @dev Returns total number of unstaking schedules
     */
    function getUnstakingInfosLength() external view returns (uint256);

    /**
     * @dev Returns global active unstaking info at given index
     * @param index Index in global active unstaking array
     */
    function getActiveUnstakingInfoByIndex(uint256 index) external view returns (UnstakingInfo memory);

    /**
     * @dev Returns total number of active unstaking schedules
     */
    function getActiveUnstakingInfosLength() external view returns (uint256);

    /**
     * @dev Returns global canceled unstaking info at given index
     * @param index Index in global canceled unstaking array
     */
    function getCanceledUnstakingInfoByIndex(uint256 index) external view returns (UnstakingInfo memory);

    /**
     * @dev Returns total number of canceled unstaking schedules
     */
    function getCanceledUnstakingInfosLength() external view returns (uint256);

    /**
     * @dev Returns global claimed unstaking info at given index
     * @param index Index in global claimed unstaking array
     */
    function getClaimedUnstakingInfoByIndex(uint256 index) external view returns (UnstakingInfo memory);

    /**
     * @dev Returns total number of claimed unstaking schedules
     */
    function getClaimedUnstakingInfosLength() external view returns (uint256);
    /**
     * @dev Returns user's active unstaking info at given index
     * @param user User address
     * @param userIndex Index in user's active unstaking array
     */
    function getUserActiveUnstakingInfoByIndex(address user, uint256 userIndex)
        external
        view
        returns (UnstakingInfo memory);

    /**
     * @dev Returns number of user's active unstaking schedules
     * @param user User address
     */
    function getUserActiveUnstakingInfosLength(address user) external view returns (uint256);

    /**
     * @dev Returns user's canceled unstaking info at given index
     * @param user User address
     * @param userIndex Index in user's canceled unstaking array
     */
    function getUserCanceledUnstakingInfoByIndex(address user, uint256 userIndex)
        external
        view
        returns (UnstakingInfo memory);

    /**
     * @dev Returns number of user's canceled unstaking schedules
     * @param user User address
     */
    function getUserCanceledUnstakingInfosLength(address user) external view returns (uint256);

    /**
     * @dev Returns user's claimed unstaking info at given index
     * @param user User address
     * @param userIndex Index in user's claimed unstaking array
     */
    function getUserClaimedUnstakingInfoByIndex(address user, uint256 userIndex)
        external
        view
        returns (UnstakingInfo memory);

    /**
     * @dev Returns number of user's claimed unstaking schedules
     * @param user User address
     */
    function getUserClaimedUnstakingInfosLength(address user) external view returns (uint256);
}
