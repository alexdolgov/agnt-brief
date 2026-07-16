// SPDX-License-Identifier: None

pragma solidity >=0.8.18;

import "../interfaces/CustomErrors.sol";
import "../interfaces/IAerodromeFactory.sol";
import "../interfaces/IAerodromeNonfungiblePositionManager.sol";
import "../interfaces/IAerodromePoolState.sol";
import "../interfaces/IAerodromeSwapRouter.sol";
import "../interfaces/INonfungiblePositionManager.sol";
import "./BorrowLib.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {IController} from "../interfaces/IGamma.sol";
import {IHedgedPool} from "../interfaces/IHedgedPool.sol";
import {UniswapOrdersLib} from "./UniswapOrdersLib.sol";

library AerodromeOrdersLib {
    using SafeERC20 for IERC20;
    using EnumerableMap for EnumerableMap.UintToUintMap;
    using EnumerableSet for EnumerableSet.UintSet;

    struct LimitOrderVars {
        uint256 tickId;
        address tokenA;
        address tokenB;
        uint256 amount0Desired;
        uint256 amount1Desired;
    }

    struct AerodromeLimitOrderSystemParams {
        IHedgedPool hedgedPool;
        IAerodromeNonfungiblePositionManager positionManager;
        address tokenAddress;
    }

    struct CloseLimitOrderVars {
        address token0;
        address token1;
        uint256 amount0;
        uint256 amount1;
        uint128 liquidity;
    }

    /// @notice Market sell using Aerodrome Slipstream router (uses tickSpacing instead of fee)
    function marketSell(
        IHedgedPool hedgedPool,
        IAerodromeSwapRouter swapRouter,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        int24 tickSpacing,
        uint256 deadline
    ) internal {
        BorrowLib.borrowFromPoolAndTransfer(hedgedPool, tokenIn, amountIn);

        IERC20(tokenIn).approve(address(swapRouter), amountIn);
        IAerodromeSwapRouter.ExactInputSingleParams
            memory params = IAerodromeSwapRouter.ExactInputSingleParams({
                tokenIn: tokenIn,
                tokenOut: tokenOut,
                tickSpacing: tickSpacing,
                recipient: address(this),
                deadline: deadline,
                amountIn: amountIn,
                amountOutMinimum: amountOutMin,
                sqrtPriceLimitX96: 0
            });

        uint256 amountOut = swapRouter.exactInputSingle(params);

        BorrowLib.depositToPoolAndTransfer(hedgedPool, tokenOut, amountOut);
    }

    /// @notice Market buy using Aerodrome Slipstream router (uses tickSpacing instead of fee)
    function marketBuy(
        IHedgedPool hedgedPool,
        IAerodromeSwapRouter swapRouter,
        address tokenIn,
        address tokenOut,
        uint256 amountInMax,
        uint256 amountOut,
        int24 tickSpacing,
        uint256 deadline
    ) internal {
        BorrowLib.borrowFromPoolAndTransfer(hedgedPool, tokenIn, amountInMax);

        IERC20(tokenIn).approve(address(swapRouter), amountInMax);
        IAerodromeSwapRouter.ExactOutputSingleParams
            memory params = IAerodromeSwapRouter.ExactOutputSingleParams({
                tokenIn: tokenIn,
                tokenOut: tokenOut,
                tickSpacing: tickSpacing,
                recipient: address(this),
                deadline: deadline,
                amountOut: amountOut,
                amountInMaximum: amountInMax,
                sqrtPriceLimitX96: 0
            });

        uint256 amountIn = swapRouter.exactOutputSingle(params);

        BorrowLib.depositToPoolAndTransfer(hedgedPool, tokenOut, amountOut);

        if (amountIn < amountInMax) {
            BorrowLib.depositToPoolAndTransfer(
                hedgedPool,
                tokenIn,
                amountInMax - amountIn
            );
        }
    }

    /// @notice Limit order for amount batch using Aerodrome position manager (uses tickSpacing instead of fee)
    function limitOrderForAmountBatch(
        IHedgedPool hedgedPool,
        IAerodromeNonfungiblePositionManager positionManager,
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds,
        mapping(address => int256) storage limitOrdersExecutionTicks,
        mapping(address => bytes32) storage limitOrdersExecutionIds,
        address tokenAddress,
        UniswapOrdersLib.LimitOrderParams[] calldata params
    ) internal {
        if (params.length == 0) {
            revert CustomErrors.InvalidArgument();
        }
        for (uint256 i = 0; i < params.length; i++) {
            if (params[i].token0 != tokenAddress) {
                revert CustomErrors.InvalidArgument();
            }
        }

        AerodromeLimitOrderSystemParams
            memory systemParams = AerodromeLimitOrderSystemParams({
                hedgedPool: hedgedPool,
                positionManager: positionManager,
                tokenAddress: tokenAddress
            });

        _closeActiveLimitOrders(
            systemParams,
            hedgeOrders,
            activeHedgeOrderTicksIds
        );

        for (uint256 i = 0; i < params.length; i++) {
            _limitOrderForAmount(
                systemParams,
                hedgeOrders,
                activeHedgeOrderTicksIds,
                params[i]
            );
        }

        IAerodromeFactory factory = IAerodromeFactory(
            positionManager.factory()
        );

        // we can use param[0] since we throw error if params is empty
        address poolAddress = factory.getPool(
            params[0].token0,
            params[0].token1,
            params[0].tickSpacing
        );
        if (poolAddress == address(0)) {
            revert CustomErrors.PoolDoesNotExist();
        }
        IAerodromePoolState pool = IAerodromePoolState(poolAddress);
        (, int24 currentTick, , , , ) = pool.slot0();

        limitOrdersExecutionTicks[tokenAddress] = currentTick;
        limitOrdersExecutionIds[tokenAddress] = keccak256(
            abi.encode(tokenAddress, block.number)
        );
    }

    /// @notice Create limit order for Aerodrome (internal, uses tickSpacing)
    function _limitOrderForAmount(
        AerodromeLimitOrderSystemParams memory systemParams,
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds,
        UniswapOrdersLib.LimitOrderParams calldata params
    ) internal {
        if (params.amount0 == 0 && params.amount1 == 0) {
            revert CustomErrors.InvalidArgument();
        }
        if (params.tickLower >= params.tickUpper) {
            revert CustomErrors.InvalidArgument();
        }

        LimitOrderVars memory vars;

        vars.tickId = UniswapOrdersLib._tickIdFromTick(params.tickLower);

        (vars.tokenA, vars.tokenB) = params.token0 < params.token1
            ? (params.token0, params.token1)
            : (params.token1, params.token0);

        (vars.amount0Desired, vars.amount1Desired) = params.token0 <
            params.token1
            ? (params.amount0, params.amount1)
            : (params.amount1, params.amount0);

        (bool hasToken, uint256 existingTokenId) = hedgeOrders[params.token0]
            .tryGet(vars.tickId);

        // need to increase position
        if (hasToken) {
            _updateLimitOrderToAmount(
                systemParams.hedgedPool,
                systemParams.positionManager,
                UniswapOrdersLib.UpdateLimitOrderParams({
                    tokenId: existingTokenId,
                    token0: vars.tokenA,
                    token1: vars.tokenB,
                    fee: params.fee,
                    tickLower: params.tickLower,
                    tickUpper: params.tickUpper,
                    newAmount0: vars.amount0Desired,
                    newAmount1: vars.amount1Desired,
                    tickSpacing: params.tickSpacing
                })
            );
        } else {
            if (vars.amount0Desired > 0) {
                BorrowLib.borrowFromPoolAndTransfer(
                    systemParams.hedgedPool,
                    vars.tokenA,
                    vars.amount0Desired
                );

                IERC20(vars.tokenA).approve(
                    address(systemParams.positionManager),
                    vars.amount0Desired
                );
            }
            if (vars.amount1Desired > 0) {
                BorrowLib.borrowFromPoolAndTransfer(
                    systemParams.hedgedPool,
                    vars.tokenB,
                    vars.amount1Desired
                );
                IERC20(vars.tokenB).approve(
                    address(systemParams.positionManager),
                    vars.amount1Desired
                );
            }
            // Create the position using Aerodrome's MintParams
            IAerodromeNonfungiblePositionManager.MintParams
                memory mintParams = IAerodromeNonfungiblePositionManager
                    .MintParams({
                        token0: vars.tokenA,
                        token1: vars.tokenB,
                        tickSpacing: params.tickSpacing,
                        tickLower: params.tickLower,
                        tickUpper: params.tickUpper,
                        amount0Desired: vars.amount0Desired,
                        amount1Desired: vars.amount1Desired,
                        amount0Min: 0,
                        amount1Min: 0,
                        recipient: address(this),
                        deadline: block.timestamp,
                        sqrtPriceX96: 0
                    });

            (uint256 tokenId, , uint256 amount0, uint256 amount1) = systemParams
                .positionManager
                .mint(mintParams);
            hedgeOrders[systemParams.tokenAddress].set(vars.tickId, tokenId);

            if (amount0 < vars.amount0Desired) {
                BorrowLib.depositToPoolAndTransfer(
                    systemParams.hedgedPool,
                    vars.tokenA,
                    vars.amount0Desired - amount0
                );
            }
            if (amount1 < vars.amount1Desired) {
                BorrowLib.depositToPoolAndTransfer(
                    systemParams.hedgedPool,
                    vars.tokenB,
                    vars.amount1Desired - amount1
                );
            }
        }
        activeHedgeOrderTicksIds[systemParams.tokenAddress].add(vars.tickId);
    }

    /// @notice Update limit order for Aerodrome (internal)
    function _updateLimitOrderToAmount(
        IHedgedPool hedgedPool,
        IAerodromeNonfungiblePositionManager positionManager,
        UniswapOrdersLib.UpdateLimitOrderParams memory params
    ) internal {
        if (params.newAmount0 > 0) {
            BorrowLib.borrowFromPoolAndTransfer(
                hedgedPool,
                params.token0,
                params.newAmount0
            );
            IERC20(params.token0).approve(
                address(positionManager),
                params.newAmount0
            );
        }
        if (params.newAmount1 > 0) {
            BorrowLib.borrowFromPoolAndTransfer(
                hedgedPool,
                params.token1,
                params.newAmount1
            );
            IERC20(params.token1).approve(
                address(positionManager),
                params.newAmount1
            );
        }

        // Note: IncreaseLiquidity has the same interface for both Uniswap and Aerodrome
        IAerodromeNonfungiblePositionManager.IncreaseLiquidityParams
            memory increaseParams = IAerodromeNonfungiblePositionManager
                .IncreaseLiquidityParams({
                    tokenId: params.tokenId,
                    amount0Desired: params.newAmount0,
                    amount1Desired: params.newAmount1,
                    amount0Min: 0,
                    amount1Min: 0,
                    deadline: block.timestamp
                });
        (, uint256 amount0, uint256 amount1) = positionManager
            .increaseLiquidity(increaseParams);

        if (amount0 < params.newAmount0) {
            BorrowLib.depositToPoolAndTransfer(
                hedgedPool,
                params.token0,
                params.newAmount0 - amount0
            );
        }
        if (amount1 < params.newAmount1) {
            BorrowLib.depositToPoolAndTransfer(
                hedgedPool,
                params.token1,
                params.newAmount1 - amount1
            );
        }
    }

    /// @notice Close active limit orders for Aerodrome (internal)
    function _closeActiveLimitOrders(
        AerodromeLimitOrderSystemParams memory systemParams,
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds
    ) internal returns (address, address, uint256, uint256) {
        address token0;
        address token1;
        uint256 amount0Total;
        uint256 amount1Total;
        uint256[] memory tickIds = activeHedgeOrderTicksIds[
            systemParams.tokenAddress
        ].values();
        for (uint256 i = 0; i < tickIds.length; i++) {
            uint256 amount0;
            uint256 amount1;
            (token0, token1, amount0, amount1) = _closeLimitOrder(
                systemParams,
                hedgeOrders,
                activeHedgeOrderTicksIds,
                tickIds[i]
            );
            amount0Total += amount0;
            amount1Total += amount1;
        }
        return (token0, token1, amount0Total, amount1Total);
    }

    /// @notice Close single limit order for Aerodrome (internal)
    function _closeLimitOrder(
        AerodromeLimitOrderSystemParams memory systemParams,
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds,
        uint256 tickId
    ) internal returns (address, address, uint256, uint256) {
        CloseLimitOrderVars memory vars;
        uint256 tokenId = hedgeOrders[systemParams.tokenAddress].get(tickId);
        // Get position info (Aerodrome returns tickSpacing instead of fee)
        (
            ,
            ,
            vars.token0,
            vars.token1,
            ,
            ,
            ,
            vars.liquidity,
            ,
            ,
            ,

        ) = systemParams.positionManager.positions(tokenId);

        // Decrease liquidity to 0 (withdraw all)
        if (vars.liquidity > 0) {
            IAerodromeNonfungiblePositionManager.DecreaseLiquidityParams
                memory decreaseParams = IAerodromeNonfungiblePositionManager
                    .DecreaseLiquidityParams({
                        tokenId: tokenId,
                        liquidity: vars.liquidity,
                        amount0Min: 0,
                        amount1Min: 0,
                        deadline: block.timestamp
                    });

            systemParams.positionManager.decreaseLiquidity(decreaseParams);
        }

        // Collect all tokens
        IAerodromeNonfungiblePositionManager.CollectParams
            memory collectParams = IAerodromeNonfungiblePositionManager
                .CollectParams({
                    tokenId: tokenId,
                    recipient: address(this),
                    amount0Max: type(uint128).max,
                    amount1Max: type(uint128).max
                });

        (vars.amount0, vars.amount1) = systemParams.positionManager.collect(
            collectParams
        );

        if (vars.amount0 > 0) {
            BorrowLib.depositToPoolAndTransfer(
                systemParams.hedgedPool,
                vars.token0,
                vars.amount0
            );
        }
        if (vars.amount1 > 0) {
            BorrowLib.depositToPoolAndTransfer(
                systemParams.hedgedPool,
                vars.token1,
                vars.amount1
            );
        }

        activeHedgeOrderTicksIds[systemParams.tokenAddress].remove(tickId);
        return (vars.token0, vars.token1, vars.amount0, vars.amount1);
    }
}
