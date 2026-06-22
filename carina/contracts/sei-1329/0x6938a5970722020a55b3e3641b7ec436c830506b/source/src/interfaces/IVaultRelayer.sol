// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {TransferHelper} from "../libraries/TransferHelper.sol";

/// @title IVaultRelayer
/// @notice Interface for the VaultRelayer contract that manages secure token transfers
/// @dev This contract acts as a trusted intermediary for transferring tokens
/// @dev Only the contract owner (typically the Settlement contract) can execute transfers
interface IVaultRelayer {
    /// @notice Thrown when caller is not the owner
    /// @dev This error is used in the onlyOwner modifier to restrict access
    error NotOwner();

    /// @notice Transfers tokens from multiple accounts to the caller using Permit2
    /// @dev This function is restricted to the contract owner for security
    ///
    /// @param transfers Array of transfer data specifying from accounts, amounts, and tokens
    function transferFromAccounts(TransferHelper.TransferFromData[] calldata transfers) external;
}
