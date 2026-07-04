// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @title ITimelock
 * @author github.com/SifexPro
 * @notice Interface for timelock contracts
 */
interface ITimelock {
    /**
     * @notice Check if the timelock is active and return the delay
     * @return activated Whether the timelock is activated
     * @return delay The minimum delay in seconds
     */
    function checkTimelock() external view returns (bool activated, uint256 delay);
    
    /**
     * @notice Schedule a transaction
     * @param target Address of the contract to call
     * @param value Amount of native tokens to send with the call
     * @param data Encoded function call data (function signature + parameters)
     * @param predecessor Transaction hash that must be executed before this one (0 for no dependency)
     * @param salt Random value to ensure uniqueness of the transaction hash
     */
    function schedule(
        address target,
        uint256 value,
        bytes calldata data,
        bytes32 predecessor,
        bytes32 salt
    ) external;
    
    /**
     * @notice Execute a scheduled transaction
     * @param target Address of the contract to call
     * @param value Amount of native tokens to send
     * @param data Encoded function call data
     * @param predecessor Transaction hash dependency
     * @param salt Random value used when scheduling
     */
    function execute(
        address target,
        uint256 value,
        bytes calldata data,
        bytes32 predecessor,
        bytes32 salt
    ) external payable;
} 