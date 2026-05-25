// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interfaces/ISnuggleVault.sol";
import "./ViewHelper.sol";
import "./libraries/TickMath.sol";

/// @title SnuggleHedgeHelper
/// @notice Read-only helper for HedgeMyLP integration — provides all data needed
///         to size and adjust delta-neutral hedges for Snuggle positions
/// @dev Standalone contract (no vault changes required). Key features:
///      - Multi-DEX sqrtPriceX96 retrieval (slot0 for Uni/Sushi/PCS, globalState for Camelot)
///      - Rebalance prediction using TickMath.predictSnuggleRange()
///      - Batch queries for keeper/bot efficiency
///      - Position discovery after rebalance (tokenId changes on rebalance)
/// @author Snuggle (snuggle.fi)
contract SnuggleHedgeHelper {
    // === Structs ===

    /// @notice Complete hedge-relevant data for a Snuggle position
    /// @dev All fields needed by HedgeMyLP to size a delta-neutral short on GMX V2
    struct HedgePositionData {
        // Position identity
        uint256 tokenId;
        bytes32 poolId;
        address owner;
        // Pool info
        address pool;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
        // Position range
        int24 tickLower;
        int24 tickUpper;
        uint128 liquidity;
        // Price data
        int24 twapTick;
        int24 spotTick;
        uint160 sqrtPriceX96;
        // Range status
        bool isOutOfRange;
        uint64 outOfRangeSince;
        uint64 rebalanceDelay;
        bool wouldRebalanceNow;
        // Predicted post-rebalance range
        int24 predictedTickLower;
        int24 predictedTickUpper;
        // Position settings
        bool autoSnuggleEnabled;
        uint24 rangeWidthBps;
        uint32 totalRebalances;
        uint32 lastRebalanceTime;
    }

    // === Immutables ===

    ISnuggleVault public immutable vault;
    ViewHelper public immutable viewHelper;

    // === Errors ===

    error PositionNotFound();
    error PoolNotActive();

    constructor(address _vault, address _viewHelper) {
        vault = ISnuggleVault(_vault);
        viewHelper = ViewHelper(_viewHelper);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // SINGLE POSITION QUERY
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Get all hedge-relevant data for a single Snuggle position
    /// @param tokenId The Snuggle position token ID
    /// @return data Complete hedge data including sqrtPriceX96, rebalance prediction, etc.
    function getHedgeData(uint256 tokenId) external view returns (HedgePositionData memory data) {
        ISnuggleVault.UserPosition memory pos = vault.positions(tokenId);
        if (pos.owner == address(0)) revert PositionNotFound();

        ISnuggleVault.PoolConfig memory poolConfig = vault.approvedPools(pos.poolId);
        if (!poolConfig.active) revert PoolNotActive();

        data = _buildHedgeData(pos, poolConfig);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // BATCH QUERIES
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Get hedge data for multiple positions in a single call
    /// @dev Skips invalid/inactive positions (returns zero-filled entries).
    ///      Check data[i].owner != address(0) to filter valid entries.
    /// @param tokenIds Array of Snuggle position token IDs
    /// @return data Array of hedge data (zero-filled for invalid positions)
    function getHedgeDataBatch(
        uint256[] calldata tokenIds
    ) external view returns (HedgePositionData[] memory data) {
        data = new HedgePositionData[](tokenIds.length);

        for (uint256 i = 0; i < tokenIds.length; i++) {
            ISnuggleVault.UserPosition memory pos = vault.positions(tokenIds[i]);
            if (pos.owner == address(0)) continue;

            ISnuggleVault.PoolConfig memory poolConfig = vault.approvedPools(pos.poolId);
            if (!poolConfig.active) continue;

            // try-catch: skip positions whose pool calls fail (stale TWAP, etc.)
            try this.buildHedgeDataView(pos, poolConfig) returns (HedgePositionData memory d) {
                data[i] = d;
            } catch {
                // Leave zero-filled — caller checks data[i].owner != address(0)
            }
        }
    }

    /// @notice Get hedge data for all of a user's positions
    /// @param owner The position owner address
    /// @return data Array of hedge data for all active positions
    function getAllUserHedgeData(
        address owner
    ) external view returns (HedgePositionData[] memory data) {
        uint256[] memory userPositions = viewHelper.getUserPositions(owner);
        data = new HedgePositionData[](userPositions.length);

        for (uint256 i = 0; i < userPositions.length; i++) {
            ISnuggleVault.UserPosition memory pos = vault.positions(userPositions[i]);
            if (pos.owner == address(0)) continue;

            ISnuggleVault.PoolConfig memory poolConfig = vault.approvedPools(pos.poolId);
            if (!poolConfig.active) continue;

            try this.buildHedgeDataView(pos, poolConfig) returns (HedgePositionData memory d) {
                data[i] = d;
            } catch {}
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // POSITION DISCOVERY
    // ═══════════════════════════════════════════════════════════════════════════

    /// @notice Find the most recent position for a user in a specific pool
    /// @dev Useful after rebalance: Snuggle burns old NFT and mints new one,
    ///      so the tokenId changes. This returns the highest tokenId (most recent mint).
    /// @param owner The position owner address
    /// @param poolId The pool ID (keccak256 of token0, token1, fee, adapter))
    /// @return tokenId The most recent position token ID (0 if not found)
    /// @return data Hedge data for the found position (zero-filled if not found)
    function getLatestPositionForPool(
        address owner,
        bytes32 poolId
    ) external view returns (uint256 tokenId, HedgePositionData memory data) {
        uint256[] memory userPositions = viewHelper.getUserPositions(owner);

        uint256 latestTokenId;

        for (uint256 i = 0; i < userPositions.length; i++) {
            ISnuggleVault.UserPosition memory candidate = vault.positions(userPositions[i]);
            if (candidate.poolId != poolId) continue;

            // Highest tokenId = most recent mint (NFT IDs are monotonically increasing)
            if (userPositions[i] > latestTokenId) {
                latestTokenId = userPositions[i];
            }
        }

        if (latestTokenId == 0) return (0, data);

        ISnuggleVault.UserPosition memory latestPos = vault.positions(latestTokenId);
        ISnuggleVault.PoolConfig memory poolConfig = vault.approvedPools(latestPos.poolId);

        if (poolConfig.active) {
            tokenId = latestTokenId;
            data = _buildHedgeData(latestPos, poolConfig);
        }
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // VIEW HELPER FOR TRY-CATCH
    // ═══════════════════════════════════════════════════════════════════════════

    /// @dev External view wrapper for _buildHedgeData to enable try-catch in batch queries.
    ///      Solidity requires try-catch targets to be external calls.
    /// @param pos The user position data from vault
    /// @param poolConfig The pool configuration from vault
    /// @return data Complete hedge data
    function buildHedgeDataView(
        ISnuggleVault.UserPosition calldata pos,
        ISnuggleVault.PoolConfig calldata poolConfig
    ) external view returns (HedgePositionData memory data) {
        return _buildHedgeData(pos, poolConfig);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // INTERNAL
    // ═══════════════════════════════════════════════════════════════════════════

    /// @dev Build complete hedge data for a single position
    function _buildHedgeData(
        ISnuggleVault.UserPosition memory pos,
        ISnuggleVault.PoolConfig memory poolConfig
    ) internal view returns (HedgePositionData memory data) {
        // Identity
        data.tokenId = pos.tokenId;
        data.poolId = pos.poolId;
        data.owner = pos.owner;

        // Pool info
        data.pool = poolConfig.pool;
        data.token0 = poolConfig.token0;
        data.token1 = poolConfig.token1;
        data.fee = poolConfig.fee;
        data.tickSpacing = poolConfig.tickSpacing;

        // Position range from vault state
        data.tickLower = pos.currentTickLower;
        data.tickUpper = pos.currentTickUpper;

        // On-chain liquidity from the actual NFT via adapter
        (,,,,, data.liquidity) = poolConfig.positionAdapter.getPosition(pos.tokenId);

        // Price data — route through adapter for multi-DEX support
        uint32 twapInterval = vault.twapInterval();
        data.twapTick = poolConfig.positionAdapter.getTWAPTick(poolConfig.pool, twapInterval);
        data.spotTick = poolConfig.positionAdapter.getCurrentTick(poolConfig.pool);
        data.sqrtPriceX96 = _getSqrtPriceX96(poolConfig.pool);

        // Range status (uses TWAP tick, same logic as keeper)
        data.isOutOfRange = data.twapTick < pos.currentTickLower
            || data.twapTick >= pos.currentTickUpper;
        data.outOfRangeSince = pos.outOfRangeSince;
        data.rebalanceDelay = pos.rebalanceDelay;

        // Rebalance prediction — would the keeper execute right now?
        if (
            data.isOutOfRange && pos.outOfRangeSince > 0
                && block.timestamp >= pos.outOfRangeSince + pos.rebalanceDelay
        ) {
            data.wouldRebalanceNow = TickMath.wouldSnuggleChangeRange(
                data.twapTick,
                poolConfig.tickSpacing,
                pos.rangeWidthBps,
                pos.currentTickLower,
                pos.currentTickUpper
            );
        }

        // Predicted post-rebalance range (always computed for preemptive hedge adjustment)
        if (data.isOutOfRange) {
            (data.predictedTickLower, data.predictedTickUpper) = TickMath.predictSnuggleRange(
                data.twapTick,
                poolConfig.tickSpacing,
                pos.rangeWidthBps,
                pos.currentTickLower,
                pos.currentTickUpper
            );
        } else {
            // In range → predicted = current (no rebalance expected)
            data.predictedTickLower = pos.currentTickLower;
            data.predictedTickUpper = pos.currentTickUpper;
        }

        // Position settings
        data.autoSnuggleEnabled = pos.autoSnuggleEnabled;
        data.rangeWidthBps = pos.rangeWidthBps;
        data.totalRebalances = pos.totalRebalances;
        data.lastRebalanceTime = pos.lastRebalanceTime;
    }

    /// @dev Get sqrtPriceX96 from any supported DEX pool
    /// @notice Uses raw staticcall: tries slot0() first (Uni V3/Sushi V3/PCS V3),
    ///         falls back to globalState() (Camelot/Algebra). Both return uint160 as first value.
    /// @param pool The pool address
    /// @return sqrtPriceX96 The current sqrt price as Q64.96
    function _getSqrtPriceX96(address pool) internal view returns (uint160 sqrtPriceX96) {
        // Try slot0() — selector 0x3850c7bd (Uniswap V3, Sushi V3, PancakeSwap V3)
        (bool success, bytes memory result) = pool.staticcall(abi.encodeWithSelector(0x3850c7bd));

        if (success && result.length >= 32) {
            return abi.decode(result, (uint160));
        }

        // Try globalState() — selector for Camelot/Algebra V1.9
        (success, result) = pool.staticcall(abi.encodeWithSignature("globalState()"));

        if (success && result.length >= 32) {
            return abi.decode(result, (uint160));
        }

        // Both failed — revert so callers don't compute hedges with a zero price
        revert PoolNotActive();
    }
}
