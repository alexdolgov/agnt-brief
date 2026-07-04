// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.19;

interface IAgaveOracle {

  function getAssetPrice(address asset) external view returns(uint256);

  function getAssetsPrices(address[] calldata assets) external view returns(uint256[] memory);

}