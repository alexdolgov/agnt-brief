// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2025 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { ISwapRouter } from "src/interfaces/swapper/ISwapRouter.sol";
import { ISyncSwapper } from "src/interfaces/swapper/ISyncSwapper.sol";
import { IRouter } from "src/interfaces/external/balancer/v3/IRouter.sol";

import { BalancerV3BaseSwap, IERC20 } from "src/swapper/adapters/BalancerV3BaseSwap.sol";

/// @title Swap adapter for Balancer v3 single step swaps
contract BalancerV3SingleSwap is BalancerV3BaseSwap {
    constructor(
        address _router,
        address _vaultExplorer,
        address _permit2,
        address _balRouter
    ) BalancerV3BaseSwap(_router, _vaultExplorer, _permit2, _balRouter) { }

    /// @inheritdoc ISyncSwapper
    function validate(address fromAddress, ISwapRouter.SwapData memory swapData) external view override {
        _validatePool(swapData.pool, fromAddress, swapData.token);
    }

    /// @inheritdoc ISyncSwapper
    function swap(
        address pool,
        address sellTokenAddress,
        uint256 sellAmount,
        address buyTokenAddress,
        uint256 minBuyAmount,
        bytes memory
    ) external override onlyRouter returns (uint256) {
        _permit2Approval(sellTokenAddress, sellAmount);

        return IRouter(balRouter).swapSingleTokenExactIn(
            pool,
            IERC20(sellTokenAddress),
            IERC20(buyTokenAddress),
            sellAmount,
            minBuyAmount,
            block.timestamp,
            false,
            ""
        );
    }
}
