// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

/// @title OneDayDelayTimelockController
/// @author luoyhang003
/// @notice A TimelockController with a 1-day delay for executing operations
/// @dev This contract extends OpenZeppelin's TimelockController and sets
///      the execution delay to 1 day. Proposals must wait 1 day before
///      they can be executed.
contract OneDayDelayTimelockController is TimelockController {
    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deploys the OneDayDelayTimelockController
    /// @dev Calls the parent TimelockController constructor with `delay = 1 days`
    /// @param proposers The list of addresses allowed to propose operations
    /// @param executors The list of addresses allowed to execute operations
    /// @param admin The account that will be granted the DEFAULT_ADMIN_ROLE
    constructor(
        address[] memory proposers,
        address[] memory executors,
        address admin
    ) TimelockController(1 days, proposers, executors, admin) {}
}
