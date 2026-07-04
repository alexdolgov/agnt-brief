// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

interface IIDIDRegistry {
    function isDIDRegistered(bytes calldata id) external view returns (bool);
    function getController(bytes calldata id) external view returns (address);
}