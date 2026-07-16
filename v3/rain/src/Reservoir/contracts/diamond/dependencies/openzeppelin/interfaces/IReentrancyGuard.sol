// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title IReentrancyGuard
 * @author Rain Team
 * @dev Intended for introspection with diamond patterns.
 */
interface IReentrancyGuard {
    /* ========================== ERRORS ========================== */

    /**
     * @dev Unauthorized reentrant call.
     */
    error ReentrancyGuardReentrantCall();
}
