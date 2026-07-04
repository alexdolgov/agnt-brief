// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Errors
 * @notice Centralized custom error definitions for the Kinetiq LST protocol
 * @dev Using custom errors for gas efficiency and better error messages
 */

/* ========== GENERAL ERRORS ========== */

/// @notice Contract is currently paused
error ContractPaused();

/// @notice Invalid address provided (zero address or unexpected value)
error InvalidAddress();

/// @notice Invalid amount provided (zero or out of bounds)
error InvalidAmount();

/// @notice Array length mismatch or invalid length
error InvalidLengthCheck();

/* ========== STAKING ERRORS ========== */

/// @notice Staking operations are paused
error StakingIsPaused();

/// @notice Amount is below the minimum required
error BelowMinimum();

/// @notice Amount exceeds the maximum allowed
error AboveMaximum();

/// @notice Invalid minimum stake amount configuration
error InvalidMinStakeAmount();

/// @notice Invalid maximum stake amount configuration
error InvalidMaxStakeAmount();

/// @notice Maximum stake amount is too low
error MaxStakeTooLow();

/// @notice Maximum stake amount is too high
error MaxStakeTooHigh();

/// @notice Invalid staking limit configuration
error InvalidStakingLimit();

/// @notice Amount must be divisible by 1e10 for proper conversion
error MustBeDivisibleBy1e10();

/* ========== WITHDRAWAL ERRORS ========== */

/// @notice Withdrawal operations are paused
error WithdrawalIsPaused();

/// @notice Invalid withdrawal request or parameters
error InvalidWithdrawal();

/// @notice No cancelled withdrawals found to process
error NoCancelledWithdrawals();

/* ========== VALIDATOR ERRORS ========== */

/// @notice Validator is not in active state
error ValidatorNotActive();

/* ========== BALANCE & TRANSFER ERRORS ========== */

/// @notice Insufficient native token (ETH) balance
error InsufficientNativeBalance();

/// @notice Insufficient token balance
error InsufficientTokenBalance();

/// @notice Token transfer failed
error TransferFailed();

/* ========== ACCESS CONTROL ERRORS ========== */

/// @notice Address is not whitelisted
error NotWhitelisted();

/// @notice Only StakingManager can call this function
error OnlyStakingManager();

/* ========== INSTANT UNSTAKE ERRORS ========== */

/// @notice Instant unstake feature is not enabled
error InstantUnstakeNotEnabled();

/// @notice Instant unstake pool is not configured
error InstantUnstakePoolNotSet();

/* ========== REWARD SHARE & REBALANCE ERRORS ========== */

/// @notice Operation has already been completed
error AlreadyCompleted();

/// @notice Operation has not yet matured
error NotMatured();

/// @notice Invalid percentage value
error InvalidPercentage();

/* ========== FEE ERRORS ========== */

/// @notice Fee rate exceeds maximum allowed
error FeeRateTooHigh();

/* ========== L1 OPERATIONS ERRORS ========== */

/// @notice No pending operations to process
error NoPendingOperations();

/// @notice Amount exceeds uint64 maximum (for L1 compatibility)
error AmountExceedsUint64();

/// @notice Queue would overflow maximum pending operations limit
error QueueOverflow();

/// @notice Unrecognized operation type provided
error UnrecognizedOperationType();
