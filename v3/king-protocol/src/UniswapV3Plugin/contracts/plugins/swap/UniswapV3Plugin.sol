// SPDX-License-Identifier: MIT
pragma solidity =0.8.30;

import { ITricootSwapPlugin } from "../../interfaces/ITricootSwapPlugin.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ITricootAlerts as ICA } from "../../interfaces/ITricootAlerts.sol";
import { ITricootEvents as ICE } from "../../interfaces/ITricootEvents.sol";
import { IV3SwapRouter } from "@uniswap/swap-router-contracts/contracts/interfaces/IV3SwapRouter.sol";

/**
 * @title UniswapV3Plugin
 * @author Base Arbitrage
 * @notice Swap plugin for Uniswap V3 on Base
 * @dev Executes swaps via Uniswap V3 SwapRouter02
 */
contract UniswapV3Plugin is ITricootSwapPlugin {
    using SafeERC20 for IERC20;

    /// @notice Function selector for exactInputSingle with SwapRouter02 signature
    /// SwapRouter02 takes (ExactInputSingleParams, uint256 deadline) as two separate parameters
    /// Struct: (address,address,uint24,address,uint256,uint256,uint160)
    /// where uint256 fields are: amountIn, amountOutMinimum
    bytes4 public constant SWAP_SELECTOR = bytes4(keccak256("exactInputSingle((address,address,uint24,address,uint256,uint256,uint160),uint256)"));

    /**
     * @inheritdoc ITricootSwapPlugin
     * @dev Swaps tokens via Uniswap V3 exactInputSingle
     * @param srcToken Source token address
     * @param dstToken Destination token address
     * @param amountIn Amount of source token to swap
     * @param config Encoded swap router address
     * @param swapData Encoded minimum amount out (uint256) and fee tier (uint24)
     */
    function swap(
        address srcToken,
        address dstToken,
        uint256 amountIn,
        bytes calldata config,
        bytes calldata swapData
    ) external returns (uint256 amountOut) {
        require(srcToken != address(0) && dstToken != address(0) && srcToken != dstToken, ICA.InvalidTokens());
        require(amountIn > 0, ICA.InvalidAmountIn());

        // Decode swap data
        (uint256 minAmountOut, uint24 feeTier) = abi.decode(swapData, (uint256, uint24));
        require(feeTier == 500 || feeTier == 3000 || feeTier == 10000, ICA.InvalidSwapParameters());
        require(minAmountOut > 0, ICA.InvalidAmountOut());

        // Approve router
        address swapRouter = abi.decode(config, (address));
        IERC20(srcToken).safeIncreaseAllowance(swapRouter, amountIn);

        // Get balance before swap
        uint256 balanceBefore = IERC20(dstToken).balanceOf(address(this));

        // Build swap params
        IV3SwapRouter.ExactInputSingleParams memory params = IV3SwapRouter.ExactInputSingleParams({
            tokenIn: srcToken,
            tokenOut: dstToken,
            fee: feeTier,
            recipient: address(this),
            amountIn: amountIn,
            amountOutMinimum: minAmountOut,
            sqrtPriceLimitX96: 0 // No price limit
        });

        // Execute swap using low-level call because SwapRouter02 takes (params, deadline) as two parameters
        // IV3SwapRouter interface doesn't match SwapRouter02's actual signature
        (bool success, bytes memory returnData) = swapRouter.call(
            abi.encodeWithSelector(SWAP_SELECTOR, params, block.timestamp + 1)
        );
        
        if (success) {
            amountOut = abi.decode(returnData, (uint256));
        } else {
            // Fallback: measure balance difference
            amountOut = IERC20(dstToken).balanceOf(address(this)) - balanceBefore;
        }

        require(amountOut >= minAmountOut, ICA.InvalidAmountOut());
        emit ICE.Swap(swapRouter, srcToken, dstToken, amountOut);
    }

    /**
     * @notice Check interface support
     */
    function supportsInterface(bytes4 interfaceId) external pure returns (bool) {
        return interfaceId == type(ITricootSwapPlugin).interfaceId;
    }
}