// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {IAllowlistable} from "./interfaces/IAllowlistable.sol";
import {IAllowlistAddressPermissions} from "./interfaces/allowlist/IAllowlistAddressPermissions.sol";

/**
 * @title Allowlistable.sol
 * @notice Abstract contract implementing allowlist functionality with ERC-7201 namespaced storage
 * @dev Enables checking if addresses have permission to interact with the token
 */
abstract contract Allowlistable is IAllowlistable {
    /**
     * @dev Storage struct using ERC-7201 namespaced pattern
     * @custom:storage-location erc7201:superstate.storage.allowlistable
     */
    struct AllowlistableStorage {
        address allowlist;
        bool isPublicInstrument;
    }
    
    // keccak256(abi.encode(uint256(keccak256(bytes("superstate.storage.allowlistable"))) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant ALLOWLISTABLE_STORAGE_LOCATION = 
        0x20f9d398b060d72baa41f68a4a570507058bbfd6bb960620e2b61718f38ded00;

    /*  Requirements for implementation:
        1. No requirements needed after redesign 
    */

    /*
        Provides the following to be used on inheritance:
        1. allowlist() - returns the current allowlist contract address, view only
        2. _setAllowlist(address _newAllowlist) - sets the allowlist contract address
        3. isAddressAllowedForPrivateInstrument(address addr, string instrument) - checks if an address is allowed to interact with a private instrument/fund
        4. isAddressAllowedForPublicInstrument(address addr) - checks if an address is allowed to interact with public instrument/equity
        5. isPublicInstrument() - checks if the allowlist is used for public instrument
        6. _setIsPublicInstrument(bool _isPublicInstrument) - sets whether the instrument is public or private
    */

    /**
     * @dev Returns the current allowlist contract
     * @return The allowlist contract instance
     */
    function allowlist() public view virtual returns (address) {
        AllowlistableStorage storage $ = _getAllowlistableStorage();
        return $.allowlist;
    }

    /**
     * @dev Returns whether the instrument is public or private
     * @return True if the instrument is public, false if private
     */
    function isPublicInstrument() public view virtual returns (bool) {
        AllowlistableStorage storage $ = _getAllowlistableStorage();
        return $.isPublicInstrument;
    }

    /**
     * @dev Sets the allowlist contract
     * @param _newAllowlist The new allowlist contract to use
     */
    function _setAllowlist(address _newAllowlist) internal {
        if (_newAllowlist == address(0)) revert ZeroAddressNotAllowed();
        AllowlistableStorage storage $ = _getAllowlistableStorage();

        emit AllowlistUpdated(address($.allowlist), address(_newAllowlist));
        $.allowlist = _newAllowlist;
    }

    /**
     * @dev Sets whether the instrument is public or private
     * @param _isPublicInstrument True if the instrument is public, false if private
     */
    function _setIsPublicInstrument(bool _isPublicInstrument) internal {
        AllowlistableStorage storage $ = _getAllowlistableStorage();
        
        emit IsPublicInstrumentUpdated($.isPublicInstrument, _isPublicInstrument);
        $.isPublicInstrument = _isPublicInstrument;
    }

    /**
     * @dev Checks if an address is allowed to interact with a private instrument
     * @param addr The address to check
     * @param instrument The private instrument identifier (typically a symbol)
     * @return True if the address is allowed, false otherwise
     * @notice If allowlist is not set, returns false
     */
    function isAddressAllowedForPrivateInstrument(address addr, string memory instrument) public view returns (bool) {
        address _allowlist = allowlist();
        if (_allowlist == address(0)) return false;

        return IAllowlistAddressPermissions(_allowlist).isAddressAllowedForPrivateInstrument(addr, instrument);
    }

    /**
     * @dev Checks if an address is allowed to interact with public instrument
     * @param addr The address to check
     * @return True if the address is allowed, false otherwise
     */
    function isAddressAllowedForPublicInstrument(address addr) public view returns (bool) {
        address _allowlist = allowlist();
        if (_allowlist == address(0)) return false;

        return IAllowlistAddressPermissions(_allowlist).isAddressAllowedForPublicInstrument(addr);
    }

    /**
     * @dev Returns the AllowlistableStorage struct
     * @return $ Storage pointer to the AllowlistableStorage struct
     */
    function _getAllowlistableStorage() private pure returns (AllowlistableStorage storage $) {
        assembly {
            $.slot := ALLOWLISTABLE_STORAGE_LOCATION
        }
    }

    /**
     * @dev Checks if two addresses belong to the same entity
     * @param addr1 The first address
     * @param addr2 The second address
     * @return True if both addresses belong to the same entity, false otherwise
     */
    function isSameEntity(address addr1, address addr2) public view returns (bool) {
        if (addr1 == addr2) return true; // Same address is always same entity
        
        address _allowlist = allowlist();
        if (_allowlist == address(0)) return false;
        
        return IAllowlistAddressPermissions(_allowlist).addressEntityIds(addr1) == 
               IAllowlistAddressPermissions(_allowlist).addressEntityIds(addr2);
    }

    /**
     * @dev Requires that two addresses belong to the same entity, reverts otherwise
     * @param addr1 The first address
     * @param addr2 The second address
     */
    function _requireSameEntity(address addr1, address addr2) virtual internal view {
        if (!isSameEntity(addr1, addr2)) revert MismatchEntityIds();
    }

    /**
     * @dev Initialize the allowlist during contract initialization
     * @param _allowlist The allowlist contract to set
     * @param _isPublicInstrument Whether the instrument is public (true) or private (false)
     */
    function __Allowlistable_init(address _allowlist, bool _isPublicInstrument) internal {
        _setAllowlist(_allowlist);
        _setIsPublicInstrument(_isPublicInstrument);
    }
}