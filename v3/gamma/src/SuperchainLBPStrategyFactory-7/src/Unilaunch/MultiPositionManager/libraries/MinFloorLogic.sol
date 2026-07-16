// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IMultiPositionManager} from "../interfaces/IMultiPositionManager.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {FullMath} from "v4-core/libraries/FullMath.sol";
import {FixedPoint96} from "v4-core/libraries/FixedPoint96.sol";
import {LiquidityAmounts} from "v4-periphery/lib/v4-core/test/utils/LiquidityAmounts.sol";
import {RebalanceTypes} from "./RebalanceTypes.sol";

library MinFloorLogic {
    struct MinFloorStats {
        uint256 deficit0;
        uint256 deficit1;
        uint256 slack0;
        uint256 slack1;
    }

    struct MinFloorInputs {
        uint256[] token0Allocations;
        uint256[] token1Allocations;
        int24 currentTick;
        IMultiPositionManager.Range[] baseRanges;
        uint160 sqrtPriceX96;
        RebalanceTypes.FloorReserveInfo floorInfo;
        uint256 available0;
        uint256 available1;
        uint256 floorIdx;
    }

    function applyRangeMinFloors(
        uint256[] memory token0Allocations,
        uint256[] memory token1Allocations,
        int24 currentTick,
        IMultiPositionManager.Range[] memory baseRanges,
        uint160 sqrtPriceX96,
        RebalanceTypes.FloorReserveInfo memory floorInfo,
        uint256 available0,
        uint256 available1
    )
        external
        pure
        returns (
            uint256[] memory updatedToken0,
            uint256[] memory updatedToken1,
            RebalanceTypes.FloorReserveInfo memory updatedFloorInfo
        )
    {
        MinFloorInputs memory inputs = MinFloorInputs({
            token0Allocations: token0Allocations,
            token1Allocations: token1Allocations,
            currentTick: currentTick,
            baseRanges: baseRanges,
            sqrtPriceX96: sqrtPriceX96,
            floorInfo: floorInfo,
            available0: available0,
            available1: available1,
            floorIdx: floorInfo.active ? floorInfo.index : type(uint256).max
        });

        if (inputs.baseRanges.length == 0) {
            return (token0Allocations, token1Allocations, floorInfo);
        }

        (uint256[] memory min0, uint256[] memory min1, MinFloorStats memory stats) =
            _computeMinFloorArraysAndStats(inputs);

        if (stats.deficit0 == 0 && stats.deficit1 == 0) {
            return (token0Allocations, token1Allocations, floorInfo);
        }

        if (stats.deficit0 > stats.slack0 || stats.deficit1 > stats.slack1) {
            return (token0Allocations, token1Allocations, floorInfo);
        }

        updatedFloorInfo = _applyMinFloorDonors(inputs, min0, min1, stats);
        return (inputs.token0Allocations, inputs.token1Allocations, updatedFloorInfo);
    }

    function _computeMinFloorArraysAndStats(
        MinFloorInputs memory inputs
    ) private pure returns (uint256[] memory min0, uint256[] memory min1, MinFloorStats memory stats) {
        uint256 length = inputs.baseRanges.length;
        min0 = new uint256[](length);
        min1 = new uint256[](length);

        (uint256 baseSlack0, uint256 baseSlack1) = _computeFloorSlack(
            inputs.token0Allocations,
            inputs.token1Allocations,
            inputs.floorInfo,
            inputs.available0,
            inputs.available1
        );
        stats.slack0 = baseSlack0;
        stats.slack1 = baseSlack1;

        for (uint256 i = 0; i < length; ++i) {
            if (i == inputs.floorIdx) continue;
            if (inputs.baseRanges[i].upperTick <= inputs.baseRanges[i].lowerTick) continue;

            (uint256 floor0, uint256 floor1) =
                _minAllocationForRange(inputs.baseRanges[i], inputs.currentTick, inputs.sqrtPriceX96);
            if (floor0 == 0 && floor1 == 0) {
                continue;
            }
            min0[i] = floor0;
            min1[i] = floor1;

            uint256 alloc0 = inputs.token0Allocations[i];
            uint256 alloc1 = inputs.token1Allocations[i];

            if (alloc0 < min0[i]) {
                stats.deficit0 += min0[i] - alloc0;
            } else {
                stats.slack0 += alloc0 - min0[i];
            }

            if (alloc1 < min1[i]) {
                stats.deficit1 += min1[i] - alloc1;
            } else {
                stats.slack1 += alloc1 - min1[i];
            }
        }
    }

    function _applyMinFloorDonors(
        MinFloorInputs memory inputs,
        uint256[] memory min0,
        uint256[] memory min1,
        MinFloorStats memory stats
    ) private pure returns (RebalanceTypes.FloorReserveInfo memory) {
        uint256 length = inputs.token0Allocations.length;
        RebalanceTypes.FloorReserveInfo memory floorInfo = inputs.floorInfo;

        // Second pass: enforce floors
        for (uint256 i = 0; i < length; ++i) {
            if (i == inputs.floorIdx) continue;
            if (inputs.token0Allocations[i] < min0[i]) {
                inputs.token0Allocations[i] = min0[i];
            }
            if (inputs.token1Allocations[i] < min1[i]) {
                inputs.token1Allocations[i] = min1[i];
            }
        }

        // Donor 1: carpet reserves
        if (floorInfo.active) {
            if (stats.deficit0 > 0 && floorInfo.reserve0 > 0) {
                uint256 use0 = stats.deficit0 <= floorInfo.reserve0 ? stats.deficit0 : floorInfo.reserve0;
                floorInfo.reserve0 -= use0;
                stats.deficit0 -= use0;
            }
            if (stats.deficit1 > 0 && floorInfo.reserve1 > 0) {
                uint256 use1 = stats.deficit1 <= floorInfo.reserve1 ? stats.deficit1 : floorInfo.reserve1;
                floorInfo.reserve1 -= use1;
                stats.deficit1 -= use1;
            }
        }

        // Donor 2: largest bins
        if (stats.deficit0 > 0) {
            stats.deficit0 =
                _drainLargestToken0(inputs.token0Allocations, min0, inputs.floorIdx, stats.deficit0);
        }
        if (stats.deficit1 > 0) {
            stats.deficit1 =
                _drainLargestToken1(inputs.token1Allocations, min1, inputs.floorIdx, stats.deficit1);
        }

        // Update floor liquidity if reserves were adjusted
        if (floorInfo.active && inputs.floorIdx < inputs.baseRanges.length) {
            if (floorInfo.reserve0 == 0 && floorInfo.reserve1 == 0) {
                floorInfo.liquidity = 0;
            } else {
                IMultiPositionManager.Range memory floorRange = inputs.baseRanges[inputs.floorIdx];
                uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(floorRange.lowerTick);
                uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(floorRange.upperTick);
                floorInfo.liquidity = LiquidityAmounts.getLiquidityForAmounts(
                    inputs.sqrtPriceX96,
                    sqrtPriceLower,
                    sqrtPriceUpper,
                    floorInfo.reserve0,
                    floorInfo.reserve1
                );
            }
        }

        return floorInfo;
    }

    function _computeFloorSlack(
        uint256[] memory token0Allocations,
        uint256[] memory token1Allocations,
        RebalanceTypes.FloorReserveInfo memory floorInfo,
        uint256 available0,
        uint256 available1
    ) private pure returns (uint256 slack0, uint256 slack1) {
        uint256 length = token0Allocations.length;
        uint256 allocated0;
        uint256 allocated1;
        for (uint256 i = 0; i < length; ++i) {
            allocated0 += token0Allocations[i];
            allocated1 += token1Allocations[i];
        }

        uint256 excess0 = available0 > allocated0 ? available0 - allocated0 : 0;
        uint256 excess1 = available1 > allocated1 ? available1 - allocated1 : 0;
        slack0 = (floorInfo.active ? floorInfo.reserve0 : 0) + excess0;
        slack1 = (floorInfo.active ? floorInfo.reserve1 : 0) + excess1;
    }

    function _minAllocationForRange(
        IMultiPositionManager.Range memory range,
        int24 currentTick,
        uint160 sqrtPriceX96
    ) private pure returns (uint256 min0, uint256 min1) {
        if (range.upperTick <= range.lowerTick) {
            return (0, 0);
        }

        uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(range.lowerTick);
        uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(range.upperTick);
        if (sqrtPriceUpper <= sqrtPriceLower) {
            return (0, 0);
        }

        if (range.upperTick <= currentTick) {
            // Token1-only range
            uint256 denom = uint256(sqrtPriceUpper - sqrtPriceLower);
            if (denom > 0) {
                min1 = FullMath.mulDivRoundingUp(1, denom, FixedPoint96.Q96);
            }
        } else if (range.lowerTick > currentTick) {
            // Token0-only range
            uint256 denom = uint256(sqrtPriceUpper - sqrtPriceLower);
            uint256 intermediate = FullMath.mulDiv(sqrtPriceUpper, sqrtPriceLower, FixedPoint96.Q96);
            if (denom > 0 && intermediate > 0) {
                min0 = FullMath.mulDivRoundingUp(1, denom, intermediate);
            }
        } else {
            // Current range (both tokens)
            uint256 denom1 = uint256(sqrtPriceX96 - sqrtPriceLower);
            if (denom1 > 0) {
                min1 = FullMath.mulDivRoundingUp(1, denom1, FixedPoint96.Q96);
            }

            uint256 denom0 = uint256(sqrtPriceUpper - sqrtPriceX96);
            if (denom0 > 0) {
                uint256 intermediate = FullMath.mulDiv(sqrtPriceUpper, sqrtPriceX96, FixedPoint96.Q96);
                if (intermediate > 0) {
                    min0 = FullMath.mulDivRoundingUp(1, denom0, intermediate);
                }
            }
        }
    }

    function _drainLargestToken0(
        uint256[] memory token0Allocations,
        uint256[] memory min0,
        uint256 floorIdx,
        uint256 deficit
    ) private pure returns (uint256 remaining) {
        uint256 length = token0Allocations.length;
        remaining = deficit;
        while (remaining > 0) {
            uint256 maxIdx = type(uint256).max;
            uint256 maxSlack;
            for (uint256 i = 0; i < length; ++i) {
                if (i == floorIdx) continue;
                uint256 alloc = token0Allocations[i];
                uint256 slack = alloc > min0[i] ? alloc - min0[i] : 0;
                if (slack > maxSlack) {
                    maxSlack = slack;
                    maxIdx = i;
                }
            }
            if (maxSlack == 0 || maxIdx == type(uint256).max) {
                break;
            }
            uint256 take = remaining < maxSlack ? remaining : maxSlack;
            token0Allocations[maxIdx] -= take;
            remaining -= take;
        }
    }

    function _drainLargestToken1(
        uint256[] memory token1Allocations,
        uint256[] memory min1,
        uint256 floorIdx,
        uint256 deficit
    ) private pure returns (uint256 remaining) {
        uint256 length = token1Allocations.length;
        remaining = deficit;
        while (remaining > 0) {
            uint256 maxIdx = type(uint256).max;
            uint256 maxSlack;
            for (uint256 i = 0; i < length; ++i) {
                if (i == floorIdx) continue;
                uint256 alloc = token1Allocations[i];
                uint256 slack = alloc > min1[i] ? alloc - min1[i] : 0;
                if (slack > maxSlack) {
                    maxSlack = slack;
                    maxIdx = i;
                }
            }
            if (maxSlack == 0 || maxIdx == type(uint256).max) {
                break;
            }
            uint256 take = remaining < maxSlack ? remaining : maxSlack;
            token1Allocations[maxIdx] -= take;
            remaining -= take;
        }
    }
}
