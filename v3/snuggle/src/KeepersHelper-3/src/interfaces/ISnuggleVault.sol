// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./IPositionAdapter.sol";

/// @title ISnuggleVault
/// @notice Interface for SnuggleVaultUpgradeable, used by KeepersHelper and ViewHelper
/// @dev Extracted to allow KeepersHelper to work with any vault implementation (upgradeable or not)
interface ISnuggleVault {
    struct UserPosition {
        uint256 tokenId;
        bytes32 poolId;
        address owner;
        uint24 rangeWidthBps;
        int24 currentTickLower;
        int24 currentTickUpper;
        bool autoSnuggleEnabled;
        bool autoCompoundEnabled;
        uint64 rebalanceDelay;
        uint64 outOfRangeSince;
        uint32 totalRebalances;
        uint32 lastRebalanceTime;
        uint64 depositTimestamp;
        uint128 cumulativeFees0;
        uint128 cumulativeFees1;
        uint128 cumulativeRewards;
        uint128 __reserved;
    }

    struct PoolConfig {
        address pool;
        address token0;
        address token1;
        uint24 fee;
        int24 tickSpacing;
        bool active;
        IPositionAdapter positionAdapter;
        address rewardAdapter;
    }

    function positions(uint256 tokenId) external view returns (UserPosition memory);
    function approvedPools(bytes32 poolId) external view returns (PoolConfig memory);
    function twapInterval() external view returns (uint32);
    function userPositions(address user, uint256 index) external view returns (uint256);
    function allPositionIds(uint256 index) external view returns (uint256);
    function totalActivePositions() external view returns (uint256);
    function authorizedKeepers(address keeper) external view returns (bool);
    function executeKeeperAction(uint256 tokenId, uint8 actionType) external;
}
