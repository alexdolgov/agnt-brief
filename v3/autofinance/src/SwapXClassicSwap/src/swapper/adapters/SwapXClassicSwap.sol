// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import { Errors } from "src/utils/Errors.sol";
import { LibAdapter } from "src/libs/LibAdapter.sol";
import { ISwapRouter } from "src/interfaces/swapper/ISwapRouter.sol";
import { IV2SwapRouter } from "src/interfaces/external/swapx/IV2SwapRouter.sol";
import { BaseAdapter, ISyncSwapper } from "src/swapper/adapters/BaseAdapter.sol";

contract SwapXClassicSwap is BaseAdapter {
    IV2SwapRouter public immutable swapXRouter;

    constructor(address _swapXRouter, address _router) BaseAdapter(_router) {
        Errors.verifyNotZero(_swapXRouter, "swapXRouter");
        swapXRouter = IV2SwapRouter(_swapXRouter);
    }

    /// @inheritdoc ISyncSwapper
    function validate(address fromAddress, ISwapRouter.SwapData memory swapData) external view override {
        IV2SwapRouter.Route[] memory routes = abi.decode(swapData.data, (IV2SwapRouter.Route[]));

        uint256 routesLength = routes.length;
        if (routesLength == 0) revert Errors.ItemNotFound();
        if (fromAddress != routes[0].from) revert DataMismatch("fromToken");
        if (swapData.token != routes[routesLength - 1].to) revert DataMismatch("toToken");

        uint256 iter = 0;
        for (; iter < routesLength - 1;) {
            if (routes[iter].to != routes[iter + 1].from) revert DataMismatch("internalRoute");
            unchecked {
                ++iter;
            }
        }

        if (address(swapXRouter) != swapData.pool) revert DataMismatch("router");
    }

    /// @inheritdoc ISyncSwapper
    function swap(
        address routerAddress,
        address sellTokenAddress,
        uint256 sellAmount,
        address,
        uint256 minBuyAmount,
        bytes memory data
    ) external override onlyRouter returns (uint256 amountReceived) {
        LibAdapter._approve(IERC20(sellTokenAddress), routerAddress, sellAmount);

        amountReceived = IV2SwapRouter(routerAddress).swapExactTokensForTokens(
            sellAmount, minBuyAmount, abi.decode(data, (IV2SwapRouter.Route[])), address(this)
        );

        // slither-disable-next-line timestamp
        if (amountReceived < minBuyAmount) revert Errors.SlippageExceeded(minBuyAmount, amountReceived);
    }
}
