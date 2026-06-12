// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

/// @title Implement access control of Hashkey.
abstract contract Access is Ownable {
    mapping(bytes32 => mapping(address => bool)) private _roleMembers;

    event SetupRole(bytes32 role, bool enable, address indexed account);

    modifier accessible(bytes32 role) {
        require(
            owner() == msg.sender || hasRole(role, msg.sender),
            "Access: caller has no access"
        );
        _;
    }

    /// @dev Returns `true` if `account` has been granted `role`.
    function hasRole(bytes32 role, address account) public view returns (bool) {
        return _roleMembers[role][account];
    }

    /// @dev
    function setupRole(bytes32 role, bool enable, address account) external onlyOwner {
        require(account != address(0), "Access: account is zero address");
        _roleMembers[role][account] = enable;
        
        emit SetupRole(role, enable, account);
    }
}