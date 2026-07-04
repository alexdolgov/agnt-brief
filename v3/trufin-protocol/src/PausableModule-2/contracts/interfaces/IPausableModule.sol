// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

/// @title Pausable Module Interface
/// @notice Interface for a Safe module that allows pausing a protected contract.
interface IPausableModule {
    // --- Events ---

    /// @notice Emitted when the protected contract is paused.
    /// @param contractAddress The address of the contract being paused.
    event Paused(address indexed contractAddress);

    /// @notice Emitted when the module is disabled.
    event Disabled();

    // --- Errors ---

    /// @notice Thrown if a zero address is provided where it is not allowed.
    error ZeroAddress();

    /// @notice Thrown if the caller is not the keeper.
    error OnlyKeeper(address caller);

    /// @notice Thrown if the caller is not the owner or the keeper.
    error OnlyOwnerOrKeeper(address caller);

    /// @notice Thrown if pausing the protected contract fails.
    error PauseFailed();

    // --- Functions ---

    /// @notice Pause the protected contract.
    /// @dev Can be called by the owner or the keeper.
    function pause() external;

    /// @notice Disable the module.
    /// @dev Can be called by the keeper.
    function disable() external;
}
