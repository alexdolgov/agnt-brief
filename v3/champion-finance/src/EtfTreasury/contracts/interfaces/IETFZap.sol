// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IETFZap {
    function getMaxAmountForJoinSingle(
        address tokenIn,
        address[] memory intermediaries,
        uint256 poolAmountOut
    ) external view returns (uint256 amountInMax);

    function joinSingle(
        address tokenIn,
        uint256 amountInMax,
        address[] memory intermediaries,
        uint256 poolAmountOut
    ) external;
}