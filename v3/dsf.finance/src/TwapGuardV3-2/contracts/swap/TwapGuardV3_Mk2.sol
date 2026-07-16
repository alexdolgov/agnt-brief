// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/**
 * @title  TwapGuardV3
 * @notice On-chain TWAP reference guard using Uniswap V3 pools.
 * @dev
 *  - Scans 4 standard Uniswap V3 fee tiers (0.01%, 0.05%, 0.3%, 1%).
 *  - Builds TWAP quotes using pool oracle (observe) and minimal TickMath/FullMath.
 *  - Supports liquidity-based filtering and multiple reference modes.
 *  - Provides a WETH-routed reference for exotica / semi-exotica where direct pools are unreliable or absent.
 *
 *  Security notes:
 *  - This is a price sanity-check (deviation guard), not a full oracle replacement.
 *  - For exotica, prefer WETH path to reduce micro-pool manipulation risk.
 */

// -----------------------------
// Interfaces (minimal)
// -----------------------------

/// @notice Minimal subset of Uniswap V3 Factory required for pool discovery.
interface IUniswapV3Factory {
    function getPool(address tokenA, address tokenB, uint24 fee) external view returns (address pool);
}

/// @notice Minimal subset of Uniswap V3 Pool required for TWAP oracle + liquidity.
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

