//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ISmartChefInitializable {
  function userInfo(address _user) external view returns (uint256, uint256);
}