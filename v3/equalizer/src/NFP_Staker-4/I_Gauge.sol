// Liquidity Market Gauge
// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.9;

import "./I_ERC20.sol";

interface IGauge is IERC20 {
    function ve() external view returns (address);
    function voter() external returns (address);
}