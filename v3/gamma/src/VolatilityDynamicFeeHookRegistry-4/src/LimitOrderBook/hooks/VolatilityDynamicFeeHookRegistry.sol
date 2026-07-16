// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {VolatilityDynamicFeeHook} from "./VolatilityDynamicFeeHook.sol";

/**
 * @title VolatilityDynamicFeeHookRegistry
 * @notice Stores bytecode for VolatilityDynamicFeeHook to reduce factory contract size
 */
contract VolatilityDynamicFeeHookRegistry {
    /**
     * @notice Get the creation bytecode for VolatilityDynamicFeeHook
     * @return The creation bytecode
     */
    function getBytecode() external pure returns (bytes memory) {
        return type(VolatilityDynamicFeeHook).creationCode;
    }
}
