// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.28;

interface IShadowLP {
    function current(address tokenIn, uint256 amountIn) external view returns (uint256 amountOut);
    function token0() external view returns (address);
    function token1() external view returns (address);
}
