// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 * @title ConfigOptionsV2.sol
 * @notice A central place for enumerating the configurable options of our FlockConfigV2.sol contract
 * @author Ryon
 */

library ConfigOptionsV2 {
    // NEVER EVER CHANGE THE ORDER OF THESE!
    // You can rename or append. But NEVER chan ge the order.
    enum Addresses {
        MainManager,
        PoolManager,
        TaskManager,
        Config,
        FlockToken,
        GmFlockToken,
        StakeInfo,
        Exchange
    }
}
