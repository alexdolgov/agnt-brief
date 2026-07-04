// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "./Ownable.sol";
import "./EnumerableSet.sol";
import "./IAddressSet.sol";

contract AddressSet is IAddressSet, Ownable {
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet private _set;

    constructor() {}

    function contains(address e) public view returns (bool) {
        return _set.contains(e);
    }

    function size() public view returns (uint256) {
        return _set.length();
    }

    function get(uint256 index) public view returns (address) {
        return _set.at(index);
    }

    function add(address e) public onlyOwner returns (bool) {
        return _set.add(e);
    }

    function remove(address e) public onlyOwner returns (bool) {
        return _set.remove(e);
    }
}