// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

interface IDataStore {
    function getUint(bytes32 key) external view returns (uint256);
}
