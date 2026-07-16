// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

/// @dev Error when the input is zero
error InvalidZeroInput();

/// @dev Error when the caller is not the pauser
error NotPauser();

/// @dev Error when the upgrade call fails
error CallFailed(address target, uint256 value, bytes data);

/// @dev Error when the configuration payload is invalid
error InvalidConfigurationPayload();

/// @dev Error when the destination domain is same as the local domain
error InvalidDestinationDomain();

error UnAuthorizedCall();
