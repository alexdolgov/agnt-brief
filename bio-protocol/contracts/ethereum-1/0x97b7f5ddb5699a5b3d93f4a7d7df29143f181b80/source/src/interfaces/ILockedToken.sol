// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

interface ILockedTokenFactory {
    function getLockedToken(address) external view returns (ILockedToken);
}

/**
 * @title ILockedToken
 * @notice Interface for locked token contracts that gate access based on token ownership and approval status
 */
interface ILockedToken {
    /// @notice Returns whether the given address has been approved for access
    /// @param owner The address to check approval for
    /// @return True if the address is approved
    function isApproved(address owner) external view returns (bool);

    /// @notice Returns the locked token balance of the given address
    /// @param owner The address to query the balance of
    /// @return The token balance
    function balanceOf(address owner) external view returns (uint256);
}
