// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {Action, ApprovalLeaf} from "../types/SentryTypes.sol";

/// @title ISentryDelegation
/// @notice Interface for the SentryDelegation contract
interface ISentryDelegation {
    // ── Events ──────────────────────────────────────────────────────────────
    event Initialized(bytes32 approvalRoot);
    event ApprovalRootUpdated(bytes32 indexed oldRoot, bytes32 indexed newRoot);
    event AllApprovalsRevoked();
    event ActionExecuted(
        address indexed target,
        bytes4 indexed selector,
        uint256 value,
        bytes32 indexed leafHash
    );
    event BatchExecuted(uint256 count);

    // ── Errors ──────────────────────────────────────────────────────────────
    error Unauthorized();
    error AlreadyInitialized();
    error NotInitialized();
    error InvalidMerkleProof();
    error EpochMismatch(uint256 expected, uint256 got);
    error ApprovalExpired(uint256 expiry, uint256 currentTimestamp);
    error CumulativeCapExceeded(uint256 cumulative, uint256 cap);
    error LeafAlreadyUsed(bytes32 leafHash);
    error MaxUsesExceeded(bytes32 leafHash);
    error TargetMismatch(address expected, address got);
    error SelectorMismatch(bytes4 expected, bytes4 got);
    error ValueNotAllowed();
    error ParamConstraintViolation(uint8 paramIndex, uint256 actual, uint256 bound);
    error AddressMismatch();
    error ActionFailed(address target, bytes returnData);
    error ArrayLengthMismatch();
    error SelfCallForbidden();
    error InvalidZeroValue();
    error InvalidRegistry();
    error ValueExceedsMax(uint256 maxValue, uint256 actual);
    error InvalidSignature();
    error SignatureExpired(uint256 deadline, uint256 currentTimestamp);

    // ── Owner Functions (onlySelf) ──────────────────────────────────────────
    function initialize(bytes32 root) external;
    /// @notice Update the merkle root of approved actions.
    /// @dev WARNING: DO NOT USE 0xDEAD in production - it's meant for testing or emergency use only.
    /// @param root The new merkle root (must be generated from real approval leaves)
    function setApprovalRoot(bytes32 root) external;

    /// @notice Update the approval root via keeper with a user signature (EIP-712).
    /// @param root The new merkle root
    /// @param deadline Timestamp after which the signature is no longer valid
    /// @param v Recovery byte of the signature
    /// @param r First 32 bytes of the signature
    /// @param s_ Second 32 bytes of the signature
    function setApprovalRootWithSig(bytes32 root, uint256 deadline, uint8 v, bytes32 r, bytes32 s_) external;

    function revokeAll() external;

    // ── Keeper Functions ────────────────────────────────────────────────────
    function execute(
        Action calldata action,
        ApprovalLeaf calldata approval,
        bytes32[] calldata merkleProof
    ) external;

    function executeBatch(
        Action[] calldata actions,
        ApprovalLeaf[] calldata approvals,
        bytes32[][] calldata merkleProofs
    ) external;

    // ── View Functions ──────────────────────────────────────────────────────
    function getApprovalRoot() external view returns (bytes32);
    function getApprovalRootNonce() external view returns (uint256);
    function isInitialized() external view returns (bool);
}
