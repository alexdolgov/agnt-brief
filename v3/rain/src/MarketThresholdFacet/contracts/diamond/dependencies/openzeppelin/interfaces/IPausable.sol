// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @title IPausable
 * @author Rain Team
 * @dev Intended for introspection with diamond patterns.
 */
interface IPausable {
    /* ========================== EVENTS ========================== */

    /**
     * @dev Emitted when the pause is triggered by `account`.
     */
    event Paused(address account);

    /**
     * @dev Emitted when the pause is lifted by `account`.
     */
    event Unpaused(address account);

    /* ========================== ERRORS ========================== */

    /**
     * @dev The operation failed because the contract is paused.
     */
    error EnforcedPause();

    /**
     * @dev The operation failed because the contract is not paused.
     */
    error ExpectedPause();

    /* ========================== FUNCTIONS ========================== */

    /**
     * @notice Changes the state of the contract from unpaused to paused.
     *
     * Requirements:
     *
     * - the caller must be an owner.
     * - can only be called when unpaused.
     */
    function pause() external;

    /**
     * @notice Changes the state of the contract from paused to unpaused.
     *
     * Requirements:
     *
     * - the caller must be an owner
     * - can only be called when paused.
     */
    function unpause() external;

    /**
     * @notice Current pausable state of the contract.
     */
    function paused() external view returns (bool);
}
