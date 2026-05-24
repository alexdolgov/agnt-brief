// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.5;

import '../libraries/SignedSafeMath.sol';
import '../libraries/DSMath.sol';
import '../../wombat-governance/libraries/LogExpMath.sol';

struct PointHistory {
    uint40 pointTimestamp; // the block timestamp of the point history
    //
    int32 value; // value at this point history in log scale in; ln(x) * 2^28; true range is (0.00034, 2980)
    // the value accumulator, i.e. Integral of (tick * time) since the pool was first initialized
    // overflow after 136 year
    int64 valueCumulative;
    int32 meanValueInWindow; // average value at this point history (in the past WINDOW)
    // the volatility accumulator;
    // overflow after 136 year
    uint64 volatilityCumulative;
    //
    uint24 windowStartIndex;
}

struct DynamicFeeData {
    // The circular struct for each recorded time point
    // TIME_POINT_LENGTH = 1 days
    uint256 lastIndex;
    PointHistory[1 days] pointHistories;
}

struct DynamicFeeConfig {
    uint128 haircutVolatilityMax;
    uint128 haircutImbalanceMax;
    int128 haircutVolatilityKV1;
    int128 haircutVolatilityBetaV1;
    int128 haircutVolatilityKV2;
    int128 haircutVolatilityBetaV2;
    int128 haircutImbalanceSmallTheta;
    // not used
    // int128 haircutImbalanceBigTheta;
}

/**
 * @notice An embedded libraries that handles dynamic fee storage and calculation
 * @dev Data flow:
 *        1. input value (write)
 *        2. calculate `valueCumulative` (_createNewPointHistory)
 *        3. calculate `meanValueInWindow` using `valueCumulative` (_getMeanValueInWindow)
 *        4. calculate volatility using `value` and `meanValueInWindow`, update `volatilityCumulative` (_volatilityOnRange)
 *        5. lastly, mean volatility is calculated by `volatilityCumulative` (getMeanVolatilityInWindow)
 */
