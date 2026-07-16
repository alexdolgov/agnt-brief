// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title IDataStore
/// @notice Minimal interface for GMX V2 DataStore — only the functions we call.
interface IDataStore {
    function getBytes32(bytes32 key) external view returns (bytes32);

    function getUint(bytes32 key) external view returns (uint256);

    function getAddress(bytes32 key) external view returns (address);

    function getInt(bytes32 key) external view returns (int256);

    function containsBytes32(bytes32 setKey, bytes32 value) external view returns (bool);
}
