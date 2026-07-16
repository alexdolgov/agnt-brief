// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

library Errors {
    error StrategyNotSet();
    error NotBootstrapped();
    error AlreadyBootstrapped();
    error NotVault();
    error NotAContract();
    error NullAddress();
    error IndexOutOfBounds();
    error InvalidPrice();
    error FeedNotSet();
    error TokenAlreadyExists();
    error NotPauser();
    error InsufficientShares();
    error PositiveBalance();
    error InvalidStrategy();
    error InvalidNAVChangeThreshold();
    error TokenHasBalance();
}
