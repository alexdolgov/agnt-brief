// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

interface IAlienBase {

    function deposit(uint256 pid, uint256 amount) external; 
    function withdraw(uint256 pid, uint256 amount) external;
    function userInfo(uint256 _pid, address _user) external view returns (uint256, uint256, uint256, uint256);
    function pendingTokens(uint256 _pid, address _user) external view returns (address[] memory, string[] memory, uint256[] memory, uint256[] memory);
    function emergencyWithdraw(uint256 pid) external;


}