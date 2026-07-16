/// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.0;

import "src/Recipient.sol";

/// @title RecipientFactory
/// @notice RecipientFactory contract to create SDT Recipient contracts.
contract RecipientFactory {
    /// @notice Mapping of the owner to the recipient contract.
    mapping(address => address) public recipients;

    function createRecipient(address _owner) external {
        bytes32 salt = keccak256(abi.encodePacked(_owner));
        Recipient recipient = new Recipient{salt: salt}(_owner);

        recipients[_owner] = address(recipient);
    }
}
