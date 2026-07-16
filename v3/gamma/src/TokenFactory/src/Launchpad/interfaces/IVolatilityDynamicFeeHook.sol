// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "v4-core/types/PoolKey.sol";

interface IVolatilityDynamicFeeHook {
    function registerPool(
        PoolKey calldata key,
        uint24 baseFee,
        uint24 maxFee,
        uint256 volatilityScale,
        uint32 twapWindow
    ) external;

    function updateFeeParams(
        PoolKey calldata key,
        uint24 baseFee,
        uint24 maxFee,
        uint256 volatilityScale,
        uint32 twapWindow
    ) external;

    function increaseCardinalityNext(PoolKey calldata key, uint32 cardinalityNext) external;

    function getCurrentVolatility(PoolKey calldata key) external view returns (uint256);

    function setCommunityAddress(address _communityAddress) external;
}
