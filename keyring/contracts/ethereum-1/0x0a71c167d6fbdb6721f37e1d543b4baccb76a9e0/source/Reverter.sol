// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract Reverter {
    uint public moduleId = 6;
    bytes32 public moduleGitCommit = "0x1";

    fallback() external payable {
        revert("REVERT");
    }
}