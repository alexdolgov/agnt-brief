// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {IInfinityPoolFactory} from "src/interfaces/IInfinityPoolFactory.sol";
import {IInfinityPoolPaymentCallback} from "src/interfaces/IInfinityPoolPaymentCallback.sol";
import {IInfinityPool} from "src/interfaces/IInfinityPool.sol";
import {Spot} from "src/libraries/external/Spot.sol";
import {fromUint256, Quad, POSITIVE_ZERO} from "src/types/ABDKMathQuad/Quad.sol";
import {OptQuad} from "src/types/Optional/OptQuad.sol";
import {OPT_QUAD_NONE} from "src/Constants.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {BytesLib} from "src/periphery/libraries/BytesLib.sol";

//Get estimated amountOut decoded from the custom error message
contract InfinityPoolsQuoter is IInfinityPoolPaymentCallback {
    error PoolDoesNotExist();

    function infinityPoolPaymentCallback(int256 amount0, int256 amount1, bytes calldata data) external {}

    constructor() {}

    function getAmountsOut(IInfinityPoolFactory factory, address tokenIn, address tokenOut, int256 splits, uint256 amountIn, uint256)
        external
        returns (uint256 amountOut, Spot.SpotSwapParams memory spotSwapParams)
    {
        IInfinityPool pool = IInfinityPool(factory.getPool(tokenIn, tokenOut, splits));
        if (address(pool) == address(0)) revert PoolDoesNotExist();

        (address token0,,) = pool.getPoolInfo();

        Quad tenToPowerTokenDecimals = fromUint256(10 ** IERC20Metadata(tokenIn).decimals());

        spotSwapParams = Spot.SpotSwapParams({
            shove: fromUint256(amountIn) / tenToPowerTokenDecimals,
            ofToken: token0 != tokenIn,
            limitPrice: OPT_QUAD_NONE,
            remainingAmount: OPT_QUAD_NONE
        });

        (int256 amount0, int256 amount1) = quoteSwap(pool, spotSwapParams);
        amountOut = token0!=tokenIn? uint256(-amount0):uint256(-amount1);
    }

    function quoteSwap(IInfinityPool pool, Spot.SpotSwapParams memory spotSwapParams) public returns (int256 amount0, int256 amount1) {
        try pool.swap(spotSwapParams, address(this), "0x1") {} //pass non zero data to trigger custom error revert
        catch (bytes memory reason) {
            ( amount0,  amount1) = abi.decode(BytesLib.slice(reason, 4, reason.length - 4), (int256, int256)); //ignore the first 4 bytes

        }
    }

    function getAmountsIn(IInfinityPoolFactory factory, address tokenIn, address tokenOut, int256 splits, uint256 amountOut, uint256)
        external
        returns (uint256 amountIn, Spot.SpotSwapParams memory spotSwapParams)
    {
        IInfinityPool pool = IInfinityPool(factory.getPool(tokenIn, tokenOut, splits));
        if (address(pool) == address(0)) revert PoolDoesNotExist();

        (address token0,,) = pool.getPoolInfo();

        Quad tenToPowerTokenDecimals = fromUint256(10 ** IERC20Metadata(tokenOut).decimals());

        spotSwapParams = Spot.SpotSwapParams({
            shove: fromUint256(amountOut).neg() / tenToPowerTokenDecimals,
            ofToken: token0 != tokenOut,
            limitPrice: OPT_QUAD_NONE,
            remainingAmount: OPT_QUAD_NONE
        });

      
        (int256 amount0, int256 amount1) = quoteSwap(pool, spotSwapParams);
        amountIn= token0!=tokenOut? uint256(amount0):uint256(amount1);
    }
}
