// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title IFlockStakeInfo
 * @author Ryon
 */
interface IFlockStakeInfo {
    /**
     * @notice Add stakes to the task
     * @param taskId The task ID
     * @param stakes The stakes to add
     * @param role The role
     * @param user The user address
     */
    function addStakes(uint256 taskId, uint256 stakes, uint256 role, address user) external;

    /**
     * @notice Remove stakes from the task
     * @param taskId The task ID
     * @param stakes The stakes to remove
     * @param user The user address
     */
    function removeStakes(uint256 taskId, uint256 stakes, uint256 role, address user) external;

    /**
* @notice Clear stakes from the task
     * @param taskId The task ID
     */
    function clearStakes(uint256 taskId) external;

    /**
     * @notice Retally the delegation
     * @param _user The user address
     */
    function retallyDelegation(address _user) external;

    /**
    * @notice Get the delegation token amount for user for task
     * @param _user The user address
     * @param _taskId The task ID
        * @param _role The role
     * @return The delegation token amount
     */
    function getDelegationTokenAmountForUser(address _user, uint256 _taskId,uint256 _role) external view returns (uint256);

    /**
     * @notice Get the total active task stakes
     * @param _role The role
     * @return The total active task stakes
     */
    function getTotalActiveTaskStakes(uint256 _role) external view returns (uint256) ;

    /**
     * @notice Get the total stakes for the task
     * @param taskId The task ID
     * @param _role The role
     * @return The total stakes for the task
     */
    function getTaskStakes(uint256 taskId,uint256 _role) external view returns (uint256);

    /**
     * @notice Get the total active task weights
     * @param _role The role
     * @return The total active task weights
     */
    function getTotalActiveTaskWeights(uint256 _role) external view returns (uint256);

    /**
     * @notice Get the total weights for the task
     * @param taskId The task ID
      * @param _role The role
     * @return The total weights for the task
     */
    function getTaskWeights(uint256 taskId, uint256 _role) external view returns (uint256);

    /**
    * @notice Get the total node stakes for the task
     * @param taskId The task ID
     * @return The total node stakes for the task
     */
    function getTotalNodeStakesPerTask(uint256 taskId) external view returns (uint256);

    /**
 * @notice Get the total validator stakes for the task
     * @param taskId The task ID
     * @return The total validator stakes for the task
     */
    function getTotalValidatorStakesPerTask(uint256 taskId) external view returns (uint256);
}
