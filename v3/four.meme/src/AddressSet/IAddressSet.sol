// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

interface IAddressSet {
    function contains(address e) external view returns (bool);
    function size() external view returns (uint256);
    function get(uint256 index) external view returns (address);
    function add(address e) external returns (bool);
    function remove(address e) external returns (bool);
}