// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;


interface IBaseVault {
  function depositAndMint(uint256 collateralAmount, uint256 burnAmount, bytes calldata priceUpdateData) external payable;
  function withdrawAndBurn(uint256 collateralAmount, uint256 burnAmount, bytes calldata priceUpdateData) external payable;
  function balanceOf(address owner) external view returns (uint);
  function initialize(address _synth, address _oracle, address _collateralAsset, address _controller, string memory symbol) external;
  function collateralAsset() external pure returns (address);
  function oracle() external view returns (address);
  function updatePrice(bytes calldata priceUpdateData) external payable returns (uint price);
  function latestPrice() external view returns (uint price);
}