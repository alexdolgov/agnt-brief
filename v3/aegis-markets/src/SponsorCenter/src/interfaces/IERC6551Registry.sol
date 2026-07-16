// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/// @title ERC-6551 Registry Interface
/// @notice Minimal interface for deterministic token-bound account resolution and deployment.
interface IERC6551Registry {
    // -------- Events / Errors --------

    /// @notice Emitted when a token-bound account is created.
    /// @param account Deployed account address.
    /// @param implementation Account implementation contract.
    /// @param salt Salt used in deterministic deployment.
    /// @param chainId Chain id bound to the account.
    /// @param tokenContract ERC-721 contract bound to the account.
    /// @param tokenId ERC-721 token id bound to the account.
    event ERC6551AccountCreated(
        address account,
        address indexed implementation,
        bytes32 salt,
        uint256 chainId,
        address indexed tokenContract,
        uint256 indexed tokenId
    );

    /// @notice Thrown when account deployment fails.
    error AccountCreationFailed();

    // -------- Read: Address Derivation --------

    /// @notice Compute the deterministic account address for a token binding.
    /// @param implementation Account implementation contract.
    /// @param salt Salt used in deterministic deployment.
    /// @param chainId Chain id bound to the account.
    /// @param tokenContract ERC-721 contract bound to the account.
    /// @param tokenId ERC-721 token id bound to the account.
    /// @return account Predicted account address.
    function account(address implementation, bytes32 salt, uint256 chainId, address tokenContract, uint256 tokenId)
        external
        view
        returns (address);

    // -------- Write: Deployment --------

    /// @notice Create (or return existing) token-bound account for a token binding.
    /// @dev Implementations typically use CREATE2 and return an existing account if already deployed.
    /// @param implementation Account implementation contract.
    /// @param salt Salt used in deterministic deployment.
    /// @param chainId Chain id bound to the account.
    /// @param tokenContract ERC-721 contract bound to the account.
    /// @param tokenId ERC-721 token id bound to the account.
    /// @return account Created or existing account address.
    function createAccount(
        address implementation,
        bytes32 salt,
        uint256 chainId,
        address tokenContract,
        uint256 tokenId
    ) external returns (address);
}
