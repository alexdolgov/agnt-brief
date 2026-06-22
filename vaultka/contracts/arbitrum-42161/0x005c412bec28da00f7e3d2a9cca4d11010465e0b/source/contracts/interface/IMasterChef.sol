// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

interface IMasterChef {
    function userInfo(uint256 _pid, address _user) external view returns (uint256, uint256);
    function unstakeAndLiquidate(uint256 _pid, address user, uint256 amount) external;
}