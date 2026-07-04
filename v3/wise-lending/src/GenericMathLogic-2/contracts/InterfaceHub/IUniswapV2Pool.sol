// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

interface IUniswapV2Pool {

    function getReserves()
        external
        view
        returns (
            uint112 reserve0,
            uint112 reserve1,
            uint32 blockTimestampLast
        );

    function token0()
        external
        view
        returns (address);

    function token1()
        external
        view
        returns (address);

    function totalSupply()
        external
        view
        returns (uint);

    function balanceOf(address owner)
        external
        view
        returns (uint);

    function getAmountsOut(
        uint amountIn,
        address[] memory path
    )
        external
        view
        returns (uint[] memory amounts);

    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    )
        external
        returns (uint[] memory amounts);

    function swap(
        uint amount0Out,
        uint amount1Out,
        address to,
        bytes calldata data
    )
        external;

    function skim(address to)
        external;

    function sync()
        external;

    function initialize(
        address,
        address
    )
        external;
}
