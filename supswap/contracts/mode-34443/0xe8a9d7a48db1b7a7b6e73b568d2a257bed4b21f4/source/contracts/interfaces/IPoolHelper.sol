// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IPoolHelper {
    function createPoolAndMint(address nftManager, address token0, address token1, uint160 sqrtPriceX96, address lpReceiver, uint256 amount0, uint256 amount1) external returns (address pool, uint256 tokenId);
}