// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.30;

/**
 *  @title  StaticQuoterV2 — Static (view) quoter for Uniswap V3
 *  @author Andrei Averin — CTO dsf.finance
 *  @notice Returns exactInput quotes without changing state (static-call friendly),
 *          interface-compatible with IQuoterV2 and suitable for calling via Read Contract / eth_call.
 *  @dev    Reads slot0, liquidity, ticks, tickBitmap from pools and calculates the swap step by step via SwapMath,
 *          without calling swap() and without changing the state.
 *
 *  Copyright (c) 2025 dsf.finance
 *  Modifications to original Uniswap v3 static quoter logic.
 *  This file remains licensed under GPL-2.0-or-later.
 *
 *⠀⠀⠀⠀⠈⢻⣿⠛⠻⢷⣄⠀⠀ ⣴⡟⠛⠛⣷⠀ ⠘⣿⡿⠛⠛⢿⡇
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⠈⣿⡄⠀⠿⣧⣄⡀ ⠉⠀⠀ ⣿⣧⣀⣀⡀
 *⠀⠀⠀⠀⠀⢸⣿⠀⠀ ⢀⣿⠃ ⣀ ⠈⠉⠻⣷⡄⠀ ⣿⡟⠉⠉⠁
 *⠀⠀⠀⠀⢠⣼⣿⣤⣴⠿⠋⠀ ⠀⢿⣦⣤⣴⡿⠁ ⢠⣿⣷⡄
 *
 *      - Defining Successful Future -
 */

/* ------------------------- Uniswap V3 Core libraries ------------------------ */

import "../libraries/TickMath.sol";
import "../libraries/SwapMath.sol";
import "../libraries/BitMath.sol";

/* ---------------------- Minimal factory & pool interfaces ------------------- */

interface IUniswapV3FactoryMinimal {
    function getPool(address tokenA, address tokenB, uint24 fee) external view returns (address);
}

interface IUniswapV3PoolMinimal {
    function slot0() external view returns (
        uint160 sqrtPriceX96,
        int24  tick,
        uint16 observationIndex,
        uint16 observationCardinality,
        uint16 observationCardinalityNext,
        uint8  feeProtocol,
        bool   unlocked
    );
    function liquidity() external view returns (uint128);
    function fee() external view returns (uint24);
    function tickSpacing() external view returns (int24);
    function tickBitmap(int16 wordPos) external view returns (uint256);
    function ticks(int24 tick) external view returns (
        uint128 liquidityGross,
        int128  liquidityNet,
        uint256 feeGrowthOutside0X128,
        uint256 feeGrowthOutside1X128,
        int56   tickCumulativeOutside,
        uint160 secondsPerLiquidityOutsideX128,
        uint32  secondsOutside,
        bool    initialized
    );
}

/* ---------------------------- Minimal IQuoterV2 ----------------------------- */

interface IQuoterV2 {
    struct QuoteExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24  fee;
        uint256 amountIn;
        uint160 sqrtPriceLimitX96; // 0 = no limit
    }

    struct QuoteExactOutputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24  fee;
        uint256 amountOut;          // target out
        uint160 sqrtPriceLimitX96;  // 0 = no limit
    }

    function quoteExactInputSingle(QuoteExactInputSingleParams memory params)
        external
        view
        returns (uint256 amountOut, uint160 sqrtPriceX96After, uint32 initializedTicksCrossed, uint256 gasEstimate);

    function quoteExactInput(bytes memory path, uint256 amountIn)
        external
        view
        returns (uint256 amountOut, uint160[] memory sqrtPriceX96AfterList, uint32[] memory initializedTicksCrossedList, uint256 gasEstimate);

    function quoteExactOutputSingle(QuoteExactOutputSingleParams memory params)
        external
        view
        returns (uint256 amountIn, uint160 sqrtPriceX96After, uint32 initializedTicksCrossed, uint256 gasEstimate);

    function quoteExactOutput(bytes memory path, uint256 amountOut)
        external
        view
        returns (uint256 amountIn, uint160[] memory sqrtPriceX96AfterList, uint32[] memory initializedTicksCrossedList, uint256 gasEstimate);
}

/* --------------------------- Path utils (v3 path) --------------------------- */

