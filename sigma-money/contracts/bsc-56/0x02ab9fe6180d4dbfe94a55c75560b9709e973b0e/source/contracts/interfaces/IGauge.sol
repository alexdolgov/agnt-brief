// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @notice Legacy gauge interface used by Voter and RewardClaimers
interface IGauge {
    function getReward(address account, address[] calldata tokens) external;
    function getRewardAndExit(address account, address[] calldata tokens) external;
    function notifyRewardAmount(address token, uint256 amount) external;
    function left(address token) external view returns (uint256);
    function whitelistReward(address _reward) external;
    function removeRewardWhitelist(address _reward) external;
}
