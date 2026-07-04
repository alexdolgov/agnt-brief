// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.25;

/// @title IZivoeTranches Interface
/// @notice Interface for the ZivoeTranches contract, responsible for minting zSTT by depositing stablecoins.
interface IZivoeTranches {
    function depositSenior(uint256 amount, address asset) external;
}
