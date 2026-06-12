//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;

interface IVelodromeFactory {
    function getPair(
        address tokenA,
        address tokenB,
        bool stable
    ) external view returns (address pair);
}

interface IVelodromePair {
    function token0() external view returns (address);

    function token1() external view returns (address);

    function swap(
        uint256 amount0Out,
        uint256 amount1Out,
        address to,
        bytes calldata data
    ) external;

    function getAmountOut(uint256 amountIn, address tokenIn) external view returns (uint256);
}
