// SPDX-License-Identifier: ISC
pragma solidity 0.8.20;

/// @notice Thrown when an address parameter is zero when it should not be
error ZeroAddressError();

/// @notice Thrown when attempting to add a token that is already registered
error TokenAlreadyAcceptedError();

/// @notice Thrown when a percentage fee exceeds the maximum allowed (25%)
error PercentageFeeTooHighError();

/// @notice Thrown when slippage tolerance exceeds the maximum allowed (35%)
error SlippageTooHighError();

/// @notice Thrown when minimum deposit is set to zero
error MinDepositZeroError();

/// @notice Thrown when attempting to operate on a token that is not registered
error TokenNotAcceptedError();

/// @notice Thrown when attempting to pause an already paused token
error TokenAlreadyPausedError();

/// @notice Thrown when attempting to unpause a token that is not paused
error TokenNotPausedError();

/// @notice Thrown when amount parameter is zero when it should not be
error ZeroAmountError();

/// @notice Thrown when attempting to set wrapped native token address to zero
error WrappedNativeZeroError();

/// @notice Thrown when attempting to set collateral eligibility to its current value
error EligibilityUnchangedError();
