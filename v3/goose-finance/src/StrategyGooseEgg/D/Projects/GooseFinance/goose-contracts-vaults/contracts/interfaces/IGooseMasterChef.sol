// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

interface IGooseMasterChef {
    function deposit(uint256 _pid, uint256 _amount) external;
    function withdraw(uint256 _pid, uint256 _amount) external;
    function pendingEgg(uint256 _pid, address _user) external view returns (uint256);
    function userInfo(uint256 _pid, address _user) external view returns (uint256, uint256);
    function emergencyWithdraw(uint256 _pid) external;
    function poolInfo(uint256 _pid) external view returns (address, uint256, uint256, uint256, uint16);
    function totalAllocPoint() external view returns(uint256);
    function eggPerBlock() external view returns(uint256);
}