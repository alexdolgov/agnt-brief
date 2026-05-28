// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {VolatilityDynamicFeeLimitOrderHook} from "./VolatilityDynamicFeeLimitOrderHook.sol";

/**
 * @title VolatilityDynamicFeeLimitOrderHookRegistry
 * @notice Stores bytecode for VolatilityDynamicFeeLimitOrderHook to reduce factory contract size
 */
contract VolatilityDynamicFeeLimitOrderHookRegistry {
    /**
     * @notice Get the creation bytecode for VolatilityDynamicFeeLimitOrderHook
     * @return The creation bytecode
     */
    function getBytecode() external pure returns (bytes memory) {
        return type(VolatilityDynamicFeeLimitOrderHook).creationCode;
    }
}
