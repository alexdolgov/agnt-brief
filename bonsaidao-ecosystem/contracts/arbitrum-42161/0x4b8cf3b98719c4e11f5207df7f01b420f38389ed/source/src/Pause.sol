// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {IPause} from "src/interfaces/IPause.sol";

abstract contract Pause is IPause {
    bool public isProtocolPaused;
    bool public isEntryPointPaused;

    mapping(address vault => bool) public isVaultPaused;
    mapping(address admin => bool) public isFirstResponder;

    uint256[46] __gap;

    /**
     * @notice Halts the protocol. No actions can be taken on `ExitEntryPoint.sol`
     * or `ExitVault.sol` when the protocol is paused.
     */
    function protocolPause() public onlyFirstResponder {
        isProtocolPaused = true;
        emit ProtocolPauseUpdated(true);
    }

    /**
     * @notice Unpauses the protocol. Actions can be taken on `ExitEntryPoint.sol`
     * or `ExitVault.sol` when the protocol is unpaused.
     */
    function protocolUnpause() public onlyFirstResponder {
        isProtocolPaused = false;
        emit ProtocolPauseUpdated(false);
    }

    /**
     * @notice Pauses the `ExitEntryPoint.sol`. No actions can be taken on `ExitEntryPoint.sol`,
     * but actions can be taken on deployed `ExitVault.sol` contracts.
     */
    function entryPointPause() public onlyFirstResponder {
        isEntryPointPaused = true;
        emit EntryPointPauseUpdated(true);
    }

    /**
     * @notice Unpauses the `ExitEntryPoint.sol`. Actions can be taken on `ExitEntryPoint.sol`.
     */
    function entryPointUnpause() public onlyFirstResponder {
        isEntryPointPaused = false;
        emit EntryPointPauseUpdated(false);
    }

    /**
     * @notice Pauses the specified vaults. No actions can be taken on the specified vaults.
     * @param _vaults Array of vaults to pause
     */
    function pauseVaults(address[] calldata _vaults) public onlyFirstResponder {
        for (uint256 i = 0; i < _vaults.length; i++) {
            isVaultPaused[_vaults[i]] = true;
            emit VaultPauseUpdated(_vaults[i], true);
        }
    }

    /**
     * @notice Unpauses the specified vaults. Actions can be taken on the specified vaults.
     * @param _vaults Array of vaults to unpause
     */
    function unpauseVaults(address[] calldata _vaults) public onlyFirstResponder {
        for (uint256 i = 0; i < _vaults.length; i++) {
            isVaultPaused[_vaults[i]] = false;
            emit VaultPauseUpdated(_vaults[i], false);
        }
    }

    /**
     * @notice Checks if the protocol is paused or if the `ExitEntryPoint.sol` is paused.
     */
    function checkFullPause() public view returns (bool) {
        return isProtocolPaused || isEntryPointPaused;
    }

    modifier checkFullPauseEntryPoint() {
        if (isProtocolPaused) revert ProtocolPaused();
        if (isEntryPointPaused) revert EntryPointPaused();
        _;
    }

    modifier onlyFirstResponder() {
        if (!isFirstResponder[msg.sender]) revert OnlyFirstResponder();
        _;
    }
}
