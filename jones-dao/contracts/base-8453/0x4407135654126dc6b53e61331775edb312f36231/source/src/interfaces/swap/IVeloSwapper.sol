// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

interface IVeloSwapper {
    struct SwapPair {
        address from;
        address to;
        int24 tickSpacing;
    }

    function upsertPathOverride(address tracker, address inputToken, address outputToken, SwapPair[] calldata swapRoute)
        external;
}
