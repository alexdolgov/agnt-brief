// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IResellPoolFactory {
    event NewPool(address pool, uint256 timestamp);

    function getResellPoolsLength() external view returns (uint256);

    function getResellPools() external view returns (address[] memory);

    function getPoolsByAsset(address asset) external view returns (address[] memory);

    function deployResellPool(address asset, address buyToken) external returns (address);
}
