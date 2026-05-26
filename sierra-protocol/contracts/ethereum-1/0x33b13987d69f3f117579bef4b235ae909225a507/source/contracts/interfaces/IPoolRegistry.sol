// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

/**
 * @title The interface for interacting with Terms of Service Acceptance Registry.
 */
interface IPoolRegistry {
    function version() external pure returns (uint16);

    function addPool(address pool) external;

    function pools() external returns (address[] memory);

    function updatePoolData(address poolAddr) external;
}
