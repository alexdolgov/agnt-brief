// SPDX-License-Identifier: UNLICENSED

// Copyright (c) 2024 JonesDAO - All rights reserved
// Jones DAO: https://www.jonesdao.io/

// Check https://docs.jonesdao.io/jones-dao/other/bounty for details on our bounty program.

pragma solidity ^0.7.6;
pragma abicoder v2;

import {ICLPool} from "src/interfaces/pool/velo/ICLPool.sol";
import {TickMath} from "src/libraries/velo/TickMath.sol";
import {LiquidityAmounts} from "@uniswap/v3-periphery/contracts/libraries/LiquidityAmounts.sol";

import {IManager} from "src/interfaces/manager/IManager.sol";

library VeloLiquidityLib {
    /**
     * @notice Get the amounts of the given numbers of liquidity tokens
     * @param pool Algebra liquidity pool contract
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @param liquidity The amount of liquidity tokens
     * @return Amount of token0 and token1
     */
    function amountsForLiquidity(address pool, int24 tickLower, int24 tickUpper, uint128 liquidity)
        public
        view
        returns (uint256, uint256)
    {
        (uint160 sqrtRatioX96,,,,,) = ICLPool(pool).slot0();

        return LiquidityAmounts.getAmountsForLiquidity(
            sqrtRatioX96, TickMath.getSqrtRatioAtTick(tickLower), TickMath.getSqrtRatioAtTick(tickUpper), liquidity
        );
    }

    /**
     * @notice Get the liquidity amount of the given numbers of token0 and token1
     * @param pool Algebra liquidity pool contract
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @param amount0 The amount of token0
     * @param amount1 The amount of token1
     * @return Amount of liquidity tokens
     */
    function liquidityForAmounts(address pool, int24 tickLower, int24 tickUpper, uint256 amount0, uint256 amount1)
        public
        view
        returns (uint128)
    {
        (uint160 sqrtRatioX96,,,,,) = ICLPool(pool).slot0();
        return LiquidityAmounts.getLiquidityForAmounts(
            sqrtRatioX96,
            TickMath.getSqrtRatioAtTick(tickLower),
            TickMath.getSqrtRatioAtTick(tickUpper),
            amount0,
            amount1
        );
    }

    /**
     * @notice Get the amounts needed in deposits of the given amoun0
     * @param pool Algebra liquidity pool contract
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @param amount0 The amount of token0
     * @return Amount of token0
     * @return Amount of token1
     */
    function amountsForAmount0(address pool, int24 tickLower, int24 tickUpper, uint256 amount0)
        public
        view
        returns (uint256, uint256)
    {
        (uint160 sqrtRatioX96,,,,,) = ICLPool(pool).slot0();

        uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);

        uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

        uint128 liquidity;

        if (sqrtRatioX96 <= sqrtRatioAX96) {
            liquidity = LiquidityAmounts.getLiquidityForAmount0(sqrtRatioAX96, sqrtRatioBX96, amount0);
        } else if (sqrtRatioX96 < sqrtRatioBX96) {
            liquidity = LiquidityAmounts.getLiquidityForAmount0(sqrtRatioX96, sqrtRatioBX96, amount0);
        } else {
            return (0, 0);
        }

        return LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96, sqrtRatioAX96, sqrtRatioBX96, liquidity);
    }

    /**
     * @notice Get the amounts needed in deposits of the given amount1
     * @param pool Algebra liquidity pool contract
     * @param tickLower The lower tick of the position
     * @param tickUpper The upper tick of the position
     * @param amount1 The amount of token1
     * @return Amount of token0
     * @return Amount of token1
     */
    function amountsForAmount1(address pool, int24 tickLower, int24 tickUpper, uint256 amount1)
        public
        view
        returns (uint256, uint256)
    {
        (uint160 sqrtRatioX96,,,,,) = ICLPool(pool).slot0();

        uint160 sqrtRatioAX96 = TickMath.getSqrtRatioAtTick(tickLower);

        uint160 sqrtRatioBX96 = TickMath.getSqrtRatioAtTick(tickUpper);

        if (sqrtRatioAX96 > sqrtRatioBX96) (sqrtRatioAX96, sqrtRatioBX96) = (sqrtRatioBX96, sqrtRatioAX96);

        uint128 liquidity;

        if (sqrtRatioX96 <= sqrtRatioAX96) {
            return (0, 0);
        } else if (sqrtRatioX96 < sqrtRatioBX96) {
            liquidity = LiquidityAmounts.getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioX96, amount1);
        } else {
            liquidity = LiquidityAmounts.getLiquidityForAmount1(sqrtRatioAX96, sqrtRatioBX96, amount1);
        }

        return LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96, sqrtRatioAX96, sqrtRatioBX96, liquidity);
    }

    /**
     * @notice Check if Ranges are valid
     */
    function checkRanges(IManager.Range[] calldata _ranges, address _pool) external view {
        ICLPool pool = ICLPool(_pool);
        uint256 length = _ranges.length;
        for (uint256 i; i < length;) {
            int24 tickLower = _ranges[i].tickLower;
            int24 tickUpper = _ranges[i].tickUpper;

            require(tickLower % pool.tickSpacing() == 0 && tickUpper % pool.tickSpacing() == 0, "Invalid Ticks");
            require(tickLower < tickUpper, "Invalid Ticks");

            // Check that two tick upper and tick lowers are not in array cannot be same
            for (uint256 j; j < i;) {
                if (tickLower == _ranges[j].tickLower) {
                    require(tickUpper != _ranges[j].tickUpper, "Invalid Ranges");
                }
                ++j;
            }

            ++i;
        }
    }

    /**
     * @notice Check if Range is valid
     */
    function checkRange(int24 tickLower, int24 tickUpper, address _pool) external view {
        ICLPool pool = ICLPool(_pool);

        require(tickLower % pool.tickSpacing() == 0 && tickUpper % pool.tickSpacing() == 0, "Invalid Ticks");
        require(tickLower < tickUpper, "Invalid Ticks");
    }
}
