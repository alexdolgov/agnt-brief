pragma solidity ^0.8.19;

// SPDX-License-Identifier: MIT

interface IPlanetRouter {
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns(uint256[] memory amounts);

function addLiquidity (
    address token0,
    address token1,
    uint256 amount0,
    uint256 amount1,
    uint256 min0,
    uint256 min1,
    address to,
    uint256 blockTimestamp) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);
}