// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title IFeesWithdrawer
 * @dev Interface for protocol fee withdrawal operations
 * @notice Defines functionality for:
 * 1. Secure fee withdrawal
 * 2. Access control for withdrawals
 * 3. Protocol revenue management
 *
 * This interface ensures:
 * · Controlled access to protocol fees
 * · Safe transfer of accumulated revenue
 * · Proper accounting of withdrawn amounts
 */
interface IFeesWithdrawer {
    /*//////////////////////////////////////////////////////////////
                        WITHDRAWAL OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Withdraws accumulated protocol fees to designated recipients
     * @dev Only callable by authorized withdrawers
     * Handles:
     * · Fee accounting updates
     * · Transfer of tokens
     * · Event emission for tracking
     */
    function withdraw() external;
}

/**
 * @title IFeesDistributor
 * @dev Interface for protocol fee distribution and allocation
 * @notice Defines functionality for:
 * 1. Fee distribution across protocol components
 * 2. Dynamic allocation management
 * 3. Floor token revenue sharing
 *
 * This interface manages:
 * · Revenue distribution logic
 * · Allocation percentages
 * · Protocol incentive mechanisms
 */
interface IFeesDistributor {
    /*//////////////////////////////////////////////////////////////
                        DISTRIBUTION OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Distributes accumulated protocol fees according to set allocations
     * @dev Handles the distribution of fees to:
     * · Floor token stakers
     * · Protocol treasury
     * · Other designated recipients
     */
    function distribute() external;

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Returns current percentage allocated to Floor token stakers
     * @return uint256 Floor allocation percentage, scaled by 1e18
     */
    function floorAllocation() external view returns (uint256);
}
