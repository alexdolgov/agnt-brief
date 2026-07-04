// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IRewardPool {

    function balanceOf(address account) external view returns (uint256);
    function booster() external view returns (address);
    function earned(address _account, address _rewardToken) external view returns (uint256);
    function getReward(address _account) external;
    function getRewardTokens() external view returns (address[] memory);
    function getRewardTokensLength() external view returns (uint256);
    function pid() external view returns (uint256);
    function rewardTokens(uint256) external view returns (address);
    function stakingToken() external view returns (address);
    function withdraw(uint256 amount) external;

}
