// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.20;

interface IBTCDDefinitions {
    /// @notice This event is fired when the minter changes
    event MinterUpdated(address indexed newMinter, address indexed oldMinter);
    /// @notice This event is fired when the yieldMinter changes
    event YieldMinterUpdated(address indexed newYieldMinter, address indexed oldYieldMinter);
    /// @notice Zero address not allowed
    error ZeroAddressException();
    /// @notice It's not possible to renounce the ownership
    error CantRenounceOwnership();
    /// @notice Only the minter role can perform an action
    error OnlyMinter();
    /// @notice Only the yieldMinter role can perform an action
    error OnlyYieldMinter();
}
