// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.7.6;

interface ICommonVaultStruct {
    /// @param sqrtPriceLimitX96OnPerp square root price limit scaled by 2^96 of Perp, not Uni spot
    struct SwapExactInputParams {
        address tokenIn;
        address tokenOut;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96OnPerp;
    }

    /// @param sqrtPriceLimitX96OnPerp square root price limit scaled by 2^96 of Perp, not Uni spot
    struct SwapExactOutputParams {
        address tokenIn;
        address tokenOut;
        address recipient;
        uint256 deadline;
        uint256 amountOut;
        uint256 amountInMaximum;
        uint160 sqrtPriceLimitX96OnPerp;
    }
}
