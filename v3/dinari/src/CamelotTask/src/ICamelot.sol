// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.23;

interface ICamelot {
    struct Trade {
        uint256 amountIn;
        uint256 amountOut;
        address[] path;
        address[] adapters;
        address[] recipients;
    }

    struct Query {
        address adapter;
        address recipient;
        address tokenIn;
        address tokenOut;
        uint256 amountOut;
    }

    function queryNoSplit(uint256 _amountIn, address _tokenIn, address _tokenOut)
        external
        view
        returns (Query memory);
    function swapNoSplit(Trade calldata _trade, uint256 _fee, address _to) external;
}
