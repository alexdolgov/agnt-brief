// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

/// @title IMerkleRootProvider
/// @notice Interface for contracts that provide merkle roots
interface IMerkleRootProvider {
    /// @notice Get current merkle root
    /// @return Current merkle root
    function merkleRoot() external view returns (bytes32);
}
