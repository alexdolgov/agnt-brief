pragma solidity 0.8.23;

interface IStakePool {
    event Deposit(address indexed account, uint256 amount);
    event AddRewardPool(uint256 indexed poolId);
    event UpdateRewardPool(uint256 indexed poolId, uint256 endRewardBlock, uint256 rewardPerBlock);
    event PayRewardPool(uint256 indexed poolId, address indexed rewardToken, address indexed account, uint256 pendingReward, uint256 rebaseAmount, uint256 paidReward);
    event UpdateRewardRebaser(uint256 indexed poolId, address rewardRebaser);
    event UpdateRewardMultiplier(uint256 indexed poolId, address rewardMultiplier);
    event Withdraw(address indexed account, uint256 amount);

    function rewardPoolInfoLength() external view returns (uint256);
    function addRewardPool(
        address _rewardToken,
        uint256 _startTime,
        uint256 _endRewardTime,
        uint256 _rewardPerSecond
    ) external;
    function updateRewardPool(
        uint8 _pid,
        uint256 _endRewardTime,
        uint256 _rewardPerSecond
    ) external;
}
