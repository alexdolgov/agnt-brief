// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

/**
 * @title TickSetCodec
 * @notice Context builder for the static √K collateral floor (view phase of two-phase algorithm).
 *
 * @dev Overview:
 * This library implements the view phase of the two-phase √K collateral floor algorithm:
 * - Phase 1 (this library): View phase — builds immutable context from NFT manager state
 * - Phase 2 (CollateralFloorMath): Pure phase — evaluates floor from context
 *
 * Key Responsibilities:
 * 1. Load metadata from Uniswap V4 PositionManager and LimitOrderManager for attached vault NFTs
 * 2. Pre-compute range constants (amt0Below, amt1Above, negative offsets) for concentrated liquidity positions
 * 3. Accumulate CL ranges and LO deltas into per-tick scratch space (unsorted)
 * 4. Sort scratch array by tick ascending and pack into immutable aggregates with net deltas
 * 5. Produce FloorContext consumed by CollateralFloorMath.evaluateRaw for efficient segment sweep
 *
 * Design Principles:
 * - View-only: reads NFT metadata and prepares minimal, immutable context for pure evaluation
 * - No redundant validation: relies on AegisEngine attach guards to ensure only valid NFTs attached
 *   and pools match vault's pool. LO bands are exactly 1 tick wide (enforced by LimitOrderManager);
 *   NftMetadata canonicalizes tickUpper accordingly.
 * - Conservative rounding: floor for positive addends, ceiling for negative offsets (R-0008, R-0013)
 * - Efficient segment sweep: net deltas follow Uniswap's liquidityNet pattern (+at lower, −at upper)
 *
 * Safety Properties:
 * - Never overstates collateral: conservative rounding throughout (floors for adds, minus-ceil for offsets)
 * - Price-invariant constants: amt0Below/amt1Above computed once, reused across all segments
 * - LO band-edge handling: pre-only at lower, post-only at upper achieves min(pre,post) via segment minimum
 * - Bounded complexity: O(n) for n positions, O(n²) sort acceptable for small n (≤4 NFTs typical)
 *
 * Policy notes (LO proceeds counting):
 * - We intentionally do NOT filter LOs by “liveness” (e.g., epoch filled) in this codec. Both range and LO
 *   contributions are accumulated deterministically from NFT metadata, and Δ0/Δ1 for LOs are derived from
 *   a one‑tick band using SqrtPriceMath (floor rounding). This matches the policy to count unclaimed LO
 *   deposits/proceeds held by the LO manager as collateral.
 * - To avoid double counting, ensure the engine removes/burns the LO NFT once proceeds are claimed into idle,
 *   or adjust crediting to derive tokens from epoch totals and make the LO NFT contribute zero thereafter.
 *
 * @dev Research References:
 * - R-0008: Static price-invariant √K collateral floor with exact ΣL_inside for ranges
 * - R-0013: Limit order band-edge handling via min(pre,post) across segment endpoints
 */
import { FullMath } from "@uniswap/v4-core/src/libraries/FullMath.sol";
import { FixedPoint96 } from "@uniswap/v4-core/src/libraries/FixedPoint96.sol";
import { TickMath } from "@uniswap/v4-core/src/libraries/TickMath.sol";
import { UnsafeMath } from "@uniswap/v4-core/src/libraries/UnsafeMath.sol";

import { IPositionManager } from "@uniswap/v4-periphery/src/interfaces/IPositionManager.sol";

import { ILimitOrderManager } from "../../../interfaces/ILimitOrderManager.sol";
import { NftRef, NftKind } from "../../../types/AegisStructs.sol";
import { NftMetadata } from "../vault/NftMetadata.sol";
import { MaxLiquidityAmounts } from "../math/MaxLiquidityAmounts.sol";

