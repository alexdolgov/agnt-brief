// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IBIFKNRewarder.sol";

interface IBIFKNChefV2 {
    /**
     * @dev Struct representing user information.
     * It stores the amount of tokens the user has deposited and the reward debt.
     */
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
    }

    /**
     * @dev Struct representing a pool in the BifknChefV1 contract.
     * It contains information about the stake token, allocation points, last reward timestamp,
     * and reward token per share.
     */
    struct PoolInfo {
        IERC20 stakeToken;
        uint256 allocationPoints;
        uint256 lastRewardTimestamp;
        uint256 rewardTokenPerShare;
        uint256 totalStaked;
        IBIFKNRewarder rewarder;
    }

    function addNewPool(
        uint256 _allocationPoints,
        IERC20 _stakeToken,
        uint256 _bonusMultiplier,
        uint256 _startTimestamp,
        IBIFKNRewarder _rewarder
    ) external;

    function stake(uint256 _poolId, uint256 _amount) external;

    function unstake(uint256 _poolId, uint256 _amount) external;

    function pendingReward(
        uint256 _poolId,
        address _user
    )
        external
        view
        returns (
            uint256 pendingApex,
            address bonusTokenAddress,
            string memory bonusTokenSymbol,
            uint256 pendingBonusToken
        );

    function claimRewards(uint256 _pid) external;

    function autoCompound() external;

    function autoStake(uint256 _poolId) external;

    function emergencyWithdraw(uint256 _poolId) external;

    function userInfo(
        uint256 _poolId,
        address _user
    ) external view returns (IBIFKNChefV2.UserInfo memory);

    function poolInfo(
        uint256 _poolId
    ) external view returns (IBIFKNChefV2.PoolInfo memory);

    function getPoolInfoByToken(
        IERC20 _stakeToken
    )
        external
        view
        returns (
            uint256 _poolId,
            uint256 _allocationPoints,
            uint256 _lastRewardTimestamp,
            uint256 _rewardTokenPerShare
        );

    function totalAllocation() external view returns (uint256);

    function apexPerSecond() external view returns (uint256);

    function treasuryAddress() external view returns (address);

    function treasuryPercent() external view returns (uint256);
}
