// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

// -----------------------------
// Interfaces (minimal)
// -----------------------------
interface IUniswapV3Factory {
    function getPool(address tokenA, address tokenB, uint24 fee) external view returns (address pool);
}

interface IUniswapV3Pool {
    function liquidity() external view returns (uint128);

    function slot0()
        external
        view
        returns (
            uint160 sqrtPriceX96,
            int24 tick,
            uint16 observationIndex,
            uint16 observationCardinality,
            uint16 observationCardinalityNext,
            uint8 feeProtocol,
            bool unlocked
        );

    function observe(uint32[] calldata secondsAgos)
        external
        view
        returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s);
}

/**
 * @title TwapGuardV3
 * @notice TWAP reference quotes from Uniswap V3 across all standard fee tiers (100/500/3000/10000),
 * with liquidity-based filtering for MEDIAN_TWAP to avoid "dirty" micro-pools.
 * @dev Self-contained: includes minimal Uniswap V3 math/oracle libs (TickMath + FullMath).
 */
contract TwapGuardV3 {
    // -----------------------------
    // Errors
    // -----------------------------
    error TwapSecondsZero();
    error AmountInZero();
    error SameToken();
    error BpsOutOfRange();
    error NoValidPools();
    error NoPoolsAfterLiquidityFilter(uint128 minLiquidity);
    error DeviationTooHigh(uint256 spotOut, uint256 twapOut, uint256 maxDeviationBps);

    // -----------------------------
    // Constants
    // -----------------------------
    uint24 internal constant FEE_001 = 100;    // 0.01%
    uint24 internal constant FEE_005 = 500;    // 0.05%
    uint24 internal constant FEE_03  = 3000;   // 0.3%
    uint24 internal constant FEE_1   = 10000;  // 1%

    uint24[4] internal ALL_FEES = [FEE_001, FEE_005, FEE_03, FEE_1];

    IUniswapV3Factory public immutable factory;

    constructor(address uniswapV3Factory) {
        factory = IUniswapV3Factory(uniswapV3Factory);
    }

    enum RefMode {
        MEDIAN_TWAP,    // median TWAP quote across fee tiers (after liq filter)
        MAX_LIQUIDITY,  // TWAP quote from the pool with the highest liquidity() (auto refFee)
        BEST_TWAP_QUOTE // maximum TWAP out (optionally still could be filtered if you want)
    }

    /**
     * @notice Get TWAP reference.
     * @param minLiqRatioBps Liquidity filter threshold in bps relative to maxLiq among valid pools.
     * Example: 500 = keep pools with liq >= 5% of maxLiq.
     * Use 0 to disable liq filtering for MEDIAN_TWAP (not recommended on exotica).
     */
    function getTwapReference(
        address tokenIn,
        address tokenOut,
        uint128 amountIn,
        uint32 twapSeconds,
        uint16 minLiqRatioBps,
        RefMode mode
    ) public view returns (uint256 twapOut, uint24 refFee, uint8 poolsFound, uint128 minLiquidity) {
        if (twapSeconds == 0) revert TwapSecondsZero();
        if (amountIn == 0) revert AmountInZero();
        if (tokenIn == tokenOut) revert SameToken();
        if (minLiqRatioBps > 10_000) revert BpsOutOfRange();

        // ИСПРАВЛЕНИЕ #1: Объявляем динамические массивы в памяти с длиной 4.
        uint256[] memory quotes = new uint256[](4);
        uint128[] memory liqs   = new uint128[](4);
        uint24[] memory fees    = new uint24[](4);

        uint8 n = 0;
        uint128 maxLiq = 0;

        // 1) collect valid pools across fee tiers
        for (uint256 i = 0; i < 4; i++) {
            uint24 fee = ALL_FEES[i];
            address poolAddr = factory.getPool(tokenIn, tokenOut, fee);
            if (poolAddr == address(0)) continue;

            // must have some oracle history
            (, , , uint16 obsCard, , , ) = IUniswapV3Pool(poolAddr).slot0();
            if (obsCard < 2) continue;

            (int24 meanTick, bool ok) = _consult(poolAddr, twapSeconds);
            if (!ok) continue;

            uint256 q = _getQuoteAtTick(meanTick, amountIn, tokenIn, tokenOut);
            if (q == 0) continue;

            uint128 liq = IUniswapV3Pool(poolAddr).liquidity();

            quotes[n] = q;
            liqs[n]   = liq;
            fees[n]   = fee;
            n++;

            if (liq > maxLiq) maxLiq = liq;
        }

        if (n == 0) revert NoValidPools();
        poolsFound = n;

        // 2) liquidity threshold relative to maxLiq among valid pools
        // minLiquidity = maxLiq * minLiqRatioBps / 10_000
        if (minLiqRatioBps == 0) {
            minLiquidity = 0; // disabled
        } else {
            minLiquidity = uint128((uint256(maxLiq) * minLiqRatioBps) / 10_000);
            if (minLiquidity == 0) minLiquidity = 1; // avoid "0 keeps all" due to rounding
        }

        // 3) for reliability: auto refFee = fee of the MAX LIQUIDITY pool among pools >= minLiquidity (if enabled),
        //    otherwise among all valid pools.
        (refFee, ) = _selectMaxLiquidityFee(liqs, fees, n, minLiquidity);

        // 4) compute twapOut according to mode
        if (mode == RefMode.MEDIAN_TWAP) {
            // median after liq filter (if enabled)
            (twapOut) = _medianFiltered(quotes, liqs, n, minLiquidity);
            return (twapOut, refFee, poolsFound, minLiquidity);
        }

        if (mode == RefMode.MAX_LIQUIDITY) {
            // TWAP out from max-liq pool (apply minLiquidity if enabled)
            (twapOut) = _quoteFromMaxLiquidity(quotes, liqs, n, minLiquidity);
            return (twapOut, refFee, poolsFound, minLiquidity);
        }

        // BEST_TWAP_QUOTE:
        // for exotica this can be less reliable, but you asked refFee "for reliability" anyway,
        // so we keep refFee = max-liq fee, while twapOut is "best quote" (optionally filtered).
        twapOut = _bestQuote(quotes, liqs, n, minLiquidity);
        return (twapOut, refFee, poolsFound, minLiquidity);
    }

    /**
     * @notice Require that spotOut is within +/- maxDeviationBps from TWAP reference.
     */
    function requireSpotWithinTwap(
        address tokenIn,
        address tokenOut,
        uint128 amountIn,
        uint256 spotOut,
        uint32 twapSeconds,
        uint16 minLiqRatioBps,
        uint16 maxDeviationBps,
        RefMode mode
    ) external view returns (uint256 twapOut, uint24 refFee, uint8 poolsFound, uint128 minLiquidity) {
        if (maxDeviationBps > 10_000) revert BpsOutOfRange();
        
        (twapOut, refFee, poolsFound, minLiquidity) =
            getTwapReference(tokenIn, tokenOut, amountIn, twapSeconds, minLiqRatioBps, mode);

        uint256 lower = (twapOut * (10_000 - maxDeviationBps)) / 10_000;
        uint256 upper = (twapOut * (10_000 + maxDeviationBps)) / 10_000;

        if (spotOut < lower || spotOut > upper) {
            revert DeviationTooHigh(spotOut, twapOut, maxDeviationBps);
        }
    }

    // -----------------------------
    // Internal: selection helpers
    // -----------------------------

    function _selectMaxLiquidityFee(
        uint128[] memory liqs,
        uint24[] memory fees,
        uint8 n,
        uint128 minLiquidity
    ) internal pure returns (uint24 fee, uint128 liq) {
        bool hasAny = false;
        uint8 best = 0;

        for (uint8 i = 0; i < n; i++) {
            if (minLiquidity != 0 && liqs[i] < minLiquidity) continue;

            if (!hasAny) {
                hasAny = true;
                best = i;
            } else if (liqs[i] > liqs[best]) {
                best = i;
            }
        }

        // if filter removed all, fallback to max liq among all valid pools
        if (!hasAny) {
            best = 0;
            for (uint8 i = 1; i < n; i++) {
                if (liqs[i] > liqs[best]) best = i;
            }
            return (fees[best], liqs[best]);
        }

        return (fees[best], liqs[best]);
    }

    function _quoteFromMaxLiquidity(
        uint256[] memory quotes,
        uint128[] memory liqs,
        uint8 n,
        uint128 minLiquidity
    ) internal pure returns (uint256 q) {
        bool hasAny = false;
        uint8 best = 0;

        for (uint8 i = 0; i < n; i++) {
            if (minLiquidity != 0 && liqs[i] < minLiquidity) continue;

            if (!hasAny) {
                hasAny = true;
                best = i;
            } else if (liqs[i] > liqs[best]) {
                best = i;
            }
        }

        if (!hasAny) {
            // fallback: best among all valid
            best = 0;
            for (uint8 i = 1; i < n; i++) {
                if (liqs[i] > liqs[best]) best = i;
            }
        }

        return quotes[best];
    }

    function _bestQuote(
        uint256[] memory quotes,
        uint128[] memory liqs,
        uint8 n,
        uint128 minLiquidity
    ) internal pure returns (uint256 q) {
        bool hasAny = false;
        uint8 best = 0;

        for (uint8 i = 0; i < n; i++) {
            if (minLiquidity != 0 && liqs[i] < minLiquidity) continue;

            if (!hasAny) {
                hasAny = true;
                best = i;
            } else if (quotes[i] > quotes[best]) {
                best = i;
            }
        }

        // if filter removed all -> fallback to best quote among all valid pools
        if (!hasAny) {
            best = 0;
            for (uint8 i = 1; i < n; i++) {
                if (quotes[i] > quotes[best]) best = i;
            }
        }

        return quotes[best];
    }

    function _medianFiltered(
        uint256[] memory quotes,
        uint128[] memory liqs,
        uint8 n,
        uint128 minLiquidity
    ) internal pure returns (uint256) {
        if (n == 1) return quotes[0];

        // ИСПРАВЛЕНИЕ #2: Объявляем динамический массив filtered в памяти с длиной 4.
        uint256[] memory filtered = new uint256[](4);
        uint8 m = 0;

        if (minLiquidity == 0) {
            // no filter
            for (uint8 i = 0; i < n; i++) filtered[m++] = quotes[i];
        } else {
            for (uint8 i = 0; i < n; i++) {
                if (liqs[i] >= minLiquidity) filtered[m++] = quotes[i];
            }
        }

        if (m == 0) {
            // important: if strict filter nuked everything, fallback to median of all valid pools
            // (alternatively: revert NoPoolsAfterLiquidityFilter(minLiquidity); if you prefer hard fail)
            return _median(quotes, n);
        }

        if (m == 1) return filtered[0];
        return _median(filtered, m);
    }

    // -----------------------------
    // Internal: Uniswap V3 oracle consult
    // -----------------------------

    function _consult(address pool, uint32 secondsAgo) internal view returns (int24 arithmeticMeanTick, bool ok) {
        if (secondsAgo == 0) return (0, false);

        // ИСПРАВЛЕНИЕ #3: Объявляем динамический массив secondsAgos в памяти с длиной 2.
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = secondsAgo;
        secondsAgos[1] = 0;

        try IUniswapV3Pool(pool).observe(secondsAgos) returns (int56[] memory tickCumulatives, uint160[] memory) {
            int56 tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];
            int56 secondsAgo56 = int56(uint56(secondsAgo));

            int56 tick = tickCumulativesDelta / secondsAgo56;

            // round toward -inf
            if (tickCumulativesDelta < 0 && (tickCumulativesDelta % secondsAgo56 != 0)) tick--;

            if (tick < type(int24).min || tick > type(int24).max) return (0, false);

            return (int24(tick), true);
        } catch {
            return (0, false);
        }
    }

    // -----------------------------
    // Internal: Quote at tick (TickMath + FullMath)
    // -----------------------------

    function _getQuoteAtTick(
        int24 tick,
        uint128 baseAmount,
        address baseToken,
        address quoteToken
    ) internal pure returns (uint256 quoteAmount) {
        uint160 sqrtRatioX96 = TickMath.getSqrtRatioAtTick(tick);

        if (sqrtRatioX96 <= type(uint128).max) {
            uint256 ratioX192 = uint256(sqrtRatioX96) * uint256(sqrtRatioX96);

            if (baseToken < quoteToken) {
                quoteAmount = FullMath.mulDiv(ratioX192, baseAmount, uint256(1) << 192);
            } else {
                quoteAmount = FullMath.mulDiv(uint256(1) << 192, baseAmount, ratioX192);
            }
        } else {
            uint256 ratioX128 = FullMath.mulDiv(uint256(sqrtRatioX96), uint256(sqrtRatioX96), uint256(1) << 64);

            if (baseToken < quoteToken) {
                quoteAmount = FullMath.mulDiv(ratioX128, baseAmount, uint256(1) << 128);
            } else {
                quoteAmount = FullMath.mulDiv(uint256(1) << 128, baseAmount, ratioX128);
            }
        }
    }

    // -----------------------------
    // Internal: median for small N<=4
    // -----------------------------

    function _median(uint256[] memory a, uint8 n) internal pure returns (uint256) {
        // insertion sort first n elems
        for (uint8 i = 1; i < n; i++) {
            uint256 key = a[i];
            uint8 j = i;
            while (j > 0 && a[j - 1] > key) {
                a[j] = a[j - 1];
                j--;
            }
            a[j] = key;
        }

        if (n % 2 == 1) return a[n / 2];

        uint256 x = a[(n / 2) - 1];
        uint256 y = a[n / 2];
        return (x + y) / 2;
    }
}

