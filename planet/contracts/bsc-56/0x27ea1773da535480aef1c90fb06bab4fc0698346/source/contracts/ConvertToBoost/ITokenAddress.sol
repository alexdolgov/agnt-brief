// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface ITokenAddress{
    function token0() external view returns (address token0);
    function token1() external view returns (address token1);
    function getReserves() external view returns (uint256 reserve0, uint256 reserve1, uint256 lastBlockTimestamp);
    function getTotalAmounts() external view returns (uint256 total0, uint256 total1);
    function totalSupply() external view returns (uint256 totalSupply);
}