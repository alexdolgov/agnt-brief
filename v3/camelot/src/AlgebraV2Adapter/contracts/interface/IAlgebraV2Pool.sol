// SPDX-License-Identifier: GPL-3.0-only

pragma solidity ^0.8.0;

interface IAlgebraV2Pool {
    function swap(
        address recipient,
        bool zeroToOne,
        int256 amountRequired,
        uint160 limitSqrtPrice,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);

    function token0() external view returns (address);

    function token1() external view returns (address);
}
