// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title IVoteEscrowedSTTX
 * @dev Interface for vote-escrowed STTX (veSTTX) token operations
 * @notice Defines functionality for:
 * 1. Token withdrawal management
 * 2. Escrow position handling
 * 3. Voting power release
 */
interface IVoteEscrowedSTTX {
    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Processes withdrawal of escrowed STTX tokens
     * @dev Handles:
     * · Lock period verification
     * · Position liquidation
     * · Token transfers
     *
     * Requirements:
     * · Lock period expired
     * · Active position exists
     * · Caller is position owner
     *
     * Effects:
     * · Releases locked tokens
     * · Removes voting power
     * · Clears escrow position
     */
    function withdraw() external;
}
