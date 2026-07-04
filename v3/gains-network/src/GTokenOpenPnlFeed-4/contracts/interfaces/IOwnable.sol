// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @dev Interface for ownable contracts
 */
interface IOwnable {
    function owner() external view returns (address);
}
