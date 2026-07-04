// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

/**
 * @title IResolution
 * @author Rain Team
 * @notice Interface for the resolution facet.
 * @dev Defines the external functions for closing pool and choosing a winner within the
 * Diamond architecture.
 */
interface IResolution {
    /* ===================================== FUNCTIONS ===================================== */

    /**
     * @notice Closes the pool and finalizes the distribution of funds.
     * @dev This function can only be called after the sale has ended.
     *      It distributes funds based on whether the pool is public or private.
     *      The function also creates an oracle if the pool is public.
     * @notice If the pool is already closed, the function reverts.
     * @notice The pool's end time is set to the current block timestamp.
     * @notice In public pools, an oracle is created for result resolution.
     * @notice Emits a `ClosePool` event when the pool is successfully closed.
     */
    function closePool() external;

    /**
     * @notice Closes the pool and proposes a winning outcome.
     * @dev Callable after the sale period ends and before finalization.
     *      The caller becomes the resolution proposer and may be
     *      required to escrow a resolver bond. Marks the pool as
     *      finalized and records the proposed winner.
     * @notice If the pool is already closed, the function reverts.
     * @notice The pool's end time is set to the current block timestamp.
     * @notice In public pools, an oracle is created for result resolution.
     * @notice Emits a `ClosePool` event when the pool is successfully closed.
     * @param proposedWinner The outcome ID proposed as the winner.
     */
    function closePool(uint256 proposedWinner) external;

    /**
     * @notice Allows the selection of a winning option for a private pool.
     * @dev Only applicable to private pools that have been finalized.
     *      Requires a valid signature for authentication.
     * @param option The winning option ID.
     * @notice The function reverts if called on a public pool.
     * @notice The function reverts if the pool is not finalized.
     * @notice Emits a `ChooseWinner` event with the winning option and reward distributions.
     */
    function chooseWinner(uint256 option) external;

    /**
     * @notice Cancels an early or invalid resolution attempt.
     * @dev Callable only by the resolver after pool finalization.
     *      Burns the resolver bond if present, resets resolution state,
     *      and reopens the pool for a new resolution.
     */
    function tooEarly() external;
}
