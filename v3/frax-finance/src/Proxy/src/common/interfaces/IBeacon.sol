// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

/**
 * @dev Interface for Beacon contract
 */
interface IBeacon {
    /**
     * @dev Returns the implementation address of the Beacon contract
     * @return The implementation address
     */
    function implementation() external view returns (address);
}
