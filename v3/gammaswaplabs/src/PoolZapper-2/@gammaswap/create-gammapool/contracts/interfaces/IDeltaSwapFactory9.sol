// SPDX-License-Identifier: GPL-v3
pragma solidity 0.8.21;

interface IDeltaSwapFactory9 {
    function getPair(address, address) external returns (address);

    function createPair(address tokenA, address tokenB) external returns (address);
}