library V3Path {
    /**
     * @notice Encodes uint24 into 3 bytes big-endian (Uniswap V3 path format)
     */
    function _u24(uint24 v) internal pure returns (bytes memory b) {
        b = abi.encodePacked(bytes1(uint8(v >> 16)), bytes1(uint8(v >> 8)), bytes1(uint8(v)));
    }

    /**
     * @notice Checks whether there is more than one pool (>=2 hops) in the path.
     */
    function hasMultiplePools(bytes memory path) internal pure returns (bool) {
        // one hop = 20 (token) + 3 (fee) + 20 (token) = 43 bytes
        return path.length > 20 + 3 + 20;
    }

    /**
     * @notice  Decodes the first hop: [tokenA | fee | tokenB].
     * @dev     Requires a path length >= 43.
     * @return  tokenA      left token of the first hop
     * @return  tokenB      right token of the first hop
     * @return  fee         fee of the first hop pool
     */
    function decodeFirstPool(bytes memory path)
        internal
        pure
        returns (address tokenA, address tokenB, uint24 fee)
    {
        require(path.length >= 43, "V3Path: short");
        assembly {
            let data := add(path, 32)                // skip length
            tokenA := shr(96, mload(data))           // [0..19]
            fee    := shr(232, mload(add(data, 20))) // [20..22] (3 bytes BE)
            tokenB := shr(96, mload(add(data, 23)))  // [23..42]
        }
    }

    /**
     * @notice  Removes the first transition (fee+token) from the beginning of the path.
     * @dev     The result is again a correct v3-path (for iteration).
     */
    function skipToken(bytes memory path) internal pure returns (bytes memory rest) {
        require(path.length >= 43, "V3Path: short");
        uint256 newLen = path.length - 23;
        rest = new bytes(newLen);
        for (uint256 i; i < newLen; ++i) rest[i] = path[i + 23];
    }

    /**
     * @notice  Decodes the last hop: [... | tokenA | fee | tokenB].
     * @dev     Reads the trailing 43 bytes window.
     */
    function decodeLastPool(bytes memory path)
        internal
        pure
        returns (address tokenA, address tokenB, uint24 fee)
    {
        require(path.length >= 43, "V3Path: short");
        // last 43 bytes start at (len - 43)
        uint256 start = path.length - 43;
        assembly {
            let data := add(add(path, 32), start)
            tokenA := shr(96, mload(data))              // tokenA
            fee    := shr(232, mload(add(data, 20)))    // 3 bytes BE
            tokenB := shr(96, mload(add(data, 23)))     // tokenB
        }
    }

    /**
     * @notice  Truncates the last transition (fee+token) from the end of the path.
     * @dev     Result remains a valid v3 path.
     */
    function truncateLastToken(bytes memory path) internal pure returns (bytes memory rest) {
        require(path.length >= 43, "V3Path: short");
        uint256 newLen = path.length - 23;
        rest = new bytes(newLen);
        // copy first newLen bytes
        for (uint256 i; i < newLen; ++i) rest[i] = path[i];
    }
}

/* ------------------ TickBitmap helpers that read from pool ------------------ */

