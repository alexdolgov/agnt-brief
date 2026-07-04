// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

/**
 * @title VerifyLib
 * @author Veil Cash
 * @notice Library for the Veil verification contracts
 */
library VerifyLib {
    // @dev Constants
    bytes32 public constant VERIFIED_SCHEMA_UID = 0xf8b05c79f090979bf4a80270aba232dff11a10d9ca55c4f88de95317970f0de9;

    /// @notice A struct representing a single attestation for Coinbase EAS
    struct Attestation {
        bytes32 uid; // A unique identifier of the attestation.
        bytes32 schema; // The unique identifier of the schema.
        uint64 time; // The time when the attestation was created (Unix timestamp).
        uint64 expirationTime; // The time when the attestation expires (Unix timestamp).
        uint64 revocationTime; // The time when the attestation was revoked (Unix timestamp).
        bytes32 refUID; // The UID of the related attestation.
        address recipient; // The recipient of the attestation.
        address attester; // The attester/sender of the attestation.
        bool revocable; // Whether the attestation is revocable.
        bytes data; // Custom attestation data.
    }

    /// @notice A struct representing a single depositor that is preapproved
    struct DepositorInfo {
        bool isAllowed;
        string data;
    }

    /// @notice A struct representing a BABT approval
    struct BABTInfo {
        bool isAllowed;
        uint256 expirationTime;
        string data;
    }

    /// @notice A struct representing a EtoOS approval
    struct EtoOSInfo {
        bool isAllowed;
        uint256 expirationTime;
        string ethOSId;
    }
}
