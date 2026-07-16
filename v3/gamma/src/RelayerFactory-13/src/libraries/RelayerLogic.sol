// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IRelayer} from "../interfaces/IRelayer.sol";
import {IMultiPositionManager} from "../interfaces/IMultiPositionManager.sol";

/**
 * @title RebalancerLogic
 * @notice Library containing core rebalancing logic for trigger checking and parameter construction
 * @dev Extracted from Rebalancer.sol to conceal implementation details while maintaining reusability
 */
library RelayerLogic {
    /**
     * @notice Check all configured triggers to determine if rebalance should execute
     * @param manager The MultiPositionManager to check
     * @param triggerConfig The trigger configuration
     * @param strategyParams The strategy parameters
     * @return status Struct indicating which triggers are currently met
     * @dev Optimized to minimize external calls by batching and conditional execution
     */
    function checkTriggers(
        IMultiPositionManager manager,
        IRelayer.TriggerConfig memory triggerConfig,
        IRelayer.StrategyParams memory strategyParams
    ) external view returns (IRelayer.RebalanceTriggerStatus memory status) {
        bool isProportional = (strategyParams.weight0 == 0 && strategyParams.weight1 == 0);

        // Check tick-based triggers
        status = _checkTickTriggers(manager, triggerConfig, isProportional, status);

        // Check ratio-based triggers if not circuit broken
        if (status.baseTickTrigger || !_isCircuitBroken(manager, triggerConfig)) {
            status = _checkRatioTriggers(manager, triggerConfig, strategyParams, status);
        }

        status.anyTriggerMet = status.baseTickTrigger || status.baseRatioTrigger || status.limitTickTrigger
            || status.limitRatioTrigger || status.outOfPositionTrigger;
    }

    function _isCircuitBroken(IMultiPositionManager manager, IRelayer.TriggerConfig memory triggerConfig)
        private
        view
        returns (bool)
    {
        if (triggerConfig.maxDeltaTicks == 0) return false;

        (, int24 centerTick,,,,,,,) = manager.lastStrategyParams();
        int24 rawCurrentTick = manager.currentTick();
        int24 tickSpacing = manager.poolKey().tickSpacing;
        int24 currentTick = rawCurrentTick >= 0
            ? (rawCurrentTick / tickSpacing) * tickSpacing
            : ((rawCurrentTick - tickSpacing + 1) / tickSpacing) * tickSpacing;

        int24 tickDelta = currentTick - centerTick;
        uint256 absDelta = tickDelta >= 0 ? uint256(int256(tickDelta)) : uint256(int256(-tickDelta));

        return absDelta > triggerConfig.maxDeltaTicks;
    }

    function _checkTickTriggers(
        IMultiPositionManager manager,
        IRelayer.TriggerConfig memory triggerConfig,
        bool isProportional,
        IRelayer.RebalanceTriggerStatus memory status
    ) private view returns (IRelayer.RebalanceTriggerStatus memory) {
        bool needTickChecks = (triggerConfig.baseLowerTrigger != 0 || triggerConfig.baseUpperTrigger != 0)
            || (!isProportional && (triggerConfig.limitDeltaTicks != 0 || triggerConfig.limitMinRatio != 0));

        if (!needTickChecks) return status;

        (, int24 centerTick,,,,,,,) = manager.lastStrategyParams();
        int24 rawCurrentTick = manager.currentTick();
        int24 tickSpacing = manager.poolKey().tickSpacing;
        int24 currentTick = rawCurrentTick >= 0
            ? (rawCurrentTick / tickSpacing) * tickSpacing
            : ((rawCurrentTick - tickSpacing + 1) / tickSpacing) * tickSpacing;

        int24 tickDelta = currentTick - centerTick;
        uint256 absDelta = tickDelta >= 0 ? uint256(int256(tickDelta)) : uint256(int256(-tickDelta));

        // Circuit breaker check
        if (triggerConfig.maxDeltaTicks != 0) {
            if (absDelta > triggerConfig.maxDeltaTicks) {
                return status;
            }
        }

        // Check base tick trigger with asymmetric thresholds
        if (triggerConfig.baseLowerTrigger != 0 || triggerConfig.baseUpperTrigger != 0) {
            bool triggered = false;

            if (tickDelta > 0) {
                // Price moved up (above center) - check upper trigger
                triggered = (
                    triggerConfig.baseUpperTrigger != 0 && uint256(int256(tickDelta)) >= triggerConfig.baseUpperTrigger
                );
            } else if (tickDelta < 0) {
                // Price moved down (below center) - check lower trigger
                triggered = (triggerConfig.baseLowerTrigger != 0 && absDelta >= triggerConfig.baseLowerTrigger);
            }

            // Also check against circuit breaker if set
            status.baseTickTrigger =
                triggered && (triggerConfig.maxDeltaTicks == 0 || absDelta <= triggerConfig.maxDeltaTicks);
        }

        return status;
    }

    function _checkRatioTriggers(
        IMultiPositionManager manager,
        IRelayer.TriggerConfig memory triggerConfig,
        IRelayer.StrategyParams memory strategyParams,
        IRelayer.RebalanceTriggerStatus memory status
    ) private view returns (IRelayer.RebalanceTriggerStatus memory) {
        bool needRatios = (
            strategyParams.isBaseRatio && (triggerConfig.baseMinRatio != 0 || triggerConfig.baseMaxRatio != 0)
        ) || triggerConfig.limitMinRatio != 0 || triggerConfig.limitDeltaTicks != 0
            || triggerConfig.outOfPositionThreshold != 0;

        if (!needRatios) return status;

        (
            ,
            ,
            ,
            ,
            ,
            uint256 outOfPositionRatio,
            ,
            uint256 limitRatio,
            uint256 base0Ratio,
            ,
            uint256 limit0Ratio,
            uint256 limit1Ratio
        ) = manager.getRatios();

        // Check base ratio trigger
        if (strategyParams.isBaseRatio && (triggerConfig.baseMinRatio != 0 || triggerConfig.baseMaxRatio != 0)) {
            status.baseRatioTrigger = base0Ratio < triggerConfig.baseMinRatio || base0Ratio > triggerConfig.baseMaxRatio;
        }

        // Check limit tick trigger
        if (triggerConfig.limitDeltaTicks != 0) {
            status.limitTickTrigger = _checkLimitTickTrigger(manager, triggerConfig);
        }

        // Check limit ratio trigger
        if (triggerConfig.limitMinRatio != 0 && limitRatio > triggerConfig.limitThreshold) {
            (, int24 centerTick,,,,,,,) = manager.lastStrategyParams();
            status.limitRatioTrigger =
                checkLimitRatioTrigger(manager, centerTick, limit0Ratio, limit1Ratio, triggerConfig.limitMinRatio);
        }

        // Check out of position trigger
        if (triggerConfig.outOfPositionThreshold != 0) {
            status.outOfPositionTrigger = outOfPositionRatio > triggerConfig.outOfPositionThreshold;
        }

        return status;
    }

    /**
     * @notice Check limit tick trigger based on active limit position boundaries
     * @param manager The MultiPositionManager to check
     * @param triggerConfig The trigger configuration
     * @return triggered True if limit tick trigger is met
     */
    function _checkLimitTickTrigger(IMultiPositionManager manager, IRelayer.TriggerConfig memory triggerConfig)
        private
        view
        returns (bool triggered)
    {
        uint256 limitLength = manager.limitPositionsLength();
        if (limitLength == 0) return false;

        (IMultiPositionManager.Range[] memory ranges, IMultiPositionManager.PositionData[] memory positionData) =
            manager.getPositions();

        // Determine which limit position has more liquidity and use it
        IMultiPositionManager.Range memory activeLimitRange;
        if (
            limitLength == 2 && positionData[ranges.length - 2].liquidity > positionData[ranges.length - 1].liquidity
                && positionData[ranges.length - 2].liquidity > 0
        ) {
            activeLimitRange = ranges[ranges.length - 2];
        } else if (positionData[ranges.length - 1].liquidity > 0) {
            activeLimitRange = ranges[ranges.length - 1];
        } else {
            return false;
        }

        int24 currentTick = manager.currentTick();

        // Check if current tick is inside the limit position range
        if (currentTick >= activeLimitRange.lowerTick && currentTick < activeLimitRange.upperTick) {
            return false;
        } else if (currentTick < activeLimitRange.lowerTick) {
            // Below limit position: trigger if distance > limitDeltaTicks
            triggered = uint256(int256(activeLimitRange.lowerTick - currentTick)) > triggerConfig.limitDeltaTicks;
        } else {
            // At or above limit position: trigger if distance >= limitDeltaTicks
            triggered = uint256(int256(currentTick - activeLimitRange.upperTick)) >= triggerConfig.limitDeltaTicks;
        }

        // Apply circuit breaker (maxDeltaTicks) if set
        if (triggered && triggerConfig.maxDeltaTicks != 0) {
            int24 tickDelta;
            (, tickDelta,,,,,,,) = manager.lastStrategyParams();
            tickDelta = currentTick - tickDelta;
            triggered = (tickDelta >= 0 ? uint256(int256(tickDelta)) : uint256(int256(-tickDelta)))
                <= triggerConfig.maxDeltaTicks;
        }
    }

    /**
     * @notice Check limit ratio trigger based on position with higher liquidity
     * @param manager The MultiPositionManager to check
     * @param centerTick The center tick from last rebalance
     * @param limit0Ratio Current limit0Ratio
     * @param limit1Ratio Current limit1Ratio
     * @param limitMinRatio Minimum ratio threshold
     * @return triggered True if limit ratio trigger is met
     * @dev Optimized to avoid redundant external calls by calculating limit count from array length
     */
    function checkLimitRatioTrigger(
        IMultiPositionManager manager,
        int24 centerTick,
        uint256 limit0Ratio,
        uint256 limit1Ratio,
        uint256 limitMinRatio
    ) public view returns (bool triggered) {
        // Get both limit positions from storage (2 SLOAD)
        IMultiPositionManager.Range memory limitPos0 = manager.limitPositions(0);
        IMultiPositionManager.Range memory limitPos1 = manager.limitPositions(1);

        // Check validity
        bool hasLimit0 = limitPos0.lowerTick < limitPos0.upperTick;
        bool hasLimit1 = limitPos1.lowerTick < limitPos1.upperTick;

        if (!hasLimit0 && !hasLimit1) return false;

        // Determine target position
        IMultiPositionManager.Range memory targetPos;

        if (hasLimit0 && !hasLimit1) {
            targetPos = limitPos0;
        } else if (!hasLimit0 && hasLimit1) {
            targetPos = limitPos1;
        } else {
            // Both valid - need to compare liquidity
            // Only call getPositions() in this case (when both exist)
            (, IMultiPositionManager.PositionData[] memory positionData) = manager.getPositions();
            uint256 baseLength = manager.basePositionsLength();

            // Last two positions are the limit positions
            uint256 liq0 = positionData[baseLength].liquidity;
            uint256 liq1 = positionData[baseLength + 1].liquidity;

            targetPos = liq1 > liq0 ? limitPos1 : limitPos0;
        }

        // Check ratio based on position relative to centerTick
        return targetPos.upperTick <= centerTick
            ? limit1Ratio > limitMinRatio // Below center = token1
            : limit0Ratio > limitMinRatio; // Above center = token0
    }

    /**
     * @notice Construct rebalance parameters based on trigger status
     * @param manager The MultiPositionManager
     * @param strategyParams The strategy parameters
     * @param status The trigger status from checkTriggers
     * @return params The constructed RebalanceParams for execution
     * @dev Determines whether to use current tick (sentinel) or previous center tick
     */
    function constructRebalanceParams(
        IMultiPositionManager manager,
        IRelayer.StrategyParams memory strategyParams,
        IRelayer.RebalanceTriggerStatus memory status
    ) external view returns (IMultiPositionManager.RebalanceParams memory params) {
        // Determine if using SENTINEL_VALUE or previous centerTick
        bool useSentinelValue = status.baseTickTrigger || status.baseRatioTrigger
            || (status.limitTickTrigger && !strategyParams.isolatedBaseLimitRebalancing);

        // Set centerTick
        if (useSentinelValue) {
            params.center = type(int24).max;
        } else {
            (, params.center,,,,,,,) = manager.lastStrategyParams();
        }

        // Set weights - always use strategy params
        // Proportional weights (0,0) signal to use current position ratios
        if (strategyParams.weight0 == 0 && strategyParams.weight1 == 0) {
            params.weight0 = 0;
            params.weight1 = 0;
        } else {
            params.weight0 = strategyParams.weight0;
            params.weight1 = strategyParams.weight1;
        }

        // Set other params from strategyParams (inline to save stack)
        params.strategy = strategyParams.strategy;
        params.tLeft = strategyParams.ticksLeft;
        params.tRight = strategyParams.ticksRight;
        params.limitWidth = strategyParams.limitWidth;
        params.useCarpet = strategyParams.useCarpet;
    }
}
