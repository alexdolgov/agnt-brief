// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

int16 constant MIN_TICK_BITMAP = -887272 >> 8;

int16 constant MAX_TICK_BITMAP = 887272 >> 8;

error TickBitmapOutOfOrder(int16 fromTickBitmap, int16 toTickBitmap);

error TickBitmapOutOfBounds(int16 fromTickBitmap, int16 toTickBitmap);

struct PopulatedBitmap {
    int16 index;
    uint256 value;
}

struct PopulatedTick {
    int24 tick;
    int128 liquidityNet;
    uint128 liquidityGross;
}

/// @title Tick Lens
/// @notice Provides functions for fetching chunks of tick data for a pool
/// @dev This avoids the waterfall of fetching the tick bitmap, parsing the bitmap to know which ticks to fetch, and
/// then sending additional multicalls to fetch the tick data
interface ITickLens {
    /// @notice Get all the tick data for the populated ticks from a word of the tick bitmap of a pool
    /// @param pool The address of the pool for which to fetch populated tick data
    /// @param tickBitmapIndex The index of the word in the tick bitmap for which to parse the bitmap and
    /// fetch all the populated ticks
    /// @return populatedTicks An array of tick data for the given word in the tick bitmap
    function getPopulatedTicksInWord(
        address pool,
        int16 tickBitmapIndex
    ) external view returns (PopulatedTick[] memory populatedTicks);
}

/// @title Tick Lens
/// @notice Provides functions for fetching chunks of tick data for a pool
/// @dev This avoids the waterfall of fetching the tick bitmap, parsing the bitmap to know which ticks to fetch, and
/// then sending additional multicalls to fetch the tick data
interface IPoolIdTickLens {
    function getNonEmptyTickBitmaps(
        bytes32 poolId,
        int16 fromBitmapIndex,
        int16 toBitmapIndex
    ) external view returns (PopulatedBitmap[] memory populatedBitmaps);

    function getPopulatedTicksInWord(
        bytes32 poolId,
        int16 tickBitmapIndex
    ) external view returns (PopulatedTick[] memory populatedTicks);
}
