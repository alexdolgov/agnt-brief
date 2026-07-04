// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import "../../oracles/IPriceSource.sol";

interface ISwapStrategy {
    function SLIPPAGE_BASE() external view returns (uint256);

    function swapRouter() external view returns (ISwapRouter);

    function priceSource() external view returns (IPriceSource);

    function getMinimumAmountOut(
        address assetFrom,
        address assetTo,
        uint256 baseAmount,
        uint256 slippage
    ) external view returns (uint256, uint256);

    function getMaximumAmountIn(
        address assetFrom,
        address assetTo,
        uint256 amountOut
    ) external view returns (uint256, uint256);

    function swapInBase(
        address assetFrom,
        address assetTo,
        uint256 amount
    ) external returns (uint256, uint256);

    function swapOutBase(
        address assetFrom,
        address assetTo,
        uint256 amount,
        uint256 amountInMaximum
    ) external returns (uint256, uint256);
}
