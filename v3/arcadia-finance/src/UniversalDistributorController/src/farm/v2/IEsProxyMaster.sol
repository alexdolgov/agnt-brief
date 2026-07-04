// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

/**
 * @title IEsProxyMaster
 * @notice Interface for interacting with the EsProxyMaster contract
 */
interface IEsProxyMaster {
    /**
     * @notice Add a new proxy pool
     * @param allocPoint Allocation points for the pool
     * @param esToken Address of the esToken contract
     * @param harvestInterval Time interval between harvests
     * @param rewarders Array of rewarder contract addresses
     */
    function add(
        uint256 allocPoint,
        address esToken,
        uint256 harvestInterval,
        address[] calldata rewarders
    ) external;

    /**
     * @notice Update an existing proxy pool
     * @param pid Pool ID
     * @param allocPoint New allocation points
     * @param harvestInterval New harvest interval
     * @param rewarders New array of rewarder addresses
     */
    function set(
        uint256 pid,
        uint256 allocPoint,
        uint256 harvestInterval,
        address[] calldata rewarders
    ) external;

    /**
     * @notice Update allocation points for a pool
     * @param pid Pool ID
     * @param allocPoint New allocation points
     */
    function updateAllocPoint(uint256 pid, uint256 allocPoint) external;

    /**
     * @notice Recover reward tokens from the contract
     * @param amount Amount of tokens to recover
     */
    function recoverRewardToken(uint256 amount) external;

    function transferOwnership(address) external;

}