// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

interface IUniswapFactory {

    function getPair(
        address tokenA,
        address tokenB
    )
        external
        view
        returns (address pair);
}