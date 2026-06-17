// SPDX-License-Identifier: MIT

pragma solidity >=0.8.24 <0.9.0;

/**
 * @title IFloor
 * @dev Interface for protocol floor price management and capital operations
 * @notice Defines functionality for:
 * 1. Token deposit management
 * 2. Refund processing
 * 3. Capital tracking
 */
interface IFloor {
    /*//////////////////////////////////////////////////////////////
                        DEPOSIT OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Processes token deposits into the floor contract
     * @param msgSender Address initiating the deposit
     * @param amount Quantity of tokens to deposit
     * @dev Handles:
     * · Token transfer validation
     * · Capital tracking updates
     * · Event emission
     */
    function deposit(address msgSender, uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                        REFUND OPERATIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Processes token refunds from the floor contract
     * @param msgSender Address receiving the refund
     * @param amount Quantity of tokens to refund
     * @dev Ensures:
     * · Sufficient contract balance
     * · Authorized withdrawal
     * · Capital accounting
     */
    function refund(address msgSender, uint256 amount) external;

    /*//////////////////////////////////////////////////////////////
                            VIEW FUNCTIONS
    //////////////////////////////////////////////////////////////*/
    /**
     * @notice Returns current total capital held in the floor contract
     * @return uint256 Current capital amount in base units
     * @dev Used for:
     * · Floor price calculations
     * · Protocol health metrics
     * · Capital adequacy checks
     */
    function capital() external view returns (uint256);
}
