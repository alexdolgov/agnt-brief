// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@chainlink/contracts/src/v0.8/automation/AutomationCompatible.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "./interfaces/ISnuggleVault.sol";
import "./ViewHelper.sol";
import "./TreasurySplitter.sol";
import "./libraries/TickMath.sol";

/// @title KeepersHelper V2 — Batched Design
/// @notice Handles Chainlink Automation logic for SnuggleVault with batched execution
/// @dev Key improvements over V1:
///      - Batched execution: all actions collected and executed in a single performUpkeep
///      - Pool-level TWAP caching: O(pools) instead of O(positions) for TWAP calls
///      - Priority ordering: rebalances (2) > start tracking (1) > reset tracking (3)
///      - gasleft() guard: auto-adapts to whatever Chainlink gas limit is set
///      - Sharding-ready: checkData can encode (shardId, numShards) for parallel upkeeps
///      - Decoupled fee distribution: separate permissionless function
///      - Emergency batch execute: owner can bypass Chainlink
contract KeepersHelper is AutomationCompatibleInterface, Ownable2Step {
    // === Structs ===

    struct CachedTWAP {
        address pool;
        int24 tick;
    }

    // === Constants ===

    uint256 public constant MIN_CHECK_INTERVAL = 1 minutes;
    uint256 public constant MAX_CHECK_INTERVAL = 1 hours;
    uint256 public constant MAX_FEE_TOKENS = 50;

    // === Immutables ===

    ISnuggleVault public immutable vault;
    ViewHelper public immutable viewHelper;
    TreasurySplitter public immutable treasurySplitter;

    // === Configurable State ===

    uint256 public maxPositionsPerCheck = 500;
    uint256 public minGasReserve = 500_000;
    uint256 public checkInterval = 5 minutes;
    address[] public feeTokens;

    // === Pagination State ===

    uint256 public lastCheckedIndex;
    uint256 public lastPerformTime;

    // === Events ===

    event BatchExecuted(uint256 actionsAttempted, uint256 actionsSucceeded, bool emergency);
    event FeesDistributed(uint256 tokenCount);
    event CheckIntervalUpdated(uint256 oldInterval, uint256 newInterval);
    event MaxPositionsPerCheckUpdated(uint256 oldMax, uint256 newMax);
    event MinGasReserveUpdated(uint256 oldReserve, uint256 newReserve);
    event FeeTokenAdded(address indexed token);
    event FeeTokenRemoved(address indexed token);
    event ActionFailed(uint256 indexed tokenId, uint8 actionType);
    event DistributeFailed(address indexed token);

    // === Errors ===

    error NotAuthorized();
    error IntervalOutOfRange();
    error InvalidParameter();
    error LengthMismatch();
    error FeeTokenAlreadyAdded();
    error FeeTokenNotFound();
    error TooManyFeeTokens();

    constructor(address _vault, address _viewHelper, address _treasurySplitter, address _owner) {
        vault = ISnuggleVault(_vault);
        viewHelper = ViewHelper(_viewHelper);
        treasurySplitter = TreasurySplitter(_treasurySplitter);
        if (_owner != msg.sender) {
            _transferOwnership(_owner);
        }
    }

    /// @dev Disable renounceOwnership to prevent accidental loss of owner-only functions
    function renounceOwnership() public pure override {
        revert InvalidParameter();
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // CORE AUTOMATION
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Check all positions for needed actions, return batched performData
    /// @param checkData Optional: abi.encode(uint8 shardId, uint8 numShards) for parallel upkeeps.
    ///                  Empty checkData scans all positions (backward compatible).
    /// @return upkeepNeeded Whether any position needs attention
    /// @return performData Encoded (uint256[] tokenIds, uint8[] actionTypes, uint256 newLastChecked)
    function checkUpkeep(
        bytes calldata checkData
    ) external view override returns (bool upkeepNeeded, bytes memory performData) {
        // Time gate
        if (block.timestamp < lastPerformTime + checkInterval) {
            return (false, "");
        }

        uint256 totalPositions = viewHelper.getActivePositionCount();
        if (totalPositions == 0) return (false, "");

        // Shard filtering (backward compatible: empty checkData = scan all)
        uint8 shardId;
        uint8 numShards = 1;
        if (checkData.length >= 64) {
            (shardId, numShards) = abi.decode(checkData, (uint8, uint8));
            if (numShards == 0) numShards = 1;
        }

        uint256 scanLimit = maxPositionsPerCheck < totalPositions
            ? maxPositionsPerCheck
            : totalPositions;
        uint256 startIndex = lastCheckedIndex % totalPositions;

        // Pre-allocate action arrays per priority type
        uint256[] memory type2Ids = new uint256[](scanLimit);
        uint256[] memory type1Ids = new uint256[](scanLimit);
        uint256[] memory type3Ids = new uint256[](scanLimit);
        uint256 count2;
        uint256 count1;
        uint256 count3;

        // TWAP cache — one entry per unique pool
        CachedTWAP[] memory twapCache = new CachedTWAP[](scanLimit);
        uint256 cacheSize;

        uint32 cachedTwapInterval = vault.twapInterval();
        uint256 positionsChecked;

        for (uint256 i = 0; i < totalPositions && positionsChecked < scanLimit; ) {
            uint256 currentIndex = (startIndex + i) % totalPositions;
            uint256 tokenId = vault.allPositionIds(currentIndex);

            unchecked {
                ++positionsChecked;
                ++i;
            }

            // Shard filter
            if (tokenId % numShards != shardId) continue;

            ISnuggleVault.UserPosition memory pos = vault.positions(tokenId);

            // Skip invalid or disabled positions
            if (pos.owner == address(0)) continue;
            if (!pos.autoSnuggleEnabled) continue;

            ISnuggleVault.PoolConfig memory poolConfig = vault.approvedPools(pos.poolId);
            if (!poolConfig.active) continue;

            // TWAP lookup with per-pool caching
            int24 currentTick;
            bool tickFound;
            (tickFound, currentTick) = _findInCache(twapCache, cacheSize, poolConfig.pool);

            if (!tickFound) {
                try poolConfig.positionAdapter.getTWAPTick(poolConfig.pool, cachedTwapInterval) returns (int24 tick) {
                    currentTick = tick;
                    twapCache[cacheSize] = CachedTWAP(poolConfig.pool, tick);
                    cacheSize++;
                } catch {
                    continue; // Skip positions whose pool TWAP is unavailable
                }
            }

            bool isOutOfRange = currentTick < pos.currentTickLower || currentTick >= pos.currentTickUpper;

            if (isOutOfRange) {
                if (pos.outOfRangeSince == 0) {
                    // Needs to start tracking — action type 1
                    type1Ids[count1++] = tokenId;
                } else if (block.timestamp >= pos.outOfRangeSince + pos.rebalanceDelay) {
                    bool wouldChange = TickMath.wouldSnuggleChangeRange(
                        currentTick,
                        poolConfig.tickSpacing,
                        pos.rangeWidthBps,
                        pos.currentTickLower,
                        pos.currentTickUpper
                    );
                    if (wouldChange) {
                        // Ready to rebalance — action type 2 (highest priority)
                        type2Ids[count2++] = tokenId;
                    }
                }
            } else if (pos.outOfRangeSince > 0) {
                // Position is back in range, reset tracking — action type 3
                type3Ids[count3++] = tokenId;
            }
        }

        uint256 totalActions = count2 + count1 + count3;
        if (totalActions == 0) return (false, "");

        // Build priority-ordered arrays: rebalances > start tracking > reset tracking
        uint256[] memory allIds = new uint256[](totalActions);
        uint8[] memory allTypes = new uint8[](totalActions);
        uint256 idx;

        for (uint256 j = 0; j < count2; j++) {
            allIds[idx] = type2Ids[j];
            allTypes[idx] = 2;
            idx++;
        }
        for (uint256 j = 0; j < count1; j++) {
            allIds[idx] = type1Ids[j];
            allTypes[idx] = 1;
            idx++;
        }
        for (uint256 j = 0; j < count3; j++) {
            allIds[idx] = type3Ids[j];
            allTypes[idx] = 3;
            idx++;
        }

        // Pagination advances to end of scan window
        uint256 newLastChecked = lastCheckedIndex + positionsChecked;
        return (true, abi.encode(allIds, allTypes, newLastChecked));
    }

    /// @notice Execute batched keeper actions
    /// @dev Called by Chainlink Automation. Processes actions with gasleft() guard.
    /// @param performData Encoded (uint256[] tokenIds, uint8[] actionTypes, uint256 newLastChecked)
    function performUpkeep(bytes calldata performData) external override {
        if (!vault.authorizedKeepers(msg.sender)) revert NotAuthorized();

        // Set time gate FIRST to prevent Chainlink race condition on fast chains (Arbitrum ~250ms blocks).
        // Multiple automation nodes can call checkUpkeep simultaneously; without an early time gate,
        // they all see upkeepNeeded=true and submit competing performUpkeep txs before the first confirms.
        lastPerformTime = block.timestamp;

        (uint256[] memory tokenIds, uint8[] memory actionTypes, uint256 newLastChecked) =
            abi.decode(performData, (uint256[], uint8[], uint256));

        if (tokenIds.length != actionTypes.length) revert LengthMismatch();

        lastCheckedIndex = newLastChecked;

        uint256 actionsAttempted;
        uint256 actionsSucceeded;

        for (uint256 i = 0; i < tokenIds.length; i++) {
            if (gasleft() < minGasReserve) break;
            actionsAttempted++;
            try vault.executeKeeperAction(tokenIds[i], actionTypes[i]) {
                actionsSucceeded++;
            } catch {
                emit ActionFailed(tokenIds[i], actionTypes[i]);
            }
        }

        emit BatchExecuted(actionsAttempted, actionsSucceeded, false);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // EMERGENCY & FEE DISTRIBUTION
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Owner-only batch execute bypassing Chainlink
    /// @dev Works because the KeepersHelper itself is an authorized keeper on the vault
    /// @param tokenIds Array of position token IDs to process
    /// @param actionTypes Array of action types (1=start tracking, 2=rebalance, 3=reset tracking)
    function emergencyExecute(
        uint256[] calldata tokenIds,
        uint8[] calldata actionTypes
    ) external onlyOwner {
        if (tokenIds.length != actionTypes.length) revert LengthMismatch();

        uint256 actionsAttempted;
        uint256 actionsSucceeded;

        for (uint256 i = 0; i < tokenIds.length; i++) {
            if (gasleft() < minGasReserve) break;
            actionsAttempted++;
            try vault.executeKeeperAction(tokenIds[i], actionTypes[i]) {
                actionsSucceeded++;
            } catch {
                emit ActionFailed(tokenIds[i], actionTypes[i]);
            }
        }

        emit BatchExecuted(actionsAttempted, actionsSucceeded, true);
    }

    /// @notice Permissionless fee distribution (decoupled from rebalances)
    /// @dev Can be called by anyone, by a cron, or by a separate Chainlink time-based upkeep
    function distributeFees() external {
        if (address(treasurySplitter) == address(0)) return;
        for (uint256 i = 0; i < feeTokens.length; i++) {
            try treasurySplitter.distribute(feeTokens[i]) {} catch {
                emit DistributeFailed(feeTokens[i]);
            }
        }
        emit FeesDistributed(feeTokens.length);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // CONFIGURATION
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Set maximum positions to scan per checkUpkeep call
    /// @param _max New max (1–2000). Values above 2000 risk exceeding Chainlink
    ///        checkUpkeep simulation gas limits due to quadratic memory costs.
    function setMaxPositionsPerCheck(uint256 _max) external onlyOwner {
        if (_max == 0 || _max > 2000) revert InvalidParameter();
        uint256 oldMax = maxPositionsPerCheck;
        maxPositionsPerCheck = _max;
        emit MaxPositionsPerCheckUpdated(oldMax, _max);
    }

    /// @notice Set minimum gas reserve for the gasleft() guard in performUpkeep
    /// @param _reserve New reserve (1–5000000)
    function setMinGasReserve(uint256 _reserve) external onlyOwner {
        if (_reserve == 0 || _reserve > 5_000_000) revert InvalidParameter();
        uint256 oldReserve = minGasReserve;
        minGasReserve = _reserve;
        emit MinGasReserveUpdated(oldReserve, _reserve);
    }

    /// @notice Update the minimum time between performUpkeep calls
    /// @param _interval New interval in seconds (between 1 minute and 1 hour)
    function setCheckInterval(uint256 _interval) external onlyOwner {
        if (_interval < MIN_CHECK_INTERVAL || _interval > MAX_CHECK_INTERVAL) {
            revert IntervalOutOfRange();
        }
        uint256 oldInterval = checkInterval;
        checkInterval = _interval;
        emit CheckIntervalUpdated(oldInterval, _interval);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // FEE TOKEN MANAGEMENT
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Add a token to the auto-distribute list
    /// @param token ERC20 token address to distribute
    function addFeeToken(address token) external onlyOwner {
        if (token == address(0)) revert FeeTokenNotFound();
        if (feeTokens.length >= MAX_FEE_TOKENS) revert TooManyFeeTokens();
        for (uint256 i = 0; i < feeTokens.length; i++) {
            if (feeTokens[i] == token) revert FeeTokenAlreadyAdded();
        }
        feeTokens.push(token);
        emit FeeTokenAdded(token);
    }

    /// @notice Remove a token from the auto-distribute list
    /// @param token ERC20 token address to remove
    function removeFeeToken(address token) external onlyOwner {
        for (uint256 i = 0; i < feeTokens.length; i++) {
            if (feeTokens[i] == token) {
                feeTokens[i] = feeTokens[feeTokens.length - 1];
                feeTokens.pop();
                emit FeeTokenRemoved(token);
                return;
            }
        }
        revert FeeTokenNotFound();
    }

    /// @notice Get all fee tokens configured for distribution
    function getFeeTokens() external view returns (address[] memory) {
        return feeTokens;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // INTERNAL
    // ═══════════════════════════════════════════════════════════════════════════

    /// @dev Linear scan through TWAP cache. Fine for 30-50 unique pools.
    function _findInCache(
        CachedTWAP[] memory cache,
        uint256 size,
        address pool
    ) internal pure returns (bool found, int24 tick) {
        for (uint256 i = 0; i < size; i++) {
            if (cache[i].pool == pool) return (true, cache[i].tick);
        }
        return (false, int24(0));
    }
}