// -----------------------------
// Uniswap V3 libs (minimal)
// -----------------------------
library FullMath {
    function mulDiv(uint256 a, uint256 b, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            uint256 prod0;
            uint256 prod1;
            assembly {
                let mm := mulmod(a, b, not(0))
                prod0 := mul(a, b)
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            if (prod1 == 0) {
                require(denominator > 0);
                assembly {
                    result := div(prod0, denominator)
                }
                return result;
            }

            require(denominator > prod1);

            uint256 remainder;
            assembly {
                remainder := mulmod(a, b, denominator)
            }
            assembly {
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            uint256 twos = denominator & (~denominator + 1);
            assembly {
                denominator := div(denominator, twos)
                prod0 := div(prod0, twos)
                twos := add(div(sub(0, twos), twos), 1)
            }
            prod0 |= prod1 * twos;

            uint256 inv = (3 * denominator) ^ 2;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;
            inv *= 2 - denominator * inv;

            result = prod0 * inv;
            return result;
        }
    }
}

library TickMath {
    int24 internal constant MIN_TICK = -887272;
    int24 internal constant MAX_TICK = -MIN_TICK;

    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

    function getSqrtRatioAtTick(int24 tick) internal pure returns (uint160 sqrtPriceX96) {
        unchecked {
            int24 absTick = tick < 0 ? int24(-tick) : tick;
            require(absTick <= MAX_TICK, "T");

            uint256 ratio = absTick & 0x1 != 0
                ? 0xfffcb933bd6fad37aa2d162d1a594001
                : 0x100000000000000000000000000000000;

            if (absTick & 0x2 != 0) ratio = (ratio * 0xfff97272373d413259a46990580e213a) >> 128;
            if (absTick & 0x4 != 0) ratio = (ratio * 0xfff2e50f5f656932ef12357cf3c7fdcc) >> 128;
            if (absTick & 0x8 != 0) ratio = (ratio * 0xffe5caca7e10e4e61c3624eaa0941cd0) >> 128;
            if (absTick & 0x10 != 0) ratio = (ratio * 0xffcb9843d60f6159c9db58835c926644) >> 128;
            if (absTick & 0x20 != 0) ratio = (ratio * 0xff973b41fa98c081472e6896dfb254c0) >> 128;
            if (absTick & 0x40 != 0) ratio = (ratio * 0xff2ea16466c96a3843ec78b326b52861) >> 128;
            if (absTick & 0x80 != 0) ratio = (ratio * 0xfe5dee046a99a2a811c461f1969c3053) >> 128;
            if (absTick & 0x100 != 0) ratio = (ratio * 0xfcbe86c7900a88aedcffc83b479aa3a4) >> 128;
            if (absTick & 0x200 != 0) ratio = (ratio * 0xf987a7253ac413176f2b074cf7815e54) >> 128;
            if (absTick & 0x400 != 0) ratio = (ratio * 0xf3392b0822b70005940c7a398e4b70f3) >> 128;
            if (absTick & 0x800 != 0) ratio = (ratio * 0xe7159475a2c29b7443b29c7fa6e889d9) >> 128;
            if (absTick & 0x1000 != 0) ratio = (ratio * 0xd097f3bdfd2022b8845ad8f792aa5825) >> 128;
            if (absTick & 0x2000 != 0) ratio = (ratio * 0xa9f746462d870fdf8a65dc1f90e061e5) >> 128;
            if (absTick & 0x4000 != 0) ratio = (ratio * 0x70d869a156d2a1b890bb3df62baf32f7) >> 128;
            if (absTick & 0x8000 != 0) ratio = (ratio * 0x31be135f97d08fd981231505542fcfa6) >> 128;
            if (absTick & 0x10000 != 0) ratio = (ratio * 0x9aa508b5b7a84e1c677de54f3e99bc9) >> 128;
            if (absTick & 0x20000 != 0) ratio = (ratio * 0x5d6af8dedb81196699c329225ee604) >> 128;
            if (absTick & 0x40000 != 0) ratio = (ratio * 0x2216e584f5fa1ea926041bedfe98) >> 128;
            if (absTick & 0x80000 != 0) ratio = (ratio * 0x48a170391f7dc42444e8fa2) >> 128;

            if (tick > 0) ratio = type(uint256).max / ratio;

            uint256 r = (ratio >> 32) + (ratio % (1 << 32) == 0 ? 0 : 1);
            require(r >= MIN_SQRT_RATIO && r < MAX_SQRT_RATIO, "R");
            sqrtPriceX96 = uint160(r);
        }
    }
}