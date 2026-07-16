// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SwapParams } from "contracts/structs/LiquidityStructs.sol";
import {
    INftFarmConnector,
    Farm,
    NftPosition
} from "contracts/interfaces/INftFarmConnector.sol";
import { ISwapRouter } from
    "contracts/interfaces/external/uniswap/ISwapRouter.sol";
import {
    UniswapV3Connector,
    NftAddLiquidity,
    NftRemoveLiquidity
} from "contracts/connectors/UniswapV3Connector.sol";
import { IAlgebraPool } from
    "contracts/interfaces/external/algebra/IAlgebraPool.sol";
import { IAlgebraNonfungiblePositionManager } from
    "contracts/interfaces/external/algebra/IAlgebraNonfungiblePositionManager.sol";

struct FenixV3SwapExtraData {
    address pool;
    bytes path;
}

contract FenixV3Connector is UniswapV3Connector {
    function swapExactTokensForTokens(
        SwapParams memory swap
    ) external payable override {
        FenixV3SwapExtraData memory extraData =
            abi.decode(swap.extraData, (FenixV3SwapExtraData));

        IERC20(swap.tokenIn).approve(extraData.pool, swap.amountIn);

        ISwapRouter.ExactInputParams memory params = ISwapRouter
            .ExactInputParams({
            path: extraData.path,
            recipient: address(this),
            deadline: block.timestamp + 1,
            amountIn: swap.amountIn,
            amountOutMinimum: swap.minAmountOut
        });

        ISwapRouter(swap.router).exactInput(params);
    }

    function claim(
        NftPosition calldata position,
        address[] memory,
        uint128 amount0Max,
        uint128 amount1Max,
        bytes calldata // extraData
    ) external payable override {
        _claim_fees(position, amount0Max, amount1Max);
    }

    function _mint(
        NftAddLiquidity memory addLiquidityParams
    ) internal virtual override {
        IAlgebraNonfungiblePositionManager.MintParams memory params =
        IAlgebraNonfungiblePositionManager.MintParams({
            token0: addLiquidityParams.pool.token0,
            token1: addLiquidityParams.pool.token1,
            tickLower: addLiquidityParams.tickLower,
            tickUpper: addLiquidityParams.tickUpper,
            amount0Desired: addLiquidityParams.amount0Desired,
            amount1Desired: addLiquidityParams.amount1Desired,
            amount0Min: addLiquidityParams.amount0Min,
            amount1Min: addLiquidityParams.amount1Min,
            recipient: address(this),
            deadline: block.timestamp + 1
        });

        IAlgebraNonfungiblePositionManager(address(addLiquidityParams.nft)).mint(
            params
        );
    }

    function tick(
        address pool
    ) external view virtual override returns (int24 result) {
        (, result,,,,) = IAlgebraPool(pool).globalState();
    }

    function _get_current_liquidity(
        NftRemoveLiquidity memory removeLiquidityParams
    ) internal view override returns (uint128 currentLiquidity) {
        (,,,,,, currentLiquidity,,,,) = IAlgebraNonfungiblePositionManager(
            address(removeLiquidityParams.nft)
        ).positions(removeLiquidityParams.tokenId);
    }
}
