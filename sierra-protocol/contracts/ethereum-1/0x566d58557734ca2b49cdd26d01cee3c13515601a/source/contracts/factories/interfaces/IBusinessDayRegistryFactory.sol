// SPDX-License-Identifier: MIT
pragma solidity ^0.8.16;

/**
 * @title An interface for a factory that creates BusinessDayRegistry contracts.
 */
interface IBusinessDayRegistryFactory {
    /**
     * @dev Creates a new BusinessDayRegistry
     */
    function create(address pool) external returns (address);
}
