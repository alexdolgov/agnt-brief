// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

/// @title NoDelayTimelockController
/// @author luoyhang003
/// @notice A specialized TimelockController with zero delay for operations
/// @dev This contract extends OpenZeppelin's TimelockController and
///      sets the execution delay to 0, allowing immediate execution
///      of scheduled operations.
contract NoDelayTimelockController is TimelockController {
    /*//////////////////////////////////////////////////////////////////////////
                                    CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Deploys the NoDelayTimelockController
    /// @dev Calls the parent TimelockController constructor with `delay = 0`
    /// @param proposers The list of addresses allowed to propose operations
    /// @param executors The list of addresses allowed to execute operations
    /// @param admin The account that will be granted the DEFAULT_ADMIN_ROLE
    constructor(
        address[] memory proposers,
        address[] memory executors,
        address admin
    ) TimelockController(0, proposers, executors, admin) {}
}
