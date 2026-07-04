// SPDX-License-Identifier: agpl-3.0

pragma solidity 0.7.5;

interface IStakedToken {
    function stake(address to, uint256 amount) external;
    function redeem(address to, uint256 amount) external;
    function claimRewards(address payable to, uint256 amount) external;
    function getTotalRewardsBalance(address staker) external returns (uint256);
    function getNextCooldownTimestamp(
        uint256 fromCooldownTimestamp,
        uint256 amountToReceive,
        address toAddress,
        uint256 toBalance
        ) external returns (uint256);
}
