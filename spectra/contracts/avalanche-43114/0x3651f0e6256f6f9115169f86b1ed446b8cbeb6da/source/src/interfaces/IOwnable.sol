// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;

interface IOwnable {
    function transferOwnership(address) external;

    function acceptOwnership() external;

    function owner() external view returns (address);
}
