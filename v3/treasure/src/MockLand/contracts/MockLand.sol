// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*
MockLand.sol
*/

contract MockLand {
    function tokenOfOwnerByIndex(address, uint256) public view returns (uint256) {
        return 0;
    }

    function upgradeSafe(uint256) public returns (bool) {
        return false;
    }
}
