// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import {Pausable} from "@openzeppelin/contracts/utils/Pausable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

/// @title AddressMapping Contract
/// @notice This contract allows users to map their multisig addresses to eoa address
/// @dev Inherits from OpenZeppelin's Pausable and Ownable contracts
contract AddressMapping is Pausable, Ownable {
    /// @notice Mapping from an address to another address
    mapping(address => address) public addressMapping;

    /// @notice Event emitted when an address mapping is set
    /// @param user The address of the user setting the mapping
    /// @param mappedAddress The address being mapped
    event AddressMapped(address indexed user, address indexed mappedAddress);

    /// @param _owner The address of the contract owner
    /// @dev The constructor sets the owner of the contract
    constructor(address _owner) Ownable(_owner) {}

    /// @notice Sets the address mapping for the caller
    /// @param _addr The address to be mapped to the caller's address
    /// @dev Can only be called when the contract is not paused
    function setAddressMapping(address _addr) public whenNotPaused {
        addressMapping[msg.sender] = _addr;
        // Emit the event after setting the mapping
        emit AddressMapped(msg.sender, _addr);
    }

    /// @notice Pauses the contract
    /// @dev Can only be called by the owner
    function pause() public onlyOwner {
        _pause();
    }

    /// @notice Unpauses the contract
    /// @dev Can only be called by the owner
    function unpause() public onlyOwner {
        _unpause();
    }
}
