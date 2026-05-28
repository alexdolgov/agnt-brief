// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/*
 * Lighter version of the Balancer IBalancerComposableStablePool contract.
 * A more extensive version can be found in the core project:
 * v2-core/src/interfaces/external/balancer/IBalancerComposableStablePool.sol
 */
interface IBalancerComposableStablePool {
    function getBptIndex() external view returns (uint256);

    function getPoolId() external view returns (bytes32);
}
