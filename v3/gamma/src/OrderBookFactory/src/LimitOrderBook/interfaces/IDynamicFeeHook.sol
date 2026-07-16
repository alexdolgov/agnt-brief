// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {PoolKey} from "v4-core/types/PoolKey.sol";

/// @title IDynamicFeeHook
/// @notice Interface for fee-only dynamic fee hook (no limit order functionality)
interface IDynamicFeeHook {
    function registerPool(PoolKey calldata key) external;
    function updateDynamicLPFee(PoolKey calldata key, uint24 newFee) external;
    function getDynamicLPFee(PoolKey calldata key) external view returns (uint24);
}
