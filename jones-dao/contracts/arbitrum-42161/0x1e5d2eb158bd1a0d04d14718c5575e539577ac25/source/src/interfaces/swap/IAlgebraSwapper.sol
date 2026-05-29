// SPDX-License-Identifier: MIT
pragma solidity ^0.7.6;
pragma abicoder v2;

interface IAlgebraSwapper {
    struct SwapPair {
        address from;
        address to;
    }

    function upsertPathOverride(address tracker, address inputToken, address outputToken, SwapPair[] calldata swapRoute)
        external;
}
