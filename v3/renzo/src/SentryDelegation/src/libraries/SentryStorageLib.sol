// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title SentryStorageLib
/// @notice ERC-7201 namespaced storage access for SentryDelegation
/// @dev Storage namespace is versioned per deployment address:
///      Slot = keccak256(abi.encode(uint256(keccak256(
///          abi.encodePacked("renzo.sentry.delegation", deploymentAddress)
///      )) - 1)) & ~bytes32(uint256(0xff))
///
///      This ensures each SentryDelegation deployment gets its own storage namespace.
///      When a user re-delegates to a new deployment, the new contract sees fresh
///      (uninitialized) storage and can call initialize() without conflict.

/// @custom:storage-location erc7201:renzo.sentry.delegation.{address}
struct SentryStorage {
    // Approval state
    bytes32 approvalRoot; // Merkle root of user's approved actions
    uint256 lastExecutionTimestamp; // Timestamp of last executed action (for rate-limiting)
    // Configuration
    bool initialized; // Prevents re-initialization
    // Signature nonce (for setApprovalRootWithSig replay protection)
    uint256 approvalRootNonce;
    // Reentrancy guard
    uint256 reentrancyStatus; // 1 = not entered, 2 = entered
}

library SentryStorageLib {
    /// @notice Compute the versioned storage slot for a given deployment address.
    /// @dev This is a pure computation used at construction time to cache the slot.
    function computeSlot(address deployment) internal pure returns (bytes32) {
        return keccak256(
            abi.encode(
                uint256(keccak256(abi.encodePacked("renzo.sentry.delegation", deployment))) - 1
            )
        ) & ~bytes32(uint256(0xff));
    }

    /// @notice Access the storage layout at a pre-computed slot.
    /// @param slot The cached storage slot (computed once in constructor via computeSlot)
    function layout(bytes32 slot) internal pure returns (SentryStorage storage s) {
        assembly {
            s.slot := slot
        }
    }
}
