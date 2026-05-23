// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title IFlockPoolManager
 * @author Ryon
 */
interface IFlockPoolManager {
    /**
     * @notice Get the mini pool address of the user
     * @param user The user address
     */
    function getMiniPool(address user) external view returns (address);

    /**
     * @notice Get the sigma value of the user
     * @param user The user address
     */
    function getPoolSigma(address user) external view returns (uint256);

    /**
     * @notice Is the address a pool
     * @param _pool The pool address
     */
    function isPool(address _pool) external view returns (bool);

    /**
     * @notice Get the percentage base
     */
    function getPercentageBase() external view returns (uint256);

    /**
     * @notice Get the protocol fee percentage
     */
    function getProtocolFeePercentage() external view returns (uint256);

    /**
     * @notice Callback when adding delegator to the pool
     * @param _delegator The delegator address
     */
    function addDelegatorToPool(address _delegator) external;
}
