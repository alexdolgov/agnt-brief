// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {CommandLibrary} from "contracts/libraries/CommandLibrary.sol";

/**
 * @title Command
 * @notice Contains arguments for a low-level call.
 * @dev This struct allows deferring the call's execution, suspending it by passing it to another function or contract.
 * @dev `target` The address to be called.
 * @dev `value` Value to send in the call.
 * @dev `payload` Encoded call with function selector and arguments.
 */
struct Command {
    address target;
    uint256 value;
    bytes payload;
}

using CommandLibrary for Command global;
