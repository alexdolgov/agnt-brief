// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/**
 * @title CollateralFloorMath
 * @notice Computes a static, oracle-free √K collateral floor for vaults holding idle tokens, concentrated
 *         liquidity positions, and limit orders.
 *
 * @dev Implementation of Research-0008 (price-invariant √K floor with exact ΣL_inside for ranges) and
 *      Research-0013 (limit order band-edge handling via min(pre,post) across segment endpoints).
 *
 * Policy notes (LO proceeds counting):
 * - This implementation intentionally COUNTS unclaimed limit-order (LO) proceeds as collateral.
 *   Concretely, at endpoints we add Δ0 (lower edge, token0 side) and/or Δ1 (upper edge, token1 side)
 *   and take min(pre, post) per R-0013. On open segments strictly off the LO band we add the
 *   appropriate Δ to the constant terms (A0/B0). We DO NOT filter on LO “liveness” or epoch filled state
 *   here. This matches the policy that LO deposits/proceeds held by the LO manager are under vault control
 *   and are creditable collateral.
 * - Engine invariants required to avoid double counting: when LO proceeds are claimed into idle balances,
 *   the corresponding LO NFT should be removed from the vault’s positions set (or contribute zero), so that
 *   we do not count both idle and Δ for the same assets. If your LO semantics can yield partial/atypical
 *   fills that deviate from Δ0/Δ1 for a one-tick band, derive credit from epoch totals instead.
 *
 * ## Algorithm Overview
 *
 * **Two-Phase Execution:**
 * 1. **View Phase** (TickSetCodec): Reads NFT metadata from managers, builds immutable context with sorted
 *    tick boundaries and per-tick aggregates (liquidityNet, negative offsets, LO deltas).
 * 2. **Pure Phase** (_evaluateRaw): Sweeps left-to-right through segments, computing floor candidates at
 *    endpoints and interiors, returning the global minimum.
 *
 * **Per-Segment Floor Computation:**
 * - **Endpoints**: Outside-at-tick convention for ranges (R-0008 §7); LO band-edge uses pre-only at lower,
 *   post-only at upper, achieving min(pre,post) via segment minimum (R-0013 §5).
 * - **Interior** (convex segments with inside liquidity): C_int = sqrt(A0·B0) + ΣL_inside, where A0/B0 are
 *   adjusted idle balances after subtracting inside-range negative offsets (R-0008 §5).
 *
 * **Conservatism:**
 * - All positive token additions use floor rounding
 * - All negative offsets use minus-ceiling rounding
 * - Overflow-safe arithmetic: _addPreservingLowerBound drops addends on overflow
 * - Result is guaranteed ≤ true minimum √K across all possible prices
 *
 * **Complexity:** O(N²) time, O(N) memory for N NFTs; gas scales ~15k (idle only) to ~55k (1 NFT)
 *                to ~100k (2 NFTs) to ~145k (3 NFTs) to ~210k (4 NFTs, worst-case nested).
 *                Typical configurations with ≤3 NFTs cost approximately 50k per additional NFT.
 */
import { FullMath } from "@uniswap/v4-core/src/libraries/FullMath.sol";
import { TickMath } from "@uniswap/v4-core/src/libraries/TickMath.sol";
import { FixedPoint96 } from "@uniswap/v4-core/src/libraries/FixedPoint96.sol";
import { IPositionManager } from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";

import { ILimitOrderManager } from "../../../interfaces/ILimitOrderManager.sol";
import { NftRef } from "../../../types/AegisStructs.sol";
import { TickSetCodec } from "./TickSetCodec.sol";
import { SqrtMath } from "../math/SqrtMath.sol";

