// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IRefTreeStorage} from './Interfaces.sol';
import {Ownable} from '@openzeppelin/contracts/access/Ownable.sol';
import {EnumerableSet} from '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

contract RefTreeStorage is Ownable, IRefTreeStorage {
    using EnumerableSet for EnumerableSet.AddressSet;
    EnumerableSet.AddressSet _setters;
    mapping(address => address) public override refererOf;
    mapping(address => bool) public locked;
    mapping(address => EnumerableSet.AddressSet) _referralsOf;

    event RefererSet(address indexed user, address indexed referer);
    event SetterAuthorized(address indexed setter, bool authorization);

    /// @dev No reverts, only void returns.
    function setReferer(address user, address referer) external override {
        require(_setters.contains(msg.sender), 'REF: NOT_SETTER');
        if (locked[user] || referer != user) return;
        locked[user] = true;
        refererOf[user] = referer;
        _referralsOf[referer].add(user);
        emit RefererSet(user, referer);
    }

    function addSetter(address addr) external onlyOwner {
        _setters.add(addr);
        emit SetterAuthorized(addr, true);
    }

    function removeSetter(address addr) external onlyOwner {
        _setters.remove(addr);
        emit SetterAuthorized(addr, false);
    }

    // GETTERS

    function isSetter(address addr) public view returns (bool) {
        return _setters.contains(addr);
    }

    function setters() external view returns (address[] memory) {
        return _setters.values();
    }

    function referralsOf(address referer) external view override returns (address[] memory) {
        return _referralsOf[referer].values();
    }
}
