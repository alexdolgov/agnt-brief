// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "./IBIFKNChefV2.sol";

interface IBIFKNRewarder {
    function onReward(address _user, uint256 _stakedAmount) external;

    function pendingIncentives(
        address user
    ) external view returns (uint256 pending);

    function rewardToken() external view returns (IERC20);

    function setPoolId(uint256 _poolId) external;

    function balance() external view returns (uint256);

    function rewardsDuration() external view returns (uint256);

    function depositRewardToken(uint256 _amount) external;
}
