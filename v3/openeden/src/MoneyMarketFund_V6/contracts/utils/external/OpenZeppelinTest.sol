// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "hardhat/console.sol";

contract OpenZeppelinTest {
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet addressSet;

    function addAddress(address account) public {
        addressSet.add(account);
    }

    function removeAddress(address account) public {
        addressSet.remove(account);
    }

    function getAddressAt(uint256 index) public view returns (address account) {
        account = addressSet.at(index);
    }

    function containsAddress(
        address account
    ) public view returns (bool contains) {
        contains = addressSet.contains(account);
    }

    function getAddressSetLength() public view returns (uint256 length) {
        length = addressSet.length();
    }

    function getAddressArray() public view returns (address[] memory array) {
        array = addressSet.values();
    }

    function removeAddresses(uint256 pageSize) public {
        uint256 windowSize = pageSize;
        uint256 start = addressSet.length();
        uint256 end = 0;

        if (pageSize < addressSet.length()) {
            end = start - windowSize;
        }

        // console.log("WindowSize: %o", windowSize);
        for (uint256 i = start; i > end; i--) {
            address acc = this.getAddressAt(i - 1);
            // console.log("Processing index: %o", i);
            // console.log("Address: %o", acc);
            // console.log("Size before removal: %o ", addressSet.length());
            this.removeAddress(acc);
            // console.log("Size after removal: %o ", addressSet.length());
        }
    }
}
