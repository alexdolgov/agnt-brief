// SPDX-License-Identifier: BUSL-1.1

pragma solidity >=0.8.18;

import "../interfaces/CustomErrors.sol";
import "../interfaces/INonfungiblePositionManager.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableMap.sol";
import {IHedgedPool} from "../interfaces/IHedgedPool.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IController} from "../interfaces/IGamma.sol";
import "@uniswap/v3-periphery/contracts/interfaces/ISwapRouter.sol";
import {BorrowLib} from "./BorrowLib.sol";
import "@uniswap/v3-core/contracts/interfaces/IUniswapV3Factory.sol";
import "@uniswap/v3-core/contracts/interfaces/pool/IUniswapV3PoolState.sol";

library UniswapOrdersLib {
    // tick range is -887,272 to +887,272
    int256 internal constant TICK_MODIFIER = 1_000_000;
    using SafeERC20 for IERC20;
    using EnumerableMap for EnumerableMap.UintToUintMap;
    using EnumerableSet for EnumerableSet.UintSet;

    struct LimitOrderParams {
        address token0; // collateral
        address token1; // stable
        uint24 fee;
        int24 tickLower;
        int24 tickUpper;
        uint256 amount0;
        uint256 amount1;
        int24 tickSpacing;
    }

    struct UpdateLimitOrderParams {
        uint256 tokenId;
        address token0;
        address token1;
        uint24 fee; // NOTE: unused by update functions (pool already determined by tokenId)
        int24 tickLower;
        int24 tickUpper;
        uint256 newAmount0;
        uint256 newAmount1;
        int24 tickSpacing; // NOTE: unused by update functions (pool already determined by tokenId)
    }

    struct TickTokenId {
        int24 tick;
        uint256 tokenId;
    }

    struct LimitOrderVars {
        uint256 tickId;
        address tokenA;
        address tokenB;
        uint256 amount0Desired;
        uint256 amount1Desired;
    }

    struct LimitOrderSystemParams {
        //        IController controller;
        IHedgedPool hedgedPool;
        INonfungiblePositionManager positionManager;
        address tokenAddress;
    }

    function _tickIdFromTick(int24 tick) internal pure returns (uint256) {
        return uint256(tick + TICK_MODIFIER);
    }

    function _tickFromTickId(uint256 tickId) internal pure returns (int24) {
        return int24(int256(tickId) - TICK_MODIFIER);
    }

    function ordersForToken(
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds,
        address tokenAddress
    ) internal view returns (TickTokenId[] memory) {
        TickTokenId[] memory result = new TickTokenId[](
            activeHedgeOrderTicksIds[tokenAddress].length()
        );
        for (
            uint256 i = 0;
            i < activeHedgeOrderTicksIds[tokenAddress].length();
            i++
        ) {
            uint256 tickId = activeHedgeOrderTicksIds[tokenAddress].at(i);
            uint256 tokenId = hedgeOrders[tokenAddress].get(tickId);
            int24 tick = _tickFromTickId(tickId);
            result[i] = TickTokenId(tick, tokenId);
        }
        return result;
    }

    function limitOrderForAmountBatch(
        IHedgedPool hedgedPool,
        INonfungiblePositionManager positionManager,
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds,
        mapping(address => int256) storage limitOrdersExecutionTicks,
        mapping(address => bytes32) storage limitOrdersExecutionIds,
        address tokenAddress,
        LimitOrderParams[] calldata params
    ) internal {
        if (params.length == 0) {
            revert CustomErrors.InvalidArgument();
        }

        for (uint256 i = 0; i < params.length; i++) {
            if (params[i].token0 != tokenAddress) {
                revert CustomErrors.InvalidArgument();
            }
        }

        LimitOrderSystemParams memory systemParams = LimitOrderSystemParams({
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

        IUniswapV3Factory factory = IUniswapV3Factory(
            positionManager.factory()
        );

        // we can use param[0] since we throw error if params is empty
        address poolAddress = factory.getPool(
            params[0].token0,
            params[0].token1,
            params[0].fee
        );
        if (poolAddress == address(0)) {
            revert CustomErrors.PoolDoesNotExist();
        }
        IUniswapV3PoolState pool = IUniswapV3PoolState(poolAddress);
        (, int24 currentTick, , , , , ) = pool.slot0();

        limitOrdersExecutionTicks[tokenAddress] = currentTick;
        limitOrdersExecutionIds[tokenAddress] = keccak256(
            abi.encode(tokenAddress, block.number)
        );
    }

    // token0 - collateral
    // token1 - stable
    function _limitOrderForAmount(
        LimitOrderSystemParams memory systemParams,
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds,
        LimitOrderParams calldata params
    ) internal {
        if (params.amount0 == 0 && params.amount1 == 0) {
            revert CustomErrors.InvalidArgument();
        }
        if (params.tickLower >= params.tickUpper) {
            revert CustomErrors.InvalidArgument();
        }

        LimitOrderVars memory vars;

        vars.tickId = _tickIdFromTick(params.tickLower);

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
                UpdateLimitOrderParams({
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
            // Create the position
            INonfungiblePositionManager.MintParams
                memory mintParams = INonfungiblePositionManager.MintParams({
                    token0: vars.tokenA,
                    token1: vars.tokenB,
                    fee: params.fee,
                    tickLower: params.tickLower,
                    tickUpper: params.tickUpper,
                    amount0Desired: vars.amount0Desired,
                    amount1Desired: vars.amount1Desired,
                    amount0Min: 0,
                    amount1Min: 0,
                    recipient: address(this),
                    deadline: block.timestamp
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

    function _updateLimitOrderToAmount(
        IHedgedPool hedgedPool,
        INonfungiblePositionManager positionManager,
        UpdateLimitOrderParams memory params
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

        INonfungiblePositionManager.IncreaseLiquidityParams
            memory increaseParams = INonfungiblePositionManager
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

    struct CloseAllLimitOrdersVars {
        address token0;
        address token1;
        uint256 amount0;
        uint256 amount1;
        int256 borrowBalance0;
        int256 borrowBalance1;
    }

    function closeAllLimitOrders(
        IController controller,
        IHedgedPool hedgedPool,
        INonfungiblePositionManager positionManager,
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds,
        mapping(address => int256) storage limitOrdersExecutionTicks,
        mapping(address => bytes32) storage limitOrdersExecutionIds,
        address tokenAddress
    ) internal returns (address, address, uint256, uint256, int256, int256) {
        LimitOrderSystemParams memory systemParams = LimitOrderSystemParams({
            hedgedPool: hedgedPool,
            positionManager: positionManager,
            tokenAddress: tokenAddress
        });

        CloseAllLimitOrdersVars memory vars;

        (
            vars.token0,
            vars.token1,
            vars.amount0,
            vars.amount1
        ) = _closeActiveLimitOrders(
            systemParams,
            hedgeOrders,
            activeHedgeOrderTicksIds
        );

        if (vars.token0 != address(0)) {
            vars.borrowBalance0 = controller.borrowBalances(
                address(systemParams.hedgedPool),
                vars.token0
            );
            vars.borrowBalance1 = controller.borrowBalances(
                address(systemParams.hedgedPool),
                vars.token1
            );
            limitOrdersExecutionTicks[
                systemParams.tokenAddress
            ] = TICK_MODIFIER;
            limitOrdersExecutionIds[systemParams.tokenAddress] = bytes32(0);
            return (
                vars.token0,
                vars.token1,
                vars.amount0,
                vars.amount1,
                vars.borrowBalance0,
                vars.borrowBalance1
            );
        } else {
            // we might want to also add USDT borrow balance here. But we don't need for now.
            vars.borrowBalance0 = controller.borrowBalances(
                address(systemParams.hedgedPool),
                systemParams.tokenAddress
            );
            return (
                systemParams.tokenAddress,
                address(0),
                0,
                0,
                vars.borrowBalance0,
                0
            );
        }
    }

    function _closeActiveLimitOrders(
        LimitOrderSystemParams memory systemParams,
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

    struct CloseLimitOrderVars {
        address token0;
        address token1;
        uint256 amount0;
        uint256 amount1;
        uint128 liquidity;
    }

    function _closeLimitOrder(
        LimitOrderSystemParams memory systemParams,
        mapping(address => EnumerableMap.UintToUintMap) storage hedgeOrders,
        mapping(address => EnumerableSet.UintSet)
            storage activeHedgeOrderTicksIds,
        uint256 tickId
    ) internal returns (address, address, uint256, uint256) {
        CloseLimitOrderVars memory vars;
        uint256 tokenId = hedgeOrders[systemParams.tokenAddress].get(tickId);
        // Get position info
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
            INonfungiblePositionManager.DecreaseLiquidityParams
                memory decreaseParams = INonfungiblePositionManager
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
        INonfungiblePositionManager.CollectParams
            memory collectParams = INonfungiblePositionManager.CollectParams({
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

    function marketSell(
        IHedgedPool hedgedPool,
        ISwapRouter swapRouter,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOutMin,
        uint24 poolFee,
        uint256 deadline
    ) internal {
        BorrowLib.borrowFromPoolAndTransfer(hedgedPool, tokenIn, amountIn);

        IERC20(tokenIn).approve(address(swapRouter), amountIn);
        ISwapRouter.ExactInputSingleParams memory params = ISwapRouter
            .ExactInputSingleParams({
                tokenIn: tokenIn,
                tokenOut: tokenOut,
                fee: poolFee,
                recipient: address(this),
                deadline: deadline,
                amountIn: amountIn,
                amountOutMinimum: amountOutMin,
                sqrtPriceLimitX96: 0
            });

        uint256 amountOut = swapRouter.exactInputSingle(params);

        BorrowLib.depositToPoolAndTransfer(hedgedPool, tokenOut, amountOut);
    }

    function marketBuy(
        IHedgedPool hedgedPool,
        ISwapRouter swapRouter,
        address tokenIn,
        address tokenOut,
        uint256 amountInMax,
        uint256 amountOut,
        uint24 poolFee,
        uint256 deadline
    ) internal {
        BorrowLib.borrowFromPoolAndTransfer(hedgedPool, tokenIn, amountInMax);

        IERC20(tokenIn).approve(address(swapRouter), amountInMax);
        ISwapRouter.ExactOutputSingleParams memory params = ISwapRouter
            .ExactOutputSingleParams({
                tokenIn: tokenIn,
                tokenOut: tokenOut,
                fee: poolFee,
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
}
