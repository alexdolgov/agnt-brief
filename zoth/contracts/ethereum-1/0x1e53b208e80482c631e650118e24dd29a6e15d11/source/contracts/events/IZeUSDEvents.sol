// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @title ZeUSD Events Interface
 * @author ZeUSD Protocol Team
 * @notice Defines events specific to the ZeUSD token contract
 * @dev Interface containing ZeUSD-specific event definitions
 */
interface IZeUSDEvents {
    /**
     * @notice Emitted when router address is updated
     * @param newRouter Address of the new router
     * @dev Critical configuration change event
     */
    event RouterUpdated(address indexed newRouter);

    /**
     * @notice Emitted when an account's blacklist status changes
     * @param account Address that was affected
     * @param status New blacklist status (true = blacklisted)
     * @dev Compliance tracking event
     */
    event Blacklisted(address indexed account, bool status);

    /**
     * @notice Emitted when V2 initialization is completed
     * @param accessController Address of the access controller contract
     * @dev Upgrade tracking event
     */
    event V2Initialized(address indexed accessController);
}
