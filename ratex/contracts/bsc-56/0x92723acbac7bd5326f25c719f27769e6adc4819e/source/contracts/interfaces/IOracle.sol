// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IOracle {
    function getValue() external view returns (uint96);
    function getLastValue() external view returns (uint96);
    function getPrecision() external view returns (uint64);
    function epochStartTs() external view returns (uint32);
    function lastEpochStartTs() external view returns (uint32);
} 
