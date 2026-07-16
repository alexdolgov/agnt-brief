// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

interface IFactoryAvax {
    function getPair(
        address tokenA,
        address tokenB
    ) external pure returns (address pair);

    function createPair(
        address tokenA,
        address tokenB
    ) external returns (address pair);
}

interface IRouterAvax {
    function factory() external pure returns (address);

    function WAVAX() external pure returns (address);

    function addLiquidityAVAX(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    )
        external
        payable
        returns (uint amountToken, uint amountETH, uint liquidity);
}

interface IFactoryPharaoh {
    function getPair(
        address tokenA,
        address tokenB,
        bool stable
    ) external pure returns (address pair);

    function createPair(
        address tokenA,
        address tokenB,
        bool stable
    ) external returns (address pair);
}

interface IRouterPharaoh {
    function factory() external pure returns (address);

    function weth() external pure returns (address);

    function addLiquidityETH(
        address token,
        bool stable,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    )
        external
        payable
        returns (uint amountToken, uint amountETH, uint liquidity);
}
