// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IGnosisSafe
/// @notice Minimal interface for Gnosis Safe contract
interface IGnosisSafe {
    /// @notice Check if an address is an owner of the Safe
    function isOwner(address owner) external view returns (bool);

    /// @notice Get the list of Safe owners
    function getOwners() external view returns (address[] memory);

    /// @notice Get the threshold of the Safe
    function getThreshold() external view returns (uint256);

    /// @notice Execute a transaction from a module
    /// @param to Target address
    /// @param value ETH value to send
    /// @param data Calldata
    /// @param operation 0 = Call, 1 = DelegateCall
    function execTransactionFromModule(
        address to,
        uint256 value,
        bytes memory data,
        uint8 operation
    ) external returns (bool success);

    /// @notice Check if a module is enabled
    function isModuleEnabled(address module) external view returns (bool);

    /// @notice Enable a module on the Safe
    function enableModule(address module) external;

    /// @notice Disable a module on the Safe
    function disableModule(address prevModule, address module) external;
}
