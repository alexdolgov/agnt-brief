/* SPDX-License-Identifier: UNLICENSED */
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable2Step.sol";

abstract contract Ownable2StepWithShortcut is Ownable2Step {
    function transferOwnership1Step(address newOwner) public onlyOwner {
        require(newOwner != address(0), "ITBOwnable: zero address");
        _transferOwnership(newOwner);
    }
}