library TickSetCodec {
  /// @dev Immutable summary of a concentrated liquidity range position.
  ///      Pre-computed constants used by CollateralFloorMath.evaluateRaw for efficient segment evaluation.
  ///      All token amounts use conservative floor rounding; negative offsets use ceiling rounding.
  struct RangeSummary {
    int24 tickLower;
    int24 tickUpper;
    uint160 sqrtLower; // Q64.96
    uint160 sqrtUpper; // Q64.96
    uint128 liquidity; // uint128 (v3 native)
    uint256 amt0Below; // floor(amount0 if price is below the range)
    uint256 amt1Above; // floor(amount1 if price is above the range)
    uint256 neg0AtUpper; // ceil(L*Q96/P_upper)  (inside negative offset for token0)
    uint256 neg1AtLower; // ceil(L*P_lower/Q96)  (inside negative offset for token1)
  }

  /// @dev Transient per-tick accumulator used during context building (unsorted).
  ///      Each tick accumulates contributions from ranges/LOs that start or end at that tick.
  ///      After all positions processed, sorted ascending and converted to net deltas (Start - End).
  struct TickAggScratch {
    int24 tick;
    bool exists;
    uint256 sumLStart;
    uint256 sumLEnd;
    uint256 sumNeg0Start;
    uint256 sumNeg0End;
    uint256 sumNeg1Start;
    uint256 sumNeg1End;
    uint256 sumRangeAmt0AtLower;
    uint256 sumRangeAmt1AtUpper;
    uint256 sumLoAmt0AtLower;
    uint256 sumLoAmt1AtUpper;
  }

  /// @dev Immutable per-tick aggregates in sorted order, consumed by CollateralFloorMath.evaluateRaw.
  ///      Net deltas follow Uniswap's liquidityNet pattern: positive at range start, negative at range end.
  ///      Enables efficient O(1) liquidity tracking during left-to-right segment sweep.
  struct FloorAggregates {
    int24[] ticks; // ascending, deduped
    int256[] liquidityNet; // +ΣL@lower − ΣL@upper (signed)
    int256[] neg0Net; // +Σneg0@lower − Σneg0@upper (signed)
    int256[] neg1Net; // +Σneg1@lower − Σneg1@upper (signed)
    uint256[] sumRangeAmt0AtLower; // Σ amt0Below at lowers   (for suffix)
    uint256[] sumRangeAmt1AtUpper; // Σ amt1Above at uppers   (for prefix)
    uint256[] sumLoAmt0AtLower; // Σ Δ0 at LO lowers
    uint256[] sumLoAmt1AtUpper; // Σ Δ1 at LO uppers
  }

  /// @dev Complete immutable context produced by buildContext and consumed by CollateralFloorMath.evaluateRaw.
  ///      Contains all data needed for pure √K floor computation: range summaries, per-tick aggregates, and LO count.
  struct FloorContext {
    RangeSummary[] ranges;
    FloorAggregates aggregates;
    uint256 liveLimitOrderCount; // >0 iff LO prefix/suffix arrays are meaningfully populated
  }

  /// @dev Transient state used during buildContext execution.
  ///      Holds working arrays and counters; discarded once final FloorContext is built.
  /// forge-lint: disable-next-item(pascal-case-struct)
  struct _BuildState {
    RangeSummary[] ranges;
    TickAggScratch[] scratch;
    uint256 rangeCount;
    uint256 liveLoCount;
    uint256 nodes;
  }

  /// @notice Builds an immutable context from vault NFT positions for √K collateral floor computation.
  /// @dev Algorithm phases:
  ///      1. Load metadata from managers for each position (CL and LO NFTs)
  ///      2. Accumulate CL ranges (liquidity, negative offsets, amt0Below/amt1Above) and LO deltas
  ///         into per-tick scratch space (unsorted)
  ///      3. Sort scratch array by tick ascending (insertion sort)
  ///      4. Pack into immutable aggregates with net deltas (Start - End) following Uniswap's liquidityNet pattern
  ///      Relies on AegisEngine attach guards to ensure only valid NFTs are attached and pools match.
  ///      LO bands are exactly 1 tick wide as constructed by LimitOrderManager; NftMetadata canonicalizes tickUpper.
  /// @param positionManager Uniswap V4 position manager for CL NFT metadata (pool, ticks, liquidity)
  /// @param loManager Limit order manager for LO NFT metadata (pool, tickLower, liquidity, tickSpacing)
  /// @param positions Array of vault NFT references (CL_V4 or LO kind)
  /// @return context Complete immutable context consumed by CollateralFloorMath.evaluateRaw containing:
  ///         - ranges: Array of RangeSummary with pre-computed constants for each CL position
  ///         - aggregates: Per-tick net deltas (sorted ascending) for efficient segment sweep
  ///         - liveLimitOrderCount: Number of active LO positions (affects prefix/suffix logic)
  function buildContext(IPositionManager positionManager, ILimitOrderManager loManager, NftRef[] memory positions)
    internal
    view
    returns (FloorContext memory context)
  {
    // Early return for empty position array
    uint256 positionCount = positions.length;
    if (positionCount == 0) return context; // default-initialized (empty arrays)

    /*//////////////////////////////////////////////////////////////
                        PHASE 1: INITIALIZE BUILD STATE
    //////////////////////////////////////////////////////////////*/

    _BuildState memory state;
    state.ranges = new RangeSummary[](positionCount); // upper bound; trimmed below
    state.scratch = new TickAggScratch[](positionCount * 2); // at most 2 unique ticks per NFT

    /*//////////////////////////////////////////////////////////////
          PHASE 2: LOAD METADATA AND ACCUMULATE TO SCRATCH SPACE
    //////////////////////////////////////////////////////////////*/

    for (uint256 i = 0; i < positionCount;) {
      NftRef memory ref = positions[i];
      NftMetadata.PositionData memory positionData = NftMetadata.load(positionManager, loManager, ref);

      if (ref.kind == NftKind.CL_V4) {
        RangeSummary memory summary = _buildRangeSummary(positionData);
        state.ranges[state.rangeCount] = summary;
        unchecked {
          ++state.rangeCount;
        }
        state.nodes = _accumulateRange(summary, state.scratch, state.nodes);
      } else {
        // LO: 1-tick band guaranteed by manager and canonicalized in metadata (tickUpper = tickLower + spacing).
        state.nodes = _accumulateLimitOrder(positionData, state.scratch, state.nodes);
        unchecked {
          ++state.liveLoCount;
        }
      }

      unchecked {
        ++i;
      }
    }

    /*//////////////////////////////////////////////////////////////
              PHASE 3: TRIM RANGES AND PREPARE FOR SORTING
    //////////////////////////////////////////////////////////////*/

    // Trim ranges array to populated length
    RangeSummary[] memory packedRanges = new RangeSummary[](state.rangeCount);
    for (uint256 i = 0; i < state.rangeCount;) {
      packedRanges[i] = state.ranges[i];
      unchecked {
        ++i;
      }
    }
    context.ranges = packedRanges;
    context.liveLimitOrderCount = state.liveLoCount;

    /*//////////////////////////////////////////////////////////////
                    PHASE 4: SORT SCRATCH BY TICK ASCENDING
    //////////////////////////////////////////////////////////////*/

    _sortScratchByTick(state.scratch, state.nodes);

    /*//////////////////////////////////////////////////////////////
          PHASE 5: PACK INTO IMMUTABLE AGGREGATES WITH NET DELTAS
    //////////////////////////////////////////////////////////////*/

    FloorAggregates memory aggregates;
    aggregates.ticks = new int24[](state.nodes);
    aggregates.liquidityNet = new int256[](state.nodes);
    aggregates.neg0Net = new int256[](state.nodes);
    aggregates.neg1Net = new int256[](state.nodes);
    aggregates.sumRangeAmt0AtLower = new uint256[](state.nodes);
    aggregates.sumRangeAmt1AtUpper = new uint256[](state.nodes);
    aggregates.sumLoAmt0AtLower = new uint256[](state.nodes);
    aggregates.sumLoAmt1AtUpper = new uint256[](state.nodes);

    for (uint256 i = 0; i < state.nodes;) {
      aggregates.ticks[i] = state.scratch[i].tick;
      aggregates.liquidityNet[i] = int256(state.scratch[i].sumLStart) - int256(state.scratch[i].sumLEnd);
      aggregates.neg0Net[i] = int256(state.scratch[i].sumNeg0Start) - int256(state.scratch[i].sumNeg0End);
      aggregates.neg1Net[i] = int256(state.scratch[i].sumNeg1Start) - int256(state.scratch[i].sumNeg1End);
      aggregates.sumRangeAmt0AtLower[i] = state.scratch[i].sumRangeAmt0AtLower;
      aggregates.sumRangeAmt1AtUpper[i] = state.scratch[i].sumRangeAmt1AtUpper;
      aggregates.sumLoAmt0AtLower[i] = state.scratch[i].sumLoAmt0AtLower;
      aggregates.sumLoAmt1AtUpper[i] = state.scratch[i].sumLoAmt1AtUpper;
      unchecked {
        ++i;
      }
    }

    context.aggregates = aggregates;
  }

  // - - - internal helpers - - -

  /// @dev Constructs a RangeSummary from position metadata with pre-computed constants.
  ///      Computes sqrt prices, maximum token amounts (amt0Below, amt1Above), and negative offsets
  ///      (neg0AtUpper, neg1AtLower) using conservative floor rounding for positive amounts and
  ///      ceiling rounding for negative offsets, consistent with R-0008 and R-0013.
  /// @param positionData Position metadata from NftMetadata.load (ticks and liquidity)
  /// @return summary Immutable range summary with all constants needed for floor evaluation
  function _buildRangeSummary(NftMetadata.PositionData memory positionData)
    private
    pure
    returns (RangeSummary memory summary)
  {
    uint160 sqrtLower = TickMath.getSqrtPriceAtTick(positionData.tickLower);
    uint160 sqrtUpper = TickMath.getSqrtPriceAtTick(positionData.tickUpper);

    // Range constants with conservative rounding (floors for positive adds, minus‑ceil for offsets)
    (uint256 amt0Below, uint256 amt1Above) =
      MaxLiquidityAmounts.getMaxAmountsForLiquidity(sqrtLower, sqrtUpper, positionData.liquidity, false);

    uint256 neg0AtUpper =
      UnsafeMath.divRoundingUp(uint256(positionData.liquidity) << FixedPoint96.RESOLUTION, sqrtUpper);
    uint256 neg1AtLower = FullMath.mulDivRoundingUp(uint256(positionData.liquidity), sqrtLower, FixedPoint96.Q96);

    summary = RangeSummary({
      tickLower: positionData.tickLower,
      tickUpper: positionData.tickUpper,
      sqrtLower: sqrtLower,
      sqrtUpper: sqrtUpper,
      liquidity: positionData.liquidity,
      amt0Below: amt0Below,
      amt1Above: amt1Above,
      neg0AtUpper: neg0AtUpper,
      neg1AtLower: neg1AtLower
    });
  }

  /// @dev Accumulates a concentrated liquidity range into per-tick scratch space.
  ///      Ensures ticks exist for both tickLower and tickUpper, then accumulates:
  ///      - Liquidity at lower (sumLStart) and upper (sumLEnd)
  ///      - Negative offsets at both ticks (sumNeg0Start/End, sumNeg1Start/End)
  ///      - Range constants (sumRangeAmt0AtLower, sumRangeAmt1AtUpper)
  ///      Follows Uniswap's liquidityNet pattern: contributions added at lower, subtracted at upper.
  /// @param summary Pre-computed range summary with all constants
  /// @param scratch Working array of per-tick aggregators (unsorted)
  /// @param nodes Current number of unique ticks in scratch array
  /// @return newNodes Updated number of unique ticks after accumulation
  function _accumulateRange(RangeSummary memory summary, TickAggScratch[] memory scratch, uint256 nodes)
    private
    pure
    returns (uint256 newNodes)
  {
    (uint256 lowerIndex, uint256 nodesAfterLower) = _ensureTick(summary.tickLower, scratch, nodes);
    (uint256 upperIndex, uint256 nodesAfterUpper) = _ensureTick(summary.tickUpper, scratch, nodesAfterLower);

    scratch[lowerIndex].sumLStart += summary.liquidity;
    scratch[upperIndex].sumLEnd += summary.liquidity;

    scratch[lowerIndex].sumNeg0Start += summary.neg0AtUpper;
    scratch[upperIndex].sumNeg0End += summary.neg0AtUpper;
    scratch[lowerIndex].sumNeg1Start += summary.neg1AtLower;
    scratch[upperIndex].sumNeg1End += summary.neg1AtLower;

    scratch[lowerIndex].sumRangeAmt0AtLower += summary.amt0Below;
    scratch[upperIndex].sumRangeAmt1AtUpper += summary.amt1Above;

    return nodesAfterUpper;
  }

  /// @dev Accumulates a limit order (1-tick band) into per-tick scratch space.
  ///      Computes token deltas (Δ0, Δ1) for the LO band and accumulates at band edges:
  ///      - sumLoAmt0AtLower: pre-fill token0 at lower edge (left-limit)
  ///      - sumLoAmt1AtUpper: post-fill token1 at upper edge (right-limit)
  ///      Per R-0013, LO band-edge logic: pre-only at lower, post-only at upper achieves
  ///      min(pre,post) via segment minimum during floor evaluation.
  /// @param positionData LO position metadata from NftMetadata.load (tickLower, liquidity)
  /// @param scratch Working array of per-tick aggregators (unsorted)
  /// @param nodes Current number of unique ticks in scratch array
  /// @return newNodes Updated number of unique ticks after accumulation
  function _accumulateLimitOrder(
    NftMetadata.PositionData memory positionData,
    TickAggScratch[] memory scratch,
    uint256 nodes
  ) private pure returns (uint256 newNodes) {
    (uint256 lowerIndex, uint256 nodesAfterLower) = _ensureTick(positionData.tickLower, scratch, nodes);
    (uint256 upperIndex, uint256 nodesAfterUpper) = _ensureTick(positionData.tickUpper, scratch, nodesAfterLower);

    uint160 sqrtLower = TickMath.getSqrtPriceAtTick(positionData.tickLower);
    uint160 sqrtUpper = TickMath.getSqrtPriceAtTick(positionData.tickUpper);
    (uint256 delta0, uint256 delta1) = _computeLimitOrderDeltas(positionData.liquidity, sqrtLower, sqrtUpper);

    // Policy: We add Δ0 (lower/pre) and Δ1 (upper/post) regardless of LO epoch “filled” state. The evaluation
    // phase takes min(pre, post) at endpoints, which is conservative when we treat LO assets under manager
    // control as collateral. If your LO implementation can yield partial/atypical fills, prefer deriving
    // credit from epoch aggregates instead of static Δ.

    scratch[lowerIndex].sumLoAmt0AtLower += delta0; // left-limit (pre) tokens at lower edge
    scratch[upperIndex].sumLoAmt1AtUpper += delta1; // right-limit (post) tokens at upper edge

    return nodesAfterUpper;
  }

  /// @dev Ensures a tick exists in scratch array, creating it if necessary.
  ///      Linear search through existing ticks; if found, returns existing index.
  ///      If not found, initializes a new scratch entry at index `nodes` and increments node count.
  /// @param tick The tick value to ensure exists
  /// @param scratch Working array of per-tick aggregators (unsorted)
  /// @param nodes Current number of unique ticks in scratch array
  /// @return index Index of the tick in scratch array (existing or newly created)
  /// @return newNodes Updated number of unique ticks (nodes+1 if created, nodes if existed)
  function _ensureTick(int24 tick, TickAggScratch[] memory scratch, uint256 nodes)
    private
    pure
    returns (uint256 index, uint256 newNodes)
  {
    for (uint256 i = 0; i < nodes;) {
      if (scratch[i].exists && scratch[i].tick == tick) return (i, nodes);
      unchecked {
        ++i;
      }
    }
    scratch[nodes].tick = tick;
    scratch[nodes].exists = true;
    return (nodes, nodes + 1);
  }

  /// @dev Sorts scratch array by tick value in ascending order using insertion sort.
  ///      Simple O(n²) algorithm acceptable for small arrays (typically ≤8 ticks with MAX_NFTS_PER_VAULT=4).
  ///      Required before packing to ensure per-tick aggregates are ordered for efficient segment sweep.
  /// @param scratch Working array of per-tick aggregators to sort (modified in-place)
  /// @param length Number of valid entries in scratch array to sort
  function _sortScratchByTick(TickAggScratch[] memory scratch, uint256 length) private pure {
    for (uint256 i = 1; i < length;) {
      TickAggScratch memory key = scratch[i];
      uint256 j = i;
      while (j > 0 && scratch[j - 1].tick > key.tick) {
        scratch[j] = scratch[j - 1];
        unchecked {
          --j;
        }
      }
      scratch[j] = key;
      unchecked {
        ++i;
      }
    }
  }

  /// @dev Computes limit order token deltas (Δ0, Δ1) for a 1-tick band with conservative floor rounding.
  ///      Uses MaxLiquidityAmounts wrapper around Uniswap V4 SqrtPriceMath to calculate maximum
  ///      token amounts across the full LO band range. Floor rounding (roundUp=false) ensures
  ///      conservative collateral credit.
  /// @param limitLiquidity Liquidity amount for the limit order
  /// @param sqrtLower Lower sqrt price bound (Q64.96 format) at tickLower
  /// @param sqrtUpper Upper sqrt price bound (Q64.96 format) at tickUpper = tickLower + spacing
  /// @return delta0 Maximum token0 amount (pre-fill state at lower edge)
  /// @return delta1 Maximum token1 amount (post-fill state at upper edge)
  function _computeLimitOrderDeltas(uint128 limitLiquidity, uint160 sqrtLower, uint160 sqrtUpper)
    private
    pure
    returns (uint256 delta0, uint256 delta1)
  {
    // We compute Δ0/Δ1 for a one‑tick band using audited v4 math with floor rounding. This represents the
    // maximal token-in (Δ0) and token-out (Δ1) held at the band edges. Under the chosen policy, these tokens
    // are creditable collateral even if unclaimed. Ensure the engine prevents later double counting on claim.
    (delta0, delta1) = MaxLiquidityAmounts.getMaxAmountsForLiquidity(sqrtLower, sqrtUpper, limitLiquidity, false);
  }
}
