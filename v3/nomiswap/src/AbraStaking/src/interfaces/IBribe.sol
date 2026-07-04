// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IBribe {
    function addRewardToken(address rewardToken) external;
    function deposit(uint amount, uint256 lockupId) external;
    function withdraw(uint amount, uint256 lockupId) external;
    function getRewardForOwner(uint tokenId, address[] memory tokens) external;
    function getRewardForAddress(address _owner, address[] memory tokens) external;
    function canNotifyReward() external view returns (bool);
    function notifyRewardAmount(address token, uint amount) external;
    function left(address token) external view returns (uint);
    function rewardsListLength() external view returns (uint);
    function rewardTokens(uint index) external view returns (address);
    function getReward(address[] calldata tokens) external;
    function getReward(address[] calldata tokens, uint epochs) external;
    function getReward(address _owner, address[] calldata tokens) external;
    function getReward(address _owner, address[] calldata tokens, uint epochs) external;
}
