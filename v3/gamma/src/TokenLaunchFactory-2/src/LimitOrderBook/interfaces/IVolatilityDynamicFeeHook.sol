// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {PoolKey} from "v4-core/types/PoolKey.sol";

/// @title IVolatilityDynamicFeeHook
/// @notice Interface for volatility-based dynamic fee hook (no limit order functionality)
/// @dev Supports base fee + surge fees triggered by CAP detection, but no limit order execution
interface IVolatilityDynamicFeeHook {
    function registerPool(
        PoolKey calldata key,
        uint24 baseFee,
        uint24 surgeMultiplier,
        uint32 surgeDuration,
        uint24 initialMaxTicksPerBlock
    ) external;

    function updateBaseFee(PoolKey calldata key, uint24 newBaseFee) external;

    function updateSurgeParams(
        PoolKey calldata key,
        uint24 multiplier,
        uint32 duration
    ) external;

    function updateOraclePolicy(
        PoolKey calldata key,
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    ) external;

    function pauseAutoTune(PoolKey calldata key, bool paused) external;

    function observe(PoolKey calldata key, uint32 secondsAgo0, uint32 secondsAgo1)
        external
        view
        returns (int56 tickCumulative0, int56 tickCumulative1);
}
