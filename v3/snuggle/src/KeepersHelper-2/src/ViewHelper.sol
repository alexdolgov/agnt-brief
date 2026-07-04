// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./interfaces/ISnuggleVault.sol";

/// @title ViewHelper
/// @notice Helper contract for complex view operations
/// @dev Deployed separately to reduce SnuggleVault bytecode size
contract ViewHelper {
    ISnuggleVault public immutable vault;

    /// @notice Maximum positions to query per call (MEDIUM-02: prevent gas exhaustion)
    uint256 public constant MAX_POSITIONS_QUERY = 1000;

    constructor(address _vault) {
        vault = ISnuggleVault(_vault);
    }

    /// @notice Check if a position is out of range
    function isPositionOutOfRange(
        uint256 tokenId
    ) external view returns (bool isOOR, uint256 secondsOOR) {
        ISnuggleVault.UserPosition memory pos = vault.positions(tokenId);
        if (pos.owner == address(0)) return (false, 0);

        ISnuggleVault.PoolConfig memory poolConfig = vault.approvedPools(pos.poolId);
        int24 currentTick = poolConfig.positionAdapter.getTWAPTick(poolConfig.pool, vault.twapInterval());

        isOOR = currentTick < pos.currentTickLower || currentTick >= pos.currentTickUpper;

        if (isOOR && pos.outOfRangeSince > 0) {
            secondsOOR = block.timestamp - pos.outOfRangeSince;
        }
    }

    /// @notice Get pool ID for a token pair
    function getPoolId(
        address token0,
        address token1,
        uint24 fee,
        address positionAdapter
    ) external pure returns (bytes32) {
        if (token0 > token1) (token0, token1) = (token1, token0);
        return keccak256(abi.encodePacked(token0, token1, fee, positionAdapter));
    }

    /// @notice Get all position IDs for a user
    /// @dev Iterates through userPositions mapping using try-catch to find all positions
    /// @dev MEDIUM-02: Limited to MAX_POSITIONS_QUERY to prevent gas exhaustion
    function getUserPositions(address user) external view returns (uint256[] memory) {
        // First, count positions by trying indices until revert or limit reached
        uint256 count = 0;
        while (count < MAX_POSITIONS_QUERY) {
            try vault.userPositions(user, count) returns (uint256) {
                count++;
            } catch {
                break;
            }
        }

        // Then collect all position IDs
        uint256[] memory positionIds = new uint256[](count);
        for (uint256 i = 0; i < count; i++) {
            positionIds[i] = vault.userPositions(user, i);
        }
        return positionIds;
    }

    /// @notice Get user positions with pagination
    /// @param user The user address
    /// @param offset Starting index
    /// @param limit Maximum number of positions to return
    /// @return positionIds Array of position token IDs
    /// @return hasMore Whether there are more positions beyond this batch
    function getUserPositionsPaginated(
        address user,
        uint256 offset,
        uint256 limit
    ) external view returns (uint256[] memory positionIds, bool hasMore) {
        // Cap limit to prevent gas exhaustion
        if (limit > MAX_POSITIONS_QUERY) {
            limit = MAX_POSITIONS_QUERY;
        }

        // Count total positions first
        uint256 total = 0;
        while (total < offset + limit + 1) {
            try vault.userPositions(user, total) returns (uint256) {
                total++;
            } catch {
                break;
            }
        }

        // Calculate actual count to return
        uint256 count = 0;
        if (total > offset) {
            count = total - offset;
            if (count > limit) {
                count = limit;
                hasMore = true;
            }
        }

        // Collect positions
        positionIds = new uint256[](count);
        for (uint256 i = 0; i < count; i++) {
            positionIds[i] = vault.userPositions(user, offset + i);
        }
    }

    /// @notice Get the number of positions a user has
    /// @dev L-05: Lightweight count-only alternative to getUserPositions() — avoids array allocation
    /// @param user The user address
    /// @return count Number of positions the user has
    function getUserPositionCount(address user) external view returns (uint256 count) {
        while (count < MAX_POSITIONS_QUERY) {
            try vault.userPositions(user, count) returns (uint256) {
                count++;
            } catch {
                break;
            }
        }
    }

    /// @notice Get total count of active positions
    /// @dev L-03: Now reads O(1) counter from vault instead of iterating allPositionIds
    function getActivePositionCount() external view returns (uint256) {
        return vault.totalActivePositions();
    }

    /// @notice Get position timing data for keeper checks (moved from SnuggleVault to reduce bytecode)
    /// @param tokenId The position token ID
    function getPositionTiming(uint256 tokenId) external view returns (
        uint64 rebalanceDelay,
        uint64 outOfRangeSince,
        uint32 totalRebalances,
        uint32 lastRebalanceTime,
        uint64 depositTimestamp
    ) {
        ISnuggleVault.UserPosition memory pos = vault.positions(tokenId);
        return (
            pos.rebalanceDelay,
            pos.outOfRangeSince,
            pos.totalRebalances,
            pos.lastRebalanceTime,
            pos.depositTimestamp
        );
    }
}
