// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import { IUniPoolModule } from "./IUniPoolModule.sol";

/**
 * @title UniPool Router Interface
 * @notice Interface for UniPool router contract that allows execution of a series of commands with specified inputs.
 */
interface IUniPoolRouter is IUniPoolModule {
    /* -------------------------------------------------------------------------- */
    /*                                   Errors                                   */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Thrown when a command execution fails and the command requires success.
     * @param commandIndex The index of the command that failed.
     * @param message The error message returned from the failed command.
     */
    error RouterExecutionFailed(uint256 commandIndex, bytes message);

    /// @notice Thrown when the transaction deadline has passed.
    error RouterTransactionDeadlinePassed();

    /// @notice Thrown when the lengths of commands and inputs do not match.
    error RouterLengthMismatch();

    /// @notice Thrown when ETH is sent to the contract by an invalid sender.
    error RouterInvalidEthSender();

    /* -------------------------------------------------------------------------- */
    /*                                  Functions                                 */
    /* -------------------------------------------------------------------------- */

    /**
     * @notice Executes a sequence of commands with the provided inputs.
     * @param commands A set of commands to execute.
     * @param inputs The inputs corresponding to each command.
     * @dev The commands are represented as a bytes array, where each byte corresponds to a specific command.
     */
    function execute(bytes calldata commands, bytes[] calldata inputs) external payable;

    /**
     * @notice Executes a sequence of commands with the provided inputs, enforcing a deadline.
     * @param commands A set of commands to execute.
     * @param inputs The inputs corresponding to each command.
     * @param deadline The timestamp by which the transaction must be executed.
     * @dev The commands are represented as a bytes array, where each byte corresponds to a specific command.
     */
    function execute(bytes calldata commands, bytes[] calldata inputs, uint256 deadline) external payable;
}
