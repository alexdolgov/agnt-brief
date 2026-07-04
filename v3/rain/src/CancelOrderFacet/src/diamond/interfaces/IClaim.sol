// SPDX-License-Identifier:

pragma solidity ^0.8.26;

/**
 * @title IResolution
 * @author Rain Team
 * @notice Interface for the resolution facet.
 * @dev Defines the external functions for claiming rewards within the Diamond architecture.
 */
interface IClaim {
    /* ===================================== FUNCTIONS ===================================== */

    /**
     * @notice Allows users to claim their winnings or liquidity rewards after the pool has closed.
     * @dev This function verifies whether the winner has been determined.
     *      - In public pools, it ensures the oracle has finalized the winner.
     *      - The function checks if the caller has already claimed their rewards.
     *      - Rewards are calculated based on liquidity contribution and votes.
     * @notice Reverts if:
     *      - The winner has not been determined.
     *      - The pool is still open.
     *      - The user has already claimed rewards.
     *      - The user is not eligible to claim any rewards.
     * @notice Emits a `Claim` event upon successful reward distribution.
     */
    function claim() external;
}
