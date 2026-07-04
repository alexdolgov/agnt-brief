// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IHyperSwapFactory {
    function getPair(address token0, address token1) external view returns (address);
}
