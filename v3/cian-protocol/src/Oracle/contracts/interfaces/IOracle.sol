// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

interface IOracle {
    function getAssetPrice(address _token) external view returns (uint256);

    function getAssetsPrices(address[] calldata _assets) external view returns (uint256[] memory);
}
