// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "@uniswap/v3-periphery/contracts/libraries/TransferHelper.sol";
import "../interfaces/ISwap.sol";
import "../storage/AppConfig.sol";
import "../storage/AppTradeConfig.sol";
import "../storage/CommonData.sol";
import "../utils/CalUtils.sol";
import "../utils/TokenUtils.sol";
import "./VaultProcess.sol";
import "./OracleProcess.sol";

library SwapProcess {
    function swap(ISwap.SwapParams memory params) public returns (ISwap.SwapResult memory result) {
        result.fromTokens = params.fromTokens;
        result.toToken = params.toToken;
        result.expectToTokenAmount = params.toTokenAmount;
        result.reduceFromAmounts = new uint256[](params.fromTokens.length);
        address uniswapRouter = AppConfig.getUniswapRouter();
        for (uint256 i; i < params.fromTokens.length; i++) {
            uint256 useFromAmount = params.fromAmounts[i];
            uint256 minToTokenAmounts = params.minToTokenAmounts[i];
            if (minToTokenAmounts > params.toTokenAmount - result.toTokenAmount) {
                useFromAmount = CalUtils.tokenToToken(
                    params.toTokenAmount -
                        result.toTokenAmount +
                        CalUtils.mulRate(
                            params.toTokenAmount - result.toTokenAmount,
                            AppTradeConfig.getTradeConfig().swapSlipperTokenFactor
                        ),
                    TokenUtils.decimals(params.toToken),
                    TokenUtils.decimals(params.fromTokens[i]),
                    OracleProcess.getLatestUsdUintPrice(params.toToken, true),
                    OracleProcess.getLatestUsdUintPrice(params.fromTokens[i], false)
                );
                minToTokenAmounts = params.toTokenAmount - result.toTokenAmount;
            }
            if (useFromAmount == 0) {
                continue;
            }
            VaultProcess.transferOut(
                params.fromTokenAddress,
                params.fromTokens[i],
                address(this),
                useFromAmount,
                false
            );
            TransferHelper.safeApprove(params.fromTokens[i], uniswapRouter, useFromAmount);
            ISwapRouter.ExactInputSingleParams memory callSwapParams = ISwapRouter.ExactInputSingleParams({
                tokenIn: params.fromTokens[i],
                tokenOut: params.toToken,
                fee: 3000,
                recipient: params.toTokenAddress,
                deadline: block.timestamp,
                amountIn: useFromAmount,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            });
            uint256 amountOut = ISwapRouter(uniswapRouter).exactInputSingle(callSwapParams);
            result.toTokenAmount += amountOut;
            result.reduceFromAmounts[i] = useFromAmount;
            if (result.toTokenAmount >= params.toTokenAmount) {
                break;
            }
        }
    }

    function singleSwap(ISwap.SwapSingleParam memory params) public returns (ISwap.SwapSingleResult memory result) {
        result.fromToken = params.fromToken;
        result.toToken = params.toToken;
        address uniswapRouter = AppConfig.getUniswapRouter();
        VaultProcess.transferOut(params.fromTokenAddress, params.fromToken, address(this), params.fromAmount, false);
        TransferHelper.safeApprove(params.fromToken, uniswapRouter, params.fromAmount);
        ISwapRouter.ExactInputSingleParams memory callSwapParams = ISwapRouter.ExactInputSingleParams({
            tokenIn: params.fromToken,
            tokenOut: params.toToken,
            fee: 3000,
            recipient: params.toTokenAddress,
            deadline: block.timestamp,
            amountIn: params.fromAmount,
            amountOutMinimum: params.minToTokenAmount,
            sqrtPriceLimitX96: 0
        });
        uint256 amountOut = ISwapRouter(uniswapRouter).exactInputSingle(callSwapParams);
        result.toTokenAmount = amountOut;
        result.reduceFromAmount = params.fromAmount;
    }

    function _swapToBaseToken(
        address stakeToken,
        address fromToken,
        uint256 fromAmount,
        address toToken
    ) internal returns (ISwap.SwapSingleResult memory) {
        uint256 toTokenAmount = CalUtils.tokenToToken(
            fromAmount,
            TokenUtils.decimals(fromToken),
            TokenUtils.decimals(toToken),
            OracleProcess.getLatestUsdUintPrice(fromToken, true),
            OracleProcess.getLatestUsdUintPrice(toToken, false)
        );
        toTokenAmount -= CalUtils.mulRate(toTokenAmount, AppTradeConfig.getTradeConfig().swapSlipperTokenFactor);
        ISwap.SwapSingleResult memory result = singleSwap(
            ISwap.SwapSingleParam(
                CommonData.getStakeUsdToken(),
                fromToken,
                fromAmount,
                toTokenAmount,
                toToken,
                stakeToken
            )
        );
        return result;
    }

    function _swapToStableTokens(
        address stakeToken,
        address fromToken,
        address toToken,
        uint256 toAmount
    ) internal returns (ISwap.SwapSingleResult memory) {
        uint256 needTokenAmount = CalUtils.tokenToToken(
            toAmount,
            TokenUtils.decimals(toToken),
            TokenUtils.decimals(fromToken),
            OracleProcess.getLatestUsdUintPrice(toToken, true),
            OracleProcess.getLatestUsdUintPrice(fromToken, false)
        );
        needTokenAmount += CalUtils.mulRate(needTokenAmount, AppTradeConfig.getTradeConfig().swapSlipperTokenFactor);
        ISwap.SwapSingleResult memory result = singleSwap(
            ISwap.SwapSingleParam(
                stakeToken,
                fromToken,
                needTokenAmount,
                toAmount,
                toToken,
                CommonData.getStakeUsdToken()
            )
        );
        return result;
    }
}
