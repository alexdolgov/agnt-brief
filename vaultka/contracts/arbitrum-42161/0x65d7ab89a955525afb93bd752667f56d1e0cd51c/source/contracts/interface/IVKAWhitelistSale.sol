// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

interface IVKAWhitelistSale {
  function getShortFallAmount() external view returns (uint256);

  function totalETHDeposited() external view returns (uint256);

  function allocateVKAToPublicSale() external returns (uint256);
  function vkaTokensAllocated() external view returns (uint256);
  function wlUsersVKAAllocation() external view returns (uint256);

  function saleClose() external view returns (uint256);
}
