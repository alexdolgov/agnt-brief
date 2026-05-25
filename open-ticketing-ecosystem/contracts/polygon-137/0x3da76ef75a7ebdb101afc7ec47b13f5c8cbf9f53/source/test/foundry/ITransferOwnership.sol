// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

interface ITransferOwnership {
    function transferOwnership(address newOwner) external;

    function owner() external view returns (address);

    function implementation() external view returns (address);
}
