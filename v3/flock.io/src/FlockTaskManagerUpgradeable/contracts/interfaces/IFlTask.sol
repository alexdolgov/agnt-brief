// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title IFlTask
 * @author Ryon
 */
interface IFlTask {
    /**
     * @notice Take in the daily reward
     * @param _account The account to take in
     */
    function fundRewardPool(uint256 _account) external;

    /**
     * @notice Check if the task is finished
     * @return True if the task is finished
     */
    function isFinished() external view returns (bool);

    /**
     * @notice Get the total stakes
     * @return The total stakes
     */
    function getTotalStakes() external view returns (uint256);
}
