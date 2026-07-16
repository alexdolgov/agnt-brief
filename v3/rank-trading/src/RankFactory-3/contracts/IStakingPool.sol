// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IStakingPool {
    struct UserInfo {
        uint256 amount;
        uint256 rewardDebt;
    }

    struct PoolInfo {
        IERC20 stakingToken;
        IERC20 rewardToken;
        uint256 lastRewardTimestamp;
        uint256 accTokenPerShare;
        uint256 startTime;
        uint256 endTime;
        uint256 precision;
        uint256 totalStaked;
        uint256 totalReward;
        address owner;
    }

    event Deposit(address indexed user, uint256 amount, uint256 poolIndex);
    event Withdraw(address indexed user, uint256 amount, uint256 poolIndex);
    event Claim(address indexed user, uint256 amount, uint256 poolIndex);
    event EmergencyWithdraw(address indexed user, uint256 amount);
    event PoolCreated(
        address indexed stakingToken,
        address indexed rewardToken,
        uint256 startTime,
        uint256 endTime,
        uint256 precision,
        uint256 totalReward
    );
    event PoolStopped(uint256 poolId);
    event WithdrawTokensEmptyPool(uint256 poolId);
    event RewardAdded(
        uint256 poolId,
        uint256 rewardAmount,
        address rewardToken
    );

    function initialize() external;

    function addPool(
        address stakingToken,
        address rewardToken,
        uint256 startTime,
        uint256 endTime,
        uint256 precision,
        uint256 totalReward
    ) external;

    function addPoolReward(
        uint256 poolId,
        uint256 additionalRewardAmount
    ) external;

    function stopReward(uint256 poolId) external;

    function getUserInfo(
        address user,
        uint256 poolId
    ) external view returns (UserInfo memory);

    function pendingReward(
        address _user,
        uint256 poolId
    ) external view returns (uint256);

    function updatePool(uint256 _pid) external;

    function deposit(uint256 _amount, uint256 poolId) external;

    function withdraw(uint256 _amount, uint256 poolId) external;

    function claimReward(uint256 poolId) external;

    function setPoolStakeLimit(uint256 poolId, uint256 stakeLimit) external;

    function emergencyWithdraw(uint256 poolId) external;

    function getPools() external view returns (PoolInfo[] memory);

    function getPoolLength() external view returns (uint256);

    function saveMe(address tokenAddress, uint256 amount) external;

    function updateVersion(uint256 _currentVersion) external;

    function initializePoolV2() external;
}
