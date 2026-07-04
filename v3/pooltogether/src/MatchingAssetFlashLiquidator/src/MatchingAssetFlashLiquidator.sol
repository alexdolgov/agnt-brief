// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console2.sol";

import { ILiquidationPair } from "pt-v5-liquidator-interface/interfaces/ILiquidationPair.sol";
import { IFlashSwapCallback } from "pt-v5-liquidator-interface/interfaces/IFlashSwapCallback.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract MatchingAssetFlashLiquidator {

    function flashLiquidate(
        ILiquidationPair _pair,
        address _receiver,
        uint256 _amountOutMin
    ) external returns (uint256) {
        uint count = 100;
        uint chunkSize = _pair.maxAmountOut() / count;
        uint bestAmountOut;
        uint bestProfit;
        for (uint i = 1; i < count; i++) {
            uint amountOut = i*chunkSize;
            uint amountIn = _pair.computeExactAmountIn(amountOut);
            uint profit = amountOut > amountIn ? amountOut - amountIn : 0;
            if (profit > bestProfit) {
                bestAmountOut = amountOut;
                bestProfit = amountOut - amountIn;
            }
        }

        require(bestProfit > _amountOutMin, "UniversalRouterFlashLiquidator: INSUFFICIENT_OUTPUT_AMOUNT");
        require(_pair.tokenIn() == _pair.tokenOut(), "mismatched liquidation pair tokens");

        _pair.swapExactAmountOut(address(this), bestAmountOut, type(uint256).max, abi.encode("flashy"));
        console2.log("bestAmountOut \t\t", bestAmountOut);
        IERC20 tokenOut = IERC20(_pair.tokenOut());
        uint256 available = tokenOut.balanceOf(address(this));
        console2.log("available: ", available);
        require(available >= _amountOutMin, "UniversalRouterFlashLiquidator: INSUFFICIENT_OUTPUT_AMOUNT");
        tokenOut.transfer(
            _receiver,
            available
        );
        return available;
    }

    function flashSwapCallback(
        address _sender,
        uint256 _amountIn,
        uint256 _amountOut,
        bytes calldata _flashSwapData
    ) external {
        console2.log("flashSwapCallback _amountIn\t", _amountIn);
        ILiquidationPair pair = ILiquidationPair(msg.sender);
        address tokenIn = pair.tokenIn();
        IERC20(tokenIn).transfer(
            pair.target(),
            _amountIn
        );
    }

}
