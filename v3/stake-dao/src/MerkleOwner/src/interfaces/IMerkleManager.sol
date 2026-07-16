// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity ^0.8.20;

interface IMerkleManager {
    /// @dev Freezes multiple tokens by setting their Merkle roots to zero.
    /// Can only be called by an authorized address.
    /// @param tokens Array of token addresses to freeze.
    function multiFreeze(address[] calldata tokens) external;

    /// @dev Sets new Merkle roots for multiple tokens.
    /// Can only be called by an authorized address.
    /// Each token must be frozen (Merkle root set to zero) before setting a new Merkle root.
    /// @param tokens Array of token addresses for which to set new Merkle roots.
    /// @param _merkleRoots Array of new Merkle roots corresponding to the tokens array.
    function multiSet(address[] calldata tokens, bytes32[] calldata _merkleRoots) external;

    /// @dev Similar as above
    function multiUpdateMerkleRoot(address[] calldata tokens, bytes32[] calldata _merkleRoots) external;
}
