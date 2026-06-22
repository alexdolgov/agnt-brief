// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IAccessRegistry {
    function isAccessible(address user) external view returns (bool) ;
}