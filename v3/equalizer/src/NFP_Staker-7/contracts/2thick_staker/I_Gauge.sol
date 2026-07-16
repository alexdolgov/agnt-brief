// Liquidity Market Gauge
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;

interface IGauge {
    function ve() external view returns (address);
    function voter() external returns (address);
}