// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.1;

interface ISplitRouter {

    struct SwapParams {
        uint256 dividedAmount;
        address[] paths;
        address[][] pathPools;
        uint256[][] protocolRatio;
    }

    function swapProtocols(
        uint256 fromAmount,
        uint256 minReturnAmount,
        SwapParams[] calldata swapParams
    ) external payable returns (uint256,string memory);

    event SwapLog(address indexed from, address indexed to, uint256 fromAmount, uint256 outAmount, uint256 feeAmount);
    // event Swap(address indexed from, address indexed to, uint256 fromAmount, uint256 outAmount, uint256 quoteAmount);
}