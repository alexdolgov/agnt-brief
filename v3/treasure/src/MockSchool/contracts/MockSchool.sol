// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

/*
MockSchool.sol
*/

contract MockSchool {
    function isAtSchool(uint256) public pure returns (bool) {
        return false;
    }

    function totalIQ() public view returns (uint256) {
        return 0;
    }

    function iqEarned(uint256) public view returns (uint256) {
        return 0;
    }
}
