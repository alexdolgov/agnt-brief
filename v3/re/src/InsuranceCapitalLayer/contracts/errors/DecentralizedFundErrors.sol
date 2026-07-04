// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice Thrown when an address parameter is zero when it should not be
error InvalidAddress();

/// @notice Thrown when trying to set operator to current operator address
error OperatorAlreadySet();
