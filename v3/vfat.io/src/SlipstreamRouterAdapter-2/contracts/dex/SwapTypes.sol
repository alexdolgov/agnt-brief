// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/// @notice DEX types `SwapRouter` knows how to dispatch. Kept as `uint8`
/// in the public ABI (see `SwapStep.dexType`); adapters and external
/// callers should append new entries rather than reordering existing
/// ones — `dexAdapter[uint8]` mappings on every deployed `SwapRouter`
/// instance are keyed by this enum's byte value.
enum DexType {
    UniswapV2,
    UniswapV3Router02,
    Solidly,
    Algebra,
    UniswapV4,
    VelodromeUniversalRouter,
    UniswapV3Router,
    AerodromeRouter,
    AlgebraPool,
    SlipstreamRouter,
    BlackholeV2Router,
    UniswapV3Pool,
    WrapWETH,
    UnwrapWETH,
    CamelotV2Router,
    PancakeInfinity
}

/// @notice One hop of a multi-step swap. Stable, ABI-stable struct used
/// by `SwapRouter`, every `IDexAdapter`, every bridge swap receiver, and
/// every off-chain encoder (vfat-api, deploy scripts).
struct SwapStep {
    DexType dexType;
    address router;
    address tokenIn;
    address tokenOut;
    bytes dexData;
}
