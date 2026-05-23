// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title ConfigOptions
 * @notice A central place for enumerating the configurable options of our FlockConfig contract
 * @author Ryon
 */

library ConfigOptions {
    // NEVER EVER CHANGE THE ORDER OF THESE!
    // You can rename or append. But NEVER chan ge the order.
    enum Addresses {
        MainManager,
        PoolManager,
        TaskManager,
        Config,
        FlockToken,
        StakeInfo
    }
}
