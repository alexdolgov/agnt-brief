// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


interface IBaseVault {
  function depositAndMint(uint256 collateralAmount, uint256 burnAmount, bytes calldata priceUpdateData) external payable;
  function withdrawAndBurn(uint256 collateralAmount, uint256 burnAmount, bytes calldata priceUpdateData) external payable;
  function balanceOf(address owner) external view returns (uint);
  function collateralAsset() external view returns (address);
  function oracle() external view returns (address);
  function updatePrice(bytes calldata priceUpdateData) external payable returns (uint price);
  function latestPrice() external view returns (uint price);
  function checkIncome() external returns (uint income);
}