library CollateralFloorMath {
  /// @dev Helper working set used during the pure evaluation phase.
  ///      Caches boundary sqrt prices, prefix/suffix token accumulations, and endpoint √K candidates.
  /// forge-lint: disable-next-item(pascal-case-struct)
  struct _EvaluationHelpers {
    uint160[] sqrtAtTicks;
    uint256[] prefixRangeAmt1UpTo; // Σ amt1Above at uppers ≤ i
    uint256[] suffixRangeAmt0From; // Σ amt0Below at lowers ≥ i
    uint256[] prefixLoAmt1UpTo; // Σ Δ1 at LO uppers ≤ i
    uint256[] suffixLoAmt0From; // Σ Δ0 at LO lowers ≥ i
    uint256[] endpointCache; // memoized √K candidates per boundary; sentinel = type(uint256).max
    uint256 idleToken0;
    uint256 idleToken1;
    bool hasLimitOrder;
  }

  /// @dev Tracks active liquidity and accumulated negative offsets during the segment walk.
  ///      Updated at each boundary as we sweep left-to-right through sorted ticks.
  /// forge-lint: disable-next-item(pascal-case-struct)
  struct _SegmentState {
    uint256 activeL; // ΣL_inside for current open segment
    uint256 sumNeg0; // Σneg0 for inside ranges
    uint256 sumNeg1; // Σneg1 for inside ranges
  }

  /// @notice Computes the static collateral floor in √K (liquidity) units.
  /// @dev Two-phase algorithm: (1) View phase builds context from NFT managers, (2) Pure phase evaluates the floor.
  ///      Implements R-0008 (price-invariant √K floor with exact ΣL_inside) and R-0013 (LO band-edge handling).
  ///      Conservative by design: floors for positive addends, minus-ceil for negative offsets, overflow-safe.
  /// @param idle0 Idle token0 balance (raw wei, uint128)
  /// @param idle1 Idle token1 balance (raw wei, uint128)
  /// @param positions Array of vault NFT references (CL positions and limit orders)
  /// @param positionManager Uniswap V4 position manager for CL NFT metadata
  /// @param loManager Limit order manager for LO NFT metadata
  /// @return Floor value in raw √K units (not WAD-scaled); conservative lower bound across all prices
  function computeL(
    uint128 idle0,
    uint128 idle1,
    NftRef[] memory positions,
    IPositionManager positionManager,
    ILimitOrderManager loManager
  ) external view returns (uint256) {
    TickSetCodec.FloorContext memory ctx = TickSetCodec.buildContext(positionManager, loManager, positions);
    return _evaluateRaw(uint256(idle0), uint256(idle1), ctx);
  }

  /// @notice Pure evaluator that computes the √K floor given a pre-built context.
  /// @dev Segment sweep algorithm:
  ///      1. Cache sqrt prices at each boundary and compute prefix/suffix token accumulations
  ///      2. For each open segment (sL, sR):
  ///         a) Compute endpoint candidates at sL and sR using outside-at-tick + LO band-edge rules
  ///         b) Compute open-segment interior bound: C_int = sqrt(A0·B0) + ΣL_inside (if applicable)
  ///         c) Segment floor = min(C_end(sL), C_end(sR), C_int)
  ///      3. Global floor = min across all segments
  /// @param idle0 Idle token0 balance (raw wei, uint256)
  /// @param idle1 Idle token1 balance (raw wei, uint256)
  /// @param ctx Pre-built context from TickSetCodec.buildContext (ranges, aggregates, LO count)
  /// @return Global collateral floor in raw √K units (not WAD-scaled)
  function _evaluateRaw(uint256 idle0, uint256 idle1, TickSetCodec.FloorContext memory ctx)
    private
    pure
    returns (uint256)
  {
    TickSetCodec.FloorAggregates memory agg = ctx.aggregates;

    if (ctx.ranges.length == 0 && agg.ticks.length == 0 && ctx.liveLimitOrderCount == 0) {
      return SqrtMath.sqrtProductLowerBound(idle0, idle1);
    }

    uint256 m = agg.ticks.length;
    if (m == 0) return SqrtMath.sqrtProductLowerBound(idle0, idle1);

    _EvaluationHelpers memory helpers;

    /*//////////////////////////////////////////////////////////////
                        PHASE 1: CACHE SQRT PRICES
    //////////////////////////////////////////////////////////////*/

    // Cache sqrt(S) at each boundary once for reuse across endpoint evaluations
    helpers.sqrtAtTicks = new uint160[](m);
    for (uint256 i = 0; i < m;) {
      helpers.sqrtAtTicks[i] = TickMath.getSqrtPriceAtTick(agg.ticks[i]);
      unchecked {
        ++i;
      }
    }

    /*//////////////////////////////////////////////////////////////
              PHASE 2: BUILD PREFIX/SUFFIX ACCUMULATIONS
    //////////////////////////////////////////////////////////////*/

    // Prefix/suffix arrays enable O(1) lookup of off-band token amounts during segment sweep.
    // For segment (ticks[i], ticks[i+1]):
    //   - Ranges with tickUpper <= ticks[i] are "above" (contribute token1): use prefixRangeAmt1UpTo[i]
    //   - Ranges with tickLower >= ticks[i+1] are "below" (contribute token0): use suffixRangeAmt0From[i+1]
    // Same pattern for LOs (separate arrays for limit order contributions).

    // Range prefix/suffix
    helpers.prefixRangeAmt1UpTo = new uint256[](m);
    helpers.suffixRangeAmt0From = new uint256[](m);
    {
      uint256 accumulator = 0;
      for (uint256 i = 0; i < m;) {
        accumulator += agg.sumRangeAmt1AtUpper[i];
        helpers.prefixRangeAmt1UpTo[i] = accumulator;
        unchecked {
          ++i;
        }
      }
      accumulator = 0;
      for (uint256 i = m; i > 0;) {
        unchecked {
          --i;
        }
        accumulator += agg.sumRangeAmt0AtLower[i];
        helpers.suffixRangeAmt0From[i] = accumulator;
      }
    }

    // LO prefix/suffix allocated only if present
    helpers.hasLimitOrder = (ctx.liveLimitOrderCount > 0);
    helpers.prefixLoAmt1UpTo = new uint256[](m);
    helpers.suffixLoAmt0From = new uint256[](m);
    if (helpers.hasLimitOrder) {
      uint256 accumulator = 0;
      for (uint256 i = 0; i < m;) {
        accumulator += agg.sumLoAmt1AtUpper[i];
        helpers.prefixLoAmt1UpTo[i] = accumulator;
        unchecked {
          ++i;
        }
      }
      accumulator = 0;
      for (uint256 i = m; i > 0;) {
        unchecked {
          --i;
        }
        accumulator += agg.sumLoAmt0AtLower[i];
        helpers.suffixLoAmt0From[i] = accumulator;
      }
    }

    // Endpoint memoization (per boundary index); sentinel = max indicates not yet computed
    helpers.endpointCache = new uint256[](m);
    for (uint256 i = 0; i < m;) {
      helpers.endpointCache[i] = type(uint256).max;
      unchecked {
        ++i;
      }
    }
    helpers.idleToken0 = idle0;
    helpers.idleToken1 = idle1;

    /*//////////////////////////////////////////////////////////////
                    PHASE 3: SEGMENT SWEEP ALGORITHM
    //////////////////////////////////////////////////////////////*/

    // Global minimum initialized to sentinel; will be updated as we sweep through segments
    uint256 globalMin = type(uint256).max;
    _SegmentState memory segmentState;

    // Walk left-to-right through sorted boundaries, computing floor for each open segment.
    // For segment (ticks[i], ticks[i+1]):
    //   1. Update active liquidity and negative offsets (Uniswap-style liquidityNet tracking)
    //   2. Compute endpoint candidates at both boundaries
    //   3. Compute interior bound if segment has inside liquidity and positive adjusted idle balances
    //   4. Segment floor = min(leftEndpoint, rightEndpoint, interior)
    for (uint256 i = 0; i + 1 < m;) {
      // Update active liquidity and inside negative offsets at left boundary of open segment
      {
        int256 nextActive = int256(segmentState.activeL) + agg.liquidityNet[i];
        // forge-lint: disable-next-line(unsafe-typecast)
        segmentState.activeL = uint256(nextActive);
      }
      {
        int256 neg0Delta = agg.neg0Net[i];
        // forge-lint: disable-start(unsafe-typecast) -- safe by conditional check
        if (neg0Delta >= 0) segmentState.sumNeg0 += uint256(neg0Delta);
        else if (neg0Delta != 0) segmentState.sumNeg0 -= uint256(-neg0Delta);

        int256 neg1Delta = agg.neg1Net[i];
        if (neg1Delta >= 0) segmentState.sumNeg1 += uint256(neg1Delta);
        else if (neg1Delta != 0) segmentState.sumNeg1 -= uint256(-neg1Delta);
        // forge-lint: disable-end
      }

      // Endpoints for this open segment
      uint256 leftEndpoint = _computeEndpointCandidate(i, ctx.ranges, agg, helpers);
      uint256 rightEndpoint = _computeEndpointCandidate(i + 1, ctx.ranges, agg, helpers);
      uint256 segmentMin = leftEndpoint < rightEndpoint ? leftEndpoint : rightEndpoint;

      // Open-segment constants (R‑0008 + LO off‑band constants)
      // Policy: We count LO tokens held by the LO manager as collateral even if unclaimed. Therefore, we
      // add LO prefix/suffix contributions (strictly off the LO band) to A0/B0 below. Ensure the engine
      // removes/burns the LO NFT when proceeds are claimed into idle to avoid double counting.
      uint256 base0 = idle0; // token0
      uint256 base1 = idle1; // token1

      // Add below-range contributions: ranges strictly left of right boundary
      if (i + 1 < m) base0 = _addPreservingLowerBound(base0, helpers.suffixRangeAmt0From[i + 1]);
      base1 = _addPreservingLowerBound(base1, helpers.prefixRangeAmt1UpTo[i]); // strictly right of left boundary

      if (helpers.hasLimitOrder) {
        if (i + 1 < m) base0 = _addPreservingLowerBound(base0, helpers.suffixLoAmt0From[i + 1]);
        base1 = _addPreservingLowerBound(base1, helpers.prefixLoAmt1UpTo[i]);
      }

      (bool pos0, uint256 adj0) = _subOrZero(base0, segmentState.sumNeg0);
      (bool pos1, uint256 adj1) = _subOrZero(base1, segmentState.sumNeg1);

      if (pos0 && pos1 && segmentState.activeL > 0) {
        uint256 idleTerm = SqrtMath.sqrtProductLowerBound(adj0, adj1);
        uint256 interior = _addPreservingLowerBound(idleTerm, segmentState.activeL);
        if (interior < segmentMin) segmentMin = interior;
      }

      if (segmentMin < globalMin) {
        globalMin = segmentMin;
        if (globalMin == 0) break;
      }

      unchecked {
        ++i;
      }
    }

    // No open segments? take best endpoint across all boundaries
    // This occurs when m ≤ 1 (0 or 1 boundaries)
    if (globalMin == type(uint256).max) {
      uint256 best = type(uint256).max;
      for (uint256 i = 0; i < m;) {
        uint256 e = _computeEndpointCandidate(i, ctx.ranges, agg, helpers);
        if (e < best) best = e;
        unchecked {
          ++i;
        }
      }
      globalMin = (best == type(uint256).max) ? 0 : best;
    }

    return globalMin;
  }

  /// @dev Computes the √K floor candidate at a specific boundary (memoized).
  ///      Applies the outside-at-tick convention for ranges and the band-edge min(pre,post) rule for LOs per R-0013.
  ///      The segment-based min across [lower, upper] achieves the required min(pre, post) at each LO band edge.
  ///      Policy: We treat Δ0/Δ1 credited at endpoints as collateral even if LO proceeds are unclaimed; this is
  ///      conservative with respect to “collateral = idle + controllable LO assets”. Prevent double counting
  ///      by removing the LO from positions after claim.
  function _computeEndpointCandidate(
    uint256 boundaryIndex,
    TickSetCodec.RangeSummary[] memory rangeSummaries,
    TickSetCodec.FloorAggregates memory agg,
    _EvaluationHelpers memory work
  ) private pure returns (uint256) {
    uint256 cached = work.endpointCache[boundaryIndex];
    if (cached != type(uint256).max) return cached;

    (bool ok, uint256 amt0, uint256 amt1) = _applyRangesAtEndpoint(boundaryIndex, rangeSummaries, work);
    if (!ok) {
      work.endpointCache[boundaryIndex] = 0;
      return 0;
    }

    // Strict off‑band LO tokens at this endpoint (left-of-band adds Δ0 to t0; right-of-band adds Δ1 to t1)
    if (work.hasLimitOrder) {
      if (boundaryIndex + 1 < agg.ticks.length) {
        amt0 = _addPreservingLowerBound(amt0, work.suffixLoAmt0From[boundaryIndex + 1]);
      }
      if (boundaryIndex > 0) amt1 = _addPreservingLowerBound(amt1, work.prefixLoAmt1UpTo[boundaryIndex - 1]);
    }

    // LO band-edge handling per R-0013 with minimal locals to avoid stack pressure.
    // Edges bitmask: 0 = no LO edge, 1 = lower only, 2 = upper only, 3 = both edges.
    // At single edge: return pre-only (lower) or post-only (upper).
    // At both edges: return min(pre, post) directly.
    uint256 loAmtToken0 = agg.sumLoAmt0AtLower[boundaryIndex];
    uint256 loAmtToken1 = agg.sumLoAmt1AtUpper[boundaryIndex];
    uint8 edges = (loAmtToken0 != 0 ? 1 : 0) | (loAmtToken1 != 0 ? 2 : 0);

    uint256 candidate;

    if (!work.hasLimitOrder || edges == 0) {
      candidate = SqrtMath.sqrtProductLowerBound(amt0, amt1);
      work.endpointCache[boundaryIndex] = candidate;
      return candidate;
    }
    if (edges == 1) {
      // lower edge only → pre (unfilled token0 side)
      candidate = SqrtMath.sqrtProductLowerBound(_addPreservingLowerBound(amt0, loAmtToken0), amt1);
      work.endpointCache[boundaryIndex] = candidate;
      return candidate;
    }
    if (edges == 2) {
      // upper edge only → post (filled token1 side)
      candidate = SqrtMath.sqrtProductLowerBound(amt0, _addPreservingLowerBound(amt1, loAmtToken1));
      work.endpointCache[boundaryIndex] = candidate;
      return candidate;
    }

    // edges == 3 → both present at this tick: min(pre, post)
    candidate = SqrtMath.sqrtProductLowerBound(_addPreservingLowerBound(amt0, loAmtToken0), amt1);
    uint256 postCandidate = SqrtMath.sqrtProductLowerBound(amt0, _addPreservingLowerBound(amt1, loAmtToken1));
    if (postCandidate < candidate) candidate = postCandidate;
    work.endpointCache[boundaryIndex] = candidate;
    return candidate;
  }

  /// @dev Apply range contributions at an exact endpoint price using the outside-at-tick convention (R-0008 §7).
  ///      For each range: below → token0 constant; above → token1 constant; inside → variable terms evaluated at `s`.
  function _applyRangesAtEndpoint(
    uint256 index,
    TickSetCodec.RangeSummary[] memory ranges,
    _EvaluationHelpers memory helpers
  ) private pure returns (bool ok, uint256 amt0, uint256 amt1) {
    amt0 = helpers.idleToken0;
    amt1 = helpers.idleToken1;
    uint160 s = helpers.sqrtAtTicks[index];

    for (uint256 r = 0; r < ranges.length;) {
      TickSetCodec.RangeSummary memory rs = ranges[r];

      if (s <= rs.sqrtLower) {
        amt0 = _addPreservingLowerBound(amt0, rs.amt0Below);
      } else if (s >= rs.sqrtUpper) {
        amt1 = _addPreservingLowerBound(amt1, rs.amt1Above);
      } else {
        unchecked {
          uint256 swing0 = (uint256(rs.liquidity) << FixedPoint96.RESOLUTION) / s; // floor(L*Q96/s)

          if (swing0 >= rs.neg0AtUpper) {
            amt0 = _addPreservingLowerBound(amt0, swing0 - rs.neg0AtUpper);
          } else {
            (bool pos0, uint256 new0) = _subOrZero(amt0, rs.neg0AtUpper - swing0);
            if (!pos0) return (false, 0, 0);
            amt0 = new0;
          }
        }

        uint256 swing1 = FullMath.mulDiv(uint256(rs.liquidity), s, FixedPoint96.Q96); // floor(L*s/Q96)
        if (swing1 >= rs.neg1AtLower) {
          amt1 = _addPreservingLowerBound(amt1, swing1 - rs.neg1AtLower);
        } else {
          (bool pos1, uint256 new1) = _subOrZero(amt1, rs.neg1AtLower - swing1);
          if (!pos1) return (false, 0, 0);
          amt1 = new1;
        }
      }
      unchecked {
        ++r;
      }
    }
    ok = true;
  }

  /// @dev Adds two values while preserving the lower bound property on overflow.
  ///      If a + b overflows, returns `a` (dropping b to maintain conservatism).
  function _addPreservingLowerBound(uint256 a, uint256 b) private pure returns (uint256) {
    unchecked {
      uint256 c = a + b;
      return (c < a) ? a : c; // on overflow, drop the add to preserve lower bound
    }
  }

  /// @dev Subtracts `sub` from `base`, returning (isPositive, result).
  ///      Returns (false, 0) if result would be ≤ 0; otherwise (true, base - sub).
  function _subOrZero(uint256 base, uint256 sub) private pure returns (bool, uint256) {
    if (sub == 0) return (base > 0, base);
    if (base > sub) return (true, base - sub);
    if (base == sub) return (false, 0);
    return (false, 0);
  }
}
