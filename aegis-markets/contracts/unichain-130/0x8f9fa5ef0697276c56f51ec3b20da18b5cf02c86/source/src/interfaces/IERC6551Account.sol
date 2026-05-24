// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";

/// @title ERC-6551 Account Interface
/// @notice Minimal interface for token-bound account identity and signer validation.
interface IERC6551Account is IERC165 {
    // -------- Read: Binding --------

    /// @notice Returns the ERC-721 token bound to this account.
    /// @return chainId Chain id the account was bound to.
    /// @return tokenContract ERC-721 contract bound to the account.
    /// @return tokenId ERC-721 token id bound to the account.
    function token() external view returns (uint256 chainId, address tokenContract, uint256 tokenId);

    // -------- Read: State --------

    /// @notice Returns a value that SHOULD change when the account state changes.
    /// @return value Monotonic or state-dependent account value.
    function state() external view returns (uint256);

    // -------- Read: Authorization --------

    /// @notice Validates a signer for this account.
    /// @dev Returns ERC-6551 magic value if signer is authorized.
    /// @param signer Candidate signer address.
    /// @param data Optional validation context.
    /// @return magic ERC-6551 magic value on success, otherwise `bytes4(0)`.
    function isValidSigner(address signer, bytes calldata data) external view returns (bytes4);
}
