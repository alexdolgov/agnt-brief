// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IAtomicBatcher
/// @notice Interface for EIP-7702 atomic batching contract
/// @dev Enables EOAs to execute multiple calls atomically via EIP-7702 delegation
interface IAtomicBatcher {
    /// @notice Call structure for batch execution
    struct Call {
        address target;
        uint256 value;
        bytes data;
    }

    /// @notice Execute a sequence of atomic actions
    /// @dev Reverts entire transaction if any single call fails (atomicity)
    /// @param calls Array of calls to execute
    function execute(Call[] calldata calls) external payable;

    /// @notice Execute a sequence of atomic actions with signature-based authorization
    /// @dev Enables relayer/sponsor to execute on behalf of EOA via EIP-712 signature
    /// @param calls Array of calls to execute
    /// @param signature EIP-712 signature authorizing the execution
    function execute(Call[] calldata calls, bytes calldata signature) external payable;

    /// @notice EIP-1271 signature validation
    /// @dev Returns magic value if signature is valid for the EOA
    /// @param hash The message hash
    /// @param signature The signature to validate
    /// @return The magic value 0x1626ba7e if valid, 0xffffffff otherwise
    function isValidSignature(bytes32 hash, bytes calldata signature) external view returns (bytes4);
}

