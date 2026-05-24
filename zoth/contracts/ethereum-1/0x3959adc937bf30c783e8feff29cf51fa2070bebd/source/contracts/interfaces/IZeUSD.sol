// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import '../events/IZeUSDEvents.sol';
import '../errors/IZeUSDErrors.sol';

/// @title ZeUSD Interface
/// @notice Main interface for the ZeUSD token contract
/// @custom:security-contact paras@zoth.io
interface IZeUSD is IZeUSDEvents, IZeUSDErrors {
    /// @notice Returns the router address
    function router() external view returns (address);

    /// @notice Sets the blacklist status for an account
    /// @param account Address to update blacklist status for
    /// @param status New blacklist status
    function setBlacklistStatus(address account, bool status) external;

    /// @notice Checks if an account is blacklisted
    /// @param account Address to check
    /// @return bool True if account is blacklisted
    function isBlacklisted(address account) external view returns (bool);

    /// @notice Updates the router address
    /// @param newRouter Address of the new router
    function setRouter(address newRouter) external;

    /// @notice Mints new tokens to a specified address
    /// @param to Address to mint tokens to
    /// @param amount Amount of tokens to mint
    function mint(address to, uint256 amount) external;

    /// @notice Burns tokens from the caller's address
    /// @param amount Amount of tokens to burn
    function burn(uint256 amount) external;

    /// @notice Burns tokens from a specified address
    /// @param account Address to burn tokens from
    /// @param amount Amount of tokens to burn
    function burnFrom(address account, uint256 amount) external;
}
