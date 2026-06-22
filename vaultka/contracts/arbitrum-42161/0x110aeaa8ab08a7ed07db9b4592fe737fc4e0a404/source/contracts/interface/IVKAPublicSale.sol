// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

interface IVKAPublicSale {
  function totalETHDeposited() external view returns (uint256);
  function saleClose() external view returns (uint256);
}
