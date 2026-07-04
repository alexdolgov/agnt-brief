// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

interface IGate {
    function check(address addr) external view;
    function silentCheck(address addr) external view returns (bool);
}
