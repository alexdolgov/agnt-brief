// SPDX-License-Identifier: Unlicense
pragma solidity =0.8.27;

/// @title Errors: A library that stores common errors.
library Errors {
    error InvalidAddress();
    error InvalidAmount();
    error InvalidIndex();
    error InvalidPayment();
    error Unauthorized();
    error PrematureExecution();
    error InsufficientFunds();
    error Unavailable();
}
