// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

interface IAssetPriceFetcher {
    function getAssetPrice(address _asset) external view returns (uint256);
}