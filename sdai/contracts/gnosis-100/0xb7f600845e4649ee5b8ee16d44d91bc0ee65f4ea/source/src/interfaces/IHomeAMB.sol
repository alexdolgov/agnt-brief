// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

interface IHomeAMB {
    function requireToGetInformation(bytes32 _requestSelector, bytes calldata _data) external returns (bytes32);
}