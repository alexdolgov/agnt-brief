// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title IFlockPool
 * @author Ryon
 */
interface IFlockPool {
    /**
     * @notice Get the total delegation amount
     */
    function getTotalDelegationAmount() external view returns (uint256);

    /**
     * @notice Fund the pool
     * @param _reward The reward amount
     */
    function fundPool(uint256 _reward) external;
}
