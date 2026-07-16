// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {LibPreviewCommandsManagerModule} from "src/router/modules/libraries/LibPreviewCommandsManagerModule.sol";
import {ICommand} from "diamond-router/src/interfaces/ICommand.sol";

/**
 * @title IPreviewCommandsModule
 * @author Spectra Finance
 * @notice Interface for the PreviewCommandsModule contract
 */
interface IPreviewCommandsModule is ICommand {
    event RouterUtilChange(address indexed previousRouterUtil, address indexed newRouterUtil);

    error EmptyAddress();
    error NotRouter();

    /**
     * @notice Add/replace/remove any number of functions and optionally execute
     *         a function with delegatecall
     * @param _commandsModifications Array of implementation addresses, actions, commands,
     *                                     and function selectors
     * @param _init The address of the contract or facet to execute _calldata
     * @param _calldata A function call executed with delegatecall on _init
     */
    function managePreviewCommands(
        CommandModification[] memory _commandsModifications,
        address _init,
        bytes memory _calldata
    ) external;

    /*
     * --------------------- Preview Execution ---------------------
    */

    /**
     * @dev Error thrown when length of inputs doesn't match length of commands
     */
    error LengthMismatch();

    /**
     * @dev Error thrown when an invalid command type is provided
     */
    error InvalidCommandType(uint256 command);

    /**
     * @dev Error thrown when a command is not found
     */
    error CommandNotFound(bytes1 command);

    /**
     * @dev Error thrown when a delegate call fails
     */
    error DelegateCallFailed();

    /**
     * @dev Struct to track token balances during preview operations
     */
    struct TokenBalance {
        address token;
        uint256 balance;
    }

    /**
     * @notice Gets the router util address from storage
     * @return The router util address
     */
    function getRouterUtil() external view returns (address);

    /**
     * @notice Sets the router util address
     * @param _routerUtil The new router util address
     */
    function setRouterUtil(address _routerUtil) external;

    /**
     * @dev Simulates the execution of a command and returns the expected resulting rate
     */
    function _dispatchPreviewRate(bytes memory _inputCallData) external returns (uint256 rate);

    /**
     * @dev Simulates the execution of a sequence of commands and returns the expected resulting rate
     * @param _commands Encoded instructions passed to the dispatcher
     * @param _inputs An array of byte strings containing ABI-encoded inputs for each command
     * @param _spot If true, spot exchange rates and unit amounts are used
     * @return The preview rate value representing final output/input ratio in ray units
     */
    function _previewRate(bytes calldata _commands, bytes[] calldata _inputs, bool _spot)
        external
        view
        returns (uint256);

    /**
     * @notice Previews the effective exchange rate including price impact and fees
     * @param _commands Encoded instructions passed to the dispatcher
     * @param _inputs An array of byte strings containing ABI-encoded inputs for each command
     * @return The effective exchange rate in ray units
     */
    function previewRate(bytes calldata _commands, bytes[] calldata _inputs) external view returns (uint256);

    /**
     * @notice Previews the spot exchange rate without price impact or fees
     * @param _commands Encoded instructions passed to the dispatcher
     * @param _inputs An array of byte strings containing ABI-encoded inputs for each command
     * @return The spot exchange rate in ray units
     */
    function previewSpotRate(bytes calldata _commands, bytes[] calldata _inputs) external view returns (uint256);
}
