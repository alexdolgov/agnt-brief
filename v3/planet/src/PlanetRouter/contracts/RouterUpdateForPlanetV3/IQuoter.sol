pragma solidity 0.8.19;
// SPDX-License-Identifier: MIT

interface IQuoter{
    function quoteExactInput(bytes memory path, uint256 amountIn) external returns (uint256 amountOut, uint16[] memory fees);
}