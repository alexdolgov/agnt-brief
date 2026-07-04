// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

interface IUniswapV3PoolPowerFarm {

    function flash(
        address recipient,
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    )
        external;

    function token0()
        external
        view
        returns (address);

    function token1()
        external
        view
        returns (address);
}