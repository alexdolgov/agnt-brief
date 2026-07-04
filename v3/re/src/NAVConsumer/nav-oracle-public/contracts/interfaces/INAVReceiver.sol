// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title NAV Receiver Interface
 * @notice Interface for contracts that receive and process NAV updates from NAVConsumer
 * @dev Any contract that needs to receive and act on NAV updates should implement this interface
 */
interface INAVReceiver {
    /**
     * @notice Updates the share price based on the provided NAV value
     * @param nav The NAV value with 18 decimal places
     * @dev This function is called by the NAVConsumer contract when the NAV is updated
     *      Implementations should handle potential failure gracefully as the NAVConsumer
     *      will not revert if this function fails
     */
    function setSharePrice(uint256 nav) external;
}
