// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.6.0;

interface IAutoChef {
    function deposit(uint256 _pid, uint256 _amount) external;
    function withdraw(uint256 _pid, uint256 _amount) external;
    function pendingAUTO(uint256 _pid, address _user) external view returns (uint256);
    function userInfo(uint256 _pid, address _user) external view returns (uint256, uint256);
    function emergencyWithdraw(uint256 _pid) external;
    function poolInfo(uint256 _pid) external view returns (address, uint256, uint256, uint256, address);
    function totalAllocPoint() external view returns(uint256);
    function AUTOPerBlock() external view returns(uint256);
    function stakedWantTokens(uint256 _pid, address _user) external view returns (uint256);
}