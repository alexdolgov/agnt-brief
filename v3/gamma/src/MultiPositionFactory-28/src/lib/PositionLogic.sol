// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { Currency } from "v4-core/types/Currency.sol";
import { TickMath } from "v4-core/libraries/TickMath.sol";
import { IMultiPositionManager } from "../interfaces/IMultiPositionManager.sol";
import { SharedStructs } from "../base/SharedStructs.sol";
import { PoolManagerUtils } from "../PoolManagerUtils.sol";

/**
 * @title PositionLogic
 * @notice Library containing position management logic for MultiPositionManager
 * @dev Follows Bunni's pattern of external library functions with storage passed as parameter
 */
library PositionLogic {
    using PoolIdLibrary for PoolKey;
    using StateLibrary for IPoolManager;

    // Custom errors
    error DuplicatedRange(IMultiPositionManager.Range range);

    /**
     * @notice Set limit ranges based on limit width and base ranges
     * @param s Storage struct
     * @param limitWidth Width of limit positions
     * @param baseRanges Base position ranges
     * @param tickSpacing Tick spacing of the pool
     * @param currentTick Current tick of the pool
     */
    function setLimitRanges(
        SharedStructs.ManagerStorage storage s,
        int24 limitWidth,
        IMultiPositionManager.Range[] memory baseRanges,
        int24 tickSpacing,
        int24 currentTick
    ) external {
        if (limitWidth == 0) {
            delete s.limitPositions;
            s.limitPositionsLength = 0;
            return;
        }

        if (limitWidth % tickSpacing != 0) {
            // increase `limitWidth` to round up multiple of tickSpacing
            limitWidth = (limitWidth / tickSpacing + 1) * tickSpacing;
        }

        // Check against NEW base ranges (not historical ones)
        for (uint256 i = 0; i < baseRanges.length; i++) {
            int24 rangeWidth = baseRanges[i].upperTick - baseRanges[i].lowerTick;
            if (rangeWidth == limitWidth) {
                limitWidth = limitWidth + tickSpacing;
                break;
            }
        }

        int24 baseTick;
        if (currentTick % tickSpacing == 0) {
            baseTick = currentTick;
        } else if (currentTick % tickSpacing > 0) {
            baseTick = (currentTick / tickSpacing) * tickSpacing;
        } else {
            baseTick = (currentTick / tickSpacing - 1) * tickSpacing;
        }

        (
            s.limitPositions[0].lowerTick,
            s.limitPositions[0].upperTick
        ) = roundUp(baseTick - limitWidth, baseTick, tickSpacing);
        (
            s.limitPositions[1].lowerTick,
            s.limitPositions[1].upperTick
        ) = roundUp(baseTick + tickSpacing, baseTick + tickSpacing + limitWidth, tickSpacing);

        // Update limitPositionsLength based on non-empty positions
        s.limitPositionsLength = 0;
        if (s.limitPositions[0].lowerTick != s.limitPositions[0].upperTick) {
            s.limitPositionsLength++;
        }
        if (s.limitPositions[1].lowerTick != s.limitPositions[1].upperTick) {
            s.limitPositionsLength++;
        }
    }

    /**
     * @notice Round up tick values to valid range
     * @param tickLower Lower tick
     * @param tickUpper Upper tick
     * @param tickSpacing Tick spacing of the pool
     * @return Rounded lower and upper ticks
     */
    function roundUp(
        int24 tickLower,
        int24 tickUpper,
        int24 tickSpacing
    ) public pure returns (int24, int24) {
        // Get min/max usable ticks that are aligned with tick spacing
        int24 minUsableTick = TickMath.minUsableTick(tickSpacing);
        int24 maxUsableTick = TickMath.maxUsableTick(tickSpacing);

        // Ensure lower tick is at least the min usable tick
        if (tickLower < minUsableTick) {
            tickLower = minUsableTick;
        }
        // Ensure upper tick is at most the max usable tick
        if (tickUpper > maxUsableTick) {
            tickUpper = maxUsableTick;
        }
        // Handle invalid ranges
        if (tickLower >= tickUpper) {
            return (0, 0);
        }

        return (tickLower, tickUpper);
    }

    /**
     * @notice Check for duplicate ranges
     * @param allRanges All ranges to check
     */
    function checkRanges(IMultiPositionManager.Range[] memory allRanges) external pure {
        for (uint256 i = 0; i < allRanges.length; i++) {
            for (uint256 j = i + 1; j < allRanges.length; j++) {
                // Skip empty ranges
                if (allRanges[j].lowerTick == allRanges[j].upperTick) continue;

                if (
                    allRanges[i].lowerTick == allRanges[j].lowerTick &&
                    allRanges[i].upperTick == allRanges[j].upperTick
                ) {
                    revert DuplicatedRange(allRanges[j]);
                }
            }
        }
    }

    /**
     * @notice Get base positions as array
     * @param s Storage struct
     * @return ranges Array of base positions
     */
    function getBasePositionsArray(
        SharedStructs.ManagerStorage storage s
    ) public view returns (IMultiPositionManager.Range[] memory ranges) {
        ranges = new IMultiPositionManager.Range[](s.basePositionsLength);
        for (uint8 i = 0; i < s.basePositionsLength; i++) {
            ranges[i] = s.basePositions[i];
        }
    }

    /**
     * @notice Get limit positions as array
     * @param s Storage struct
     * @return ranges Array of limit positions (always size 2)
     */
    function getLimitPositionsArray(
        SharedStructs.ManagerStorage storage s
    ) public view returns (IMultiPositionManager.Range[2] memory ranges) {
        ranges[0] = s.limitPositions[0];
        ranges[1] = s.limitPositions[1];
    }

    /**
     * @notice Mint liquidity to positions
     * @param poolManager Pool manager contract
     * @param s Storage struct
     * @param liquidities Liquidity amounts for each position
     * @param inMin Minimum input amounts per position
     */
    function mintLiquidities(
        IPoolManager poolManager,
        SharedStructs.ManagerStorage storage s,
        uint128[] memory liquidities,
        uint256[2][] memory inMin
    ) external {
        IMultiPositionManager.Range[] memory baseRangesArray = getBasePositionsArray(s);
        IMultiPositionManager.Range[2] memory limitRangesArray = getLimitPositionsArray(s);

        PoolManagerUtils.mintLiquidities(
            poolManager,
            s.poolKey,
            baseRangesArray,
            limitRangesArray,
            liquidities,
            inMin
        );
    }

    /**
     * @notice Burn liquidity from positions
     * @param poolManager Pool manager contract
     * @param s Storage struct
     * @param shares Number of shares to burn
     * @param totalSupply Total supply of shares
     * @param outMin Minimum output amounts per position
     * @return amount0 Amount of token0 returned
     * @return amount1 Amount of token1 returned
     */
    function burnLiquidities(
        IPoolManager poolManager,
        SharedStructs.ManagerStorage storage s,
        uint256 shares,
        uint256 totalSupply,
        uint256[2][] memory outMin
    ) external returns (uint256 amount0, uint256 amount1) {
        if (shares == 0) return (amount0, amount1);

        IMultiPositionManager.Range[] memory baseRangesArray = getBasePositionsArray(s);
        IMultiPositionManager.Range[2] memory limitRangesArray = getLimitPositionsArray(s);

        (amount0, amount1) = PoolManagerUtils.burnLiquidities(
            poolManager,
            s.poolKey,
            baseRangesArray,
            limitRangesArray,
            shares,
            totalSupply,
            outMin
        );
    }

    /**
     * @notice Get base positions with their data
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @return ranges Array of base position ranges
     * @return positionData Array of position data for each base position
     */
    function getBasePositions(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager
    ) external view returns (
        IMultiPositionManager.Range[] memory ranges,
        IMultiPositionManager.PositionData[] memory positionData
    ) {
        ranges = new IMultiPositionManager.Range[](s.basePositionsLength);
        positionData = new IMultiPositionManager.PositionData[](s.basePositionsLength);

        for (uint8 i = 0; i < s.basePositionsLength; ) {
            ranges[i] = s.basePositions[i];

            (uint128 liquidity, uint256 amount0, uint256 amount1, , ) = PoolManagerUtils.getAmountsOf(
                poolManager,
                s.poolKey,
                ranges[i]
            );

            positionData[i] = IMultiPositionManager.PositionData({
                liquidity: liquidity,
                amount0: amount0,
                amount1: amount1
            });

            unchecked {
                i = i + 1;
            }
        }
    }

    /**
     * @notice Get all positions (base + non-empty limit) with their data
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @return ranges Array of all position ranges
     * @return positionData Array of position data for each position
     */
    function getPositions(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager
    ) external view returns (
        IMultiPositionManager.Range[] memory ranges,
        IMultiPositionManager.PositionData[] memory positionData
    ) {
        // Count non-empty limit positions
        uint8 nonEmptyLimitPositions = 0;
        if (s.limitPositions[0].lowerTick != s.limitPositions[0].upperTick) {
            nonEmptyLimitPositions++;
        }
        if (s.limitPositions[1].lowerTick != s.limitPositions[1].upperTick) {
            nonEmptyLimitPositions++;
        }

        ranges = new IMultiPositionManager.Range[](s.basePositionsLength + nonEmptyLimitPositions);
        positionData = new IMultiPositionManager.PositionData[](s.basePositionsLength + nonEmptyLimitPositions);

        // Include base positions
        for (uint8 i = 0; i < s.basePositionsLength; ) {
            ranges[i] = s.basePositions[i];

            (uint128 liquidity, uint256 amount0, uint256 amount1, , ) = PoolManagerUtils.getAmountsOf(
                poolManager,
                s.poolKey,
                ranges[i]
            );

            positionData[i] = IMultiPositionManager.PositionData({
                liquidity: liquidity,
                amount0: amount0,
                amount1: amount1
            });

            unchecked {
                i = i + 1;
            }
        }

        // Include limit positions only if they are non-empty
        uint8 limitIndex = 0;
        for (uint8 i = 0; i < 2; ) {
            if (s.limitPositions[i].lowerTick != s.limitPositions[i].upperTick) {
                ranges[s.basePositionsLength + limitIndex] = s.limitPositions[i];

                (uint128 liquidity, uint256 amount0, uint256 amount1, , ) = PoolManagerUtils.getAmountsOf(
                    poolManager,
                    s.poolKey,
                    ranges[s.basePositionsLength + limitIndex]
                );

                positionData[s.basePositionsLength + limitIndex] = IMultiPositionManager.PositionData({
                    liquidity: liquidity,
                    amount0: amount0,
                    amount1: amount1
                });

                limitIndex++;
            }

            unchecked {
                i = i + 1;
            }
        }
    }
}