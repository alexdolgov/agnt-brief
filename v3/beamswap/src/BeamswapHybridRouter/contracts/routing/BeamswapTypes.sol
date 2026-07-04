// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract BeamswapTypes {
    enum SwapType {
        None, //0 - implemented
        K, //1 - implemented
        SaddleStable, //2 - implemented
        UniV3, //3 - implemented
        Gmx //4 - implemented
    }

    struct SplitPaths {
        uint256 amountIn;
        address[] pools;
        SwapDataWrapper[] wrappedSwapData;
    }

    struct SwapDataWrapper {
        bytes swapData;
        SwapType swapType; //? enum
    }

    struct PlainSwapData {
        uint8 poolInPos; //1
        uint8 poolOutPos; //
        address tokenOut; //20
        uint256 poolFee; //32
    }

    struct UniV3SwapData {
        uint8 poolInPos; //1
        uint8 poolOutPos; //
        address tokenOut; //20
        bytes callbackData;
    }

    struct GmxSwapData {
        address tokenIn;
        address tokenOut;
    }
}
