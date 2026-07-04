// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title IFlockMainManager
 * @author Ryon
 */
interface IFlockMainManager {
    /**
     * @notice Callback function after delegation update
     * @param user The user address
     */
    function afterDelegationUpdate(address user) external;

    /**
     * @notice Get node stakes
     * @param _taskId The task ID
     * @param _user The user address
     * @return The node stakes
     */
    function getNodeStakes(uint256 _taskId, address _user) external view returns (uint256);

    /**
     * @notice Get validator stakes
     * @param _taskId The task ID
     * @param _user The user address
     * @return The validator stakes
     */
    function getValidatorStakes(uint256 _taskId, address _user) external view returns (uint256);

    /**
     * @notice Get Available Reward Tasks For User
     * @param _user The user address
     */
    function getAvailableRewardTasksForUser(address _user) external view returns (uint256[] memory);

    /**
     * @notice Check if the task is completed
     * @param taskId The task ID
     * @return True if the task is completed
     */
    function isTaskCompleted(uint256 taskId) external view returns (bool);

    /**
    * @notice Set Total Stakes
    * @param _user The user address
    * @param _totalStakes The total stakes
    */
    function setTotalStakes(address _user, uint256 _totalStakes) external;

    /**
    * @notice Get the total stakes for the user
     * @param _user The user address
     * @return The total stakes for the user
     */
    function getTotalStakes(address _user) external view returns (uint256);
}
