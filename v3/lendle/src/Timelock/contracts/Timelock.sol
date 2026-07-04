//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.24;

import {TimelockControllerUpgradeable} from "@openzeppelin/contracts-upgradeable/governance/TimelockControllerUpgradeable.sol";

contract Timelock is TimelockControllerUpgradeable {
    function initialize(uint256 minDelay, address[] memory proposers, address[] memory executors) public initializer {
        __TimelockController_init_unchained(minDelay, proposers, executors, msg.sender);
    }
}