library TickBitmapView {
    /**
     * @notice  Compresses a tick to its TickBitmap index space (tick/spacing).
     * @dev     Matches Uniswap V3 TickBitmap compression semantics:
     *          for negative, non-multiple ticks the result is rounded down (towards -∞).
     * @param   tick        Absolute tick value.
     * @param   spacing     Pool's tickSpacing.
     * @return  compressed  Compressed tick index used in TickBitmap.
     */
    function _compress(int24 tick, int24 spacing) internal pure returns (int24 compressed) {
        compressed = tick / spacing;
        if (tick < 0 && tick % spacing != 0) compressed--;
    }

    /**
     * @notice  Maps a tick to its TickBitmap word and bit positions.
     * @dev     The TickBitmap groups 256 compressed ticks per word.
     *          wordPos = compressed >> 8, bitPos = compressed & 0xFF.
     * @param   tick         Absolute tick value.
     * @param   spacing      Pool's tickSpacing.
     * @return  wordPos      256-bit word index in the TickBitmap.
     * @return  bitPos       Bit position (0..255) within the word.
     * @return  compressed   Compressed tick index (tick/spacing with negative rounding).
     */
    function position(int24 tick, int24 spacing) internal pure returns (int16 wordPos, uint8 bitPos, int24 compressed) {
        compressed = _compress(tick, spacing);
        wordPos = int16(compressed >> 8);
        bitPos  = uint8(uint24(compressed & 255));
    }

    /**
     * @notice  Search for the next initialized tick within a single 256-bit word.
     * @dev     Replicates the semantics of Uniswap V3 TickBitmap.
     * @param   pool         V3 pool
     * @param   tick         current tick
     * @param   spacing pool tickSpacing
     * @param   lte          true — search to the left (<= tick), false — to the right (> tick)
     * @return  next         next tick (multiple of spacing)
     * @return  initialized  true if an initialized tick is found in the word
     */
    function nextInitializedTickWithinOneWord(
        IUniswapV3PoolMinimal pool,
        int24 tick,
        int24 spacing,
        bool lte
    ) internal view returns (int24 next, bool initialized) {
        (int16 wordPos, uint8 bitPos, int24 compressed) = position(tick, spacing);
        uint256 word = pool.tickBitmap(wordPos);

        if (lte) {
            // mask including current bit and everything to the left
            uint256 mask = type(uint256).max >> (255 - bitPos);
            uint256 masked = word & mask;
            initialized = masked != 0;
            if (initialized) {
                // index of the most significant set bit
                uint8 msb = uint8(BitMath.mostSignificantBit(masked));
                int24 offset = int24(uint24(bitPos)) - int24(uint24(msb));
                int24 nextCompressed = compressed - offset;
                next = nextCompressed * spacing;
            } else {
                // boundary before current word
                int24 nextCompressed = compressed - int24(uint24(bitPos));
                next = nextCompressed * spacing;
            }
        } else {
            // mask strictly to the right of current bit
            uint256 mask = ~(type(uint256).max >> (255 - bitPos));
            uint256 masked = word & mask;
            initialized = masked != 0;
            if (initialized) {
                // index of the least significant set bit
                uint8 lsb = uint8(BitMath.leastSignificantBit(masked));
                int24 nextCompressed = (int24(wordPos) * 256) + int24(uint24(lsb));
                next = nextCompressed * spacing;
            } else {
                // first bit of the next word
                int24 nextCompressed = (int24(wordPos) + 1) * 256;
                next = nextCompressed * spacing;
            }
        }
    }
}

/* ----------------------------- Static Quoter V2 ----------------------------- */

