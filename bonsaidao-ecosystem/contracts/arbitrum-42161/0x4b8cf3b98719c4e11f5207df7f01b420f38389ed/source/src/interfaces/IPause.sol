// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

interface IPause {
    error OnlyFirstResponder();
    error ProtocolPaused();
    error VaultPaused();
    error EntryPointPaused();

    event FirstResponderUpdated(address firstResponder, bool status);
    event ProtocolPauseUpdated(bool isPaused);
    event EntryPointPauseUpdated(bool isPaused);
    event VaultPauseUpdated(address vault, bool isPaused);

    function isProtocolPaused() external returns (bool);
    function isVaultPaused(address) external returns (bool);
}
