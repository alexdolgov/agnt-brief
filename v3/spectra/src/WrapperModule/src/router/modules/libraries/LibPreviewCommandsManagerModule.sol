// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import {IPreviewCommandsModule, ICommand} from "src/router/modules/interfaces/IPreviewCommandsModule.sol";
import {RouterCommandsUtilities} from "src/libraries/RouterCommandsUtilities.sol";

/**
 * @title LibPreviewCommandsManagerModule
 * @author Spectra Finance
 * @notice Library for PreviewCommandsModule command storage management
 */
library LibPreviewCommandsManagerModule {
    // EIP-7201: keccak256(abi.encode(uint256(keccak256("spectra.manager.preview")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 constant PREVIEW_COMMANDS_STORAGE_POSITION =
        keccak256(abi.encode(uint256(keccak256("spectra.manager.preview")) - 1)) & ~bytes32(uint256(0xff));

    struct ImplementationAndFunction {
        address implementation;
        bytes4 functionSelector;
    }

    struct PreviewCommandsStorage {
        address routerUtil;
        // Map command byte to implementation address and function selector
        mapping(bytes1 => ImplementationAndFunction) implementationAndFunction;
        bytes1[] supportedCommands;
    }

    // Custom errors
    error MissmatchLength();
    error EmptyCommandList();
    error IncorrectManagementAction(uint8 action);
    error CannotAddSelectorsToZeroAddress(bytes4[] selectors);
    error CommandAlreadyRegistered(bytes1 command);
    error CannotReplaceFunctionsFromFacetWithZeroAddress(bytes4[] selectors);
    error CannotReplaceImmutableFunction(bytes4 selector);
    error CannotReplaceFunctionWithTheSameFunctionFromTheSameFacet(bytes4 selector);
    error CannotReplaceFunctionThatDoesNotExists(bytes4 selector);
    error RemoveFacetAddressMustBeZeroAddress(address facetAddress);
    error CannotRemoveFunctionThatDoesNotExist(bytes4 selector);
    error CannotRemoveImmutableFunction(bytes4 selector);
    error InitializationFunctionReverted(address init, bytes callData);
    error NoBytecodeAtAddress(address contractAddress);

    // Events
    event CommandsModifications(ICommand.CommandModification[] _commandsModifications, address _init, bytes _calldata);

    event RouterUtilChange(address indexed previousRouterUtil, address indexed newRouterUtil);

    /**
     * @dev Get the storage struct for preview commands
     */
    function previewCommandsStorage() internal pure returns (PreviewCommandsStorage storage pcs) {
        bytes32 position = PREVIEW_COMMANDS_STORAGE_POSITION;
        assembly {
            pcs.slot := position
        }
    }

    function getRouterUtil() public view returns (address) {
        return previewCommandsStorage().routerUtil;
    }

    /**
     * @notice Sets the router util address in storage
     * @param _routerUtil The new router util address
     */
    function setRouterUtil(address _routerUtil) internal {
        emit RouterUtilChange(previewCommandsStorage().routerUtil, _routerUtil);
        previewCommandsStorage().routerUtil = _routerUtil;
    }

    function manageCommands(
        ICommand.CommandModification[] memory _commandsModifications,
        address _init,
        bytes memory _calldata
    ) internal {
        for (uint256 implementationIndex; implementationIndex < _commandsModifications.length; implementationIndex++) {
            bytes memory commands = _commandsModifications[implementationIndex].commands;
            bytes4[] memory selectors = _commandsModifications[implementationIndex].functionSelectors;
            address implementation = _commandsModifications[implementationIndex].implementation;
            if (commands.length != selectors.length) {
                revert MissmatchLength();
            }
            if (commands.length == 0) {
                revert EmptyCommandList();
            }
            ICommand.ImplementationAction action = _commandsModifications[implementationIndex].action;
            if (action == ICommand.ImplementationAction.Add) {
                addFunctions(implementation, commands, selectors);
            } else if (action == ICommand.ImplementationAction.Replace) {
                replaceFunctions(implementation, commands, selectors);
            } else if (action == ICommand.ImplementationAction.Remove) {
                removeFunctions(implementation, commands, selectors);
            } else {
                revert IncorrectManagementAction(uint8(action));
            }
        }
        emit CommandsModifications(_commandsModifications, _init, _calldata);
        initializeImplementation(_init, _calldata);
    }

    function addFunctions(address _implementationAddress, bytes memory _commands, bytes4[] memory _functionSelectors)
        internal
    {
        if (_implementationAddress == address(0)) {
            revert CannotAddSelectorsToZeroAddress(_functionSelectors);
        }
        PreviewCommandsStorage storage pcs = previewCommandsStorage();
        enforceHasContractCode(_implementationAddress);
        for (uint256 commandIndex; commandIndex < _commands.length; commandIndex++) {
            bytes1 command = _commands[commandIndex];
            bytes4 selector = _functionSelectors[commandIndex];
            // Check if command is already registered by searching for implementation
            address oldImplementationAddress = pcs.implementationAndFunction[command].implementation;
            if (oldImplementationAddress != address(0)) {
                revert CommandAlreadyRegistered(command);
            }

            // Add to supportedCommands array for enumeration
            pcs.supportedCommands.push(command);
            pcs.implementationAndFunction[command] = ImplementationAndFunction(_implementationAddress, selector);
        }
    }

    /**
     * @notice Replace the current address & selector associated with a command
     * @param _implementationAddress New implementation address
     * @param _commands Commands to be replaced
     * @param _functionSelectors New function selectors for the commands
     */
    function replaceFunctions(
        address _implementationAddress,
        bytes memory _commands,
        bytes4[] memory _functionSelectors
    ) internal {
        PreviewCommandsStorage storage pcs = previewCommandsStorage();
        if (_implementationAddress == address(0)) {
            revert CannotReplaceFunctionsFromFacetWithZeroAddress(_functionSelectors);
        }
        enforceHasContractCode(_implementationAddress);
        for (uint256 commandIndex; commandIndex < _commands.length; commandIndex++) {
            bytes1 command = _commands[commandIndex];
            bytes4 selector = _functionSelectors[commandIndex];
            address oldImplementationAddress = pcs.implementationAndFunction[command].implementation;
            // can't replace immutable functions -- functions defined directly in the contract
            if (oldImplementationAddress == address(this)) {
                revert CannotReplaceImmutableFunction(selector);
            }
            if (oldImplementationAddress == _implementationAddress) {
                revert CannotReplaceFunctionWithTheSameFunctionFromTheSameFacet(selector);
            }
            if (oldImplementationAddress == address(0)) {
                revert CannotReplaceFunctionThatDoesNotExists(selector);
            }
            // replace old implementation address and selector
            pcs.implementationAndFunction[command].implementation = _implementationAddress;
            pcs.implementationAndFunction[command].functionSelector = selector;
        }
    }

    /**
     * @notice Remove functions but keep the storage of the implementation
     * @param _facetAddress Must be zero address for removal operations
     * @param commands Commands to be removed
     * @param _functionSelectors Function selectors associated with commands to be removed
     */
    function removeFunctions(address _facetAddress, bytes memory commands, bytes4[] memory _functionSelectors)
        internal
    {
        PreviewCommandsStorage storage pcs = previewCommandsStorage();
        if (_facetAddress != address(0)) {
            revert RemoveFacetAddressMustBeZeroAddress(_facetAddress);
        }
        for (uint256 commandIndex; commandIndex < commands.length; commandIndex++) {
            bytes1 command = commands[commandIndex];
            bytes4 selector = _functionSelectors[commandIndex];

            ImplementationAndFunction memory implementationAndFunction = pcs.implementationAndFunction[command];
            if (implementationAndFunction.implementation == address(0)) {
                revert CannotRemoveFunctionThatDoesNotExist(selector);
            }

            // can't remove immutable functions -- functions defined directly in the contract
            if (implementationAndFunction.implementation == address(this)) {
                revert CannotRemoveImmutableFunction(selector);
            }

            // Remove command from supportedCommands array
            for (uint256 i = 0; i < pcs.supportedCommands.length; i++) {
                if (pcs.supportedCommands[i] == command) {
                    // Replace with the last element and pop
                    pcs.supportedCommands[i] = pcs.supportedCommands[pcs.supportedCommands.length - 1];
                    pcs.supportedCommands.pop();
                    break;
                }
            }

            // delete command mapping
            delete pcs.implementationAndFunction[command];
        }
    }

    /**
     * @notice Initialize implementation with delegatecall if _init is not zero address
     * @param _init Implementation address to initialize
     * @param _calldata Calldata to pass to the implementation
     */
    function initializeImplementation(address _init, bytes memory _calldata) internal {
        if (_init == address(0)) {
            return;
        }
        enforceHasContractCode(_init);
        (bool success, bytes memory error) = _init.delegatecall(_calldata);
        if (!success) {
            if (error.length > 0) {
                // bubble up error
                /// @solidity memory-safe-assembly
                assembly {
                    let returndata_size := mload(error)
                    revert(add(32, error), returndata_size)
                }
            } else {
                revert InitializationFunctionReverted(_init, _calldata);
            }
        }
    }

    /**
     * @notice Ensure the provided address contains contract code
     * @param _contract Address to check for code
     */
    function enforceHasContractCode(address _contract) internal view {
        uint256 contractSize;
        assembly {
            contractSize := extcodesize(_contract)
        }
        if (contractSize == 0) {
            revert NoBytecodeAtAddress(_contract);
        }
    }
}
