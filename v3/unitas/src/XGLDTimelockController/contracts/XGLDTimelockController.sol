// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.28;

import { TimelockController } from "@openzeppelin/contracts/governance/TimelockController.sol";

/// @notice Project TimelockController that keeps proposer and canceller powers separated.
contract XGLDTimelockController is TimelockController {
    error ZeroAddress();

    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors,
        address admin,
        address[] memory cancellers
    ) TimelockController(minDelay, proposers, executors, admin) {
        for (uint256 i = 0; i < proposers.length; ++i) {
            _revokeRole(CANCELLER_ROLE, proposers[i]);
        }

        for (uint256 i = 0; i < cancellers.length; ++i) {
            if (cancellers[i] == address(0)) revert ZeroAddress();
            _grantRole(CANCELLER_ROLE, cancellers[i]);
        }
    }
}
