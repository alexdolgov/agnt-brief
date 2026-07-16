// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

/// @author Infrared Finance

library Errors {
    // General errors.
    error ZeroAddress();
    error ZeroAmount();

    // Access errors.
    error Unauthorized(address sender);

    // Reward errors.
    error MaxNumberOfRewards();
}