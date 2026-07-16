// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.7.6;
pragma abicoder v2;

import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/SafeERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { ISwapRouter } from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import { IQuoteVault } from "./interface/IQuoteVault.sol";

contract KtbUniArbitrageur {
    address internal _uniswapV3Router;

    event Arbitraged(
        address kantabanVault,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        bool isToBuyOnKtb,
        uint24 uniswapV3PoolFeeTier,
        uint256 profit
    );

    constructor(address uniswapV3RouterArg) {
        _uniswapV3Router = uniswapV3RouterArg;
    }

    // EXTERNAL NON-VIEW

    function arbitrage(
        address kantabanVault,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        bool isToBuyOnKtb,
        uint24 uniswapV3PoolFeeTier
    ) external returns (uint256) {
        // Transfer tokenIn to here for msg.sender
        address msgSender = msg.sender;
        _transferTokenIn(tokenIn, msgSender, amountIn);

        uint256 amountOut;
        if (isToBuyOnKtb) {
            uint256 amountOutFromKtb = _swapOnKtb(kantabanVault, tokenIn, tokenOut, amountIn);
            amountOut = _swapOnUni(tokenOut, tokenIn, amountOutFromKtb, uniswapV3PoolFeeTier);
        } else {
            uint256 amountOutFromUni = _swapOnUni(tokenIn, tokenOut, amountIn, uniswapV3PoolFeeTier);
            amountOut = _swapOnKtb(kantabanVault, tokenOut, tokenIn, amountOutFromUni);
        }

        // KUA_NP: no profit
        require(amountOut > amountIn, "KUA_NP");

        // return funds to msg.sender
        SafeERC20.safeTransfer(IERC20(tokenIn), msgSender, amountIn);

        // distribute profit to kantabanVault
        uint256 profit = amountOut - amountIn;
        SafeERC20.safeTransfer(IERC20(tokenIn), kantabanVault, profit);

        emit Arbitraged(kantabanVault, tokenIn, tokenOut, amountIn, isToBuyOnKtb, uniswapV3PoolFeeTier, profit);

        return profit;
    }

    // EXTERNAL VIEW

    function getUniswapV3Router() external view returns (address) {
        return _uniswapV3Router;
    }

    // INTERNAL

    function _swapOnKtb(
        address kantabanVault,
        address tokenIn,
        address tokenOut,
        uint256 amountIn
    ) internal returns (uint256) {
        IERC20(tokenIn).approve(kantabanVault, amountIn);

        return
            IQuoteVault(kantabanVault).swapExactInput(
                IQuoteVault.SwapExactInputParams({
                    tokenIn: tokenIn,
                    tokenOut: tokenOut,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: amountIn,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
    }

    function _swapOnUni(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint24 uniswapV3PoolFeeTier
    ) internal returns (uint256) {
        IERC20(tokenIn).approve(_uniswapV3Router, amountIn);

        return
            ISwapRouter(_uniswapV3Router).exactInputSingle(
                ISwapRouter.ExactInputSingleParams({
                    tokenIn: tokenIn,
                    tokenOut: tokenOut,
                    fee: uniswapV3PoolFeeTier,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: amountIn,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
    }

    function _transferTokenIn(
        address token,
        address from,
        uint256 amount
    ) internal {
        // check for deflationary tokens by assuring balances before and after transferring to be the same
        uint256 balanceBefore = IERC20(token).balanceOf(address(this));
        SafeERC20.safeTransferFrom(IERC20(token), from, address(this), amount);
        // KUA_IBA: inconsistent balance amount, to prevent from deflationary tokens
        uint256 balanceNow = IERC20(token).balanceOf(address(this));

        require(balanceNow > balanceBefore && (balanceNow - balanceBefore) == amount, "KUA_IBA");
    }
}
