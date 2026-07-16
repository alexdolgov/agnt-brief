// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

/**
 * @title IDispute
 * @author Rain Team
 * @notice Interface for the rain pool `Dispute` facet.
 * @dev Defines the external functions for opening a dispute within the Diamond architecture.
 */
interface IDispute {
    /* ===================================== FUNCTIONS ===================================== */

    /**
     * @notice Starts a dispute if a user has an issue with the winner that has been selected.
     * @dev This function can only be called after a certain time after the  the pool has been
     *     closed. It takes a fee from the user to start a dispute. The amount is only returned
     *     to the user incase the oracle selects the winning option provided by the user. The
     *     max amount allowed is $1000.
     */
    function openDispute() external;
}