contract TwapGuardV3 {
    // -----------------------------
    // Errors
    // -----------------------------
    error TwapSecondsZero();
    error AmountInZero();
    error SameToken();
    error BpsOutOfRange();
    error NoValidPools();
    error DeviationTooHigh(uint256 spotOut, uint256 twapOut, uint256 maxDeviationBps);
    error AmountTooLargeForUint128(uint256 amount);

    // -----------------------------
    // Constants
    // -----------------------------
    uint24 internal constant FEE_001 = 100;    // 0.01%
    uint24 internal constant FEE_005 = 500;    // 0.05%
    uint24 internal constant FEE_03  = 3000;   // 0.3%
    uint24 internal constant FEE_1   = 10000;  // 1%

    uint24[4] internal ALL_FEES = [FEE_001, FEE_005, FEE_03, FEE_1];

    IUniswapV3Factory public immutable factory;
    address public immutable WETH;

    /**
     * @param uniswapV3Factory Uniswap V3 factory address.
     * @param weth Canonical WETH address for the target chain (used for via-WETH routing).
     */
    constructor(address uniswapV3Factory, address weth) {
        require(uniswapV3Factory != address(0), "factory=0");
        require(weth != address(0), "weth=0");

        factory = IUniswapV3Factory(uniswapV3Factory);
        WETH = weth;
    }

    /**
     * @notice Reference selection mode.
     * @dev
     *  - MEDIAN_TWAP: median TWAP across available fee tiers (optionally liquidity-filtered).
     *  - MAX_LIQUIDITY: TWAP from the pool with the highest liquidity() (most robust in practice).
     *  - BEST_TWAP_QUOTE: maximum TWAP out across pools (can be less robust on exotica).
     */
    enum RefMode {
        MEDIAN_TWAP,    // median TWAP quote across fee tiers (after liq filter)
        MAX_LIQUIDITY,  // TWAP quote from the pool with the highest liquidity() (auto refFee)
        BEST_TWAP_QUOTE // maximum TWAP out (optionally still could be filtered if you want)
    }

    /**
     * @notice Computes TWAP reference quote directly between tokenIn and tokenOut across all fee tiers.
     * @dev    Intended for analysis/debug and for cases where direct pools are sufficiently liquid.
     *
     * @param  tokenIn Input token.
     * @param  tokenOut Output token.
     * @param  amountIn Amount of tokenIn used for quoting (uint128 by design).
     * @param  twapSeconds TWAP window in seconds (must be > 0).
     * @param  minLiqRatioBps Liquidity filter in bps relative to max liquidity among valid pools (0 disables).
     * @param  mode How to pick the reference quote among pools.
     *
     * @return twapOut Reference TWAP output amount for amountIn.
     * @return refFee Fee tier of the selected "most reliable" pool (max liquidity within filter; informational).
     * @return poolsFound Number of valid pools discovered across fee tiers.
     * @return minLiquidity Absolute min liquidity threshold used for filtering (0 if disabled).
     *
     * Reverts:
     * - TwapSecondsZero, AmountInZero, SameToken, BpsOutOfRange, NoValidPools
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

        uint256[] memory quotes = new uint256[](4);
        uint128[] memory liqs   = new uint128[](4);
        uint24[] memory fees    = new uint24[](4);

        uint8 n = 0;
        uint128 maxLiq = 0;

        // Uniswap V3 pools are indexed by (token0, token1) where token0 < token1
        // so we must query factory.getPool() using sorted addresses.
        (address t0, address t1) = _sort(tokenIn, tokenOut);

        // 1) collect valid pools across fee tiers
        for (uint256 i = 0; i < 4; i++) {
            uint24 fee = ALL_FEES[i];

            address poolAddr = factory.getPool(t0, t1, fee);
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
            // rounding guard: if ratio is non-zero but maxLiq is tiny,
            // the computed threshold can round to 0 and accidentally disable filtering.
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
     * @notice Computes TWAP reference via WETH: tokenIn -> WETH -> tokenOut.
     * @dev
     *  - If tokenIn == WETH: single leg WETH -> tokenOut.
     *  - If tokenOut == WETH: single leg tokenIn -> WETH.
     *  - Otherwise: two-leg quote using WETH as a robust intermediate.
     *
     *  This function is intended as the "production" reference for exotica / semi-exotica
     *  when direct pools are missing or too manipulable.
     *
     * @param  tokenIn Input token.
     * @param  tokenOut Output token.
     * @param  amountIn Amount of tokenIn used for quoting (uint256; safely downcasted per leg).
     * @param  twapSeconds TWAP window in seconds (must be > 0).
     * @param  minLiqRatioBps Liquidity filter in bps relative to max liquidity per leg (0 disables).
     * @param  mode How to pick the reference quote among pools per leg.
     *
     * @return twapOut Reference TWAP output amount for amountIn via WETH.
     *
     * Reverts:
     * - TwapSecondsZero, AmountInZero, SameToken, BpsOutOfRange, NoValidPools
     * - AmountTooLargeForUint128 if amountIn or intermediate WETH amount doesn't fit uint128.
     *
     * Important:
     * - Each leg calls getTwapReference(), which internally scans fee tiers and may apply a liquidity filter.
     * - amountIn and the intermediate WETH amount are downcasted to uint128 per leg.
     *   This is intentional: Uniswap V3 quoting here is designed around uint128 baseAmount.
     *   If either value exceeds uint128 max, the call reverts with AmountTooLargeForUint128.
     * - If direct tokenIn-tokenOut pools are manipulable / missing, routing through WETH
     *   reduces micro-pool manipulation surface by relying on deeper WETH pools.
     */
    function getTwapReferenceViaWeth(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint32 twapSeconds,
        uint16 minLiqRatioBps,
        RefMode mode
    )
        public
        view
        returns (
            uint256 twapOut)
    {
        if (tokenIn == tokenOut) revert SameToken();
        if (amountIn == 0) revert AmountInZero();
        if (twapSeconds == 0) revert TwapSecondsZero();
        if (minLiqRatioBps > 10_000) revert BpsOutOfRange();

        // 1) tokenIn == WETH => одна нога WETH -> tokenOut
        if (tokenIn == WETH) {
            (twapOut, , , ) =
                getTwapReference(WETH, tokenOut, _toUint128(amountIn), twapSeconds, minLiqRatioBps, mode);
            return twapOut;
        }

        // 2) tokenOut == WETH => одна нога tokenIn -> WETH
        if (tokenOut == WETH) {
            (twapOut, , , ) =
                getTwapReference(tokenIn, WETH, _toUint128(amountIn), twapSeconds, minLiqRatioBps, mode);
            return twapOut;
        }

        // 3) Две ноги: tokenIn -> WETH -> tokenOut
        uint256 wethAmount;
        (wethAmount, , , ) =
            getTwapReference(tokenIn, WETH, _toUint128(amountIn), twapSeconds, minLiqRatioBps, mode);

        (twapOut, , , ) =
            getTwapReference(WETH, tokenOut, _toUint128(wethAmount), twapSeconds, minLiqRatioBps, mode);
    }

    /**
     * @notice Returns the lower bound of the acceptable TWAP range (via WETH).
     * @dev
     *  Computes TWAP reference via WETH (tokenIn->WETH->tokenOut or single-leg if one side is WETH),
     *  then applies maxDeviationBps to produce a conservative lower bound:
     *    lower = twapOut * (1 - maxDeviationBps/10_000)
     *
     *  Intended use:
     *  - Quick "minimum acceptable output" guard for routers / swaps / deposits.
     *  - Use together with a spot quote: require(spotOut >= lower).
     *
     *  Notes:
     *  - maxDeviationBps is the same meaning as in requireSpotWithinTwap().
     *  - Reverts if any of the underlying TWAP legs cannot be computed (NoValidPools, etc).
     *
     * @param  tokenIn Input token.
     * @param  tokenOut Output token.
     * @param  amountIn Amount of tokenIn to quote (uint256; must fit uint128 per leg).
     * @param  twapSeconds TWAP window in seconds.
     * @param  minLiqRatioBps Liquidity filter in bps relative to max liquidity per leg (0 disables).
     * @param  maxDeviationBps Allowed deviation in bps (0..10000).
     * @param  mode Reference selection mode per leg.
     *
     * @return lower Lower bound: twapOut * (10_000 - maxDeviationBps) / 10_000.
     *
     *
     * Math notes:
     * - FullMath.mulDiv performs floor(twapOut * (10_000 - maxDeviationBps) / 10_000)
     *   with full precision (no intermediate overflow).
     * - Flooring is conservative: it slightly decreases the lower bound, which is safer for "minOut" guards.
     *
     * Reverts:
     * - TwapSecondsZero, AmountInZero, SameToken, BpsOutOfRange
     * - plus any reverts from getTwapReferenceViaWeth / getTwapReference (e.g., NoValidPools)
     */
    function getTwapLowerViaWeth(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint32 twapSeconds,
        uint16 minLiqRatioBps,
        uint16 maxDeviationBps,
        RefMode mode
    )
        public
        view
        returns (uint256 lower)
    {
        uint256 twapOut = getTwapReferenceViaWeth(tokenIn, tokenOut, amountIn, twapSeconds, minLiqRatioBps, mode);
        if (maxDeviationBps > 10_000) revert BpsOutOfRange();
        lower = FullMath.mulDiv(twapOut, (10_000 - maxDeviationBps), 10_000);
    }

    /**
     * @notice Validates that a spot quote is within a допустимое отклонение от TWAP reference (via WETH).
     * @dev    Use this as a pre-swap / pre-deposit sanity check against short-term manipulation.
     *         The acceptable band is [lower, upper] where lower/upper are derived from TWAP via WETH.
     *         Use lower/upper externally if you want to log or apply asymmetric bounds.
     *
     * @param  tokenIn Input token.
     * @param  tokenOut Output token.
     * @param  amountIn Amount of tokenIn the spotOut corresponds to.
     * @param  spotOut Observed spot output amount (e.g., from router quote / swap preview).
     * @param  twapSeconds TWAP window in seconds (must be > 0).
     * @param  minLiqRatioBps Liquidity filter in bps relative to max liquidity per leg (0 disables).
     * @param  maxDeviationBps Max allowed deviation from TWAP in bps (0..10000).
     * @param  mode Reference selection mode per leg.
     *
     * @return twapOut Computed TWAP reference output (via WETH).
     *
     * Reverts:
     * - BpsOutOfRange if maxDeviationBps > 10000
     * - DeviationTooHigh if spotOut is outside [twapOut*(1-dev), twapOut*(1+dev)]
     * - plus any reverts from getTwapReferenceViaWeth
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
    ) external view returns (uint256 twapOut, uint256 lower, uint256 upper) {
        if (maxDeviationBps > 10_000) revert BpsOutOfRange();

        twapOut =
            getTwapReferenceViaWeth(
                tokenIn,
                tokenOut,
                uint256(amountIn),
                twapSeconds,
                minLiqRatioBps,
                mode
            );

        lower = FullMath.mulDiv(twapOut, (10_000 - maxDeviationBps), 10_000);
        upper = FullMath.mulDiv(twapOut, (10_000 + maxDeviationBps), 10_000);

        if (spotOut < lower || spotOut > upper) {
            revert DeviationTooHigh(spotOut, twapOut, maxDeviationBps);
        }
    }

    // -----------------------------
    // Internal: selection helpers
    // -----------------------------

    /**
     * @notice Selects the fee tier of the max-liquidity pool among collected candidates.
     * @dev
     * - If minLiquidity != 0: considers only pools with liq >= minLiquidity.
     * - If filtering removes all pools: falls back to max-liquidity across all valid pools.
     *
     * @param  liqs Liquidity values per pool (first n entries are valid).
     * @param  fees Fee tiers aligned with liqs.
     * @param  n Number of valid pools (<= 4).
     * @param  minLiquidity Absolute min liquidity threshold (0 disables filtering).
     * @return fee Fee tier of the selected pool.
     * @return liq Liquidity of the selected pool.
     */
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

    /**
     * @notice Selects quote from the pool with maximum liquidity (optionally filtered by minLiquidity).
     * @dev If filter removes all pools, falls back to max-liquidity among all valid pools.
     *
     * @param quotes TWAP quotes collected per pool (first n entries are valid).
     * @param liqs Liquidity values per pool (aligned with quotes).
     * @param n Number of valid pools (<= 4).
     * @param minLiquidity Absolute min liquidity threshold (0 disables filtering).
     * @return q Quote from the selected max-liquidity pool.
     */
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

    /**
     * @notice Selects the maximum quote among pools (optionally filtered by minLiquidity).
     * @dev If filter removes all pools, falls back to best quote among all valid pools.
     *
     * @param quotes TWAP quotes collected per pool (first n entries are valid).
     * @param liqs Liquidity values per pool (aligned with quotes).
     * @param n Number of valid pools (<= 4).
     * @param minLiquidity Absolute min liquidity threshold (0 disables filtering).
     * @return q The selected (maximum) quote.
     */
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

    /**
     * @notice Computes median TWAP quote among pools after applying liquidity filter.
     * @dev
     * - If minLiquidity == 0: uses all `n` quotes.
     * - Else: keeps only quotes whose corresponding liquidity >= minLiquidity.
     * - If filter removes all pools: falls back to median of all valid quotes (soft fallback).
     *
     * @param quotes TWAP quotes collected per pool (first n entries are valid).
     * @param liqs Liquidity values per pool (aligned with quotes).
     * @param n Number of valid pools (<= 4).
     * @param minLiquidity Absolute min liquidity threshold (0 disables filtering).
     * @return Median quote after filtering (or fallback median).
     */
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
            return _median(quotes, n);
        }

        if (m == 1) return filtered[0];
        return _median(filtered, m);
    }

    // -----------------------------
    // Internal: Uniswap V3 oracle consult
    // -----------------------------

    /**
     * @dev Consults Uniswap V3 oracle and returns arithmetic mean tick over secondsAgo.
     * Uses try/catch because observe() can revert on insufficient history.
     */
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

    /**
     * @notice Converts a Uniswap V3 tick and base amount into a quote amount.
     * @dev
     * - Computes sqrtPriceX96 from tick via TickMath.
     * - Uses FullMath.mulDiv to avoid precision loss / overflow.
     * - Chooses formula direction based on address ordering (Uniswap V3 convention).
     *
     * @param  tick Arithmetic mean tick.
     * @param  baseAmount Amount of baseToken being quoted.
     * @param  baseToken Token being sold (input).
     * @param  quoteToken Token being bought (output).
     * @return quoteAmount Amount of quoteToken corresponding to baseAmount at the given tick.
     */
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

    /**
     * @notice Sorts two token addresses into (token0, token1) as Uniswap V3 expects.
     * @dev    Uniswap V3 Factory stores pools by (token0, token1, fee) where token0 < token1.
     *         Passing unsorted (tokenA, tokenB) to factory.getPool may return address(0)
     *         even if the pool exists.
     *
     * @param  a First token address.
     * @param  b Second token address.
     * @return token0 The smaller address.
     * @return token1 The larger address.
     */
    function _sort(address a, address b) internal pure returns (address token0, address token1) {
        if (a < b) return (a, b);
        return (b, a);
    }

    // -----------------------------
    // Internal: median for small N<=4
    // -----------------------------

    /**
     * @notice Computes median value of the first `n` elements of array `a` (n <= 4 expected).
     * @dev
     * - Sorts the first `n` elements in-place using insertion sort (O(n^2), but n is tiny).
     * - For even n: returns average of the two middle values (floor).
     *
     * @param  a Array containing values (only first n items are considered and may be mutated).
     * @param  n Number of elements to consider (must be > 0).
     * @return Median of the first n elements.
     */
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

    /**
     * @dev Converts uint256 to uint128 with bounds check.
     */
    function _toUint128(uint256 x) internal pure returns (uint128 y) {
        if (x > type(uint128).max) revert AmountTooLargeForUint128(x);
        y = uint128(x);
    }
}

