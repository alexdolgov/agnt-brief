// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// token swapper for Butter (tokenin => Butter)
interface ITokenSwapper {
    function swap(address tokenIn, uint256 amountIn, address tokenOut, uint256 minAmountOut, bytes memory externalData)
        external
        returns (uint256 amountOut);

    function minAmountOut(address tokenIn, address tokenOut, uint256 amountIn) external view returns (uint256);

    error EmptyTokenIn();
    error EmptyTokenOut();
    error EmptyRouter();
    error EmptyPath();
    error InvalidPathSegment(address from, address next);
    error InvalidAmountIn(uint256 amountIn, uint256 referenceAmount);
    error InvalidMinAmountOut(uint256 minAmountOut, uint256 referenceAmount);
    error InvalidTokenIn(address tokenIn, address referenceToken);
    error InvalidTokenOut(address tokenOut, address referenceToken);
    error InvalidReceiver(address receiver, address referenceReceiver);
    error Slippage(uint256 amountOut, uint256 minAmountOut);
}
