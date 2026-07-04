// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/// @notice Topaz Slipstream SwapRouter (v3). Single-hop is keyed by
///         `int24 tickSpacing` (not `uint24 fee`); multi-hop `path` packs
///         `token | tickSpacing(3 bytes) | token | ...`.
interface ISwapRouter {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        int24 tickSpacing;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    function exactInputSingle(ExactInputSingleParams calldata params) external payable returns (uint256 amountOut);

    struct ExactInputParams {
        bytes path;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }

    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut);
}
