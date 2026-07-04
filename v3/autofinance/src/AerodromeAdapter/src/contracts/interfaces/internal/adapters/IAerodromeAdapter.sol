// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity 0.8.17;

interface IAerodromeAdapter {
    function aerodromeSwapRouter() external returns (address);

    function safeApprove(address token, uint256 amount) external;

    function addLiquidity(
        address pool,
        address tokenA,
        address tokenB,
        uint256 amountA,
        uint256 amountB,
        uint256 minAmountA,
        uint256 minAmountB
    ) external;

    function removeLiquidity(
        address pool,
        address tokenA,
        address tokenB,
        uint256 amountA,
        uint256 amountB,
        uint256 maxLpBurnAmount
    ) external;
}
