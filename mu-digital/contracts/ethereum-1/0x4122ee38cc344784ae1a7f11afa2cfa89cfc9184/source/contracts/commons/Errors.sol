// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/**
 * @title Errors
 * @author Mu Digital
 * @notice Library containing all custom error definitions for the Mu Protocol
 */
library Errors {
    error ZeroAddress();
    error InvalidArray();
    error NotAdmin();
    error NotPauser();
    error NotAuthorized();
    error InvalidAmount();
    error NotInWhitelist();
    error DepositCapExceeded();
    error InsufficientBalance();
    error NoChange();
}