contract StaticQuoterV2 is IQuoterV2 {
    using V3Path for bytes;
    using TickBitmapView for IUniswapV3PoolMinimal;

    /// @notice Uniswap V3 factory address
    IUniswapV3FactoryMinimal public immutable FACTORY;

    constructor(address factory) {
        FACTORY = IUniswapV3FactoryMinimal(factory);
    }

    struct SQState {
        uint160 sqrtP;
        int24   tick;
        uint128 L;
        uint256 amountRemaining; // exactIn: remaining IN; exactOut: remaining OUT
        uint160 limit;           // sqrt price limit
        uint24  feePips;
        int24   spacing;
    }

    struct SQStep {
        int24   nextTick;
        bool    initialized;
        uint160 sqrtTarget;
        uint160 sqrtNext;
        uint256 amountInStep;
        uint256 amountOutStep;
        uint256 feeAmount;
    }

    /* ---------------------------- Public VIEW API ---------------------------- */

    /**
     * @notice  Quote for a 1-hop swap tokenIn→tokenOut through a pool with the specified commission.
     * @dev     The order of tokens is normalized to (token0, token1) by address.
     * @param   p Parameters:
     *          - tokenIn  input token address
     *          - tokenOut output token address
     *          - fee      pool commission (100/500/3000/10000)
     *          - amountIn input volume (in tokenIn units)
     *          - sqrtPriceLimitX96 sqrt(P) limit (0 — no limit)
     * @return  amountOut calculated output volume (in tokenOut)
     * @return  sqrtAfter sqrt(P) after simulation
     * @return  ticksCrossed number of crossed initialized ticks
     * @return  gasEstimate always 0 (for compatibility with IQuoterV2)
     */
    function quoteExactInputSingle(QuoteExactInputSingleParams memory p)
        external
        view
        returns (uint256 amountOut, uint160 sqrtAfter, uint32 ticksCrossed, uint256 gasEstimate)
    {
        (address t0, address t1) = p.tokenIn < p.tokenOut ? (p.tokenIn, p.tokenOut) : (p.tokenOut, p.tokenIn);
        address poolAddr = FACTORY.getPool(t0, t1, p.fee);
        require(poolAddr != address(0), "SQ: pool not found");

        bool zeroForOne = (p.tokenIn == t0);
        (amountOut, sqrtAfter, ticksCrossed) =
            _quoteSingleView(IUniswapV3PoolMinimal(poolAddr), zeroForOne, p.amountIn, p.sqrtPriceLimitX96);

        gasEstimate = 0;
    }

    /**
     * @notice  Quote via v3 path (one or more hops).
     * @dev     Path format: tokenA(20) | fee(3) | tokenB(20) [ | fee(3) | tokenC(20) ... ].
     * @param   path v3 path (bytes), can be assembled via encodePath()
     * @param   amountIn input volume (in units of the first token of the path)
     * @return  amountOut total output volume (last token of the path)
     * @return  sqrtAfterList array sqrt(P) after each hop
     * @return  ticksCrossedList array of the number of ticks crossed per hop
     * @return  gasEstimate always 0 (for compatibility with IQuoterV2)
     */
    function quoteExactInput(bytes memory path, uint256 amountIn)
        external
        view
        returns (
            uint256 amountOut,
            uint160[] memory sqrtAfterList,
            uint32[] memory ticksCrossedList,
            uint256 gasEstimate
        )
    {
        // hops
        uint256 hops = 1;
        for (bytes memory tmp = path; tmp.hasMultiplePools(); tmp = tmp.skipToken()) {
            unchecked { ++hops; }
        }
        sqrtAfterList    = new uint160[](hops);
        ticksCrossedList = new uint32[](hops);

        bytes memory cur = path;
        uint256 amt = amountIn;
        uint256 i;
        while (true) {
            (address a, address b, uint24 f) = V3Path.decodeFirstPool(cur);

            (amt, sqrtAfterList[i], ticksCrossedList[i]) = _quoteHop(a, b, f, amt);
            unchecked { ++i; }

            if (!cur.hasMultiplePools()) break;
            cur = V3Path.skipToken(cur);
        }

        amountOut   = amt;
        gasEstimate = 0;
    }

    /**
     * @notice  Quote for exact-output swap in a single Uniswap V3 pool.
     * @dev     Simulates the swap without changing state. Pool is determined via factory by
     *          (token0, token1, fee); swap direction is decided by comparing tokenIn with token0.
     *          Price limit is set via `sqrtPriceLimitX96` (0 = no limit).
     * @param   p Parameters:
     *          - tokenIn            Input token address
     *          - tokenOut           Output token address (target)
     *          - fee                Pool fee in pips (100/500/3000/10000)
     *          - amountOut          Desired output amount (in tokenOut units)
     *          - sqrtPriceLimitX96  sqrt(P) limit in Q64.96 format (0 = no limit)
     * @return  amountIn              Required input amount (in tokenIn units) to get `amountOut`
     * @return  sqrtAfter             sqrt(P) after swap simulation (Q64.96)
     * @return  ticksCrossed          Number of initialized ticks crossed
     * @return  gasEstimate           Always 0 (for IQuoterV2 compatibility)
     */
    function quoteExactOutputSingle(QuoteExactOutputSingleParams memory p)
        external
        view
        returns (uint256 amountIn, uint160 sqrtAfter, uint32 ticksCrossed, uint256 gasEstimate)
    {
        (address t0, address t1) = p.tokenIn < p.tokenOut ? (p.tokenIn, p.tokenOut) : (p.tokenOut, p.tokenIn);
        address poolAddr = FACTORY.getPool(t0, t1, p.fee);
        require(poolAddr != address(0), "SQ: pool not found");

        bool zeroForOne = (p.tokenIn == t0);
        (amountIn, sqrtAfter, ticksCrossed) =
            _quoteSingleViewExactOutput(IUniswapV3PoolMinimal(poolAddr), zeroForOne, p.amountOut, p.sqrtPriceLimitX96);

        gasEstimate = 0;
    }

    /**
     * @notice  Quote for exact-output swap via Uniswap V3 path (one or more hops).
     * @dev     Path format: tokenA(20) | fee(3) | tokenB(20) [ | fee(3) | tokenC(20) ... ].
     *          Simulation is performed right-to-left (from last hop to first),
     *          because exact-output requires calculating previous hop's input from the next hop's output.
     *          Only reads pool state (slot0, ticks, tickBitmap, liquidity).
     * @param   path       V3 path (bytes) compatible with Uniswap V3 Router/Quoter
     * @param   amountOut  Desired total output amount of the last token in the path
     * @return  amountIn           Total required input amount of the first token in the path
     * @return  sqrtAfterList      Array of sqrt(P) after each hop (ordered left-to-right by hops)
     * @return  ticksCrossedList   Array of number of initialized ticks crossed per hop (left-to-right)
     * @return  gasEstimate        Always 0 (for IQuoterV2 compatibility)
     */
    function quoteExactOutput(bytes memory path, uint256 amountOut)
        external
        view
        returns (
            uint256 amountIn,
            uint160[] memory sqrtAfterList,
            uint32[] memory ticksCrossedList,
            uint256 gasEstimate
        )
    {
        // count hops
        uint256 hops = 1;
        for (bytes memory tmp = path; tmp.hasMultiplePools(); tmp = tmp.skipToken()) {
            unchecked { ++hops; }
        }
        sqrtAfterList    = new uint160[](hops);
        ticksCrossedList = new uint32[](hops);

        bytes memory cur = path;
        uint256 requiredOut = amountOut;

        // we will fill the arrays from right to left
        uint256 idx = hops;
        while (true) {
            (address a, address b, uint24 f) = V3Path.decodeLastPool(cur);
            unchecked { --idx; }

            (uint256 inHop, uint160 sqrtAfter, uint32 ticks) = _quoteHopExactOutput(a, b, f, requiredOut);
            sqrtAfterList[idx]    = sqrtAfter;
            ticksCrossedList[idx] = ticks;

            // for the previous hop, the required output = current input
            requiredOut = inHop;

            if (!cur.hasMultiplePools()) break;
            cur = V3Path.truncateLastToken(cur);
        }

        amountIn   = requiredOut;
        gasEstimate = 0;
    }

    /**
     * @notice  Utility for constructing v3 paths from arrays of addresses and fees.
     * @dev     Requires tokens.length == fees.length + 1.
     * @param   tokens array of token addresses [t0, t1, ..., tn]
     * @param   fees   array of fees [f0, f1, ..., f(n-1)]
     * @return  path   byte path compatible with Uniswap V3 Router/Quoter
     */
    function encodePath(address[] memory tokens, uint24[] memory fees)
        external
        pure
        returns (bytes memory path)
    {
        require(tokens.length == fees.length + 1, "SQ: bad lengths");
        path = abi.encodePacked(tokens[0]);
        for (uint256 i; i < fees.length; ++i) {
            path = bytes.concat(path, V3Path._u24(fees[i]), abi.encodePacked(tokens[i + 1]));
        }
    }

    /**
     * @notice  Returns the pool address (a,b,fee) from the factory.
     * @dev     The order is normalized to (token0, token1) by address.
     */
    function getPool(address a, address b, uint24 fee) external view returns (address) {
        (address t0, address t1) = a < b ? (a, b) : (b, a);
        return FACTORY.getPool(t0, t1, fee);
    }

    /* ------------------------------ Core routine ----------------------------- */

    /**
     * @notice  Internal quote for a single hop (a→b with fee).
     * @dev     Finds the pool, determines the direction (token0→token1 or vice versa),
     *          and calls a step-by-step simulation.
     * @param   a             left token in the hop
     * @param   b             right token in the hop
     * @param   fee           pool commission (in pips)
     * @param   amountIn      input volume for the hop
     * @return  out           calculated output
     * @return  sqrtAfter     sqrt(P) after the hop
     * @return  ticksCrossed  number of crossed initialized ticks
     */
    function _quoteHop(
        address a,
        address b,
        uint24 fee,
        uint256 amountIn
    ) internal view returns (uint256 out, uint160 sqrtAfter, uint32 ticksCrossed) {
        (address t0, address t1) = a < b ? (a, b) : (b, a);
        address poolAddr = FACTORY.getPool(t0, t1, fee);
        require(poolAddr != address(0), "SQ: pool not found");

        bool zeroForOne = (a == t0);
        (out, sqrtAfter, ticksCrossed) =
            _quoteSingleView(IUniswapV3PoolMinimal(poolAddr), zeroForOne, amountIn, 0);
    }

    function _quoteHopExactOutput(
        address a,
        address b,
        uint24 fee,
        uint256 amountOutTarget
    ) internal view returns (uint256 inNeeded, uint160 sqrtAfter, uint32 ticksCrossed) {
        (address t0, address t1) = a < b ? (a, b) : (b, a);
        address poolAddr = FACTORY.getPool(t0, t1, fee);
        require(poolAddr != address(0), "SQ: pool not found");

        bool zeroForOne = (a == t0);
        (inNeeded, sqrtAfter, ticksCrossed) =
            _quoteSingleViewExactOutput(IUniswapV3PoolMinimal(poolAddr), zeroForOne, amountOutTarget, 0);
    }

    /**
     * @notice  Core simulation of exactInput for a single pool (no state changes).
     * @dev     Iterate until the next initialized tick (or until the sqrtP limit),
     *          calculate the step using SwapMath.computeSwapStep, and update liquidity on crossing.
     * @param   pool                V3 pool (minimal interface)
     * @param   zeroForOne          direction: true if token0→token1
     * @param   amountSpecified     input volume (amountIn)
     * @param   sqrtPriceLimitX96   sqrt(P) limit (0 — no limit)
     * @return  amountOut           calculated amountOut
     * @return  sqrtAfter           sqrt(P) after simulation completion
     * @return  ticksCrossed        number of crossed initialized ticks
     */
    function _quoteSingleView(
        IUniswapV3PoolMinimal pool,
        bool     zeroForOne,
        uint256  amountSpecified,     // amountIn
        uint160  sqrtPriceLimitX96    // 0 = no limit
    )
        internal
        view
        returns (uint256 amountOut, uint160 sqrtAfter, uint32 ticksCrossed)
    {
        SQState memory st;
        (st.sqrtP, st.tick, , , , , ) = pool.slot0();
        st.L = pool.liquidity();
        uint24  feePips = pool.fee();
        int24   spacing = pool.tickSpacing();

        uint160 limit = sqrtPriceLimitX96;
        if (limit == 0) {
            limit = zeroForOne ? (TickMath.MIN_SQRT_RATIO + 1) : (TickMath.MAX_SQRT_RATIO - 1);
        } else {
            if (zeroForOne) require(limit > TickMath.MIN_SQRT_RATIO, "SQ: bad limit");
            else            require(limit < TickMath.MAX_SQRT_RATIO, "SQ: bad limit");
        }

        st.amountRemaining = amountSpecified;

        while (st.amountRemaining > 0 && st.sqrtP != limit && st.L > 0) {
            SQStep memory step;

            (step.nextTick, step.initialized) =
                pool.nextInitializedTickWithinOneWord(st.tick, spacing, zeroForOne);

            step.sqrtTarget = TickMath.getSqrtRatioAtTick(step.nextTick);
            // clamp
            if (zeroForOne) {
                if (step.sqrtTarget < limit) step.sqrtTarget = limit;
            } else {
                if (step.sqrtTarget > limit) step.sqrtTarget = limit;
            }

            (step.sqrtNext, step.amountInStep, step.amountOutStep, step.feeAmount) =
                SwapMath.computeSwapStep(
                    st.sqrtP,
                    step.sqrtTarget,
                    st.L,
                    int256(st.amountRemaining),
                    feePips
                );

            st.amountRemaining -= (step.amountInStep + step.feeAmount);
            amountOut          +=  step.amountOutStep;
            st.sqrtP            =  step.sqrtNext;

            if (st.sqrtP == step.sqrtTarget) {
                if (step.initialized) {
                    (, int128 liqNet, , , , , , ) = pool.ticks(step.nextTick);

                    // crossing rule: left (zeroForOne) => L -= liqNet; right => L += liqNet
                    int256 newL = int256(uint256(st.L));
                    if (zeroForOne) newL -= liqNet; else newL += liqNet;
                    require(newL >= 0 && uint256(newL) <= type(uint128).max, "SQ: L overflow");
                    st.L = uint128(uint256(newL));

                    unchecked { ++ticksCrossed; }
                }
                st.tick = zeroForOne ? (step.nextTick - 1) : step.nextTick;
            } else {
                st.tick = TickMath.getTickAtSqrtRatio(st.sqrtP);
            }
        }

        sqrtAfter = st.sqrtP;
    }

    /**
     * @notice  Core simulation of exactOutput for a single Uniswap V3 pool (no state changes).
     * @dev     Iteratively moves the price through initialized ticks until the required `amountOutTarget`
     *          is satisfied or the price limit is reached.
     * @param   pool              Minimal Uniswap V3 pool interface
     * @param   zeroForOne        Swap direction: true = token0 → token1, false = token1 → token0
     * @param   amountOutTarget   Exact total output amount desired (in tokenOut units)
     * @param   sqrtPriceLimitX96 sqrt(P) limit in Q64.96 format (0 = no limit)
     * @return  amountIn          Total input amount required to achieve `amountOutTarget`
     * @return  sqrtAfter         sqrt(P) after the simulation completes (Q64.96)
     * @return  ticksCrossed      Number of initialized ticks crossed during the simulation
     */
    function _quoteSingleViewExactOutput(
        IUniswapV3PoolMinimal pool,
        bool     zeroForOne,
        uint256  amountOutTarget,     // exact OUT required
        uint160  sqrtPriceLimitX96    // 0 = no limit
    )
        internal
        view
        returns (uint256 amountIn, uint160 sqrtAfter, uint32 ticksCrossed)
    {
        SQState memory st;
        (st.sqrtP, st.tick, , , , , ) = pool.slot0();
        st.L       = pool.liquidity();
        st.feePips = pool.fee();
        st.spacing = pool.tickSpacing();

        // limit -> st.limit
        st.limit = sqrtPriceLimitX96;
        if (st.limit == 0) {
            st.limit = zeroForOne ? (TickMath.MIN_SQRT_RATIO + 1) : (TickMath.MAX_SQRT_RATIO - 1);
        } else {
            if (zeroForOne) require(st.limit > TickMath.MIN_SQRT_RATIO, "SQ: bad limit");
            else            require(st.limit < TickMath.MAX_SQRT_RATIO, "SQ: bad limit");
        }

        // remaining OUT keep in st.amountRemaining
        st.amountRemaining = amountOutTarget;

        while (st.amountRemaining > 0 && st.sqrtP != st.limit && st.L > 0) {
            SQStep memory step;

            (step.nextTick, step.initialized) =
                pool.nextInitializedTickWithinOneWord(st.tick, st.spacing, zeroForOne);

            step.sqrtTarget = TickMath.getSqrtRatioAtTick(step.nextTick);
            if (zeroForOne) {
                if (step.sqrtTarget < st.limit) step.sqrtTarget = st.limit;
            } else {
                if (step.sqrtTarget > st.limit) step.sqrtTarget = st.limit;
            }

            // exactOutput: amountSpecified < 0
            (step.sqrtNext, step.amountInStep, step.amountOutStep, step.feeAmount) =
                SwapMath.computeSwapStep(
                    st.sqrtP,
                    step.sqrtTarget,
                    st.L,
                    -int256(st.amountRemaining),
                    st.feePips
                );

            if (step.amountOutStep > st.amountRemaining) {
                step.amountOutStep = st.amountRemaining; // safety
            }

            // updating units
            st.amountRemaining -= step.amountOutStep;           // reduce the required OUT
            amountIn           += (step.amountInStep + step.feeAmount);
            st.sqrtP            =  step.sqrtNext;

            if (st.sqrtP == step.sqrtTarget) {
                if (step.initialized) {
                    (, int128 liqNet, , , , , , ) = pool.ticks(step.nextTick);

                    int256 newL = int256(uint256(st.L));
                    if (zeroForOne) newL -= liqNet; else newL += liqNet;
                    require(newL >= 0 && uint256(newL) <= type(uint128).max, "SQ: L overflow");
                    st.L = uint128(uint256(newL));

                    unchecked { ++ticksCrossed; }
                }
                st.tick = zeroForOne ? (step.nextTick - 1) : step.nextTick;
            } else {
                st.tick = TickMath.getTickAtSqrtRatio(st.sqrtP);
            }
        }

        require(st.amountRemaining == 0, "SQ: insufficient liquidity for exactOut");
        sqrtAfter = st.sqrtP;
    }
}