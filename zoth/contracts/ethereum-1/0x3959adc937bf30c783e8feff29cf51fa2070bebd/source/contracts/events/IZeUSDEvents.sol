// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title ZeUSD Events Interface
/// @notice Contains all events emitted by the ZeUSD contract
/// @custom:security-contact paras@zoth.io
interface IZeUSDEvents {
    /// @notice Emitted when an address is blacklisted or unblacklisted
    /// @param account The address being blacklisted/unblacklisted
    /// @param status New blacklist status (true = blacklisted)
    event Blacklisted(address indexed account, bool status);
    /// @notice Emitted when router address is updated
    /// @param newRouter Address of the new router
    event RouterUpdated(address indexed newRouter);
}
