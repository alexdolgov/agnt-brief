// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

interface IAerodrome {

    function deposit(uint256 amount) external; 
    function withdraw(uint256 amount) external;
    function getReward(address _user) external;
    function balanceOf(address _user) external view returns (uint256);
    function earned(address _user) external view returns (uint256);

}