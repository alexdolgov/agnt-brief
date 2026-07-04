// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

/**
 * @title AccountingPausable
 * @notice Interface for pausable accounting functionality
 * @dev Defines the interface for pausing and unpausing minting and burning operations independently from transfers
 */
interface IAccountingPausable {
    /**
     * @dev Pauses accounting operations (minting and burning)
     * @notice Can only be called by authorized addresses (defined in implementation)
     */
    function accountingPause() external;
    
    /**
     * @dev Unpauses accounting operations
     * @notice Can only be called by authorized addresses (defined in implementation)
     */
    function accountingUnpause() external;
    
    /**
     * @dev Returns whether accounting is currently paused
     * @return True if accounting is paused, false otherwise
     */
    function isAccountingPaused() external view returns (bool);
    
    /**
     * @dev Emitted when accounting is paused by `pauser`
     */
    event AccountingPaused(address indexed pauser);
    
    /**
     * @dev Emitted when accounting is unpaused by `unpauser`
     */
    event AccountingUnpaused(address indexed unpauser);
    
    /**
     * @dev Error thrown when attempting to perform accounting operations while paused
     */
    error AccountingIsPaused();
    
    /**
     * @dev Error thrown when attempting to unpause accounting when it's not paused
     */
    error AccountingIsNotPaused();
}
