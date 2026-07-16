// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IRegistryManager
 * @notice Interface for RegistryManagerModule contract - manages registry address storage
 */
interface IRegistryManager {
    /**
     * @notice Custom errors
     */
    error EmptyAddress();

    /**
     * @notice Sets the registry address
     * @dev Only callable by authorized addresses (restricted modifier)
     * @param _registry The new registry contract address
     * @custom:security Requires restricted access control
     */
    function setRegistry(address _registry) external;

    /**
     * @notice Gets the current registry address
     * @return The address of the current registry contract
     */
    function getRegistry() external view returns (address);
}
