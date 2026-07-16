// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IAboreanRouter } from "../interfaces/IAboreanRouter.sol";

contract MockAboreanRouter is IAboreanRouter {
    using SafeERC20 for IERC20;

    uint256 public totalSwappedAmountIn;
    uint256 public totalLiquidityTokenA;
    uint256 public totalLiquidityTokenB;
    address public lastLiquidityRecipient;
    uint256 public lastSwapAmountOutMin;
    uint256 public lastLiquidityAmountAMin;
    uint256 public lastLiquidityAmountBMin;

    function defaultFactory() external view returns (address) {
        return address(this);
    }

    function getAmountsOut(
        uint256 amountIn,
        Route[] memory routes
    ) external pure returns (uint256[] memory amounts) {
        amounts = new uint256[](routes.length + 1);
        amounts[0] = amountIn;
        // Mock: 1:1 swap ratio for all hops
        for (uint256 i = 0; i < routes.length; i++) {
            amounts[i + 1] = amountIn;
        }
    }

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        Route[] calldata routes,
        address to,
        uint256
    ) external {
        require(routes.length > 0, "NO_ROUTE");

        IERC20 tokenIn = IERC20(routes[0].from);
        IERC20 tokenOut = IERC20(routes[routes.length - 1].to);

        tokenIn.safeTransferFrom(msg.sender, address(this), amountIn);
        tokenOut.safeTransfer(to, amountIn);

        totalSwappedAmountIn += amountIn;
        lastSwapAmountOutMin = amountOutMin;
    }

    function addLiquidity(
        address tokenA,
        address tokenB,
        bool,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256
    ) external returns (uint256, uint256, uint256) {
        IERC20(tokenA).safeTransferFrom(msg.sender, address(this), amountADesired);
        IERC20(tokenB).safeTransferFrom(msg.sender, address(this), amountBDesired);

        totalLiquidityTokenA += amountADesired;
        totalLiquidityTokenB += amountBDesired;
        lastLiquidityRecipient = to;
        lastLiquidityAmountAMin = amountAMin;
        lastLiquidityAmountBMin = amountBMin;

        uint256 liquidity = amountADesired < amountBDesired ? amountADesired : amountBDesired;
        return (amountADesired, amountBDesired, liquidity);
    }
}
