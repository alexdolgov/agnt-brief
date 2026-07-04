// SPDX-License-Identifier: GPL-3.0-only
pragma solidity ^0.8.21;

import {IPoints2ManagerErrors} from "./IPoints2ManagerErrors.sol";

/**
 * @title IPoints2Manager
 * @notice Interface for managing the open Points Program
 */
interface IPoints2Manager is IPoints2ManagerErrors {
    /**
     * @notice Set the paused state of the contract. Can only be called by the owner
     * @param paused_ The state to set the contract to
     */
    function setPaused(bool paused_) external;

    /**
     * @notice Sets the authorized burner address. Can only be called by the owner
     * @param authorizedBurner_ The address to set the authorized burner to
     */
    function setAuthorizedBurner(address authorizedBurner_) external;

    /**
     * @notice Sets the whitelist status of an address. Can only be called by the owner
     * @param account The address to set the whitelist status for
     * @param status The status to set the whitelist to
     */
    function setAddressWhitelist(address account, bool status) external;

    /**
     * @notice Validates that all the supplied tokens meet the qualifications and sets their rate, can only be called by the owner
     * @param tokens List of tokens to set the rates for
     */
    function setRates(address[] calldata tokens) external;

    /**
     * @notice Iterates through a sublist of the supported tokens in the points-program and updates their rates. Can be called by anyone
     * @param startIndex start index of the supported tokens list
     * @param endIndex end index of the supported tokens list
     */
    function updateRates(uint16 startIndex, uint16 endIndex) external;

    /**
     * @notice points-ownership to a new owner
     * @param newOwner The address of the new owner
     */
    function transferPointsOwnership(address newOwner) external;
}
