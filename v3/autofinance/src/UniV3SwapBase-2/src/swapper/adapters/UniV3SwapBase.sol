// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity 0.8.17;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { Path } from "src/external/univ3/Path.sol";

import { IUniswapV3SwapRouterBase } from "src/interfaces/external/uniswap/IUniswapV3SwapRouterBase.sol";
import { ISwapRouter } from "src/interfaces/swapper/ISwapRouter.sol";
import { BaseAdapter, ISyncSwapper } from "src/swapper/adapters/BaseAdapter.sol";
import { UniV3Swap } from "src/swapper/adapters/UniV3Swap.sol";
import { LibAdapter } from "src/libs/LibAdapter.sol";

/**
 * @title UniV3SwapBase
 * @dev An adapter for Uniswap V3 that enables swapper functionality. Rather than swapping on a single pool,
 * this contract uses Uniswap's router to execute a swap across potentially multiple pools.
 *
 * swapData.pool: In the context of UniV3Swap, the pool attribute of SwapData is utilized to store the UniV3 router
 * address.
 *
 * swapData.data: Swap paths in Uniswap V3 are encoded in bytes format, denoted as `path` here.
 * Each path constitutes a sequence of token addresses and pool fees that represent the pools to be used in the swaps.
 * The path is encoded in the format:
 * (tokenIn, fee, tokenOut/tokenIn, fee, tokenOut).
 * The `path` essentially defines the route taken by the swap operation.
 *
 * Differs from the base contract because the swap params don't take a deadline
 */
contract UniV3SwapBase is UniV3Swap {
    constructor(
        address _router
    ) UniV3Swap(_router) { }

    /// @inheritdoc ISyncSwapper
    function swap(
        address routerAddress,
        address sellTokenAddress,
        uint256 sellAmount,
        address,
        uint256 minBuyAmount,
        bytes memory data
    ) external virtual override onlyRouter returns (uint256) {
        LibAdapter._approve(IERC20(sellTokenAddress), routerAddress, sellAmount);

        IUniswapV3SwapRouterBase.ExactInputParams memory params = IUniswapV3SwapRouterBase.ExactInputParams({
            path: data,
            recipient: address(this),
            amountIn: sellAmount,
            amountOutMinimum: minBuyAmount
        });

        return IUniswapV3SwapRouterBase(routerAddress).exactInput(params);
    }
}
