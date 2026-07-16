// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {DynamicFeeHook} from "./DynamicFeeHook.sol";

/**
 * @title DynamicFeeHookRegistry
 * @notice Stores bytecode for DynamicFeeHook to reduce factory contract size
 */
contract DynamicFeeHookRegistry {
    /**
     * @notice Get the creation bytecode for DynamicFeeHook
     * @return The creation bytecode
     */
    function getBytecode() external pure returns (bytes memory) {
        return type(DynamicFeeHook).creationCode;
    }
}