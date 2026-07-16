// SPDX-License-Identifier: MIT

pragma solidity ^0.6.12;

interface IDSValue {
    function peek() external view returns (bytes32, bool);
    function read() external view returns (bytes32);
}
