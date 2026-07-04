// SPDX-License-Identifier: MIT
pragma solidity 0.8.34;

/// @title  ExitWindowErrors
/// @author Shift Protocol
/// @notice Custom errors for the ExitWindow add-on.

/// @notice Thrown when a zero address is passed where a valid address is required.
error ExitWindow__ZeroAddress();

/// @notice Thrown when a zero amount is passed where a positive value is required,
///         or when an exit input rounds down to zero assets out.
error ExitWindow__ZeroAmount();

/// @notice Thrown when the immutable rate is constructed as zero.
error ExitWindow__ZeroRate();

/// @notice Thrown when the contract's asset balance cannot cover the requested transfer.
error ExitWindow__InsufficientLiquidity();

/// @notice Thrown when the share and asset tokens are the same address (misconfiguration).
error ExitWindow__SameToken();

/// @notice Thrown when the share token does not report 18 decimals — the rate convention
///         assumes 18-decimal shares.
error ExitWindow__InvalidShareDecimals();
