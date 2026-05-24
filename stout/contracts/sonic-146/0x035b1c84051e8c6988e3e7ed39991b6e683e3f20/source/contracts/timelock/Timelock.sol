// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Angles Timelock Contract
 * @author Angles
 */

import "@openzeppelin/contracts/governance/TimelockController.sol";

interface CapitalPausable {
    function changeCapitalDisabled(bool) external;
}

contract Timelock is TimelockController {
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors) TimelockController(minDelay, proposers, executors, msg.sender) {}

    function pauseCapital(address target) external {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            "Timelock::pauseCapital: Call must come from admin."
        );
        CapitalPausable(target).changeCapitalDisabled(true);
    }

    function unpauseCapital(address target) external {
        require(
            hasRole(DEFAULT_ADMIN_ROLE, msg.sender),
            "Timelock::unpauseCapital: Call must come from admin."
        );
        CapitalPausable(target).changeCapitalDisabled(false);
    }
}