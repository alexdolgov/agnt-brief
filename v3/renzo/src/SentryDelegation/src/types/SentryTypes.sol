// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title SentryTypes
/// @notice Shared type definitions for the Renzo Sentry system

/// @notice Represents a single action to execute on a target protocol
/// @dev `auxData` is sideband data passed only to the decoder/sanitizer for
///      validation. It is NOT forwarded to `target.call` and is NOT included
///      in the leaf hash. Used by integrations where the target's calldata
///      doesn't carry enough information for the decoder to fully validate
///      (e.g., CoW PreSign where the orderUid is opaque and the order body
///      must be reconstructed inside the decoder). Pass `""` when unused.
struct Action {
    address target; // Protocol contract address (e.g., Aave Pool)
    bytes calldata_; // Encoded function call
    uint256 value; // Native ETH to send (usually 0)
    bytes auxData; // Optional sideband bytes for decoder validation
}

/// @notice Constraint operator for parameter validation
enum Operator {
    NONE, // No constraint (wildcard) — any value accepted
    EQ, // Must equal value exactly
    LTE, // Must be <= value
    GTE, // Must be >= value
    RANGE // Must be >= minValue AND <= value
}

/// @notice Defines a constraint on a specific calldata parameter
struct AmountConstraint {
    uint8 paramIndex; // Calldata parameter index (0-based, after selector)
    Operator op;
    uint256 value; // Bound (or max for RANGE)
    uint256 minValue; // Min (only for RANGE)
}

/// @notice A leaf in the approval merkle tree, representing one approved action
/// @custom:Warning If skipTargetCheck is true, the target field is ignored
///This is used for approving ERC20 transfers where the "target" is the token contract
struct ApprovalLeaf {
    address decoderAndSanitizer;
    address target;
    bytes4 selector;
    bool skipTargetCheck; // If true, target is an ERC-20 token
    bool valueAllowed;
    bytes packedAddressConstraints;
    AmountConstraint[] amountConstraints;
    uint256 maxValue; // Only relevant if valueAllowed is true
}