// -----------------------------
// Uniswap V3 libs (minimal)
// -----------------------------

/**
 * @title  FullMath
 * @notice Provides full precision multiplication and division.
 * @dev    Computes floor(a*b/denominator) with full precision.
 *         Reverts if result overflows a uint256 or denominator == 0.
 *         This is a minimal version compatible with Uniswap V3-style math.
 */
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

/**
 * @title  TickMath
 * @notice Computes sqrt price for ticks of size 1.0001, as used by Uniswap V3.
 * @dev    Minimal Uniswap V3 TickMath implementation: getSqrtRatioAtTick only.
 *
 *         sqrtPriceX96 = floor(sqrt(1.0001^tick) * 2^96)
 *         Reverts if tick is outside the supported range.
 */
library TickMath {
    /// @notice The minimum tick that can be passed to getSqrtRatioAtTick
    int24 internal constant MIN_TICK = -887272;

    /// @notice The maximum tick that can be passed to getSqrtRatioAtTick
    int24 internal constant MAX_TICK = -MIN_TICK;

    /// @notice The minimum value that can be returned from getSqrtRatioAtTick
    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

    /**
     * @notice Calculates sqrt(1.0001^tick) as a Q64.96 (sqrtPriceX96).
     * @dev
     * - Uses a precomputed bit decomposition method.
     * - Rounds up to ensure consistency with Uniswap V3 semantics.
     *
     * @param  tick Tick for which to compute the sqrt price.
     * @return sqrtPriceX96 Sqrt price at tick as Q64.96.
     *
     * Reverts:
     * - "T" if |tick| > MAX_TICK
     * - "R" if the computed ratio is outside [MIN_SQRT_RATIO, MAX_SQRT_RATIO)
     */
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