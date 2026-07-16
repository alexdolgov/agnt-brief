// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IAccountableStrategy} from "./IAccountableStrategy.sol";

/// @notice Struct tracking an exit request
struct ExitRequest {
    /// @notice The account that requested the exit
    address account;
    /// @notice The number of shares requested
    uint256 shares;
}

/// @notice Immutable configuration snapshot for a specific epoch
struct EpochConfiguration {
    /// @notice Penalty basis points for this epoch
    uint256 penaltyBps;
    /// @notice Settlement interval in seconds for this epoch
    uint256 settlementInterval;
    /// @notice Maximum share capacity for this epoch (0 = unlimited)
    uint256 maxCapacity;
}

/// @notice Interface for the early exit module
interface IEarlyExitModule {
    /// @notice Emitted when an exit is requested
    /// @param epoch The epoch of the exit
    /// @param account The account that requested the exit
    /// @param shares The number of shares requested
    event ExitRequested(uint256 indexed epoch, address indexed account, uint256 shares);

    /// @notice Emitted when an exit is cancelled
    /// @param epoch The epoch of the exit
    /// @param account The account that cancelled the exit
    /// @param shares The number of shares cancelled
    event ExitCancelled(uint256 indexed epoch, address indexed account, uint256 shares);

    /// @notice Emitted when an exit is claimed
    /// @param epoch The epoch of the exit
    /// @param account The account that claimed
    /// @param assets The assets claimed
    event ExitClaimed(uint256 indexed epoch, address indexed account, uint256 assets);

    /// @notice Emitted when an epoch is settled
    /// @param epoch The epoch that was settled
    /// @param totalShares The total number of shares settled
    /// @param totalAssets The total number of assets settled
    event EpochSettled(uint256 indexed epoch, uint256 totalShares, uint256 totalAssets);

    /// @notice Emitted when the penalty basis points are set
    /// @param penaltyBps The new penalty basis points
    event PenaltyBpsSet(uint256 penaltyBps);

    /// @notice Emitted when the settlement interval is set
    /// @param interval The new settlement interval
    event SettlementIntervalSet(uint256 interval);

    /// @notice Emitted when the max epoch capacity is set
    /// @param capacity The new max epoch capacity
    event MaxEpochCapacitySet(uint256 capacity);

    /// @notice Request an exit
    /// @param shares The number of shares to request
    function requestExit(uint256 shares) external;

    /// @notice Cancel an exit
    /// @param epoch The epoch to cancel the exit for
    function cancelExit(uint256 epoch) external;

    /// @notice Claim assets from a settled epoch
    /// @param epoch The epoch to claim from
    function claimExit(uint256 epoch) external;

    /// @notice Settle an epoch
    /// @param epoch The epoch to settle
    function settleEpoch(uint256 epoch) external;

    /// @notice Set the penalty basis points
    /// @param penaltyBps The penalty basis points
    function setPenaltyBps(uint256 penaltyBps) external;

    /// @notice Set the settlement interval
    /// @param interval The settlement interval
    function setSettlementInterval(uint256 interval) external;

    /// @notice Set the max share capacity per epoch
    /// @param capacity The max epoch capacity
    function setMaxEpochCapacity(uint256 capacity) external;

    /// @notice The settlement interval
    function settlementInterval() external view returns (uint256);

    /// @notice Maximum share capacity per epoch (0 = unlimited)
    function maxEpochCapacity() external view returns (uint256);

    /// @notice Preview the net assets for an epoch
    /// @param epoch The epoch to preview the net assets for
    function previewEpochAssets(uint256 epoch) external view returns (uint256);

    /// @notice Get the number of requests in an epoch
    /// @param epoch The epoch to get the number of requests for
    function epochRequestCount(uint256 epoch) external view returns (uint256);

    /// @notice Get a specific request by epoch and index
    /// @param epoch The epoch to get the request for
    /// @param index The index of the request
    function epochRequest(uint256 epoch, uint256 index) external view returns (ExitRequest memory);
}

/// @notice Interface extension for IAccountableStrategy
interface IEarlyExitStrategyHook is IAccountableStrategy {
    /// @notice Hook for handling early exit
    /// @param shares The number of shares to burn
    /// @param grossAssets Gross share value, used for debt reduction
    function onEarlyExit(uint256 shares, uint256 grossAssets) external;
}
