// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.0;

interface IAlgebraV2Factory {
    function poolByPair(address token0, address token1) external view returns (address);

    function customPoolByPair(address deployer, address token0, address token1) external view returns (address);
}
