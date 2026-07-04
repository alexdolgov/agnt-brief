// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
 * Lighter version of the Balancer IBalancerPool contract.
 * A more extensive version can be found in the core project:
 * v2-core/src/interfaces/external/balancer/IBalancerPool.sol
 */
interface IBalancerPool {
    function totalSupply() external view returns (uint256);
    function getPoolId() external view returns (bytes32);
    function getVault() external view returns (address);

    function gyroConfig() external view returns (address);
}
