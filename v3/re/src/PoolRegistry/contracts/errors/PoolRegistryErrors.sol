// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/**
 * @dev Error thrown when an invalid pool address is provided
 * @param pool The invalid pool address
 */
error InvalidPoolAddress(address pool);

/**
 * @dev Error thrown when attempting to register a pool that is already registered
 * @param pool The address of the pool that is already registered
 */
error PoolAlreadyRegistered(address pool);

/**
 * @dev Error thrown when attempting to unregister a pool that is not registered
 * @param pool The address of the unregistered pool
 */
error PoolNotRegistered(address pool);

/**
 * @dev Error thrown when an unauthorized address attempts to unregister a pool
 * @param sender The address attempting the operation
 */
error Unauthorized(address sender);

/**
 * @dev Error thrown when attempting to grant cell role to a contract with invalid manager
 * @param cell The address of the invalid cell contract
 */
error InvalidCellManager(address cell);
