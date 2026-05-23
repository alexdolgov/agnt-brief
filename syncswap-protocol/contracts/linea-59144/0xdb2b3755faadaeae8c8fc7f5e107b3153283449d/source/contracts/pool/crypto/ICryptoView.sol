// SPDX-License-Identifier: AGPL-3.0-or-later

pragma solidity ^0.8.0;

interface ICryptoView {
    function getAmountOut(
        address pool,
        address tokenIn,
        uint amountIn,
        address sender,
        bytes memory feeData
    ) external view returns (uint);
}