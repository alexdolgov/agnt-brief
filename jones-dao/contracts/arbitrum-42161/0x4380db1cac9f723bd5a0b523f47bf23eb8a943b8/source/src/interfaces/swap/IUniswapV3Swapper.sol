// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

interface IUniswapV3Swapper {
    struct SwapPair {
        address from;
        address to;
        uint24 fee;
    }

    function upsertPathOverride(address tracker, address inputToken, address outputToken, SwapPair[] calldata swapRoute)
        external;
}
