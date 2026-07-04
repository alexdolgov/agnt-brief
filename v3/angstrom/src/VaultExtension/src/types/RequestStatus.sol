// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

/// @notice Lifecycle status of a deposit or redemption request.
/// @dev `UNINITIALIZED` is the zero-value default, preventing uninitialized storage slots
///      from being treated as valid pending requests.
enum RequestStatus {
    UNINITIALIZED,
    PENDING,
    FULFILLED,
    CANCELED
}
