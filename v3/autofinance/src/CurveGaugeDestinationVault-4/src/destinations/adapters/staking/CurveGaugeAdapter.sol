// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import { ILiquidityGaugeV2 } from "src/interfaces/external/curve/ILiquidityGaugeV2.sol";
import { Errors } from "src/utils/Errors.sol";
import { LibAdapter } from "src/libs/LibAdapter.sol";

library CurveGaugeStaking {
    error BalanceMustIncrease();

    /// @notice Deposits LP tokens into Curve gauge and stakes them
    /// @dev This function will revert if the balance of the gauge does not increase
    /// @param lpToken LP token to deposit
    /// @param gauge Curve gauge to stake in
    /// @param amount Amount of LP tokens to deposit
    function deposit(address lpToken, address gauge, uint256 amount) public {
        Errors.verifyNotZero(lpToken, "lpToken");
        Errors.verifyNotZero(gauge, "gauge");
        Errors.verifyNotZero(amount, "amount");

        uint256 gaugeBalanceBefore = ILiquidityGaugeV2(gauge).balanceOf(address(this));

        LibAdapter._approve(IERC20(lpToken), gauge, amount);

        // The LiquidityGauge (v1) only has the 2-parameter version of deposit()
        // v2+ gauges have the 3-parameter version with _claim_rewards parameter
        // We use the 2-parameter version here for compatibility with all gauges, which implicitly sets
        // claim_rewards=false.
        ILiquidityGaugeV2(gauge).deposit(amount, address(this));

        // Verify gauge balance increased
        if (ILiquidityGaugeV2(gauge).balanceOf(address(this)) <= gaugeBalanceBefore) {
            revert BalanceMustIncrease();
        }
    }

    /// @notice Withdraws staked LP tokens from Curve gauge
    /// @param lpToken LP token to withdraw
    /// @param gauge Curve gauge to withdraw from
    /// @param amount Amount of LP tokens to withdraw
    function withdraw(address lpToken, address gauge, uint256 amount) public {
        Errors.verifyNotZero(lpToken, "lpToken");
        Errors.verifyNotZero(gauge, "gauge");
        Errors.verifyNotZero(amount, "amount");

        uint256 lpBalanceBefore = IERC20(lpToken).balanceOf(address(this));

        ILiquidityGaugeV2(gauge).withdraw(amount);

        // Verify balances
        if (IERC20(lpToken).balanceOf(address(this)) <= lpBalanceBefore) {
            revert BalanceMustIncrease();
        }
    }
}
