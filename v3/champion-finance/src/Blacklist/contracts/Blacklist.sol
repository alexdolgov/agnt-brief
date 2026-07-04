// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

import "./owner/Operator.sol";

contract Blacklist is Operator {
    mapping (address => bool) public Blacklisted;
     
    function blacklistAddress(address account) public onlyOperator() {
        Blacklisted[account] = true;
    }

    function unBlacklistAddress(address account) public onlyOperator() {
        Blacklisted[account] = false;
    }

    function isBlacklisted(address account) public view returns(bool) {
        return Blacklisted[account];
    }
}