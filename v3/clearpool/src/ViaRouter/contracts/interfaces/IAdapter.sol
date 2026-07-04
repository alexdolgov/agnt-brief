// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

interface IAdapter {
    function call(
        address tokenIn,
        uint256 amountIn,
        bytes memory args
    ) external payable;
}
