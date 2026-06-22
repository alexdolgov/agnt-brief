// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IBeamswapExectuor {
    function executeSplitSwap(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        bytes calldata swapData
    ) external;
}
