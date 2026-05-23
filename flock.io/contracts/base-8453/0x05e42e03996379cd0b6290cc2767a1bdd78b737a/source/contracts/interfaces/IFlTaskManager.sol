// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title IFlTaskManager
 * @author Ryon
 */
interface IFlTaskManager {
    /**
     * @notice Get the tasks
     */
    function getTasks() external view returns (address[] memory);
}
