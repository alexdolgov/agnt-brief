// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

/**
 * @title UTY token receiver interface
 * @dev Interface for the management contract to be notified when receiving UTY tokens
 */
interface IUTYReceiver {
    /**
     * @dev Whenever an {UTY} asset is transfered to the management contract, this function should be called.
     */
    function onUTYTokenReceived(address from, address receiver, uint256 value) external;
}
