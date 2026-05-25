// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;



interface ICrossSwap {
    enum CrossType {
        UserLock,
        UserBurn
    }

    enum CrossStatus {
        Pending,
        Success,
        Failed,
        RefundedToFromChain,
        RefundedToWanchain
    }

    struct CrossSwapParams {
        uint256 fromChain;
        uint256 toChain;
        address fromToken;
        address refundAddress; // default to use fromAccount must be an EOA address
        uint256 fromAmount; // This amount not include networkFee0 and messageFee, but includes serviceFee0 and gasStation 
        bytes toAddress;
        uint256 amountOutMin;

        address wrappedFromToken;
        address wrappedToToken;

        bytes32 smgID;

        uint256 tokenPairID0; // from chain to wanchain token pair id
        uint256 networkFee0;
        uint256 serviceFee0;
        CrossType crossType0; // 0: userLock, 1: userBurn

        uint256 tokenPairID1; // wanchain to destination chain token pair id
        CrossType crossType1; // 0: userLock, 1: userBurn
        
        uint256 messageFee;

        uint256 gasStation; // wrappedFromToken amount for destination chain gas fee

        uint24 swapFee0; // 500, 3000, 10000 means 0.05%, 0.3%, 1%
        uint24 swapFee1; // 500, 3000, 10000 means 0.05%, 0.3%, 1%
    }

    struct CrossSwapResult {
        bytes32 messageId;
        address fromToken;
        uint256 fromAmount;
        address toToken;
        uint256 toAmount;
    }

    function crossSwap(CrossSwapParams calldata params) external payable;
}