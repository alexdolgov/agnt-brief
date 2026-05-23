// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

/// @title IAuth
/// @notice Interface for the Auth vault submodule.
interface IAuth {
    /// @notice Mapping: address => whether the account has the Allocator role or not.
    function isAllocator(
        address account
    ) external view returns (bool);
    /// @notice Mapping: address => whether the account has the Pauser role or not.
    function isPauser(
        address account
    ) external view returns (bool);
    /// @notice Mapping: address => whether the account has the TimelockCanceler role or not.
    function isTimelockCanceler(
        address account
    ) external view returns (bool);
}
