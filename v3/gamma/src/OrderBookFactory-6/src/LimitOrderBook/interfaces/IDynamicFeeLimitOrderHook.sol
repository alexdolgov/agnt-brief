// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {PoolKey} from "v4-core/types/PoolKey.sol";

interface IDynamicFeeLimitOrderHook {
    function registerPool(PoolKey calldata key) external;
    function updateDynamicLPFee(PoolKey calldata key, uint24 newFee) external;
    function setCommunityAddress(address _communityAddress) external;
}