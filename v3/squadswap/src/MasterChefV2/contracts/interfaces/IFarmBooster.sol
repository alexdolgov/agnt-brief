// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title IFarmBooster
 * @dev Interface for the FarmBooster contract that handles pool activation and boost multipliers
 */
interface IFarmBooster {
    /**
     * @dev Emitted when a pool is activated for a user
     */
    event ActivatePool(address indexed user, uint256 indexed pid);

    /*
     * @dev Automatically activates a pool for a user if conditions are met
     * @param _pid The pool ID to activate
     * @param _user The user address to activate the pool for
     */
    function autoActivatePool(address _user, uint256 _pid) external;

    function updateBoostMultiplier(address _user, uint256 _pid) external;

    /**
     * @dev Gets the multiplier for a specific user and pool
     * @param _user The user address
     * @param _pid The pool ID
     * @return The boost multiplier value
     */
    function getMultiplier(
        address _user,
        uint256 _pid
    ) external view returns (uint256);
}
