// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.28;

import {
    PaymentsImmutables,
    PaymentsParameters
} from "@uniswap-universal-router-2/contracts/modules/PaymentsImmutables.sol";
import { IAllowanceTransfer } from "permit2/src/interfaces/IAllowanceTransfer.sol";

import { IUniPoolFactory } from "../interfaces/IUniPoolFactory.sol";
import { IUniPoolRouter } from "../interfaces/IUniPoolRouter.sol";
import { Commands } from "./Commands.sol";
import { Dispatcher } from "./Dispatcher.sol";
import { UniPoolModule } from "./UniPoolModule.sol";

/**
 * @title UniPool Router
 * @notice Router contract for executing a sequence of UniPool commands.
 */
contract UniPoolRouter is IUniPoolRouter, Dispatcher {
    /**
     * @param permit2 The address of the Permit2 contract.
     * @param weth The address of the WETH contract.
     * @param unipoolFactory The address of the UniPool factory contract.
     */
    constructor(address permit2, address weth, IUniPoolFactory unipoolFactory)
        PaymentsImmutables(PaymentsParameters({ permit2: permit2, weth9: weth }))
        UniPoolModule(unipoolFactory, IAllowanceTransfer(permit2))
    { }

    receive() external payable {
        require(msg.sender == address(WETH9), RouterInvalidEthSender());
    }

    /**
     * @notice Checks if the current block timestamp is within the specified deadline.
     * @param deadline The timestamp by which the transaction must be executed.
     */
    modifier checkDeadline(uint256 deadline) {
        _checkDeadline(deadline);
        _;
    }

    /// @inheritdoc IUniPoolRouter
    function execute(bytes calldata commands, bytes[] calldata inputs, uint256 deadline)
        external
        payable
        checkDeadline(deadline)
    {
        execute(commands, inputs);
    }

    /// @inheritdoc IUniPoolRouter
    function execute(bytes calldata commands, bytes[] calldata inputs) public payable isNotLocked {
        // each command is one byte, so the number of commands is the length of the commands bytes array
        uint256 numberOfCommands = commands.length;
        require(inputs.length == numberOfCommands, RouterLengthMismatch());

        bool success;
        bytes memory output;
        // loop through all given commands and execute them, reverting if a command fails and requires success
        for (uint256 commandIndex = 0; commandIndex < numberOfCommands; commandIndex++) {
            bytes1 command = commands[commandIndex];
            bytes calldata input = inputs[commandIndex];

            (success, output) = _dispatch(command, input);

            require(
                success || !_successRequired(command),
                RouterExecutionFailed({ commandIndex: commandIndex, message: output })
            );
        }
    }

    /**
     * @notice Checks if the current block timestamp is within the specified deadline.
     * @param deadline The timestamp by which the transaction must be executed.
     */
    function _checkDeadline(uint256 deadline) internal view {
        require(block.timestamp <= deadline, RouterTransactionDeadlinePassed());
    }

    /**
     * @notice Determines if a command requires successful execution.
     * @param command The command byte to check.
     * @return successRequired_ True if the command requires success, false if it can revert silently.
     */
    function _successRequired(bytes1 command) internal pure returns (bool successRequired_) {
        successRequired_ = command & Commands.FLAG_ALLOW_REVERT == 0;
    }
}
