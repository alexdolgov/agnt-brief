// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

/// @title BaseInterestModel – shared storage, rate history, debt bookkeeping
/// @notice Concrete models (Simple / Compound) inherit this and override the
///         virtual accrual hooks.  Designed to be inherited by EscrowV4.
///         See escrow_math.tex for full derivations.
abstract contract BaseInterestModel {

    uint256 internal constant RAY = 1e27;          // 10^27 fixed-point scale (same as Aave RAY)
    uint256 internal constant YEAR_SECONDS = 365 days; // used to convert APR → per-second rate

    // ───────────────────── Shared structs ─────────────────────

    struct RateState {
        uint64  rateBps;       // R(t) in bps; R = rateBps/10000 is APR as fraction (kBps in the pdf)
        uint64  lastUpdate;    // timestamp of last accumulator update
        uint64  lastRateChange;// timestamp of last governance rate change
        uint256 cumulativeRay; // C(t) (simple, tex sec 4.1) or M(t) (compound, tex sec 4.2) in RAY
    }

    struct RateCheckpoint {
        uint64  timestamp;     // block.timestamp at checkpoint
        uint32  blockNumber;   // block.number at checkpoint
        uint64  rateBps;       // R(t) in bps at this checkpoint
        uint256 cumulativeRay; // C(t) or M(t) in RAY at this checkpoint
    }

    struct DebtState {
        uint256 principal;       // Q_L – remaining loan principal (quote token)
        uint256 accruedInterest; // Q_I – realised interest up to last touch
        uint256 rateIndexRay;    // C(t_lastTouch) or M(t_lastTouch) – accumulator snapshot in RAY
    }

    mapping(bytes32 => RateState)        internal _rateState;   // per filler+loanToken accumulator  (key = _rateKey)
    mapping(bytes32 => RateCheckpoint[]) internal _rateHistory; // per filler+loanToken rate history  (key = _rateKey)
    mapping(uint128 => DebtState)        internal _debt;        // per position debt state
    mapping(bytes32 => int64)            internal _tokenOverrideBps; // per (filler,loanToken,token) additive bps override
    mapping(bytes32 => uint256)          internal _syncedBaseHistLen; // per (filler,loanToken,token): how far into base history we've synced

    error NegativeEffectiveRate();

    /// @dev Deterministic rate key: keccak256(filler ‖ loanToken)
    function _rateKey(address filler, address loanToken) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(filler, loanToken));
    }

    /// @dev Extended rate key for per-token accumulators: keccak256(filler ‖ loanToken ‖ token)
    function _fullRateKey(address filler, address loanToken, address token) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(filler, loanToken, token));
    }

    /// @dev Effective rate = base + override, clamped to zero
    function _effectiveRateBps(address filler, address loanToken, address token) internal view returns (uint64) {
        uint64 base = _rateState[_rateKey(filler, loanToken)].rateBps;
        int64 ovr = _tokenOverrideBps[_fullRateKey(filler, loanToken, token)];
        int64 eff = int64(base) + ovr;
        return eff > 0 ? uint64(eff) : uint64(0);
    }

    // ───────────────────── Rate helpers ─────────────────────

    /// @dev r(t) = R(t) / SECONDS_PER_YEAR in RAY  (tex: r = kBps / (BPS * SECONDS_PER_YEAR))
    function _ratePerSecondRay(uint64 rateBps) internal pure returns (uint256) {
        return (uint256(rateBps) * RAY) / (10000 * YEAR_SECONDS);
    }

    // ───────────────────── Virtual hooks (model-specific) ─────────────────────

    /// @dev Advance the asset accumulator from lastUpdate to now. Return updated value.
    function _accrueAssetInternal(RateState storage s) internal virtual returns (uint256);

    /// @dev View-only: return the asset accumulator as if accrued to now (no writes).
    function _viewCumulative(RateState storage s) internal view virtual returns (uint256);

    /// @dev Realise pending interest for a position given the current asset accumulator.
    function _accruePositionInternal(DebtState storage d, uint256 cumNow) internal virtual;

    /// @dev View-only: return accumulated interest (stored + pending).
    function _viewAccumulatedInterest(DebtState storage d, uint256 cumNow) internal view virtual returns (uint256);

    // ───────────────────── Asset-level (state-changing) ─────────────────────

    function _setBaseRate(address filler, address loanToken, uint64 newRateBps) internal returns (uint64 oldRateBps) {
        bytes32 key = _rateKey(filler, loanToken);
        RateState storage s = _rateState[key];
        _accrueAssetImpl(key);

        oldRateBps = s.rateBps;
        s.rateBps = newRateBps;
        s.lastRateChange = uint64(block.timestamp);

        _rateHistory[key].push(RateCheckpoint({
            timestamp:     uint64(block.timestamp),
            blockNumber:   uint32(block.number),
            rateBps:       newRateBps,
            cumulativeRay: s.cumulativeRay
        }));

        return oldRateBps;
    }

    /// @dev Set per-token override. Syncs accumulator through base-rate history first,
    ///      then accrues remaining time before applying the new override.
    ///      Reverts if effective rate (base + override) would be negative.
    function _setTokenOverride(address filler, address loanToken, address token, int64 overrideBps) internal returns (int64 oldOverride) {
        bytes32 fullKey = _fullRateKey(filler, loanToken, token);
        oldOverride = _tokenOverrideBps[fullKey];

        uint64 baseRate = _rateState[_rateKey(filler, loanToken)].rateBps;
        int64 newEffective = int64(baseRate) + overrideBps;
        if (newEffective < 0) revert NegativeEffectiveRate();

        _syncEffectiveRate(filler, loanToken, token);
        _accrueAssetImpl(fullKey);

        RateState storage s = _rateState[fullKey];
        s.rateBps = uint64(newEffective);
        s.lastRateChange = uint64(block.timestamp);
        _tokenOverrideBps[fullKey] = overrideBps;

        _rateHistory[fullKey].push(RateCheckpoint({
            timestamp:     uint64(block.timestamp),
            blockNumber:   uint32(block.number),
            rateBps:       uint64(newEffective),
            cumulativeRay: s.cumulativeRay
        }));

        return oldOverride;
    }

    /// @dev Advance accumulator at `key` from its lastUpdate to `toTs` using stored rateBps.
    function _accrueAssetTo(bytes32 key, uint64 toTs) internal {
        RateState storage s = _rateState[key];
        if (s.lastUpdate == 0 || toTs <= s.lastUpdate) return;
        uint256 dt = uint256(toTs) - uint256(s.lastUpdate);
        s.cumulativeRay = _extrapolateCumulative(s.cumulativeRay, s.rateBps, dt);
        s.lastUpdate = toTs;
    }

    /// @dev Full sync – processes ALL unsynced base-rate entries. Called by position ops.
    function _syncEffectiveRate(address filler, address loanToken, address token) internal {
        _syncEffectiveRateN(filler, loanToken, token, type(uint256).max);
    }

    /// @dev Sync up to `maxSteps` base-rate entries for a per-token accumulator.
    ///      Saves progress to _syncedBaseHistLen so the next call continues where this left off.
    ///      When all entries are processed (or maxSteps == type(uint256).max), also accrues
    ///      the remaining segment to block.timestamp and sets the current effective rate.
    function _syncEffectiveRateN(address filler, address loanToken, address token, uint256 maxSteps) internal {
        bytes32 fullKey = _fullRateKey(filler, loanToken, token);
        uint64 currentEffective = _effectiveRateBps(filler, loanToken, token);
        RateState storage s = _rateState[fullKey];

        bytes32 baseKey = _rateKey(filler, loanToken);
        RateCheckpoint[] storage bh = _rateHistory[baseKey];
        uint256 baseLen = bh.length;
        uint256 syncedLen = _syncedBaseHistLen[fullKey];

        // First touch: just set rate; _accrueAssetImpl will initialise lastUpdate.
        if (s.lastUpdate == 0) {
            s.rateBps = currentEffective;
            _syncedBaseHistLen[fullKey] = baseLen;
            return;
        }

        // ── Fast path: no new base-rate entries since last sync ──
        if (syncedLen >= baseLen) {
            s.rateBps = currentEffective;
            return;
        }

        // ── Walk up to maxSteps NEW base-rate entries ──
        int64 ovr = _tokenOverrideBps[fullKey];
        uint64 nowTs = uint64(block.timestamp);
        uint256 steps = 0;

        uint256 i;
        for (i = syncedLen; i < baseLen && steps < maxSteps; i++) {
            if (bh[i].timestamp >= nowTs) break;

            _accrueAssetTo(fullKey, bh[i].timestamp);

            int64 eff = int64(bh[i].rateBps) + ovr;
            s.rateBps = eff > 0 ? uint64(eff) : uint64(0);
            steps++;
        }

        _syncedBaseHistLen[fullKey] = i;

        // If fully caught up, accrue remaining segment to now and set final rate.
        if (i >= baseLen || bh[i].timestamp >= nowTs) {
            _accrueAssetTo(fullKey, nowTs);
            s.rateBps = currentEffective;
        }
    }

    function _accrueAssetImpl(bytes32 key) internal returns (uint256) {
        RateState storage s = _rateState[key];
        uint64 nowTs = uint64(block.timestamp);

        if (s.lastUpdate == 0) {
            s.lastUpdate = nowTs;
            return s.cumulativeRay;
        }

        if (nowTs > s.lastUpdate) {
            uint256 result = _accrueAssetInternal(s);
            s.lastUpdate = nowTs;
            return result;
        }
        return s.cumulativeRay;
    }

    // ───────────────────── Position-level (state-changing) ─────────────────────

    /// @dev Snapshot: principal = Q_L, rateIndexRay = C(t_open) or M(t_open)
    function _initPosition(uint128 positionId, address filler, address loanToken, address token, uint256 principal) internal {
        _syncEffectiveRate(filler, loanToken, token);
        uint256 idx = _accrueAssetImpl(_fullRateKey(filler, loanToken, token));
        _debt[positionId] = DebtState({
            principal:       principal,
            accruedInterest: 0,
            rateIndexRay:    idx
        });
    }

    function _accruePosition(uint128 positionId, address filler, address loanToken, address token) internal {
        _syncEffectiveRate(filler, loanToken, token);
        uint256 cumNow = _accrueAssetImpl(_fullRateKey(filler, loanToken, token));
        _accruePositionInternal(_debt[positionId], cumNow);
    }

    function _reduceDebt(uint128 positionId, uint256 principalReduction, uint256 interestReduction) internal {
        DebtState storage d = _debt[positionId];
        d.principal -= principalReduction;
        d.accruedInterest -= interestReduction;
    }

    function _clearDebt(uint128 positionId) internal {
        delete _debt[positionId];
    }

    // ───────────────────── Asset views ─────────────────────

    /// @notice R(t) in bps – current base APR for a filler's loanToken
    function currentInterestRateBps(address filler, address loanToken) external view returns (uint64) {
        return _rateState[_rateKey(filler, loanToken)].rateBps;
    }

    /// @notice Effective rate = base + override, clamped to zero
    function effectiveInterestRateBps(address filler, address loanToken, address token) external view returns (uint64) {
        return _effectiveRateBps(filler, loanToken, token);
    }

    /// @notice Per-token override in bps (can be negative)
    function tokenInterestOverrideBps(address filler, address loanToken, address token) external view returns (int64) {
        return _tokenOverrideBps[_fullRateKey(filler, loanToken, token)];
    }

    function lastRateChange(address filler, address loanToken) external view returns (uint64) {
        return _rateState[_rateKey(filler, loanToken)].lastRateChange;
    }

    /// @notice Permissionless: partially sync a per-token accumulator.
    ///         Process up to `maxSteps` base-rate history entries.  Call repeatedly
    ///         until unsyncedBaseEntries() returns 0 to fully catch up.
    ///         Returns the number of entries still remaining after this call.
    function syncTokenAccumulator(address filler, address loanToken, address token, uint256 maxSteps) external returns (uint256 remaining) {
        _syncEffectiveRateN(filler, loanToken, token, maxSteps);
        bytes32 baseKey = _rateKey(filler, loanToken);
        bytes32 fullKey = _fullRateKey(filler, loanToken, token);
        uint256 baseLen = _rateHistory[baseKey].length;
        uint256 syncedLen = _syncedBaseHistLen[fullKey];
        return baseLen > syncedLen ? baseLen - syncedLen : 0;
    }

    /// @notice Number of unsynced base-rate entries for a per-token accumulator.
    ///         If non-zero, call syncTokenAccumulator() to catch up before position ops.
    function unsyncedBaseEntries(address filler, address loanToken, address token) external view returns (uint256) {
        bytes32 baseKey = _rateKey(filler, loanToken);
        bytes32 fullKey = _fullRateKey(filler, loanToken, token);
        uint256 baseLen = _rateHistory[baseKey].length;
        uint256 syncedLen = _syncedBaseHistLen[fullKey];
        return baseLen > syncedLen ? baseLen - syncedLen : 0;
    }

    /// @notice True if the per-token accumulator is fully caught up with base-rate history.
    function isSynced(address filler, address loanToken, address token) external view returns (bool) {
        bytes32 baseKey = _rateKey(filler, loanToken);
        bytes32 fullKey = _fullRateKey(filler, loanToken, token);
        return _syncedBaseHistLen[fullKey] >= _rateHistory[baseKey].length;
    }

    /// @notice Timestamp of the last state update for a per-token accumulator.
    function accumulatorLastUpdate(address filler, address loanToken, address token) external view returns (uint64) {
        return _rateState[_fullRateKey(filler, loanToken, token)].lastUpdate;
    }

    /// @notice Timestamp of the oldest unsynced base-rate entry, or 0 if fully synced.
    ///         Tells you *when* the accumulator fell behind.
    function oldestUnsyncedTimestamp(address filler, address loanToken, address token) external view returns (uint64) {
        bytes32 baseKey = _rateKey(filler, loanToken);
        bytes32 fullKey = _fullRateKey(filler, loanToken, token);
        uint256 syncedLen = _syncedBaseHistLen[fullKey];
        RateCheckpoint[] storage bh = _rateHistory[baseKey];
        if (syncedLen >= bh.length) return 0;
        return bh[syncedLen].timestamp;
    }

    /// @notice C(t) or M(t) in RAY – base accumulator (view-only, no state update)
    function cumulativeIntegralRay(address filler, address loanToken) public view returns (uint256) {
        RateState storage s = _rateState[_rateKey(filler, loanToken)];
        if (s.lastUpdate == 0) return s.cumulativeRay;
        return _viewCumulative(s);
    }

    /// @notice C(t) or M(t) in RAY – per-token accumulator.
    ///         O(1) when the per-token state has been synced past all base-rate changes;
    ///         otherwise walks only the new base-rate entries (O(k)).
    function cumulativeIntegralRay(address filler, address loanToken, address token) public view returns (uint256) {
        bytes32 fullKey = _fullRateKey(filler, loanToken, token);
        RateState storage s = _rateState[fullKey];
        if (s.lastUpdate == 0) return s.cumulativeRay;

        bytes32 baseKey = _rateKey(filler, loanToken);
        RateCheckpoint[] storage bh = _rateHistory[baseKey];
        uint256 baseLen = bh.length;
        uint256 syncedLen = _syncedBaseHistLen[fullKey];

        // ── Fast path: no unprocessed base-rate entries → simple extrapolation ──
        if (syncedLen >= baseLen) {
            return _viewCumulative(s);
        }

        // ── Slow path: walk only the NEW base-rate entries ──
        uint256 nowTs = block.timestamp;
        if (nowTs <= s.lastUpdate) return s.cumulativeRay;

        int64 ovr = _tokenOverrideBps[fullKey];
        uint256 cum = s.cumulativeRay;
        uint256 cursor = uint256(s.lastUpdate);
        uint64 segRate = s.rateBps;

        for (uint256 i = syncedLen; i < baseLen; i++) {
            uint256 cpTs = uint256(bh[i].timestamp);
            if (cpTs >= nowTs) break;

            uint256 dt = cpTs - cursor;
            cum = _extrapolateCumulative(cum, segRate, dt);
            cursor = cpTs;

            int64 eff = int64(bh[i].rateBps) + ovr;
            segRate = eff > 0 ? uint64(eff) : uint64(0);
        }

        uint256 dtFinal = nowTs - cursor;
        if (dtFinal > 0) {
            cum = _extrapolateCumulative(cum, segRate, dtFinal);
        }
        return cum;
    }

    // ───────────────────── Position views ─────────────────────

    /// @notice Q_I(t) – accumulated interest for a position (stored + pending)
    function accumulatedInterest(uint128 positionId, address filler, address loanToken, address token) public view returns (uint256) {
        DebtState storage d = _debt[positionId];
        uint256 cumNow = cumulativeIntegralRay(filler, loanToken, token);
        return _viewAccumulatedInterest(d, cumNow);
    }

    /// @notice Q_L – remaining loan principal
    function debtPrincipal(uint128 positionId) external view returns (uint256) {
        return _debt[positionId].principal;
    }

    /// @notice Q_I (stored only, not including pending since last touch)
    function debtAccruedStored(uint128 positionId) external view returns (uint256) {
        return _debt[positionId].accruedInterest;
    }

    /// @notice C(t_lastTouch) or M(t_lastTouch) – accumulator snapshot at last position touch
    function debtIndex(uint128 positionId) external view returns (uint256) {
        return _debt[positionId].rateIndexRay;
    }

    // ───────────────────── Rate history views ─────────────────────

    function rateHistoryLength(address filler, address loanToken) external view returns (uint256) {
        return _rateHistory[_rateKey(filler, loanToken)].length;
    }

    function rateCheckpoint(address filler, address loanToken, uint256 i)
        external view
        returns (uint64 timestamp, uint32 blockNumber, uint64 rateBps, uint256 cumulativeRayAtCheckpoint)
    {
        RateCheckpoint storage c = _rateHistory[_rateKey(filler, loanToken)][i];
        return (c.timestamp, c.blockNumber, c.rateBps, c.cumulativeRay);
    }

    function interestRateAtTimestamp(address filler, address loanToken, uint64 ts) external view returns (uint64) {
        (bool ok, RateCheckpoint memory c) = _checkpointAtOrBeforeTimestamp(_rateKey(filler, loanToken), ts);
        return ok ? c.rateBps : uint64(0);
    }

    function interestRateAtBlock(address filler, address loanToken, uint32 bn) external view returns (uint64) {
        (bool ok, RateCheckpoint memory c) = _checkpointAtOrBeforeBlock(_rateKey(filler, loanToken), bn);
        return ok ? c.rateBps : uint64(0);
    }

    function cumulativeIntegralRayAtTimestamp(address filler, address loanToken, uint64 ts) external view returns (uint256) {
        bytes32 key = _rateKey(filler, loanToken);
        RateCheckpoint[] storage arr = _rateHistory[key];
        if (arr.length == 0) return 0;

        (bool ok, RateCheckpoint memory c) = _checkpointAtOrBeforeTimestamp(key, ts);
        if (!ok) return 0;

        if (ts > c.timestamp) {
            return _extrapolateCumulative(c.cumulativeRay, c.rateBps, uint256(ts - c.timestamp));
        }
        return c.cumulativeRay;
    }

    /// @dev Model-specific extrapolation from a checkpoint (used in view).
    ///      Simple: cum + rps * dt.  Compound: cum * (1+rps)^dt.
    function _extrapolateCumulative(uint256 cumAtCheckpoint, uint64 rateBps, uint256 dt) internal view virtual returns (uint256);

    // ───────────────────── Binary search helpers ─────────────────────

    function _checkpointAtOrBeforeTimestamp(bytes32 key, uint64 ts)
        internal view returns (bool ok, RateCheckpoint memory out)
    {
        RateCheckpoint[] storage arr = _rateHistory[key];
        uint256 n = arr.length;
        if (n == 0 || ts < arr[0].timestamp) return (false, out);

        uint256 lo = 0;
        uint256 hi = n;
        while (lo + 1 < hi) {
            uint256 mid = (lo + hi) >> 1;
            if (arr[mid].timestamp <= ts) lo = mid;
            else hi = mid;
        }
        return (true, arr[lo]);
    }

    function _checkpointAtOrBeforeBlock(bytes32 key, uint32 bn)
        internal view returns (bool ok, RateCheckpoint memory out)
    {
        RateCheckpoint[] storage arr = _rateHistory[key];
        uint256 n = arr.length;
        if (n == 0 || bn < arr[0].blockNumber) return (false, out);

        uint256 lo = 0;
        uint256 hi = n;
        while (lo + 1 < hi) {
            uint256 mid = (lo + hi) >> 1;
            if (arr[mid].blockNumber <= bn) lo = mid;
            else hi = mid;
        }
        return (true, arr[lo]);
    }
}
