// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

interface IOwnable {
    function transferOwnership(address newOwner) external;
    function owner() external view returns (address);
}
