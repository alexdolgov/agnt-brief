// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

import { LibAccessControl } from "../dependencies/openzeppelin/libraries/LibAccessControl.sol";
import { LibPausable } from "../dependencies/openzeppelin/libraries/LibPausable.sol";
import { LibReentrancyGuard } from "../dependencies/openzeppelin/libraries/LibReentrancyGuard.sol";

/**
 * @title Modifiers
 * @author Rain Team
 * @notice Provides reusable access control, pause, and reentrancy modifiers.
 * @dev All modifiers delegate enforcement logic to library implementations that operate on shared diamond storage.
 * Intended for internal use by facets and abstract contracts.
 */
abstract contract Modifiers {
    /* ========================== MODIFIERS ========================== */

    /**
     * @dev Restricts execution to accounts that possess the specificied role. Reverts if the caller does not have the
     * required role.
     * @param role Identifier of the role required for access.
     */
    modifier onlyRole(bytes32 role) {
        LibAccessControl.enforceRole(role);
        _;
    }

    /**
     * @dev Allows execution only when not paused. Reverts if the paused state is active.
     */
    modifier whenNotPaused() {
        LibPausable.enforceNotPaused();
        _;
    }

    /**
     * @dev Allows execution only when paused. Reverts if the paused state is not active.
     */
    modifier whenPaused() {
        LibPausable.enforcePaused();
        _;
    }

    /**
     * @dev Prevents reentrant calls to a function. Uses a shared reentrancy guard stored in diamond storage. The guard
     * is entered before function execution and exited after.
     */
    modifier nonReentrant() {
        LibReentrancyGuard.enforceNonReentrantBefore();
        _;
        LibReentrancyGuard.enforceNonReentrantAfter();
    }
}