library DynamicFeeHelper {
    using SignedSafeMath for int256;
    using SignedSafeMath for uint256;
    using DSMath for uint256;

    uint32 public constant WINDOW = 1 days;
    uint256 public constant TIME_POINT_LENGTH = WINDOW; // Constraint: use a timepoint length greater than or equal to `WINDOW`
    int256 private constant BASE = 1 << 28;

    int256 constant MAX_NATURAL_EXPONENT = 130e18; // copied from LogExpMath.sol
    int256 constant MIN_NATURAL_EXPONENT = -41e18; // copied from LogExpMath.sol
    int256 public constant WAD_I = 10 ** 18;

    event DynamicFeeHelper__UPPER_BOUND_REACHED();
    event DynamicFeeHelper__LOWER_BOUND_REACHED();

    error DynamicFeeHelper__INVALID_TIMEPOINT_LENGTH();
    error DynamicFeeHelper__meanValueInWindow_OVERFLOW();
    error DynamicFeeHelper__windowStartIndex_OVERFLOW();
    error DynamicFeeHelper__VOLATILITY_TOO_LARGE();

    function initialize(DynamicFeeData storage dynamicFeeData, uint40 blockTimestamp, int32 value) internal {
        if (TIME_POINT_LENGTH < WINDOW) revert DynamicFeeHelper__INVALID_TIMEPOINT_LENGTH();

        // In case the same storage is reused, which happens when an assest is re-added, re-initialize storage
        dynamicFeeData.lastIndex = 0;

        PointHistory[TIME_POINT_LENGTH] storage pointHistories = dynamicFeeData.pointHistories;
        pointHistories[0].pointTimestamp = blockTimestamp;
        pointHistories[0].value = value;
        pointHistories[0].valueCumulative = 0;
        pointHistories[0].meanValueInWindow = value;
        pointHistories[0].volatilityCumulative = 0;
        pointHistories[0].windowStartIndex = 0;
    }

    //#region External APIs

    /**
     * @notice Find the closest timepoint which its timestamp is greater than or equal to the `timestamp`
     */
    function getTimePointAt(
        DynamicFeeData storage dynamicFeeData,
        uint40 timestamp
    ) external view returns (PointHistory memory targetPointHistory) {
        uint256 lastIndex = dynamicFeeData.lastIndex;
        uint256 oldestIndex = _getOldestIndex(dynamicFeeData.pointHistories, lastIndex);

        uint256 index = _findTimepointIndex(dynamicFeeData.pointHistories, timestamp, lastIndex, oldestIndex);
        return dynamicFeeData.pointHistories[index];
    }

    /**
     * @notice Write data after a swap
     * @dev Assume `marketPricesLast` is updated by the caller
     */
    function write(
        DynamicFeeData storage dynamicFeeData,
        uint40 blockTimestamp,
        int32 value
    ) external returns (uint256 indexUpdated) {
        PointHistory[TIME_POINT_LENGTH] storage pointHistories = dynamicFeeData.pointHistories;
        uint256 lastIndex = dynamicFeeData.lastIndex;
        PointHistory memory lastPoint = pointHistories[lastIndex];
        if (lastPoint.pointTimestamp == blockTimestamp) {
            // Early return if we've already written a timepoint this block
            pointHistories[lastIndex].value = value;
            return lastIndex;
        }

        uint256 oldestIndex = _getOldestIndex(pointHistories, lastIndex);

        int256 meanValueInWindow = _getMeanValueInWindow(
            pointHistories,
            blockTimestamp,
            lastIndex,
            oldestIndex,
            value,
            lastPoint.pointTimestamp,
            lastPoint.valueCumulative
        );
        uint256 windowStartIndex = _findTimepointIndex(pointHistories, blockTimestamp - WINDOW, lastIndex, oldestIndex);

        if (meanValueInWindow > type(int32).max) revert DynamicFeeHelper__meanValueInWindow_OVERFLOW();
        if (windowStartIndex > type(uint24).max) revert DynamicFeeHelper__windowStartIndex_OVERFLOW();

        uint256 indexToUpdate = (lastIndex + 1) % TIME_POINT_LENGTH; // advance index
        // We don't need this since there are more `TIME_POINT_LENGTH` than `WINDOW`
        // and we only write one timepoint for a timestamp.
        // if (windowStartIndex == indexToUpdate) {
        //     windowStartIndex = (windowStartIndex + 1) % TIME_POINT_LENGTH;
        // }

        pointHistories[indexToUpdate] = _createNewPointHistory(
            lastPoint,
            blockTimestamp,
            value,
            int32(meanValueInWindow),
            uint24(windowStartIndex)
        );
        dynamicFeeData.lastIndex = (lastIndex + 1) % TIME_POINT_LENGTH;

        return indexToUpdate;
    }

    //#endregion External APIs

    //#region External View Functions

    /// @notice return the mean volatility in log scale in WAD
    function getMeanVolatilityInWindow(
        DynamicFeeData storage dynamicFeeData,
        uint256 blockTimestamp
    ) external view returns (uint256) {
        // return the root mean square in WAD
        return
            ((_getMeanVolatilityInWindow(dynamicFeeData.pointHistories, dynamicFeeData.lastIndex, blockTimestamp) *
                1e36) / uint256(BASE)).sqrt();
    }

    /// @notice `toLogScale` and emit event if upper / lower bound is reached
    function safeToLogScale(uint256 ratioInWad, uint256 dt) external returns (int32 valueInLogScale) {
        valueInLogScale = toLogScale(ratioInWad, dt);

        // bound the result
        if (valueInLogScale == type(int32).max) {
            emit DynamicFeeHelper__UPPER_BOUND_REACHED();
        } else if (valueInLogScale == type(int32).min) {
            emit DynamicFeeHelper__LOWER_BOUND_REACHED();
        }

        return valueInLogScale;
    }

    /// @dev User should consider using `safetoLogScale` unless a view/pure function is required
    function toLogScale(uint256 ratioInWad, uint256 dt) public pure returns (int32 valueInLogScale) {
        int256 result = (LogExpMath.ln(ratioInWad.toInt256()) * BASE) / WAD_I / dt.toInt256();

        // bound the result
        if (result > type(int32).max) {
            return type(int32).max;
        } else if (result < type(int32).min) {
            return type(int32).min;
        } else {
            return int32(result);
        }
    }

    function fromLogScale(int32 valueInLogScale, int256 dt) external pure returns (uint256 valueInWad) {
        return LogExpMath.exp((int256(valueInLogScale) * dt * WAD_I) / BASE).toUint256();
    }

    /// @dev return a value between 0 and config.haircutVolatilityMax * 2
    function getVolatilityHaircutRate(
        DynamicFeeConfig storage config,
        int256 volatility
    ) external view returns (uint256) {
        int256 exponent1 = int256(config.haircutVolatilityKV1).wmul(config.haircutVolatilityBetaV1 - volatility);
        int256 value1;
        if (exponent1 <= MIN_NATURAL_EXPONENT) {
            value1 = 1e18;
        } else if (exponent1 >= MAX_NATURAL_EXPONENT) {
            // value1 = 0;
        } else {
            value1 = LogExpMath.fakeSigmoid(exponent1);
        }

        int256 exponent2 = int256(config.haircutVolatilityKV2).wmul(config.haircutVolatilityBetaV2 - volatility);
        int256 value2;
        if (exponent2 <= MIN_NATURAL_EXPONENT) {
            value2 = 1e18;
        } else if (exponent2 >= MAX_NATURAL_EXPONENT) {
            // value2 = 0;
        } else {
            value2 = LogExpMath.fakeSigmoid(exponent2);
        }

        return (value1.toUint256() + value2.toUint256()).wmul(config.haircutVolatilityMax);
    }

    function getImbalanceHaircutRate(
        DynamicFeeConfig storage config,
        int256 rFromAsset,
        int256 rToAsset
    ) external view returns (uint256) {
        int256 exponent1 = (-int256(config.haircutImbalanceSmallTheta).wmul(rFromAsset));
        int256 imbalanceInFromAsset;
        if (exponent1 > 0) {
            revert('getImbalanceHaircutRate: invalid exponent1');
        } else if (exponent1 <= MIN_NATURAL_EXPONENT) {
            // imbalanceInFromAsset = 0;
        } else {
            imbalanceInFromAsset = LogExpMath.exp(exponent1);
        }

        int256 exponent2 = (-int256(config.haircutImbalanceSmallTheta).wmul(rToAsset));
        int256 imbalanceInToAsset;
        if (exponent2 > 0) {
            revert('getImbalanceHaircutRate: invalid exponent2');
        } else if (exponent2 <= MIN_NATURAL_EXPONENT) {
            // imbalanceInToAsset = 0;
        } else {
            imbalanceInToAsset = LogExpMath.exp(exponent2);
        }

        return ((imbalanceInFromAsset + imbalanceInToAsset).toUint256() / 2).wmul(config.haircutImbalanceMax);
    }

    //#endregion External View Functions

    //#region Private View Functions

    function _createNewPointHistory(
        PointHistory memory lastPoint,
        uint40 blockTimestamp,
        int32 value,
        int32 meanValueInWindow,
        uint24 windowStartIndex
    ) private pure returns (PointHistory memory) {
        uint256 delta = blockTimestamp - lastPoint.pointTimestamp;

        lastPoint.pointTimestamp = blockTimestamp;
        lastPoint.valueCumulative += int64(lastPoint.value * int256(uint256(delta)));
        lastPoint.volatilityCumulative += uint64(
            _volatilityOnRange(int256(delta), lastPoint.value, value, lastPoint.meanValueInWindow)
        );
        lastPoint.value = value;
        lastPoint.meanValueInWindow = meanValueInWindow;
        lastPoint.windowStartIndex = windowStartIndex;
        return lastPoint;
    }

    /**
     * @notice Get the TWMA of `value` in the last WINDOW
     * @dev Use `valueCumulative` to calculage average tick in the past `WINDOW` seconds
     */
    function _getMeanValueInWindow(
        PointHistory[TIME_POINT_LENGTH] storage pointHistories,
        uint256 blockTimestamp,
        uint256 lastIndex,
        uint256 oldestIndex,
        int32 value, // is this the last value or current value?
        uint40 lastPointTimestamp,
        int64 lastValueCumulative
    ) private view returns (int256) {
        PointHistory storage lastPoint = pointHistories[lastIndex];
        PointHistory storage oldestPoint = pointHistories[oldestIndex];

        int256 currentValueCumulative = lastValueCumulative +
            (lastPoint.value * int256(blockTimestamp - lastPointTimestamp));

        // Case 1: `oldestBlockTimestamp` > `blockTimestamp - WINDOW`, we just use the oldest time point
        // This should happen only when point history is bootstrapping, since `TIME_POINT_LENGTH >= WINDOW`
        uint256 oldestTimestamp = oldestPoint.pointTimestamp;
        if (oldestTimestamp > blockTimestamp - WINDOW) {
            // calculate the mean value between `oldestPoint` and `blockTimestamp` (NOT `lastPoint`)
            if (blockTimestamp == oldestTimestamp) {
                return value;
            }

            return (currentValueCumulative - oldestPoint.valueCumulative) / int256(blockTimestamp - oldestTimestamp);
        }

        // Case 2: `oldestBlockTimestamp` <= `blockTimestamp - WINDOW`

        // calculate the mean value between `windowStartIndex` and `blockTimestamp`
        // note that this may be slightly longer than `WINDOW`
        uint256 windowStartIndex = lastPoint.windowStartIndex;
        PointHistory storage windowStartPoint = pointHistories[windowStartIndex];

        return
            (currentValueCumulative - windowStartPoint.valueCumulative) /
            int256(blockTimestamp - windowStartPoint.pointTimestamp);
    }

    /// @dev the return value is (average volatility in window)^2 in BASE scale
    function _getMeanVolatilityInWindow(
        PointHistory[TIME_POINT_LENGTH] storage pointHistories,
        uint256 lastIndex,
        uint256 blockTimestamp
    ) private view returns (uint256) {
        PointHistory storage lastPoint = pointHistories[lastIndex];
        uint256 oldestIndex = _getOldestIndex(pointHistories, lastIndex);
        PointHistory storage oldestPoint = pointHistories[oldestIndex];

        uint256 lastVolatilityCumulative = lastPoint.volatilityCumulative;
        uint256 currentVolatilityCumulative = lastVolatilityCumulative +
            _volatilityOnRange(
                int256(uint256(blockTimestamp - lastPoint.pointTimestamp)),
                lastPoint.value,
                lastPoint.value,
                lastPoint.meanValueInWindow
            );
        uint256 lastPointTimestamp = lastPoint.pointTimestamp;

        // Case 1: `oldestBlockTimestamp` > `blockTimestamp - WINDOW`, we just use the oldest time point
        // This should happen only when point history is bootstrapping, since `TIME_POINT_LENGTH >= WINDOW`
        uint256 oldestTimestamp = oldestPoint.pointTimestamp;
        if (oldestTimestamp > blockTimestamp - WINDOW) {
            // calculate the mean volatility between `oldestPoint` and `lastPoint`
            if (lastPointTimestamp == oldestTimestamp) {
                return 0;
            }

            return
                (currentVolatilityCumulative - oldestPoint.volatilityCumulative) / ((blockTimestamp - oldestTimestamp));
        }

        // calculate the mean volatility between `windowStartIndex` and `lastPoint`
        uint256 windowStartIndex = lastPoint.windowStartIndex;
        PointHistory storage windowStartPoint = pointHistories[windowStartIndex];

        // Case 2: `oldestBlockTimestamp` <= `blockTimestamp - WINDOW`

        return
            (currentVolatilityCumulative - windowStartPoint.volatilityCumulative) /
            ((blockTimestamp - windowStartPoint.pointTimestamp));
    }

    /**
     * @notice Find the closest timepoint which its timestamp is greater than or equal to the `targetTimestamp`
     * @dev this is used to calculate `windowStartIndex`
     */
    function _findTimepointIndex(
        PointHistory[TIME_POINT_LENGTH] storage pointHistories,
        uint40 targetTimestamp,
        uint256 lastIndex,
        uint256 oldestIndex
    ) private view returns (uint256 windowStartIndex) {
        PointHistory storage lastPoint = pointHistories[lastIndex];
        PointHistory storage oldestPoint = pointHistories[oldestIndex];
        if (targetTimestamp >= lastPoint.pointTimestamp) {
            return lastIndex;
        } else if (targetTimestamp <= oldestPoint.pointTimestamp) {
            return oldestIndex;
        }

        // binary search
        uint256 left = oldestIndex;
        uint256 right = lastIndex;

        while (left != right) {
            uint256 mid = left < right
                ? (left + right) / 2
                : ((left + right + TIME_POINT_LENGTH) / 2) % TIME_POINT_LENGTH;
            PointHistory storage midPoint = pointHistories[mid];
            if (midPoint.pointTimestamp == targetTimestamp) {
                return mid;
            } else if (midPoint.pointTimestamp > targetTimestamp) {
                right = mid;
            } else {
                left = (mid + 1) % TIME_POINT_LENGTH;
            }
        }

        return left;
    }

    function _getOldestIndex(
        PointHistory[TIME_POINT_LENGTH] storage pointHistories,
        uint256 lastIndex
    ) private view returns (uint256) {
        uint256 nextIndex = (lastIndex + 1) % TIME_POINT_LENGTH;

        if (pointHistories[nextIndex].pointTimestamp > 0) {
            // If the next time point is initialized, use that to be the oldest one
            return nextIndex;
        } else {
            return 0;
        }
    }

    /**
     * @dev integrate (value_t - meanValueInWindow)^2 over t in range (0, dt)
     * express value_t in value0 + (value1 - value0) / dt * t =  value0 + k*t
     *
     * (value_t - meanValueInWindow)^2 = value_t^2 - 2 * value_t * meanValueInWindow - meanValueInWindow^2
     * (k*t + value0 - meanValueInWindow)^2 = k^2 * t^2 + 2k(value0 - meanValueInWindow)t + (value0 - meanValueInWindow)^2
     */
    function _volatilityOnRange(
        int256 dt,
        int256 value0,
        int256 value1,
        int256 meanValueInWindow
    ) internal pure returns (uint256 volatility) {
        if (dt == 0) {
            return 0;
        }
        int256 linearIntegral = (dt ** 2) / 2;
        int256 squareIntegral = (dt ** 3) / 3;
        int256 k = (value1 - value0) / dt;

        int256 a = (k ** 2) * squareIntegral;
        int256 b = (2 * k * (value0 - meanValueInWindow)) * linearIntegral;
        int256 c = ((value0 - meanValueInWindow) ** 2) * dt; // dt is constant integral

        uint256 result = ((a + b + c) / BASE).toUint256();
        // This return value always fits in `2^32 * dt`
        if (result / uint256(dt) > type(uint32).max) revert DynamicFeeHelper__VOLATILITY_TOO_LARGE();

        return result;
    }

    //#endregion Private View Functions
}
