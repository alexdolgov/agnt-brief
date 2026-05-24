// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IBatchRouter {
    struct SwapPathStep {
        address pool;
        IERC20 tokenOut;
        // If true, the "pool" is an ERC4626 Buffer. Used to wrap/unwrap tokens if pool doesn't have enough liquidity.
        bool isBuffer;
    }

    struct SwapPathExactAmountIn {
        IERC20 tokenIn;
        // For each step:
        // If tokenIn == pool, use removeLiquidity SINGLE_TOKEN_EXACT_IN.
        // If tokenOut == pool, use addLiquidity UNBALANCED.
        SwapPathStep[] steps;
        uint256 exactAmountIn;
        uint256 minAmountOut;
    }
    function swapExactIn(
        SwapPathExactAmountIn[] memory paths,
        uint256 deadline,
        bool wethIsEth,
        bytes calldata userData
    )
        external
        payable
        returns (
            uint256[] memory pathAmountsOut,
            address[] memory tokensOut,
            uint256[] memory amountsOut
        );
}
