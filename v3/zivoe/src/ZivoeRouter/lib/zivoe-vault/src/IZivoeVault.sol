// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

/// @title IZivoeVault Interface
/// @notice Interface for the ZivoeVault contract
interface IZivoeVault {
    function deposit(uint256 assets, address receiver) external returns (uint256);
}
