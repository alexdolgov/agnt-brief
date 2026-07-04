// SPDX-License-Identifier: MIT

pragma solidity 0.8.11;

interface IRandomGenerator {
    /**
     * Requests randomness from a user-provided seed
     */
    function getRandomNumber() external returns (uint256);

    /**
     * Requests randomness from a user-provided seed
     */
    function getPrivateRandomNumber() external returns (uint256);
}
