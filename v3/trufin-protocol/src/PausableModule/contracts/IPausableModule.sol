// SPDX-License-Identifier: MIT

pragma solidity =0.8.19;

/// @title Pausable Module Interface
/// @notice Interface for a Safe module that allows pausing a protected contract.
interface IPausableModule {
    // --- Events ---

    /// @notice Emitted when the protected contract is paused.
    /// @param _contractAddress The address of the contract being paused.
    event ContractPaused(address indexed _contractAddress);

    /// @notice Emitted when the module is disabled.
    event Disabled();

    // --- Functions ---

    /// @notice Pause the protected contract.
    function pause() external;

    /// @notice Disable the module.
    function disable() external;
}
