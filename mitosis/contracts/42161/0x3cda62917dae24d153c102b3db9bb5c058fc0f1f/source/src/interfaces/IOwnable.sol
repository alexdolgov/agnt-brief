// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
pragma abicoder v2;

interface IOwnable {
    function transferOwnership(address newOwner) external;
}
