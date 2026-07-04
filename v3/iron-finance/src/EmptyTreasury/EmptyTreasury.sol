// Sources flattened with hardhat v2.2.1 https://hardhat.org

// File contracts/EmptyTreasury.sol

// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

contract EmptyTreasury {
    function hasPool(address) external pure returns (bool) {
        return false; // always return false
    }
}