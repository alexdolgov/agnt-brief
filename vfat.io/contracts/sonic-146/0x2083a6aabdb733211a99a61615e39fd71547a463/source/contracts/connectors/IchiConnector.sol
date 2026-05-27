// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IICHIVault } from "contracts/interfaces/external/swapx/IIchiVault.sol";
import {
    ILiquidityConnector,
    AddLiquidityParams,
    RemoveLiquidityParams,
    SwapParams,
    GetAmountOutParams
} from "contracts/interfaces/ILiquidityConnector.sol";

contract IchiConnector is ILiquidityConnector {
    error NotSupported();
    error PoolTokensNotAllowed();

    function addLiquidity(
        AddLiquidityParams memory addLiquidityParams
    ) external payable override {
        if (
            IICHIVault(addLiquidityParams.lpToken).allowToken0()
                && !IICHIVault(addLiquidityParams.lpToken).allowToken1()
        ) {
            IICHIVault(addLiquidityParams.lpToken).deposit(
                addLiquidityParams.desiredAmounts[0], 0, address(this)
            );
        } else if (
            !IICHIVault(addLiquidityParams.lpToken).allowToken0()
                && IICHIVault(addLiquidityParams.lpToken).allowToken1()
        ) {
            IICHIVault(addLiquidityParams.lpToken).deposit(
                0, addLiquidityParams.desiredAmounts[1], address(this)
            );
        } else if (
            IICHIVault(addLiquidityParams.lpToken).allowToken0()
                && IICHIVault(addLiquidityParams.lpToken).allowToken1()
        ) {
            IICHIVault(addLiquidityParams.lpToken).deposit(
                addLiquidityParams.desiredAmounts[0],
                addLiquidityParams.desiredAmounts[1],
                address(this)
            );
        } else {
            revert PoolTokensNotAllowed();
        }
    }

    function removeLiquidity(
        RemoveLiquidityParams memory removeLiquidityParams
    ) external override {
        IICHIVault(removeLiquidityParams.lpToken).withdraw(
            removeLiquidityParams.lpAmountIn, address(this)
        );
    }

    function swapExactTokensForTokens(
        SwapParams memory
    ) external payable override {
        revert NotSupported();
    }

    function getAmountOut(
        GetAmountOutParams memory
    ) external pure returns (uint256) {
        revert NotSupported();
    }
}
