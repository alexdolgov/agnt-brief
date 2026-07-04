// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";

import { IRouter } from "src/interfaces/external/balancer/v3/IRouter.sol";
import { ICompositeLiquidityRouter } from "src/interfaces/external/balancer/v3/ICompositeLiquidityRouter.sol";
import { Errors } from "src/utils/Errors.sol";
import { SafeERC20 } from "openzeppelin-contracts/token/ERC20/utils/SafeERC20.sol";

//slither-disable-start reentrancy-events
library BalancerV3Adapter {
    error BalanceMustIncrease();
    error InvalidBalanceChange();

    event WithdrawLiquidity(
        uint256[] amountsWithdrawn,
        address[] tokens,
        // 0 - lpBurnAmount
        // 1 - lpShare
        // 2 - lpTotalSupply
        uint256[3] lpAmounts,
        address poolAddress
    );

    /**
     * @notice Withdraw liquidity from Balancer V3 pool (specifying exact LP tokens to burn)
     * @dev Calls into external contract. Should be guarded with non-reentrant flags in a used contract.
     *   For boosted pools (isBoosted=true): Uses ICompositeLiquidityRouter.removeLiquidityProportionalFromERC4626Pool()
     *   For regular pools (isBoosted=false): Uses IRouter.removeLiquidityProportional()
     * @param router Address of the router to use (regular or composite)
     * @param pool Balancer Pool to withdraw liquidity from
     * @param tokens Array of token addresses in the pool
     * @param minAmountsOut Array of minimum amounts of tokens to be withdrawn from pool
     * @param exactLpBurnAmount Amount of LP tokens to burn in the withdrawal
     * @param isBoosted Whether the pool is a boosted pool
     */
    function removeLiquidity(
        address router,
        address pool,
        address[] memory tokens,
        uint256[] memory minAmountsOut,
        uint256 exactLpBurnAmount,
        bool isBoosted,
        bool[] memory unwrapWrapped
    ) public returns (uint256[] memory withdrawnAmounts) {
        Errors.verifyNotZero(router, "router");
        Errors.verifyNotZero(pool, "pool");
        Errors.verifyNotZero(exactLpBurnAmount, "exactLpBurnAmount");

        uint256 nTokens = tokens.length;

        // Record balances before withdraw
        uint256 bptBalanceBefore = IERC20(pool).balanceOf(address(this));
        uint256[] memory assetBalancesBefore = new uint256[](nTokens);
        for (uint256 i = 0; i < nTokens; ++i) {
            assetBalancesBefore[i] = IERC20(tokens[i]).balanceOf(address(this));
        }

        SafeERC20.safeApprove(IERC20(pool), router, exactLpBurnAmount);

        // Remove liquidity using appropriate router
        // slither-disable-start unused-return
        if (isBoosted) {
            ICompositeLiquidityRouter(router).removeLiquidityProportionalFromERC4626Pool(
                pool, unwrapWrapped, exactLpBurnAmount, minAmountsOut, false, ""
            );
        } else {
            IRouter(router).removeLiquidityProportional(pool, exactLpBurnAmount, minAmountsOut, false, "");
        }
        // slither-disable-end unused-return

        // Verify exact amount of BPT was burned
        uint256 bptBalanceAfter = IERC20(pool).balanceOf(address(this));
        if (bptBalanceBefore - bptBalanceAfter != exactLpBurnAmount) {
            revert InvalidBalanceChange();
        }

        // Verify received amounts and prepare return values
        withdrawnAmounts = new uint256[](nTokens);
        for (uint256 i = 0; i < nTokens; ++i) {
            uint256 assetBalanceBefore = assetBalancesBefore[i];
            uint256 currentBalance = IERC20(tokens[i]).balanceOf(address(this));

            // Ensure we received at least the minimum amount out
            if (currentBalance - assetBalanceBefore < minAmountsOut[i]) {
                revert BalanceMustIncrease();
            }

            withdrawnAmounts[i] = currentBalance - assetBalanceBefore;
        }

        emit WithdrawLiquidity(
            withdrawnAmounts,
            tokens,
            [bptBalanceBefore - bptBalanceAfter, bptBalanceAfter, IERC20(pool).totalSupply()],
            pool
        );
    }
}
//slither-disable-end reentrancy-events
