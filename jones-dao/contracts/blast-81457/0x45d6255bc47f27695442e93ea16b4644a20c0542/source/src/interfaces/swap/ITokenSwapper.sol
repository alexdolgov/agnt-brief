// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

interface ITokenSwapper {
    function swap(
        address tokenIn,
        uint256 amountIn,
        address tokenOut,
        uint256 minAmountOut,
        bytes calldata externalData
    ) external returns (uint256 amountOut);

    function minAmountOut(address tokenIn, address tokenOut, uint256 amountIn) external view returns (uint256);
}
