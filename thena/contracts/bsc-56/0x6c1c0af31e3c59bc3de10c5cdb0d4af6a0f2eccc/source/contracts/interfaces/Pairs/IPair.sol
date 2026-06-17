// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IPair {
    function allowance(address, address) external view returns (uint);
    function balanceOf(address) external view returns (uint);
    function burn(address to) external returns (uint amount0, uint amount1);
    function claimFees() external returns (uint claimed0, uint claimed1);
    function claimStakingFees() external;
    function current(address tokenIn, uint amountIn) external view returns (uint amountOut);
    function currentCumulativePrices() external view returns (uint reserve0Cumulative, uint reserve1Cumulative, uint blockTimestamp);
    function decimals() external view returns (uint8);
    function fees() external view returns (address);
    function getAmountOut(uint amountIn, address tokenIn) external view returns (uint);
    function getReserves() external view returns (uint _reserve0, uint _reserve1, uint _blockTimestampLast);
    function isStable() external view returns(bool);
    function metadata() external view returns (uint dec0, uint dec1, uint r0, uint r1, bool st, address t0, address t1);
    function mint(address to) external returns (uint liquidity);
    function name() external view returns (string memory);
    function nonces(address) external view returns (uint);
    function prices(address tokenIn, uint amountIn, uint points) external view returns (uint[] memory);
    function quote(address tokenIn, uint amountIn, uint granularity) external view returns (uint amountOut);
    function sample(address tokenIn, uint amountIn, uint points, uint window) external view returns (uint[] memory);
    function skim(address to) external;
    function stable() external view returns (bool);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function symbol() external view returns (string memory);
    function sync() external;
    function tokens() external view returns (address, address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function totalSupply() external view returns (uint);
}
