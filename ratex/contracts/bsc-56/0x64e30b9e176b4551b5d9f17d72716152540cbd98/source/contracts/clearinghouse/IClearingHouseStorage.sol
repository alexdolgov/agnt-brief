// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IClearingHouseStorage {

    function traders(bytes32 key) external view returns (
        uint256 balance,
        bool isIsolated
    );
} 