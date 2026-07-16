// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/// @notice Minimal Reality.eth API used by ParimutuelVault.
interface IReality {
    /// @notice Earliest timestamp at which the question can be answered on Reality.
    function getOpeningTS(bytes32 questionId) external view returns (uint32);
}
