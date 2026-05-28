// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity 0.8.17;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";
import { IRouter } from "src/contracts/interfaces/external/aerodrome/IRouter.sol";
import { IPool } from "src/contracts/interfaces/external/aerodrome/IPool.sol";
import { IAerodromeAdapter } from "src/contracts/interfaces/internal/adapters/IAerodromeAdapter.sol";

contract AerodromeAdapter is IAerodromeAdapter {
    using SafeERC20 for IERC20;

    address public immutable aerodromeSwapRouter;

    constructor(
        address _aerodromeSwapRouter
    ) {
        aerodromeSwapRouter = _aerodromeSwapRouter;
    }

    function safeApprove(address token, uint256 amount) external {
        IERC20(token).safeIncreaseAllowance(aerodromeSwapRouter, amount);
    }

    function addLiquidity(
        address pool,
        address tokenA,
        address tokenB,
        uint256 amountA,
        uint256 amountB,
        uint256 minAmountA,
        uint256 minAmountB
    ) external {
        bool stable = IPool(pool).stable();

        //slither-disable-next-line unused-return
        IRouter(aerodromeSwapRouter).addLiquidity(
            tokenA, tokenB, stable, amountA, amountB, minAmountA, minAmountB, address(this), block.timestamp
        );
    }

    function removeLiquidity(
        address pool,
        address tokenA,
        address tokenB,
        uint256 amountA,
        uint256 amountB,
        uint256 maxLpBurnAmount
    ) external {
        IERC20(pool).safeApprove(aerodromeSwapRouter, maxLpBurnAmount);

        bool stable = IPool(pool).stable();

        //slither-disable-next-line unused-return
        IRouter(aerodromeSwapRouter).removeLiquidity(
            tokenA, tokenB, stable, maxLpBurnAmount, amountA, amountB, address(this), block.timestamp
        );
    }
}
