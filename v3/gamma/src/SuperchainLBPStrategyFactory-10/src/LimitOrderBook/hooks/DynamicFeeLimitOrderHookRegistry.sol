// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {DynamicFeeLimitOrderHook} from "./DynamicFeeLimitOrderHook.sol";

/**
 * @title DynamicFeeLimitOrderHookRegistry
 * @notice Stores bytecode for DynamicFeeLimitOrderHook to reduce factory contract size
 */
contract DynamicFeeLimitOrderHookRegistry {
    /**
     * @notice Get the creation bytecode for DynamicFeeLimitOrderHook
     * @return The creation bytecode
     */
    function getBytecode() external pure returns (bytes memory) {
        return type(DynamicFeeLimitOrderHook).creationCode;
    }
}