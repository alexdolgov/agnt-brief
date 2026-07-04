// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

// - - - external deps - - -

import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {ReentrancyGuard} from "solmate/src/utils/ReentrancyGuard.sol";
import {PoolId, PoolIdLibrary} from "v4-core/types/PoolId.sol";
import {IPoolManager} from "v4-core/interfaces/IPoolManager.sol";
import {PoolKey} from "v4-core/types/PoolKey.sol";
import {TickMath} from "v4-core/libraries/TickMath.sol";
import {StateLibrary} from "v4-core/libraries/StateLibrary.sol";

// - - - local deps - - -

import {Errors} from "../errors/Errors.sol";
import {TruncatedOracle} from "./TruncatedOracle.sol";

contract VolatilityOracle is ReentrancyGuard {
    /* ========== paged ring – each "leaf" holds 512 observations ========== */
    uint16 internal constant PAGE_SIZE = 512;

    using TruncatedOracle for TruncatedOracle.Observation[PAGE_SIZE];
    using PoolIdLibrary for PoolKey;
    using SafeCast for int256;

    /* -------------------------------------------------------------------------- */
    /*                               Library constants                            */
    /* -------------------------------------------------------------------------- */
    /* seconds in one day (for readability) */
    uint32 internal constant ONE_DAY_SEC = 86_400;
    /* parts-per-million constant */
    uint32 internal constant PPM = 1_000_000;
    /* pre-computed ONE_DAY × PPM to avoid a mul on every cap event            *
     * 86_400 * 1_000_000  ==  86 400 000 000  <  2¹²⁷ – safe for uint128      */
    uint64 internal constant ONE_DAY_PPM = 86_400 * 1_000_000;
    /* one add (ONE_DAY_PPM) short of uint64::max */
    uint64 internal constant CAP_FREQ_MAX = type(uint64).max - ONE_DAY_PPM + 1;
    /* minimum change required to emit MaxTicksPerBlockUpdated event */
    uint24 internal constant EVENT_DIFF = 5;

    // Custom errors
    error NotAuthorizedHook();
    error OnlyOwner();
    error OnlyOwnerOrFactory();
    error ObservationOverflow(uint16 cardinality);
    error ObservationTooOld(uint32 time, uint32 target);
    error TooManyObservationsRequested();

    event TickCapParamChanged(PoolId indexed poolId, uint24 newMaxTicksPerBlock);
    event MaxTicksPerBlockUpdated(
        PoolId indexed poolId, uint24 oldMaxTicksPerBlock, uint24 newMaxTicksPerBlock, uint32 blockTimestamp
    );
    event PolicyCacheRefreshed(PoolId indexed poolId);
    /// emitted once per pool when the oracle is first enabled
    event OracleConfigured(PoolId indexed poolId, address indexed hook, address indexed owner, uint24 initialCap);
    event HookAuthorized(address indexed hook);
    event HookRevoked(address indexed hook);
    event AuthorizedFactorySet(address indexed factory);

    /* ─────────────────── IMMUTABLE STATE ────────────────────── */
    IPoolManager public immutable poolManager;
    address public immutable owner; // Governance address that can refresh policy cache

    /* ─────────────────── MULTI-HOOK AUTHORIZATION ────────────────────── */
    /// @notice Mapping of authorized hook addresses that can push observations
    mapping(address => bool) public authorizedHooks;
    /// @notice Factory address that can register new hooks
    address public authorizedFactory;

    /* ───────────────────── MUTABLE STATE ────────────────────── */
    mapping(PoolId => uint24) public maxTicksPerBlock; // adaptive cap
    /* ppm-seconds never exceeds 8.64 e10 per event or 7.45 e15 per year  →
       well inside uint64.  Using uint64 halves slot gas / SLOAD cost.   */
    mapping(PoolId => uint64) private capFreq; // ***saturating*** counter
    mapping(PoolId => uint48) private lastFreqTs; // last decay update

    struct ObservationState {
        uint16 index;
        /**
         * @notice total number of populated observations.
         * Includes the bootstrap slot written by `enableOracleForPool`,
         * so after N user pushes the value is **N + 1**.
         */
        uint16 cardinality;
        uint16 cardinalityNext;
    }

    struct ObserveContext {
        uint32 time;
        int24 currentTick;
        uint128 liquidity;
        uint16 newestLocalIdx;
        uint16 newestCard;
    }

    /* ─────────────── cached policy parameters (baseFee logic removed) ─────────────── */
    struct CachedPolicy {
        uint24 minCap;
        uint24 maxCap;
        uint32 stepPpm;
        uint32 budgetPpm;
        uint32 decayWindow;
        uint32 updateInterval;
    }

    mapping(PoolId => CachedPolicy) internal _policy;

    /* ──────────────────  CHUNKED OBSERVATION RING  ──────────────────
       Each pool owns *pages* (index ⇒ Observation[PAGE_SIZE]).
       A page is allocated lazily the first time it is touched, so the
       storage footprint grows with `grow()` instead of pre-allocating
       65 k slots (≈ 4 MiB) per pool.                                        */
    /// pool ⇒ page# ⇒ 512-slot chunk (lazily created)
    mapping(PoolId => mapping(uint16 => TruncatedOracle.Observation[PAGE_SIZE])) internal _pages;

    function _leaf(PoolId poolId, uint16 globalIdx)
        internal
        view
        returns (TruncatedOracle.Observation[PAGE_SIZE] storage)
    {
        return _pages[poolId][globalIdx / PAGE_SIZE];
    }

    mapping(PoolId => ObservationState) public states;

    // Store last max tick update time for rate limiting governance changes
    mapping(PoolId => uint32) private _lastMaxTickUpdate;

    /* ────────────────────── CONSTRUCTOR ─────────────────────── */
    /// -----------------------------------------------------------------------
    /// @notice Deploy the oracle and wire the immutable dependencies.
    /// @param _poolManager Canonical v4 `PoolManager` contract
    /// @param _owner Governor address that can refresh the cached policy
    /// -----------------------------------------------------------------------
    constructor(IPoolManager _poolManager, address _owner) {
        if (address(_poolManager) == address(0)) revert Errors.ZeroAddress();
        if (_owner == address(0)) revert Errors.ZeroAddress();

        poolManager = _poolManager;
        owner = _owner;
    }

    /* ────────────────────── AUTHORIZATION MANAGEMENT ─────────────────────── */

    /// @notice Sets the authorized factory that can register hooks
    /// @param _factory The factory address to authorize
    function setAuthorizedFactory(address _factory) external {
        if (msg.sender != owner) revert OnlyOwner();
        authorizedFactory = _factory;
        emit AuthorizedFactorySet(_factory);
    }

    /// @notice Adds an authorized hook that can push observations
    /// @dev Can be called by owner or the authorized factory
    /// @param _hook The hook address to authorize
    function addAuthorizedHook(address _hook) external {
        if (msg.sender != owner && msg.sender != authorizedFactory) revert OnlyOwnerOrFactory();
        if (_hook == address(0)) revert Errors.ZeroAddress();
        authorizedHooks[_hook] = true;
        emit HookAuthorized(_hook);
    }

    /// @notice Removes an authorized hook
    /// @dev Can only be called by owner
    /// @param _hook The hook address to revoke
    function removeAuthorizedHook(address _hook) external {
        if (msg.sender != owner) revert OnlyOwner();
        authorizedHooks[_hook] = false;
        emit HookRevoked(_hook);
    }

    /**
     * @notice Refreshes the cached policy parameters for a pool.
     * @dev Can only be called by the owner (governance).
     * @param poolId The PoolId of the pool.
     * @param minCap Minimum maxTicksPerBlock value
     * @param maxCap Maximum maxTicksPerBlock value
     * @param stepPpm Auto-tune step size in PPM
     * @param budgetPpm Target CAP frequency in PPM
     * @param decayWindow Frequency decay window in seconds
     * @param updateInterval Minimum time between auto-tune adjustments
     */
    function refreshPolicyCache(
        PoolId poolId,
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    ) external {
        if (msg.sender != owner) revert OnlyOwner();

        if (states[poolId].cardinality == 0) {
            revert Errors.OracleOperationFailed("refreshPolicyCache", "Pool not enabled");
        }

        CachedPolicy storage pc = _policy[poolId];

        // Update all policy parameters
        pc.minCap = minCap;
        pc.maxCap = maxCap;
        pc.stepPpm = stepPpm;
        pc.budgetPpm = budgetPpm;
        pc.decayWindow = decayWindow;
        pc.updateInterval = updateInterval;

        _validatePolicy(pc);

        // Ensure current maxTicksPerBlock is within new min/max bounds
        uint24 currentCap = maxTicksPerBlock[poolId];
        if (currentCap < pc.minCap) {
            maxTicksPerBlock[poolId] = pc.minCap;
            emit MaxTicksPerBlockUpdated(poolId, currentCap, pc.minCap, uint32(block.timestamp));
        } else if (currentCap > pc.maxCap) {
            maxTicksPerBlock[poolId] = pc.maxCap;
            emit MaxTicksPerBlockUpdated(poolId, currentCap, pc.maxCap, uint32(block.timestamp));
        }

        emit PolicyCacheRefreshed(poolId);
    }

    /**
     * @notice Enables the oracle for a given pool, initializing its state.
     * @dev Can only be called by the configured hook address.
     * @param key The PoolKey of the pool to enable.
     * @param initialMaxTicksPerBlock User-set initial CAP threshold
     * @param minCap Minimum maxTicksPerBlock value
     * @param maxCap Maximum maxTicksPerBlock value
     * @param stepPpm Auto-tune step size in PPM
     * @param budgetPpm Target CAP frequency in PPM
     * @param decayWindow Frequency decay window in seconds
     * @param updateInterval Minimum time between auto-tune adjustments
     */
    function enableOracleForPool(
        PoolKey calldata key,
        uint24 initialMaxTicksPerBlock,
        uint24 minCap,
        uint24 maxCap,
        uint32 stepPpm,
        uint32 budgetPpm,
        uint32 decayWindow,
        uint32 updateInterval
    ) external {
        if (!authorizedHooks[msg.sender]) revert NotAuthorizedHook();
        PoolId poolId = key.toId();
        if (states[poolId].cardinality > 0) {
            revert Errors.OracleOperationFailed("enableOracleForPool", "Already enabled");
        }

        /* ------------------------------------------------------------------ *
         * Set policy parameters and validate                                 *
         * ------------------------------------------------------------------ */
        CachedPolicy storage pc = _policy[poolId];
        pc.minCap = minCap;
        pc.maxCap = maxCap;
        pc.stepPpm = stepPpm;
        pc.budgetPpm = budgetPpm;
        pc.decayWindow = decayWindow;
        pc.updateInterval = updateInterval;

        _validatePolicy(pc);

        // ---------- external read last (reduces griefing surface) ----------
        (, int24 initialTick,,) = StateLibrary.getSlot0(poolManager, poolId);
        TruncatedOracle.Observation[PAGE_SIZE] storage first = _pages[poolId][0];
        first.initialize(uint32(block.timestamp), initialTick);
        states[poolId] = ObservationState({index: 0, cardinality: 1, cardinalityNext: 1});

        // Clamp initialMaxTicksPerBlock inside the validated range
        uint24 cappedInitial = initialMaxTicksPerBlock;
        if (cappedInitial < pc.minCap) cappedInitial = pc.minCap;
        if (cappedInitial > pc.maxCap) cappedInitial = pc.maxCap;
        maxTicksPerBlock[poolId] = cappedInitial;

        // --- audit-aid event ----------------------------------------------------
        emit OracleConfigured(poolId, msg.sender, owner, cappedInitial);
    }

    // Internal workhorse
    function _recordObservation(PoolId poolId, int24 preSwapTick) internal returns (bool tickWasCapped) {
        ObservationState storage state = states[poolId];
        uint16 index = state.index;

        int24 currentTick;
        // Scope to drop temporary variables
        {
            (, int24 tick,,) = StateLibrary.getSlot0(poolManager, poolId);
            currentTick = tick;

            uint24 cap = maxTicksPerBlock[poolId];
            int256 tickDelta256 = int256(currentTick) - int256(preSwapTick);
            uint256 absDelta = tickDelta256 >= 0 ? uint256(tickDelta256) : uint256(-tickDelta256);

            if (absDelta >= cap) {
                int256 capped = tickDelta256 > 0
                    ? int256(preSwapTick) + int256(uint256(cap))
                    : int256(preSwapTick) - int256(uint256(cap));
                currentTick = _toInt24(capped);
                tickWasCapped = true;
            }
        }

        uint32 ts = uint32(block.timestamp);
        TruncatedOracle.Observation storage last = _leaf(poolId, index)[index % PAGE_SIZE];
        if (last.blockTimestamp != ts) {
            uint16 cardinalityUpdated = state.cardinality;
            uint16 cardinalityNext = state.cardinalityNext;
            if (cardinalityNext == cardinalityUpdated && cardinalityNext < TruncatedOracle.MAX_CARDINALITY_ALLOWED) {
                cardinalityNext = cardinalityUpdated + 1;
            }

            if (cardinalityNext > cardinalityUpdated && index == (cardinalityUpdated - 1)) {
                cardinalityUpdated = cardinalityNext;
                if (cardinalityUpdated > TruncatedOracle.MAX_CARDINALITY_ALLOWED) {
                    cardinalityUpdated = TruncatedOracle.MAX_CARDINALITY_ALLOWED;
                }
            }

            unchecked {
                index += 1;
            }
            if (index >= cardinalityUpdated) {
                index = 0;
            }

            uint128 liquidity = StateLibrary.getLiquidity(poolManager, poolId);
            uint32 delta;
            unchecked {
                delta = ts - last.blockTimestamp;
            }
            TruncatedOracle.Observation storage o = _leaf(poolId, index)[index % PAGE_SIZE];
            o.blockTimestamp = ts;
            o.tickCumulative = last.tickCumulative + int56(currentTick) * int56(uint56(delta));
            o.secondsPerLiquidityCumulativeX128 = last.secondsPerLiquidityCumulativeX128
                + ((uint160(delta) << 128) / (liquidity > 0 ? liquidity : 1));
            o.initialized = true;

            state.index = index;
            state.cardinality = cardinalityUpdated;

            if (
                state.cardinalityNext < cardinalityUpdated + 1
                    && state.cardinalityNext < TruncatedOracle.MAX_CARDINALITY_ALLOWED
            ) {
                state.cardinalityNext = cardinalityUpdated + 1;
            }
        }

        _updateCapFrequency(poolId, tickWasCapped);
    }

    /// -----------------------------------------------------------------------
    /// @notice Record a new observation using the actual pre-swap tick.
    /// -----------------------------------------------------------------------
    function pushObservationAndCheckCap(PoolId poolId, int24 preSwapTick)
        external
        nonReentrant
        returns (bool tickWasCapped)
    {
        if (!authorizedHooks[msg.sender]) revert NotAuthorizedHook();
        if (states[poolId].cardinality == 0) {
            revert Errors.OracleOperationFailed("pushObservationAndCheckCap", "Pool not enabled");
        }
        return _recordObservation(poolId, preSwapTick);
    }

    /* ─────────────────── VIEW FUNCTIONS ──────────────────────── */

    /**
     * @notice Checks if the oracle is enabled for a given pool.
     * @param poolId The PoolId to check.
     * @return True if the oracle is enabled, false otherwise.
     */
    function isOracleEnabled(PoolId poolId) external view returns (bool) {
        return states[poolId].cardinality > 0;
    }

    /**
     * @notice Gets the latest observation for a pool.
     * @param poolId The PoolId of the pool.
     * @return tick The tick from the latest observation.
     * @return blockTimestamp The timestamp of the latest observation.
     */
    function getLatestObservation(PoolId poolId) external view returns (int24 tick, uint32 blockTimestamp) {
        if (states[poolId].cardinality == 0) {
            revert Errors.OracleOperationFailed("getLatestObservation", "Pool not enabled");
        }

        ObservationState storage state = states[poolId];
        TruncatedOracle.Observation storage o = _leaf(poolId, state.index)[state.index % PAGE_SIZE];
        (, int24 liveTick,,) = StateLibrary.getSlot0(poolManager, poolId);
        return (liveTick, o.blockTimestamp);
    }

    /// @notice View helper mirroring the public mapping but typed for tests.
    function getMaxTicksPerBlock(PoolId poolId) external view returns (uint24) {
        return maxTicksPerBlock[poolId];
    }

    /**
     * @notice Returns the saturation threshold for the capFreq counter.
     * @return The maximum value for the capFreq counter before it saturates.
     */
    function getCapFreqMax() external pure returns (uint64) {
        return CAP_FREQ_MAX;
    }

    /// @notice Calculates time-weighted means of tick and liquidity
    /// @param key the key of the pool to consult
    /// @param secondsAgo Number of seconds in the past from which to calculate the time-weighted means
    /// @return arithmeticMeanTick The arithmetic mean tick from (block.timestamp - secondsAgo) to block.timestamp
    /// @return harmonicMeanLiquidity The harmonic mean liquidity from (block.timestamp - secondsAgo) to block.timestamp
    function consult(PoolKey calldata key, uint32 secondsAgo)
        external
        view
        returns (int24 arithmeticMeanTick, uint128 harmonicMeanLiquidity)
    {
        require(secondsAgo != 0, "BP");

        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = secondsAgo;
        secondsAgos[1] = 0;

        (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s) =
            observe(key, secondsAgos);

        int56 tickCumulativesDelta = tickCumulatives[1] - tickCumulatives[0];
        uint160 secondsPerLiquidityCumulativesDelta =
            secondsPerLiquidityCumulativeX128s[1] - secondsPerLiquidityCumulativeX128s[0];

        int56 secondsAgoI56 = int56(uint56(secondsAgo));

        arithmeticMeanTick = int24(tickCumulativesDelta / secondsAgoI56);
        // Always round to negative infinity
        if (tickCumulativesDelta < 0 && (tickCumulativesDelta % secondsAgoI56 != 0)) arithmeticMeanTick--;

        // We are multiplying here instead of shifting to ensure that harmonicMeanLiquidity doesn't overflow uint128
        uint192 secondsAgoX160 = uint192(secondsAgo) * type(uint160).max;
        harmonicMeanLiquidity = uint128(secondsAgoX160 / (uint192(secondsPerLiquidityCumulativesDelta) << 32));
    }

    /**
     * @notice Observe oracle values at specific secondsAgos from the current block timestamp
     * @dev Reverts if observation at or before the desired observation timestamp does not exist
     * @param key The pool key to observe
     * @param secondsAgos The array of seconds ago to observe
     * @return tickCumulatives The tick * time elapsed since the pool was first initialized, as of each secondsAgo
     * @return secondsPerLiquidityCumulativeX128s The cumulative seconds / max(1, liquidity) since pool initialized
     */
    function observe(PoolKey calldata key, uint32[] memory secondsAgos)
        public
        view
        returns (int56[] memory tickCumulatives, uint160[] memory secondsPerLiquidityCumulativeX128s)
    {
        PoolId poolId = key.toId();

        if (states[poolId].cardinality == 0) {
            revert Errors.OracleOperationFailed("observe", "Pool not enabled");
        }

        ObservationState storage state = states[poolId];
        uint16 gIdx = state.index; // global index of newest obs

        uint256 len = secondsAgos.length;
        tickCumulatives = new int56[](len);
        secondsPerLiquidityCumulativeX128s = new uint160[](len);
        if (len == 0) return (tickCumulatives, secondsPerLiquidityCumulativeX128s);

        ObserveContext memory ctx;
        ctx.time = uint32(block.timestamp);
        (, ctx.currentTick,,) = StateLibrary.getSlot0(poolManager, poolId);
        ctx.liquidity = StateLibrary.getLiquidity(poolManager, poolId);
        ctx.newestLocalIdx = uint16(gIdx % PAGE_SIZE);
        {
            uint16 newestBase = gIdx - ctx.newestLocalIdx;
            uint16 newestCard = state.cardinality > newestBase ? state.cardinality - newestBase : 1;
            if (newestCard > PAGE_SIZE) {
                newestCard = PAGE_SIZE;
            }
            ctx.newestCard = newestCard;
        }

        for (uint256 i = 0; i < len; i++) {
            uint32 secondsAgo = secondsAgos[i];
            if (secondsAgo == 0) {
                TruncatedOracle.Observation[PAGE_SIZE] storage newestPage = _leaf(poolId, gIdx);
                (tickCumulatives[i], secondsPerLiquidityCumulativeX128s[i]) =
                    TruncatedOracle.observeSingle(
                        newestPage,
                        ctx.time,
                        0,
                        ctx.currentTick,
                        ctx.newestLocalIdx,
                        ctx.liquidity,
                        ctx.newestCard
                    );
                continue;
            }

            (uint16 leafCursor, uint16 idx, uint16 card) =
                _resolveLeafForSecondsAgo(poolId, state, gIdx, ctx.newestLocalIdx, ctx.time, secondsAgo);
            TruncatedOracle.Observation[PAGE_SIZE] storage obs = _leaf(poolId, leafCursor);
            (tickCumulatives[i], secondsPerLiquidityCumulativeX128s[i]) =
                TruncatedOracle.observeSingle(obs, ctx.time, secondsAgo, ctx.currentTick, idx, ctx.liquidity, card);
        }

        return (tickCumulatives, secondsPerLiquidityCumulativeX128s);
    }

    function _resolveLeafForSecondsAgo(
        PoolId poolId,
        ObservationState storage state,
        uint16 gIdx,
        uint16 newestLocalIdx,
        uint32 time,
        uint32 secondsAgo
    ) internal view returns (uint16 leafCursor, uint16 idx, uint16 card) {
        uint32 target;
        unchecked {
            target = time >= secondsAgo ? time - secondsAgo : time + (type(uint32).max - secondsAgo) + 1;
        }

        uint16 newestBase = gIdx - newestLocalIdx;
        uint16 pageCursor = newestBase;
        if (state.cardinality == TruncatedOracle.MAX_CARDINALITY_ALLOWED) {
            uint16 pageCount = TruncatedOracle.MAX_CARDINALITY_ALLOWED / PAGE_SIZE;
            for (uint16 i = 0; i < pageCount; i++) {
                TruncatedOracle.Observation[PAGE_SIZE] storage page = _leaf(poolId, pageCursor);
                uint16 pageNewestIdx = pageCursor == newestBase ? newestLocalIdx : PAGE_SIZE - 1;
                uint16 firstSlot = (pageNewestIdx + 1) % PAGE_SIZE;
                uint32 firstTs = page[firstSlot].blockTimestamp;

                if (target >= firstTs || i + 1 == pageCount) {
                    idx = pageNewestIdx;
                    card = PAGE_SIZE;
                    return (pageCursor, idx, card);
                }

                if (pageCursor >= PAGE_SIZE) {
                    pageCursor -= PAGE_SIZE;
                } else {
                    pageCursor = TruncatedOracle.MAX_CARDINALITY_ALLOWED - PAGE_SIZE;
                }
            }
        }

        while (true) {
            TruncatedOracle.Observation[PAGE_SIZE] storage page = _leaf(poolId, pageCursor);
            uint16 pageCardinality = state.cardinality > pageCursor ? state.cardinality - pageCursor : 1;
            if (pageCardinality > PAGE_SIZE) {
                pageCardinality = PAGE_SIZE;
            }

            uint16 pageNewestIdx = pageCursor == newestBase ? newestLocalIdx : pageCardinality - 1;
            uint16 firstSlot = pageCardinality == PAGE_SIZE ? (pageNewestIdx + 1) % PAGE_SIZE : 0;
            uint32 firstTs = page[firstSlot].blockTimestamp;

            if (target >= firstTs || pageCursor == 0) {
                idx = pageNewestIdx;
                card = pageCardinality;
                return (pageCursor, idx, card);
            }
            pageCursor -= PAGE_SIZE;
        }
    }


    /* ────────────────────── INTERNALS ──────────────────────── */

    /**
     * @notice Updates the CAP frequency counter and potentially triggers auto-tuning.
     * @dev Decays the frequency counter based on time elapsed since the last update.
     *      Increments the counter if a CAP occurred.
     *      Triggers auto-tuning if the frequency exceeds the budget or is too low.
     * @param poolId The PoolId of the pool.
     * @param capOccurred True if a CAP event occurred in the current block.
     */
    function _updateCapFrequency(PoolId poolId, bool capOccurred) internal {
        uint32 lastTs = uint32(lastFreqTs[poolId]);
        uint32 nowTs = uint32(block.timestamp);
        uint32 timeElapsed = nowTs - lastTs;

        /* FAST-PATH ────────────────────────────────────────────────────────
           No tick was capped *and* we're still in the same second ⇒ every
           state var is already correct, so we avoid **all** SSTOREs.      */
        if (!capOccurred && timeElapsed == 0) return;

        lastFreqTs[poolId] = uint48(nowTs); // single SSTORE only when needed

        uint64 currentFreq = capFreq[poolId];

        // --------------------------------------------------------------------- //
        //  1️⃣  Add this block's CAP contribution *first* and saturate.         //
        // --------------------------------------------------------------------- //
        if (capOccurred) {
            unchecked {
                currentFreq += uint64(ONE_DAY_PPM);
            }
            if (currentFreq >= CAP_FREQ_MAX || currentFreq < ONE_DAY_PPM) {
                currentFreq = CAP_FREQ_MAX; // clamp one-step-early
            }
        }

        /* -------- cache policy once -------- */
        CachedPolicy storage pc = _policy[poolId];
        uint32 budgetPpm = pc.budgetPpm;
        uint32 decayWindow = pc.decayWindow;
        uint32 updateInterval = pc.updateInterval;

        // 2️⃣  Apply linear decay *only when no CAP in this block*.
        if (!capOccurred && timeElapsed > 0 && currentFreq > 0) {
            // decay factor = (window - elapsed) / window = 1 - elapsed / window
            if (timeElapsed >= decayWindow) {
                currentFreq = 0; // Fully decayed
            } else {
                uint64 decayFactorPpm = PPM - uint64(timeElapsed) * PPM / decayWindow;
                uint128 decayed = uint128(currentFreq) * decayFactorPpm / PPM;
                // ----- overflow-safe down-cast -------------------------
                if (decayed > type(uint64).max) {
                    currentFreq = CAP_FREQ_MAX;
                } else {
                    uint64 d64 = uint64(decayed);
                    currentFreq = d64 > CAP_FREQ_MAX ? CAP_FREQ_MAX : d64;
                }
            }
        }

        capFreq[poolId] = currentFreq; // single SSTORE

        // Only auto-tune if enough time has passed since last update
        if (!_autoTunePaused[poolId] && block.timestamp >= _lastMaxTickUpdate[poolId] + updateInterval) {
            uint64 targetFreq = uint64(budgetPpm) * ONE_DAY_SEC;
            if (currentFreq > targetFreq) {
                // Too frequent caps -> Increase maxTicksPerBlock (loosen cap)
                _autoTuneMaxTicks(poolId, pc, true);
            } else {
                // Caps too rare -> Decrease maxTicksPerBlock (tighten cap)
                _autoTuneMaxTicks(poolId, pc, false);
            }
        }
    }

    /**
     * @notice Adjusts the maxTicksPerBlock based on CAP frequency.
     * @dev Increases the cap if caps are too frequent, decreases otherwise.
     *      Clamps the adjustment based on policy step size and min/max bounds.
     * @param poolId The PoolId of the pool.
     * @param pc Cached policy struct
     * @param increase True to increase the cap, false to decrease.
     */
    function _autoTuneMaxTicks(PoolId poolId, CachedPolicy storage pc, bool increase) internal {
        uint24 currentCap = maxTicksPerBlock[poolId];

        uint32 stepPpm = pc.stepPpm;
        uint24 minCap = pc.minCap;
        uint24 maxCap = pc.maxCap;

        uint24 change = uint24(uint256(currentCap) * stepPpm / PPM);
        if (change == 0) change = 1; // Ensure minimum change of 1 tick

        uint24 newCap;
        if (increase) {
            newCap = currentCap + change > maxCap ? maxCap : currentCap + change;
        } else {
            newCap = currentCap > change + minCap ? currentCap - change : minCap;
        }

        uint24 diff = currentCap > newCap ? currentCap - newCap : newCap - currentCap;

        if (newCap != currentCap) {
            maxTicksPerBlock[poolId] = newCap;
            _lastMaxTickUpdate[poolId] = uint32(block.timestamp);
            if (diff >= EVENT_DIFF) {
                emit MaxTicksPerBlockUpdated(poolId, currentCap, newCap, uint32(block.timestamp));
            }
        }
    }

    /* ────────────────────── INTERNAL HELPERS ───────────────────────── */

    /// @dev bounded cast; reverts on overflow instead of truncating.
    function _toInt24(int256 v) internal pure returns (int24) {
        require(v >= type(int24).min && v <= type(int24).max, "Tick overflow");
        return int24(v);
    }

    /// @dev Validate policy parameters
    function _validatePolicy(CachedPolicy storage pc) internal view {
        require(pc.stepPpm != 0, "stepPpm cannot be 0");
        require(pc.minCap != 0, "minCap cannot be 0");
        require(pc.maxCap >= pc.minCap, "maxCap must be >= minCap");
        require(pc.decayWindow != 0, "decayWindow cannot be 0");
        require(pc.updateInterval != 0, "updateInterval cannot be 0");
    }

    /* ───────────────────── Emergency pause ────────────────────── */
    /// @notice Emitted when the governor toggles the auto-tune circuit-breaker.
    event AutoTunePaused(PoolId indexed poolId, bool paused, uint32 timestamp);

    /// @dev circuit-breaker flag per pool (default: false = auto-tune active)
    mapping(PoolId => bool) private _autoTunePaused;

    /**
     * @notice Pause or un-pause the adaptive cap algorithm for a pool.
     * @param poolId       Target PoolId.
     * @param paused    True to disable auto-tune, false to resume.
     */
    function setAutoTunePaused(PoolId poolId, bool paused) external {
        if (msg.sender != owner) revert OnlyOwner();
        _autoTunePaused[poolId] = paused;
        emit AutoTunePaused(poolId, paused, uint32(block.timestamp));
    }

    /* ─────────────────────── public cardinality grow ─────────────────────── */
    /**
     * @notice Requests the ring buffer to grow to `cardinalityNext` slots.
     * @dev Mirrors Uniswap-V3 behaviour. Callable by anyone; growth is capped
     *      by the TruncatedOracle library's internal MAX_CARDINALITY_ALLOWED.
     * @param key Encoded PoolKey.
     * @param cardinalityNext Desired new cardinality.
     * @return oldNext Previous next-size.
     * @return newNext Updated next-size after grow.
     */
    function increaseCardinalityNext(PoolKey calldata key, uint16 cardinalityNext)
        external
        returns (uint16 oldNext, uint16 newNext)
    {
        // Public function - anyone can grow the observation buffer (like Uniswap V3)
        PoolId poolId = key.toId();

        ObservationState storage state = states[poolId];
        if (state.cardinality == 0) {
            revert Errors.OracleOperationFailed("increaseCardinalityNext", "Pool not enabled");
        }

        oldNext = state.cardinalityNext;
        if (cardinalityNext <= oldNext) {
            return (oldNext, oldNext);
        }

        state.cardinalityNext = TruncatedOracle.grow(
            _leaf(poolId, state.cardinalityNext), // leaf storage slot
            oldNext,
            cardinalityNext
        );

        newNext = state.cardinalityNext;
    }
}
