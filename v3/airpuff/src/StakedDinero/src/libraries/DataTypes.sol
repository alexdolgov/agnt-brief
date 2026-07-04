// SPDX-License-Identifier: MIT

pragma solidity 0.8.25;

/**
 * @title  DataTypes
 * @notice Library containing various commonly used data structures.
 * @author dinero.protocol
 */
library DataTypes {
    // Used for storing individual pending redemption record.
    struct PendingRedemption {
        /**
         * @notice Reference to the active timestamp of the redemption.
         */
        uint256 activeTime;
        /**
         * @notice Reference to the assets amount.
         */
        uint256 amount;
    }

    // Used for storing pending redemption queue
    struct PendingRedemptionQueue {
        /**
         * @notice Reference to the number of redeemed records.
         */
        uint256 redeemedCount;
        /**
         * @notice Reference to the list of pending redemption records.
         */
        PendingRedemption[] pendingRedemptions;
    }
}
