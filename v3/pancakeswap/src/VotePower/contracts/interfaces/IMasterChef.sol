//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IMasterChef {
  function userInfo(uint256 _pid, address _user) external view returns (uint256, uint256);
}
