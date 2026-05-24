pragma solidity 0.8.19;
// SPDX-License-Identifier: MIT

interface IFusionRouter{
    struct ExactInputParams {
        bytes path;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
    }
}

interface IFusionRouter2 is IFusionRouter{
    function exactInput(ExactInputParams calldata params) external payable returns (uint256 amountOut);
}