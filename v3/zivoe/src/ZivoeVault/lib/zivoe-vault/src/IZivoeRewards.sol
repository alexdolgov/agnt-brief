// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

interface IZivoeRewards {
    function stake(uint256 amount) external;
    function withdraw(uint256 amount) external;
    function getRewards() external;
    function balanceOf(address account) external view returns (uint256);
}
