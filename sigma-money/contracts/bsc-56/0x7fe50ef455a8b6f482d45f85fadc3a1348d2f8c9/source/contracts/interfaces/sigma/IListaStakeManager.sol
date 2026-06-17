// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface IListaStakeManager {
  function convertSnBnbToBnb(uint256 _amount) external view returns (uint256);
}
