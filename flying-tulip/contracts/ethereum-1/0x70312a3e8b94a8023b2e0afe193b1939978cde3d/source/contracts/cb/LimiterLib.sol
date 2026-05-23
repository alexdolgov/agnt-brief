// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";

/// @title LimiterLib
/// @notice Dual buffer rate limiter math library for Circuit Breaker V2
/// @dev Simplified from ERC-7265 DecreaseLimiterLib - uses absolute values instead of relative WAD
/// @dev Reference: https://github.com/DeFi-Circuit-Breaker/erc7265/blob/main/src/limiter/DecreaseLimiterLib.sol
library LimiterLib {
    uint256 internal constant WAD = 1e18;

    /// @notice Limiter state packed into a single storage slot
    /// @dev Layout: [elasticBuffer: 96 bits][mainBuffer: 96 bits][lastUpdated: 64 bits]
    struct LimiterState {
        uint96 mainBuffer; // Current main buffer (absolute value)
        uint96 elasticBuffer; // Current elastic buffer (absolute value)
        uint64 lastUpdated; // Last update timestamp
    }

    /// @notice Limiter configuration
    struct LimiterConfig {
        uint64 maxDrawRateWad; // Max outflow rate as WAD (e.g., 0.05e18 = 5%)
        uint48 mainWindow; // Main buffer replenishment window in seconds
        uint48 elasticWindow; // Elastic buffer decay window in seconds
    }

    /// @notice Result of an outflow attempt
    struct OutflowResult {
        uint96 newMainBuffer;
        uint96 newElasticBuffer;
        uint256 overflow; // Amount that exceeds capacity (0 = all within limit)
    }

    // ===== Core =====

    /// @notice Apply an inflow (deposit) to the limiter state
    /// @param state Current limiter state
    /// @param config Limiter configuration
    /// @param preTvl Protocol TVL before this inflow
    /// @param amount Inflow amount
    /// @return newState Updated limiter state
    function applyInflow(
        LimiterState memory state,
        LimiterConfig memory config,
        uint256 preTvl,
        uint256 amount
    )
        internal
        view
        returns (LimiterState memory newState)
    {
        (uint256 mainBuffer, uint256 elasticBuffer) =
            _getPassivelyUpdatedBuffers(state, config, preTvl);

        elasticBuffer += amount;

        newState.mainBuffer = SafeCast.toUint96(mainBuffer);
        newState.elasticBuffer = SafeCast.toUint96(elasticBuffer);
        newState.lastUpdated = uint64(block.timestamp);
    }

    /// @notice Attempt an outflow and calculate remaining buffers
    /// @param state Current limiter state
    /// @param config Limiter configuration
    /// @param preTvl Protocol TVL before this outflow
    /// @param amount Outflow amount requested
    /// @return result Contains new buffer values and overflow amount
    function applyOutflow(
        LimiterState memory state,
        LimiterConfig memory config,
        uint256 preTvl,
        uint256 amount
    )
        internal
        view
        returns (OutflowResult memory result)
    {
        (uint256 mainBuffer, uint256 elasticBuffer) =
            _getPassivelyUpdatedBuffers(state, config, preTvl);

        uint256 overflow;
        (mainBuffer, elasticBuffer, overflow) = _depleteBuffers(mainBuffer, elasticBuffer, amount);

        result.newMainBuffer = SafeCast.toUint96(mainBuffer);
        result.newElasticBuffer = SafeCast.toUint96(elasticBuffer);
        result.overflow = overflow;
    }

    /// @notice Get current withdrawal capacity without modifying state
    /// @param state Current limiter state
    /// @param config Limiter configuration
    /// @param tvl Current protocol TVL
    /// @return capacity Total available withdrawal capacity
    function getCapacity(
        LimiterState memory state,
        LimiterConfig memory config,
        uint256 tvl
    )
        internal
        view
        returns (uint256 capacity)
    {
        (uint256 mainBuffer, uint256 elasticBuffer) =
            _getPassivelyUpdatedBuffers(state, config, tvl);
        capacity = mainBuffer + elasticBuffer;
    }

    /// @notice Get current buffer values without modifying state
    /// @param state Current limiter state
    /// @param config Limiter configuration
    /// @param tvl Current protocol TVL
    /// @return mainBuffer Current main buffer after passive updates
    /// @return elasticBuffer Current elastic buffer after passive updates
    /// @return mainBufferCap Maximum main buffer capacity
    function getBuffers(
        LimiterState memory state,
        LimiterConfig memory config,
        uint256 tvl
    )
        internal
        view
        returns (uint256 mainBuffer, uint256 elasticBuffer, uint256 mainBufferCap)
    {
        (mainBuffer, elasticBuffer) = _getPassivelyUpdatedBuffers(state, config, tvl);
        mainBufferCap = _mulWad(tvl, config.maxDrawRateWad);
    }

    // ===== Internal =====

    /// @notice Apply time-based passive updates to buffers
    /// @dev Main buffer replenishes linearly toward cap. Elastic buffer decays proportionally
    ///      (decay = buffer * dt / window), so it decays slower than true linear — conservative.
    ///      This prevents flashloan DoS: deposits increase elastic (temporary capacity) while main
    ///      buffer provides steady-state rate limiting based on TVL.
    function _getPassivelyUpdatedBuffers(
        LimiterState memory state,
        LimiterConfig memory config,
        uint256 tvl
    )
        internal
        view
        returns (uint256 mainBuffer, uint256 elasticBuffer)
    {
        mainBuffer = state.mainBuffer;
        elasticBuffer = state.elasticBuffer;

        // Calculate main buffer cap based on current TVL
        // TVL can change even if no time has passed (multiple operations in same block)
        uint256 mainBufferCap = _mulWad(tvl, config.maxDrawRateWad);

        // First interaction: initialize main buffer at full capacity, elastic at 0
        // This matches CBv1 behavior and avoids relying on "time since unix epoch" to fill buffers
        if (state.lastUpdated == 0) {
            return (mainBufferCap, elasticBuffer);
        }

        // Ensure main buffer never exceeds current cap (TVL may have decreased)
        if (mainBuffer > mainBufferCap) {
            mainBuffer = mainBufferCap;
        }

        // No time elapsed = no passive updates (same block operations)
        uint256 dt = block.timestamp - state.lastUpdated;
        if (dt == 0) {
            return (mainBuffer, elasticBuffer);
        }

        // Calculate main buffer replenishment: linear refill toward cap
        // replenishment_rate = cap / mainWindow, so replenishment = cap * dt / mainWindow
        if (config.mainWindow > 0) {
            uint256 replenishment = (mainBufferCap * dt) / config.mainWindow;
            mainBuffer = Math.min(mainBufferCap, mainBuffer + replenishment);
        }

        // Calculate elastic buffer decay: proportional decay toward zero
        // decay_rate = buffer / elasticWindow, so decay = buffer * dt / elasticWindow
        if (config.elasticWindow > 0 && elasticBuffer > 0) {
            uint256 decay = (elasticBuffer * dt) / config.elasticWindow;
            elasticBuffer = elasticBuffer > decay ? elasticBuffer - decay : 0;
        }
    }

    /// @notice Deplete buffers in order: elastic first, then main
    /// @return remMainBuffer Remaining main buffer
    /// @return remElasticBuffer Remaining elastic buffer
    /// @return overflow Amount that couldn't be covered (rate limit exceeded)
    function _depleteBuffers(
        uint256 mainBuffer,
        uint256 elasticBuffer,
        uint256 amount
    )
        internal
        pure
        returns (uint256 remMainBuffer, uint256 remElasticBuffer, uint256 overflow)
    {
        uint256 remaining = amount;

        if (remaining <= elasticBuffer) {
            remElasticBuffer = elasticBuffer - remaining;
            remMainBuffer = mainBuffer;
            overflow = 0;
            return (remMainBuffer, remElasticBuffer, overflow);
        }

        remaining -= elasticBuffer;
        remElasticBuffer = 0;

        if (remaining <= mainBuffer) {
            remMainBuffer = mainBuffer - remaining;
            overflow = 0;
            return (remMainBuffer, remElasticBuffer, overflow);
        }

        remMainBuffer = 0;
        overflow = remaining - mainBuffer;
    }

    // ===== Math =====

    function _mulWad(uint256 a, uint256 b) internal pure returns (uint256) {
        return (a * b) / WAD;
    }
}
