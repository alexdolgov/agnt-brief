// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.25;

interface IRewardTracker {
    function claim() external returns (uint256);
    function claim(address _receiver) external returns (uint256);
    function updateRewards() external;
    function claimable(address _account) external view returns (uint256);
    function claimableReward(address _account) external view returns (uint256);

    // Simulation functions
    function averageStakedAmounts(address _account) external view returns (uint256);
    function cumulativeRewards(address _account) external view returns (uint256);

    function transferredAverageStakedAmounts(address _account) external view returns (uint256);
    function transferredCumulativeRewards(address _account) external view returns (uint256);
}
