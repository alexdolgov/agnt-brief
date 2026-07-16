// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IRouter } from "contracts/interfaces/external/aerodrome/IRouter.sol";
import { IPool } from "contracts/interfaces/external/aerodrome/IPool.sol";

import {
    ILiquidityConnector,
    AddLiquidityParams,
    RemoveLiquidityParams,
    SwapParams,
    GetAmountOutParams
} from "contracts/interfaces/ILiquidityConnector.sol";

struct VelodromeLiquidityExtraData {
    bool isStablePool;
}

struct VelodromeSwapExtraData {
    IRouter.Route[] routes;
}

contract VelodromeRouterConnector is ILiquidityConnector {
    function addLiquidity(
        AddLiquidityParams memory addLiquidityParams
    ) external payable override {
        VelodromeLiquidityExtraData memory _extraData = abi.decode(
            addLiquidityParams.extraData, (VelodromeLiquidityExtraData)
        );
        IRouter(addLiquidityParams.router).addLiquidity(
            addLiquidityParams.tokens[0],
            addLiquidityParams.tokens[1],
            _extraData.isStablePool,
            addLiquidityParams.desiredAmounts[0],
            addLiquidityParams.desiredAmounts[1],
            addLiquidityParams.minAmounts[0],
            addLiquidityParams.minAmounts[1],
            address(this),
            block.timestamp
        );
    }

    function removeLiquidity(
        RemoveLiquidityParams memory removeLiquidityParams
    ) external override {
        VelodromeLiquidityExtraData memory _extraData = abi.decode(
            removeLiquidityParams.extraData, (VelodromeLiquidityExtraData)
        );
        IRouter(removeLiquidityParams.router).removeLiquidity(
            removeLiquidityParams.tokens[0],
            removeLiquidityParams.tokens[1],
            _extraData.isStablePool,
            removeLiquidityParams.lpAmountIn,
            removeLiquidityParams.minAmountsOut[0],
            removeLiquidityParams.minAmountsOut[1],
            address(this),
            block.timestamp
        );
    }

    function swapExactTokensForTokens(
        SwapParams memory swap
    ) external payable override {
        VelodromeSwapExtraData memory _extraData =
            abi.decode(swap.extraData, (VelodromeSwapExtraData));
        IRouter(swap.router).swapExactTokensForTokens(
            swap.amountIn,
            swap.minAmountOut,
            _extraData.routes,
            address(this),
            block.timestamp
        );
    }

    function getAmountOut(
        GetAmountOutParams memory getAmountOutParams
    ) external view override returns (uint256) {
        return IPool(getAmountOutParams.lpToken).getAmountOut(
            getAmountOutParams.amountIn, getAmountOutParams.tokenIn
        );
    }
}
