// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title SnuggleLogic
/// @notice Library for fee calculations and parameter validation in SnuggleVault
/// @dev Extracted to reduce main contract size below EVM bytecode limit
library SnuggleLogic {
    uint256 public constant BPS_DENOMINATOR = 10000;
    uint256 public constant MIN_REBALANCE_DELAY = 0;
    uint256 public constant MAX_REBALANCE_DELAY = 7 days;

    /// @notice Result of fee calculations
    struct FeeResult {
        uint256 protocolFee0;
        uint256 protocolFee1;
        uint256 referralFee0;
        uint256 referralFee1;
        uint256 treasuryFee0;
        uint256 treasuryFee1;
        uint256 remaining0;
        uint256 remaining1;
    }

    /// @notice Validation bounds for parameters
    struct ValidationBounds {
        uint24 minRangeWidthBps;
        uint24 maxRangeWidthBps;
    }

    error InvalidRangeWidth();
    error InvalidRebalanceDelay();

    /// @notice Calculate all fee components for a performance fee on earnings
    /// @param amount0 Total amount of token0 earnings
    /// @param amount1 Total amount of token1 earnings
    /// @param performanceFeeBps Performance fee in basis points (e.g. 1500 = 15%)
    /// @param referralFeeBps Referral fee in basis points
    /// @param hasReferrer Whether user has a referrer
    /// @param isExempt Whether user is fee exempt
    /// @return result Struct containing all fee amounts and remaining
    function calculateFees(
        uint256 amount0,
        uint256 amount1,
        uint256 performanceFeeBps,
        uint256 referralFeeBps,
        bool hasReferrer,
        bool isExempt
    ) internal pure returns (FeeResult memory result) {
        if (isExempt) {
            // No fees - all amounts remain
            result.remaining0 = amount0;
            result.remaining1 = amount1;
            return result;
        }

        // Calculate performance fees on earnings
        result.protocolFee0 = (amount0 * performanceFeeBps) / BPS_DENOMINATOR;
        result.protocolFee1 = (amount1 * performanceFeeBps) / BPS_DENOMINATOR;

        if (hasReferrer && referralFeeBps > 0) {
            // Calculate referral portion (comes out of protocol fee)
            result.referralFee0 = (amount0 * referralFeeBps) / BPS_DENOMINATOR;
            result.referralFee1 = (amount1 * referralFeeBps) / BPS_DENOMINATOR;

            // L-05 fix: Defensive check to prevent underflow if referralFeeBps >= performanceFeeBps
            if (result.referralFee0 > result.protocolFee0) result.referralFee0 = result.protocolFee0;
            if (result.referralFee1 > result.protocolFee1) result.referralFee1 = result.protocolFee1;

            // Treasury gets remainder of protocol fee
            result.treasuryFee0 = result.protocolFee0 - result.referralFee0;
            result.treasuryFee1 = result.protocolFee1 - result.referralFee1;
        } else {
            // No referrer - all protocol fees to treasury
            result.treasuryFee0 = result.protocolFee0;
            result.treasuryFee1 = result.protocolFee1;
        }

        // Calculate remaining amounts after fees
        result.remaining0 = amount0 - result.protocolFee0;
        result.remaining1 = amount1 - result.protocolFee1;
    }

    /// @notice Calculate slippage minimums
    /// @param amount0 Desired amount of token0
    /// @param amount1 Desired amount of token1
    /// @param slippageBps Slippage tolerance in basis points
    /// @return amount0Min Minimum acceptable amount of token0
    /// @return amount1Min Minimum acceptable amount of token1
    function calculateSlippageMinimums(
        uint256 amount0,
        uint256 amount1,
        uint256 slippageBps
    ) internal pure returns (uint256 amount0Min, uint256 amount1Min) {
        amount0Min = (amount0 * (BPS_DENOMINATOR - slippageBps)) / BPS_DENOMINATOR;
        amount1Min = (amount1 * (BPS_DENOMINATOR - slippageBps)) / BPS_DENOMINATOR;
    }

    /// @notice Validate range width and rebalance delay parameters
    /// @param rangeWidthBps Range width in basis points
    /// @param rebalanceDelay Rebalance delay in seconds
    /// @param bounds Validation bounds
    function validateParameters(
        uint24 rangeWidthBps,
        uint256 rebalanceDelay,
        ValidationBounds memory bounds
    ) internal pure {
        if (rangeWidthBps < bounds.minRangeWidthBps ||
            rangeWidthBps > bounds.maxRangeWidthBps) {
            revert InvalidRangeWidth();
        }
        // V17-L-05: MIN_REBALANCE_DELAY check is currently always false (MIN=0, uint256 >= 0),
        // but retained as a safety guard in case MIN_REBALANCE_DELAY is increased in a future version.
        if (rebalanceDelay < MIN_REBALANCE_DELAY ||
            rebalanceDelay > MAX_REBALANCE_DELAY) {
            revert InvalidRebalanceDelay();
        }
    }

    /// @notice Check if position is out of range
    /// @param currentTick Current pool tick
    /// @param tickLower Position lower tick
    /// @param tickUpper Position upper tick
    /// @return True if position is out of range
    function isOutOfRange(
        int24 currentTick,
        int24 tickLower,
        int24 tickUpper
    ) internal pure returns (bool) {
        return currentTick < tickLower || currentTick >= tickUpper;
    }

    /// @notice Calculate dust amounts after minting
    /// @param remaining0 Remaining amount of token0 before mint
    /// @param remaining1 Remaining amount of token1 before mint
    /// @param used0 Amount of token0 used in mint
    /// @param used1 Amount of token1 used in mint
    /// @return dust0 Dust amount of token0
    /// @return dust1 Dust amount of token1
    function calculateDust(
        uint256 remaining0,
        uint256 remaining1,
        uint256 used0,
        uint256 used1
    ) internal pure returns (uint256 dust0, uint256 dust1) {
        dust0 = remaining0 - used0;
        dust1 = remaining1 - used1;
    }

    /// @notice Saturating add for uint128 (prevents overflow revert)
    /// @param a First value
    /// @param b Second value (uint256 for flexibility)
    /// @return Result capped at uint128 max
    function saturatingAdd128(uint128 a, uint256 b) internal pure returns (uint128) {
        uint256 sum = uint256(a) + b;
        if (sum > type(uint128).max) {
            return type(uint128).max;
        }
        return uint128(sum);
    }

    /// @notice Select the more conservative tick for single-sided deposits
    /// @param twapTick TWAP tick
    /// @param spotTick Spot tick
    /// @param isToken0 Whether depositing token0
    /// @return currentTick The more conservative tick
    function selectConservativeTick(
        int24 twapTick,
        int24 spotTick,
        bool isToken0
    ) internal pure returns (int24 currentTick) {
        // For token0 deposits (range ABOVE current), use the higher tick
        // For token1 deposits (range BELOW current), use the lower tick
        currentTick = isToken0
            ? (twapTick > spotTick ? twapTick : spotTick)
            : (twapTick < spotTick ? twapTick : spotTick);
    }

    /// @notice Check if minimum hold time has passed
    /// @param depositTimestamp When position was deposited
    /// @param minHoldTime Minimum required hold time
    /// @return True if hold time requirement is met
    function isHoldTimeElapsed(
        uint64 depositTimestamp,
        uint256 minHoldTime
    ) internal view returns (bool) {
        return block.timestamp >= depositTimestamp + minHoldTime;
    }
}
