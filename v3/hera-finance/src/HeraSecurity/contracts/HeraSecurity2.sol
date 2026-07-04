// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/governance/TimelockController.sol";

contract HeraSecurity is TimelockController {
    constructor(uint256 delay, address[] memory proposers, address[] memory executors)
        TimelockController(delay, proposers, executors)
    {}
    
}