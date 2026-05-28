// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@uniswap/v4-core/src/interfaces/external/IERC20Minimal.sol";
import {INonfungiblePositionManagerPancake} from "../interfaces/INonfungiblePositionManagerPancake.sol";
import {INonfungiblePositionManager} from "../interfaces/INonfungiblePositionManager.sol";

/**
 * @title PancakeSwapV3MulticallHelper
 * @notice Helper contract to execute mint + swap + burn in a single atomic transaction for PancakeSwap V3
 * @dev This contract receives tokens, executes the operations, and returns tokens back
 */
contract PancakeSwapV3MulticallHelper {
    INonfungiblePositionManagerPancake public immutable positionManager;
    IPancakeV3SwapRouter public immutable swapRouter;

    constructor(address _positionManager, address _swapRouter) {
        positionManager = INonfungiblePositionManagerPancake(_positionManager);
        swapRouter = IPancakeV3SwapRouter(_swapRouter);
    }

    error WrongPayload();

    struct ExecuteParams {
        address token0;
        address token1;
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0Desired;
        uint256 amount1Desired;
        uint128 liquidityToMint;
        address tokenIn;
        address tokenOut;
        uint256 amountIn;
        uint160 sqrtPriceLimitX96;
        address recipient;
        uint256 timestamp;
    }

    /**
     * @notice Execute mint + swap + burn atomically
     * @param params The execution parameters
     */
    function execute(ExecuteParams calldata params) external returns (uint256 amountOut) {
        // Checks
        if(params.token0 != params.tokenIn && params.token0 != params.tokenOut) {
            revert WrongPayload();
        }
        if(params.token1 != params.tokenIn && params.token1 != params.tokenOut) {
            revert WrongPayload();
        }

        // Transfer tokens from caller
        IERC20Minimal(params.token0).transferFrom(msg.sender, address(this), params.amount0Desired);
        IERC20Minimal(params.token1).transferFrom(msg.sender, address(this), params.amount1Desired);
        IERC20Minimal(params.tokenIn).transferFrom(msg.sender, address(this), params.amountIn);

        // Approve position manager for minting
        IERC20Minimal(params.token0).approve(address(positionManager), params.amount0Desired);
        IERC20Minimal(params.token1).approve(address(positionManager), params.amount1Desired);

        // 1. Mint position
        (uint256 tokenId, uint128 liquidity,,) = positionManager.mint(
            INonfungiblePositionManagerPancake.MintParams({
                token0: params.token0,
                token1: params.token1,
                fee: params.fee,
                tickLower: params.tickLower,
                tickUpper: params.tickUpper,
                amount0Desired: params.amount0Desired,
                amount1Desired: params.amount1Desired,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: params.timestamp
            })
        );

        // 2. Swap
        IERC20Minimal(params.tokenIn).approve(address(swapRouter), params.amountIn);
        amountOut = swapRouter.exactInputSingle(
            IPancakeV3SwapRouter.ExactInputSingleParams({
                tokenIn: params.tokenIn,
                tokenOut: params.tokenOut,
                fee: params.fee,
                recipient: address(this),
                deadline: params.timestamp,
                amountIn: params.amountIn,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: params.sqrtPriceLimitX96
            })
        );

        // 3. Burn position (decrease liquidity)
        INonfungiblePositionManager(address(positionManager)).decreaseLiquidity(
            INonfungiblePositionManager.DecreaseLiquidityParams({
                tokenId: tokenId,
                liquidity: liquidity,
                amount0Min: 0,
                amount1Min: 0,
                deadline: params.timestamp
            })
        );

        // 4. Collect tokens from position
        INonfungiblePositionManager(address(positionManager)).collect(
            INonfungiblePositionManager.CollectParams({
                tokenId: tokenId,
                recipient: address(this),
                amount0Max: type(uint128).max,
                amount1Max: type(uint128).max
            })
        );

        // 5. Burn the NFT
        INonfungiblePositionManager(address(positionManager)).burn(tokenId);

        // Transfer all tokens back to recipient
        uint256 balance0 = IERC20Minimal(params.token0).balanceOf(address(this));
        uint256 balance1 = IERC20Minimal(params.token1).balanceOf(address(this));

        if (balance0 > 0) {
            IERC20Minimal(params.token0).transfer(params.recipient, balance0);
        }
        if (balance1 > 0) {
            IERC20Minimal(params.token1).transfer(params.recipient, balance1);
        }
    }
}

/**
 * @notice PancakeSwap V3 Swap Router interface
 */
interface IPancakeV3SwapRouter {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    function exactInputSingle(ExactInputSingleParams calldata params)
        external
        payable
        returns (uint256 amountOut);
}
