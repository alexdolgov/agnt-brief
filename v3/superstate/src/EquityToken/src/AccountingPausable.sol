// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IAccountingPausable} from "./interfaces/IAccountingPausable.sol";
/**
 * @title AccountingPausable
 * @notice Abstract contract implementing pausable accounting functionality with ERC-7201 namespaced storage
 * @dev Allows pausing of minting and burning operations independently from transfers
 */
abstract contract AccountingPausable is IAccountingPausable {
    /**
     * @dev Storage struct using ERC-7201 namespaced pattern
     * @custom:storage-location erc7201:superstate.storage.accountingPausable
     */
    struct AccountingPausableStorage {
        bool accountingPaused;
    }
    
    // keccak256(abi.encode(uint256(keccak256(bytes("superstate.storage.accountingPausable"))) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ACCOUNTING_PAUSABLE_STORAGE_LOCATION = 
        0xa9bb159d35c3405794a368b076cfb461c3cfec91ff00ca1c544d07e26a468e00;

    /* Requirements for implementation:
        1. _requireAuth() must be implemented by the inheriting contract

    */

    /**
     * @dev Hook to require authorization for pausing/unpausing
     * @notice Must be implemented by inheriting contract
     */
    function _requireAuth() internal view virtual;

    /*
        Provides the following to be used:
        1. _requireNotAccountingPaused() - reverts if accounting is paused
        2. accountingPause() - pauses accounting operations, _requireAuth
        3. accountingUnpause() - unpauses accounting operations, _requireAuth
    */


    /**
     * @dev Pauses accounting operations (minting and burning)
     * @notice Can only be called by authorized addresses (defined in inheriting contract)
     */
    function accountingPause() external virtual {
        _requireAuth(); // This would be implemented by the inheriting contract
        if (isAccountingPaused()) revert AccountingIsPaused();
        
        _setAccountingPaused(true);
        emit AccountingPaused(msg.sender);
    }
    
    /**
     * @dev Unpauses accounting operations
     * @notice Can only be called by authorized addresses (defined in inheriting contract)
     */
    function accountingUnpause() external virtual {
        _requireAuth(); // This would be implemented by the inheriting contract
        if (!isAccountingPaused()) revert AccountingIsNotPaused();
        
        _setAccountingPaused(false);
        emit AccountingUnpaused(msg.sender);
    }


    /**
     * @dev Returns the AccountingPausableStorage struct
     * @return $ Storage pointer to the AccountingPausableStorage struct
     */
    function _getAccountingPausableStorage() private pure returns (AccountingPausableStorage storage $) {
        assembly {
            $.slot := ACCOUNTING_PAUSABLE_STORAGE_LOCATION
        }
    }
    
    /**
     * @dev Returns whether accounting is currently paused
     * @return True if accounting is paused, false otherwise
     */
    function isAccountingPaused() public view virtual returns (bool) {
        AccountingPausableStorage storage $ = _getAccountingPausableStorage();
        return $.accountingPaused;
    }
    
    /**
     * @dev Sets the paused state of accounting
     * @param paused The new paused state
     */
    function _setAccountingPaused(bool paused) internal {
        AccountingPausableStorage storage $ = _getAccountingPausableStorage();
        $.accountingPaused = paused;
    }

    function __AccountingPausable_init() internal {
        _setAccountingPaused(false); // Unnecessary as started as false by default, done for clarity
    }
}
