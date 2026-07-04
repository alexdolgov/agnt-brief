// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "../external/uniswap/interfaces/IUniswapV2Factory.sol";
import { ISwapRouter } from "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";

/// @dev Uses Uniswap V3 Swap Router to do swap.
library UniswapV3SwapLib {
    using SafeERC20 for IERC20;

    struct Props {
        ISwapRouter swapRouter;
        IERC20 inAsset;
        IERC20 outAsset;
        PathPair paths;
    }

    struct PathPair {
        bytes inPath;
        bytes outPath;
    }

    function exactInputSwapIn(
        Props memory props,
        address recipient,
        uint256 amount,
        uint256 minAmount
    )
        external
        returns (uint256 receivedAssets)
    {
        props.inAsset.safeIncreaseAllowance(address(props.swapRouter), amount);
        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
            path: props.paths.inPath,
            recipient: recipient,
            deadline: block.timestamp,
            amountIn: amount,
            amountOutMinimum: minAmount
        });
        receivedAssets = props.swapRouter.exactInput(params);
    }

    function exactInputSwapOut(
        Props memory props,
        address recipient,
        uint256 amount,
        uint256 minAmount
    )
        external
        returns (uint256 receivedAssets)
    {
        props.outAsset.safeIncreaseAllowance(address(props.swapRouter), amount);
        ISwapRouter.ExactInputParams memory params = ISwapRouter.ExactInputParams({
            path: props.paths.outPath,
            recipient: recipient,
            deadline: block.timestamp,
            amountIn: amount,
            amountOutMinimum: minAmount
        });
        receivedAssets = props.swapRouter.exactInput(params);
    }

    function exactOutputSwapIn(
        Props memory props,
        address recipient,
        uint256 amount,
        uint256 maxAmount
    )
        external
        returns (uint256 spentAssets)
    {
        props.inAsset.safeIncreaseAllowance(address(props.swapRouter), maxAmount);
        ISwapRouter.ExactOutputParams memory params = ISwapRouter.ExactOutputParams({
            // [DESIRED_TOKEN or OUT ASSET, ..., IN ASSET]
            path: props.paths.outPath,
            recipient: recipient,
            deadline: block.timestamp,
            amountOut: amount,
            amountInMaximum: maxAmount
        });
        spentAssets = props.swapRouter.exactOutput(params);
    }

    function exactOutputSwapOut(
        Props memory props,
        address recipient,
        uint256 amount,
        uint256 maxAmount
    )
        external
        returns (uint256 spentAssets)
    {
        props.outAsset.safeIncreaseAllowance(address(props.swapRouter), maxAmount);
        ISwapRouter.ExactOutputParams memory params = ISwapRouter.ExactOutputParams({
            // [DESIRED_TOKEN or IN ASSET, ..., OUT ASSET]
            path: props.paths.inPath,
            recipient: recipient,
            deadline: block.timestamp,
            amountOut: amount,
            amountInMaximum: maxAmount
        });
        spentAssets = props.swapRouter.exactOutput(params);
    }
}
