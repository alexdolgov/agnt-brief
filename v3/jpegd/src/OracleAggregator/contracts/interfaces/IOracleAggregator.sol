// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IOracleAggregator {
    function getAssetETHPrice(address _asset) external view returns (uint);
}
