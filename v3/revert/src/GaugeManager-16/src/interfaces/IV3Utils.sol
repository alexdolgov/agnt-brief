// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IV3Utils {
    enum WhatToDo {
        CHANGE_RANGE,
        WITHDRAW_AND_COLLECT_AND_SWAP,
        COMPOUND_FEES
    }

    struct Instructions {
        WhatToDo whatToDo;
        address targetToken;
        uint256 amountRemoveMin0;
        uint256 amountRemoveMin1;
        uint256 amountIn0;
        uint256 amountOut0Min;
        bytes swapData0;
        uint256 amountIn1;
        uint256 amountOut1Min;
        bytes swapData1;
        uint128 feeAmount0;
        uint128 feeAmount1;
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint128 liquidity;
        uint256 amountAddMin0;
        uint256 amountAddMin1;
        uint256 deadline;
        address recipient;
        address recipientNFT;
        bool unwrap;
        bytes returnData;
        bytes swapAndMintReturnData;
    }

    struct SwapAndIncreaseLiquidityParams {
        uint256 tokenId;
        uint256 amount0;
        uint256 amount1;
        address recipient;
        uint256 deadline;
        address swapSourceToken;
        uint256 amountIn0;
        uint256 amountOut0Min;
        bytes swapData0;
        uint256 amountIn1;
        uint256 amountOut1Min;
        bytes swapData1;
        uint256 amountAddMin0;
        uint256 amountAddMin1;
        bytes permitData;
    }

    function execute(uint256 tokenId, Instructions memory instructions) external returns (uint256 newTokenId);
    
    function swapAndIncreaseLiquidity(SwapAndIncreaseLiquidityParams calldata params) 
        external payable returns (uint128 liquidity, uint256 amount0, uint256 amount1);
}