// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {UpgradeableBeacon} from "lib/openzeppelin-contracts/contracts/proxy/beacon/UpgradeableBeacon.sol";

import {Errors} from "./Errors.sol";

/// @title TimelockUpgrade
/// @author Bundie Team
/// @notice Mixin providing queue → execute → cancel upgrade scheduling with enforced delay
/// @dev Shared by RouterManager and AccountManager. Callers are responsible for
///      access control (onlyOwner), domain-specific validation, and event emission.
///
///      ## Upgrade Flow
///      1. Owner calls queue function → records newImplementation + ETA
///      2. MIN_UPGRADE_DELAY elapses (1 day) → monitoring bots and users can review
///      3. Owner calls execute function → beacon upgraded, pending state cleared
///      4. At any point before execution, owner can cancel
///
///      ## Security Properties
///      - Only one upgrade can be pending at a time (prevents confusion/front-running)
///      - Execute requires exact match with queued implementation (prevents substitution)
///      - New implementation must differ from current (prevents no-op upgrades)
///      - Callers add domain-specific checks (e.g., ROUTER_MANAGER reference validation)
abstract contract TimelockUpgrade {
    /// @notice Minimum enforced delay between scheduling and execution
    /// @dev Set to 1 day as a safety window: account owners, monitoring bots, and governance
    ///      participants can review queued upgrades and exit positions before execution.
    uint48 public constant MIN_UPGRADE_DELAY = 1 days;

    /// @notice Pending implementation queued for upgrade
    /// @dev Zero when no upgrade is pending. Non-zero means an upgrade is scheduled.
    address public pendingUpgradeImplementation;

    /// @notice Timestamp after which the pending implementation can be executed
    /// @dev Computed as block.timestamp + MIN_UPGRADE_DELAY at queue time.
    uint48 public pendingUpgradeEta;

    /// @notice Queue a new implementation for upgrade after delay
    /// @dev Records the new implementation and computes ETA. Only one upgrade can be
    ///      pending at a time; callers must cancel or execute before queueing another.
    /// @param beacon Beacon to read current implementation from (for same-impl check)
    /// @param newImplementation Address of new implementation to queue
    function _queueUpgrade(UpgradeableBeacon beacon, address newImplementation) internal {
        require(newImplementation != address(0), Errors.InvalidImplementation(newImplementation));
        require(
            pendingUpgradeImplementation == address(0), Errors.UpgradeAlreadyScheduled(pendingUpgradeImplementation)
        );

        address currentImpl = beacon.implementation();
        require(newImplementation != currentImpl, Errors.InvalidImplementation(newImplementation));

        uint48 eta = uint48(block.timestamp) + MIN_UPGRADE_DELAY;
        pendingUpgradeImplementation = newImplementation;
        pendingUpgradeEta = eta;
    }

    /// @notice Execute a queued upgrade on the beacon
    /// @dev Enforces that the delay period has fully elapsed before allowing execution.
    ///      The caller must pass the same implementation that was queued to prevent
    ///      substitution attacks between queue and execute. Clears pending state on success.
    /// @param beacon Beacon to upgrade (upgrades all proxies sharing this beacon)
    /// @param newImplementation Must exactly match the queued implementation
    /// @return oldImpl Previous implementation address (for event emission by caller)
    function _executeUpgrade(UpgradeableBeacon beacon, address newImplementation) internal returns (address oldImpl) {
        require(newImplementation != address(0), Errors.InvalidImplementation(newImplementation));

        address queuedImpl = pendingUpgradeImplementation;
        require(queuedImpl != address(0), Errors.UpgradeNotScheduled());
        require(newImplementation == queuedImpl, Errors.InvalidImplementation(newImplementation));

        uint48 eta = pendingUpgradeEta;
        require(eta != 0, Errors.UpgradeNotScheduled());
        require(block.timestamp >= eta, Errors.UpgradeDelayNotElapsed(eta, uint48(block.timestamp)));

        oldImpl = beacon.implementation();
        require(newImplementation != oldImpl, Errors.InvalidImplementation(newImplementation));

        beacon.upgradeTo(newImplementation);

        pendingUpgradeImplementation = address(0);
        pendingUpgradeEta = 0;
    }

    /// @notice Cancel a queued upgrade
    /// @dev Reverts if no upgrade is currently pending. Clears all pending state.
    /// @return cancelledImpl The implementation address that was cancelled (for event emission)
    function _cancelUpgrade() internal returns (address cancelledImpl) {
        cancelledImpl = pendingUpgradeImplementation;
        require(cancelledImpl != address(0), Errors.UpgradeNotScheduled());

        pendingUpgradeImplementation = address(0);
        pendingUpgradeEta = 0;
    }

    // ========================== Storage Gaps ==========================

    /// @dev Reserved storage for future upgrades. Keeps slot layout stable for inheritors.
    uint256[48] private __gap;
}
