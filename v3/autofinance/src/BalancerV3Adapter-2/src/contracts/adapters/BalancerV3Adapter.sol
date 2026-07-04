// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity ^0.8.24;

import { IRouter } from "src/contracts/interfaces/external/balancer/v3/IRouter.sol";
import { ICompositeLiquidityRouter } from "src/contracts/interfaces/external/balancer/v3/ICompositeLiquidityRouter.sol";
import { IAllowanceTransfer } from "src/contracts/interfaces/external/uniswap/permit2/IAllowanceTransfer.sol";
import { IERC20 } from "openzeppelin-contracts/token/ERC20/IERC20.sol";
import { IVaultExplorer } from "src/contracts/interfaces/external/balancer/v3/IVaultExplorer.sol";
import { IPoolInfo } from "src/contracts/interfaces/external/balancer/v3/IPoolInfo.sol";

contract BalancerV3Adapter {
    ICompositeLiquidityRouter public immutable compositeRouter;

    IRouter public immutable router;

    IAllowanceTransfer public immutable permit2;

    IVaultExplorer public immutable vaultExplorer;

    constructor(address _compositeRouter, address _router, address _permit2, address _vaultExplorer) {
        compositeRouter = ICompositeLiquidityRouter(_compositeRouter);
        router = IRouter(_router);
        permit2 = IAllowanceTransfer(_permit2);
        vaultExplorer = IVaultExplorer(_vaultExplorer);
    }

    function isPoolBoosted(
        address poolAddress
    ) external view returns (bool isBoosted, bool[] memory isWrapped) {
        address[] memory poolTokens = IPoolInfo(address(poolAddress)).getTokens();
        isWrapped = new bool[](poolTokens.length);

        for (uint256 i = 0; i < poolTokens.length; i++) {
            address rawToken = vaultExplorer.getBufferAsset(poolTokens[i]);
            isWrapped[i] = rawToken != address(0);
            if (isWrapped[i]) {
                isBoosted = true;
            }
        }
    }

    function addLiquidity(
        address pool,
        address[] memory tokenAddresses,
        uint256[] memory amountsIn,
        uint256 minAmountOut,
        bool isBoosted,
        bool[] memory isWrapped
    ) external {
        bool wethIsEth = false;
        bytes memory userData = "";

        address _router = isBoosted ? address(compositeRouter) : address(router);
        IAllowanceTransfer permit = permit2;

        for (uint256 i = 0; i < tokenAddresses.length; i++) {
            IERC20(tokenAddresses[i]).approve(address(permit2), amountsIn[i]);
            permit.approve(tokenAddresses[i], _router, uint160(amountsIn[i]), uint48(block.timestamp));
        }

        if (isBoosted) {
            compositeRouter.addLiquidityUnbalancedToERC4626Pool(
                pool, isWrapped, amountsIn, minAmountOut, wethIsEth, userData
            );
        } else {
            router.addLiquidityUnbalanced(pool, amountsIn, minAmountOut, wethIsEth, userData);
        }
    }

    function removeLiquidity(
        address pool,
        uint256 burnAmountLP,
        uint256[] memory minAmountsOut,
        bool isBoosted,
        bool[] memory isWrapped
    ) external {
        bool wethIsEth = false;
        bytes memory userData = "";

        address _router = isBoosted ? address(compositeRouter) : address(router);
        IERC20(pool).approve(_router, burnAmountLP);

        if (isBoosted) {
            compositeRouter.removeLiquidityProportionalFromERC4626Pool(
                pool, isWrapped, burnAmountLP, minAmountsOut, wethIsEth, userData
            );
        } else {
            router.removeLiquidityProportional(pool, burnAmountLP, minAmountsOut, wethIsEth, userData);
        }
    }
}
