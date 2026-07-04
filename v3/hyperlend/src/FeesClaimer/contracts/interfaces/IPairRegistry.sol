// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IPairRegistry {
    function getAllPairAddresses() external view returns (address[] memory _deployedPairsArray);
}