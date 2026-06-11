/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

interface ILiquidStaking {

  function sharesToUnderlying(uint) external view returns (uint256 shares);

  function shares(address) external view returns (uint256 shares);
  
  function totalShares() external view returns (uint256);
  
}
