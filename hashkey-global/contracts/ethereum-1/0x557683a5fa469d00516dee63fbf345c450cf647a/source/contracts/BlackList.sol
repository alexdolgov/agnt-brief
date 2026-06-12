// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./Access.sol";

abstract contract BlackList is Access {

    bytes32 public constant BLACKLIST_ROLE = keccak256("Blacklist Role");

    mapping(address => bool) private _blacklist;

    event SetupBlackList(address indexed account, bool blacklisted);

    modifier notInBlackList(address account) {
        require(!inBlackList(account), "Blacklist: in blacklist");
        _;
    }
    
    /// @dev Return if the account is in blacklist.
    function inBlackList(address account) public view returns (bool) {
        return _blacklist[account];
    }
    
    /// @dev Add the account in the blacklist, or remove the account from the blacklist.
    function setBlackList(address account, bool blacklisted) external accessible(BLACKLIST_ROLE) {
        require(account != address(0), "Blacklist: zero address");
        _blacklist[account] = blacklisted;
        emit SetupBlackList(account, blacklisted);
    }
}
