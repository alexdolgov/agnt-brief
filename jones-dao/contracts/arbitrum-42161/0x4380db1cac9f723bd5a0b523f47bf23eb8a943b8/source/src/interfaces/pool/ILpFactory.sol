// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;

interface ILpFactory {
    function getPool(address token0, address token1, uint24 fee) external view returns (address);
}
