// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

import "./interfaces/state/ITickLens.sol";

interface IUniswapV4PositionManager {
    function poolKeys(
        bytes25 poolId
    ) external view returns (address currency0, address currency1, uint24 fee, int24 tickSpacing, address hooks);
}

interface IUniswapV4TickState {
    /// @notice Retrieves the tick information of a pool at a specific tick.
    /// @dev Corresponds to pools[poolId].ticks[tick]
    /// @param poolId The ID of the pool.
    /// @param tick The tick to retrieve information for.
    /// @return liquidityGross The total position liquidity that references this tick
    /// @return liquidityNet The amount of net liquidity added (subtracted) when tick is crossed from left to right (right to left)
    /// @return feeGrowthOutside0X128 fee growth per unit of liquidity on the _other_ side of this tick (relative to the current tick)
    /// @return feeGrowthOutside1X128 fee growth per unit of liquidity on the _other_ side of this tick (relative to the current tick)
    function getTickInfo(
        bytes32 poolId,
        int24 tick
    )
        external
        view
        returns (uint128 liquidityGross, int128 liquidityNet, uint256 feeGrowthOutside0X128, uint256 feeGrowthOutside1X128);

    /// @notice Retrieves the tick bitmap of a pool at a specific tick.
    /// @dev Corresponds to pools[poolId].tickBitmap[tick]
    /// @param poolId The ID of the pool.
    /// @param tick The tick to retrieve the bitmap for.
    /// @return tickBitmap The bitmap of the tick.
    function getTickBitmap(bytes32 poolId, int16 tick) external view returns (uint256 tickBitmap);
}

/// @title Tick Lens contract
contract UniswapV4TickLens is IPoolIdTickLens {
    IUniswapV4PositionManager private immutable _positionManager;
    IUniswapV4TickState private immutable _state;

    constructor(IUniswapV4PositionManager positionManager, IUniswapV4TickState state) {
        _positionManager = positionManager;
        _state = state;
    }

    /// @inheritdoc IPoolIdTickLens
    function getNonEmptyTickBitmaps(
        bytes32 poolId,
        int16 fromBitmapIndex,
        int16 toBitmapIndex
    ) external view returns (PopulatedBitmap[] memory populatedBitmaps) {
        if (fromBitmapIndex < MIN_TICK_BITMAP || toBitmapIndex > MAX_TICK_BITMAP) {
            revert TickBitmapOutOfBounds(fromBitmapIndex, toBitmapIndex);
        }
        if (fromBitmapIndex > toBitmapIndex) revert TickBitmapOutOfOrder(fromBitmapIndex, toBitmapIndex);

        uint256 bitmapIndexSpan = uint256(int256(toBitmapIndex - fromBitmapIndex + 1)) / 256;
        if (int256(toBitmapIndex - fromBitmapIndex + 1) % 256 != 0) {
            bitmapIndexSpan++;
        }
        uint256[] memory bitmaps = new uint256[](bitmapIndexSpan);

        uint256 numOfPopulatedBitmaps;
        for (int16 i = fromBitmapIndex; i <= toBitmapIndex; i++) {
            if (_state.getTickBitmap(poolId, i) > 0) {
                uint256 index = uint256(int256(i - fromBitmapIndex)) / 256;
                bitmaps[index] = bitmaps[index] | (1 << (uint256(int256(i - fromBitmapIndex)) % 256));
                numOfPopulatedBitmaps++;
            }
        }

        populatedBitmaps = new PopulatedBitmap[](numOfPopulatedBitmaps);
        for (uint256 i = 0; i < bitmapIndexSpan; i++) {
            uint256 bitmap = bitmaps[i];
            if (bitmap > 0) {
                for (uint256 j = 0; j < 256; j++) {
                    if (bitmap & (1 << j) > 0) {
                        int16 bitmapIndex = fromBitmapIndex + int16(int256(j + i * 256));
                        populatedBitmaps[--numOfPopulatedBitmaps] = PopulatedBitmap({
                            index: bitmapIndex,
                            value: _state.getTickBitmap(poolId, bitmapIndex)
                        });
                    }
                }
            }
        }
    }

    /// @inheritdoc IPoolIdTickLens
    function getPopulatedTicksInWord(
        bytes32 poolId,
        int16 tickBitmapIndex
    ) public view override returns (PopulatedTick[] memory populatedTicks) {
        // fetch bitmap
        uint256 bitmap = _state.getTickBitmap(poolId, tickBitmapIndex);

        // calculate the number of populated ticks
        uint256 numberOfPopulatedTicks;
        for (uint256 i = 0; i < 256; i++) {
            if (bitmap & (1 << i) > 0) numberOfPopulatedTicks++;
        }

        // fetch populated tick data
        (, , , int24 tickSpacing, ) = _positionManager.poolKeys(bytes25(poolId));

        populatedTicks = new PopulatedTick[](numberOfPopulatedTicks);
        for (uint256 i = 0; i < 256; i++) {
            if (bitmap & (1 << i) > 0) {
                int24 populatedTick = ((int24(tickBitmapIndex) << 8) + int24(int256(i))) * tickSpacing;
                (uint128 liquidityGross, int128 liquidityNet, , ) = _state.getTickInfo(poolId, populatedTick);
                populatedTicks[--numberOfPopulatedTicks] = PopulatedTick({
                    tick: populatedTick,
                    liquidityNet: liquidityNet,
                    liquidityGross: liquidityGross
                });
            }
        }
    }
}
