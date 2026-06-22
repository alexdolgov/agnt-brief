// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

/**
 * @dev Timelock contract
 */
contract Timelock is TimelockController {
    constructor(
        uint256 minDelay,
        address[] memory proposers, // note: also cancellers
        address[] memory executors,
        address admin
    ) TimelockController(minDelay, proposers, executors, admin) {}
}
