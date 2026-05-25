// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @notice Minimal interface to get vault owner
interface IVaultOwner {
    function owner() external view returns (address);
}
