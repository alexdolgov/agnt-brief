// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

// interface for swap manager
interface ISwapManager {
    function swap(address tokenIn, address tokenOut, uint amountIn, uint24 fee, uint amountOutMinimum) external payable returns (uint256 amountOut);
}
