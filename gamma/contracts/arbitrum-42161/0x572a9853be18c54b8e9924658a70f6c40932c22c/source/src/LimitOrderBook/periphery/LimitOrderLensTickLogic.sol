// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {PoolKey} from "v4-core/types/PoolKey.sol";
import {PoolId} from "v4-core/types/PoolId.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {LiquidityAmounts} from "v4-periphery/lib/v4-core/test/utils/LiquidityAmounts.sol";
import {TickInfo, PopulatedTick} from "./LimitOrderLensTickTypes.sol";

library LimitOrderLensTickLogic {
    function getTickInfosAroundCurrent(
        IPoolManager poolManager,
        PoolId poolId,
        PoolKey memory poolKey,
        uint24 numTicks
    ) external view returns (int24 currentTick, uint160 sqrtPriceX96, TickInfo[] memory tickInfos) {
        (sqrtPriceX96, currentTick, , ) = StateLibrary.getSlot0(poolManager, poolId);

        (int24 startTick, int24 endTick) = _calculateTickRange(currentTick, poolKey.tickSpacing, numTicks);
        int24 broadStartTick = TickMath.minUsableTick(poolKey.tickSpacing);

        PopulatedTick[] memory populatedTicks =
            _getPopulatedTicksInRange(poolManager, poolId, poolKey.tickSpacing, broadStartTick, endTick);

        tickInfos = _calculateOrderbookLiquidity(
            populatedTicks, startTick, endTick, poolKey.tickSpacing, currentTick, sqrtPriceX96
        );

        return (currentTick, sqrtPriceX96, tickInfos);
    }

    function _calculateTickRange(
        int24 currentTick,
        int24 tickSpacing,
        uint24 numTicks
    ) private pure returns (int24 startTick, int24 endTick) {
        int24 alignedTick = (currentTick / tickSpacing) * tickSpacing;
        startTick = alignedTick - int24(numTicks);
        endTick = alignedTick + int24(numTicks);

        int24 minTick = TickMath.minUsableTick(tickSpacing);
        int24 maxTick = TickMath.maxUsableTick(tickSpacing);
        if (startTick < minTick) startTick = minTick;
        if (endTick > maxTick) endTick = maxTick;

        return (startTick, endTick);
    }

    function _getPopulatedTicksInRange(
        IPoolManager poolManager,
        PoolId poolId,
        int24 tickSpacing,
        int24 startTick,
        int24 endTick
    ) private view returns (PopulatedTick[] memory populatedTicks) {
        uint256 totalPopulatedTicks = 0;
        for (int16 wordPos = int16((startTick / tickSpacing) >> 8); wordPos <= int16((endTick / tickSpacing) >> 8);) {
            uint256 bitmap = StateLibrary.getTickBitmap(poolManager, poolId, wordPos);
            if (bitmap != 0) {
                for (uint256 i = 0; i < 256;) {
                    if (bitmap & (1 << i) == 0) {
                        unchecked {
                            i++;
                        }
                        continue;
                    }

                    int24 tick = ((int24(wordPos) << 8) + int24(uint24(i))) * tickSpacing;
                    if (tick >= startTick && tick <= endTick) {
                        unchecked {
                            totalPopulatedTicks++;
                        }
                    }
                    unchecked {
                        i++;
                    }
                }
            }
            unchecked {
                wordPos++;
            }
        }

        if (totalPopulatedTicks == 0) {
            return new PopulatedTick[](0);
        }

        populatedTicks = new PopulatedTick[](totalPopulatedTicks);
        uint256 index = 0;

        for (int16 wordPos = int16((startTick / tickSpacing) >> 8); wordPos <= int16((endTick / tickSpacing) >> 8);) {
            uint256 bitmap = StateLibrary.getTickBitmap(poolManager, poolId, wordPos);
            if (bitmap != 0) {
                for (uint256 i = 0; i < 256;) {
                    if (bitmap & (1 << i) != 0) {
                        int24 tick = ((int24(wordPos) << 8) + int24(uint24(i))) * tickSpacing;
                        if (tick >= startTick && tick <= endTick) {
                            (uint128 liquidityGross, int128 liquidityNet) =
                                StateLibrary.getTickLiquidity(poolManager, poolId, tick);

                            populatedTicks[index++] = PopulatedTick({
                                tick: tick,
                                liquidityNet: liquidityNet,
                                liquidityGross: liquidityGross
                            });
                        }
                    }
                    unchecked {
                        i++;
                    }
                }
            }
            unchecked {
                wordPos++;
            }
        }

        return populatedTicks;
    }

    function _calculateOrderbookLiquidity(
        PopulatedTick[] memory populatedTicks,
        int24 startTick,
        int24 endTick,
        int24 tickSpacing,
        int24 currentTick,
        uint160 sqrtPriceX96
    ) private pure returns (TickInfo[] memory tickInfos) {
        uint256 totalTicks = uint256(int256((endTick - startTick) / tickSpacing)) + 1;
        tickInfos = new TickInfo[](totalTicks);

        for (uint256 i = 0; i < totalTicks;) {
            int24 tick = startTick + int24(int256(i) * int256(tickSpacing));
            uint128 liquidityAtTick = _calculateLiquidityAtTickFromPopulated(populatedTicks, tick);

            if (currentTick >= tick) {
                tickInfos[i].tick = tick;
                tickInfos[i].sqrtPrice = TickMath.getSqrtPriceAtTick(tick);
            } else {
                tickInfos[i].tick = tick + tickSpacing;
                tickInfos[i].sqrtPrice = TickMath.getSqrtPriceAtTick(tick + tickSpacing);
            }

            if (liquidityAtTick > 0) {
                _calculateTokenAmountsFromLiquidity(
                    tickInfos[i], liquidityAtTick, tick, tickSpacing, currentTick, sqrtPriceX96
                );
            }
            unchecked {
                i++;
            }
        }

        return tickInfos;
    }

    function _calculateLiquidityAtTickFromPopulated(
        PopulatedTick[] memory populatedTicks,
        int24 targetTick
    ) private pure returns (uint128 activeLiquidity) {
        for (uint256 i = 0; i < populatedTicks.length;) {
            if (populatedTicks[i].tick <= targetTick) {
                int128 liquidityNet = populatedTicks[i].liquidityNet;
                unchecked {
                    if (liquidityNet < 0) {
                        activeLiquidity = activeLiquidity - uint128(-liquidityNet);
                    } else {
                        activeLiquidity = activeLiquidity + uint128(liquidityNet);
                    }
                }
            }
            unchecked {
                i++;
            }
        }

        return activeLiquidity;
    }

    function _calculateTokenAmountsFromLiquidity(
        TickInfo memory tickInfo,
        uint128 liquidity,
        int24 tick,
        int24 tickSpacing,
        int24 currentTick,
        uint160 sqrtPriceX96
    ) private pure {
        uint160 sqrtPriceLowerX96 = TickMath.getSqrtPriceAtTick(tick);
        uint160 sqrtPriceUpperX96 = TickMath.getSqrtPriceAtTick(tick + tickSpacing);

        if (currentTick < tick) {
            tickInfo.token0Amount =
                LiquidityAmounts.getAmount0ForLiquidity(sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity);
        } else if (currentTick >= tick + tickSpacing) {
            tickInfo.token1Amount =
                LiquidityAmounts.getAmount1ForLiquidity(sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity);
        } else {
            (tickInfo.token0Amount, tickInfo.token1Amount) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96, sqrtPriceLowerX96, sqrtPriceUpperX96, liquidity
            );
        }

        if (tickInfo.token0Amount > 0) {
            tickInfo.totalTokenAmountsinToken1 = FullMath.mulDiv(
                tickInfo.token0Amount, FullMath.mulDiv(sqrtPriceX96, sqrtPriceX96, 1 << 96), 1 << 96
            ) + tickInfo.token1Amount;
        } else {
            tickInfo.totalTokenAmountsinToken1 = tickInfo.token1Amount;
        }
    }
}
