// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

/// @title Minimal interface for the `IncentiveToken` contract
/// @notice Used for minting incentive tokens during the merkle tree root setting process
interface IIncentiveToken {
    /// @notice Returns the address of the incentive token distributor contract
    function distributor() external view returns (address);

    /// @notice Creates and subsequently transfers a given amount of tokens to the incentive token distributor
    /// @dev Blocks overly frequent and invalid (zero or above upper bound amount) mints
    /// @param amount Amount of tokens to create and transfer
    function mintTokensForDistribution(uint256 amount) external;
}
