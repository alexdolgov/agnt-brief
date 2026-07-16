// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract Whitelist is AccessControl {

    bytes32 public constant WHITELIST_MANAGER_ROLE = keccak256("WHITELIST_MANAGER_ROLE");

    mapping(address => bool) public whitelisted;
    mapping(address => bool) public staked;

    event WhitelistAdded(address indexed account);
    event WhitelistRemoved(address indexed account);
    event StakedAdded(address indexed account);
    event StakedRemoved(address indexed account);

    constructor() {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(WHITELIST_MANAGER_ROLE, msg.sender);
    }

    function addToWhitelist(address account) external onlyRole(WHITELIST_MANAGER_ROLE) {
        whitelisted[account] = true;
        emit WhitelistAdded(account);
    }

    function removeFromWhitelist(address account) external onlyRole(WHITELIST_MANAGER_ROLE) {
        whitelisted[account] = false;
        emit WhitelistRemoved(account);
    }

    function addToStaked(address account) external onlyRole(WHITELIST_MANAGER_ROLE) {
        staked[account] = true;
        emit StakedAdded(account);
    }

    function removeFromStaked(address account) external onlyRole(WHITELIST_MANAGER_ROLE) {
        staked[account] = false;
        emit StakedRemoved(account);
    }

    function batchAddToWhitelist(address[] calldata accounts) external onlyRole(WHITELIST_MANAGER_ROLE) {
        for (uint256 i = 0; i < accounts.length; i++) {
            whitelisted[accounts[i]] = true;
            emit WhitelistAdded(accounts[i]);
        }
    }

    function batchAddToStaked(address[] calldata accounts) external onlyRole(WHITELIST_MANAGER_ROLE) {
        for (uint256 i = 0; i < accounts.length; i++) {
            staked[accounts[i]] = true;
            emit StakedAdded(accounts[i]);
        }
    }

    function batchRemoveFromWhitelist(address[] calldata accounts) external onlyRole(WHITELIST_MANAGER_ROLE) {
        for (uint256 i = 0; i < accounts.length; i++) {
            whitelisted[accounts[i]] = false;
            emit WhitelistRemoved(accounts[i]);
        }
    }

    function batchRemoveFromStaked(address[] calldata accounts) external onlyRole(WHITELIST_MANAGER_ROLE) {
        for (uint256 i = 0; i < accounts.length; i++) {
            staked[accounts[i]] = false;
            emit StakedRemoved(accounts[i]);
        }
    }

    function isWhitelisted(address account) external view returns (bool) {
        return whitelisted[account];
    }

    function isStaked(address account) external view returns (bool) {
        return staked[account];
    }

}
