// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.26;

import { IPoolManager } from "v4-core/interfaces/IPoolManager.sol";
import { StateLibrary } from "v4-core/libraries/StateLibrary.sol";
import { PoolKey } from "v4-core/types/PoolKey.sol";
import { PoolId, PoolIdLibrary } from "v4-core/types/PoolId.sol";
import { Currency } from "v4-core/types/Currency.sol";
import { TickMath } from "v4-core/libraries/TickMath.sol";
import { FullMath } from "v4-core/libraries/FullMath.sol";
import { LiquidityAmounts } from "v4-periphery/lib/v4-core/test/utils/LiquidityAmounts.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { IMultiPositionManager } from "../interfaces/IMultiPositionManager.sol";
import { ILiquidityStrategy } from "../strategies/ILiquidityStrategy.sol";
import { SharedStructs } from "../base/SharedStructs.sol";
import { PoolManagerUtils } from "../PoolManagerUtils.sol";
import { PositionLogic } from "./PositionLogic.sol";
import { SwapAggregatorLib } from "../libraries/SwapAggregatorLib.sol";

/**
 * @title RebalanceLogic
 * @notice Library containing all rebalance-related logic for MultiPositionManager
 * @dev Follows Bunni's pattern of external library functions with storage passed as parameter
 */
library RebalanceLogic {
    using PoolIdLibrary for PoolKey;
    using StateLibrary for IPoolManager;
    using SafeERC20 for IERC20;

    uint256 constant PRECISION = 1e18;

    // Custom errors
    error OutMinLengthMismatch();
    error InvalidWeightSum();
    error NoStrategySpecified();
    error CarpetRequiresBothTokens();
    error InsufficientLiquidityForCarpet();
    error InvalidTickRange();
    error DuplicatedRange(IMultiPositionManager.Range range);
    error InvalidAggregator();
    error InMinLengthMismatch(uint256 provided, uint256 required);
    error InsufficientTokensForSwap();
    error InsufficientOutput();

    // Events
    event Rebalance(IMultiPositionManager.Position[] positions);
    event LogTotalAmounts(uint256 totalAmount0, uint256 totalAmount1);
    event SwapExecuted(address indexed aggregator, uint256 amountIn, uint256 amountOut, bool swapToken0);

    struct StrategyContext {
        address resolvedStrategy;
        int24 center;
        uint24 tLeft;
        uint24 tRight;
        ILiquidityStrategy strategy;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        int24 limitWidth;
        bool weightsAreProportional;
    }

    struct DensityParams {
        int24[] lowerTicks;
        int24[] upperTicks;
        int24 tick;
        int24 center;
        uint24 tLeft;
        uint24 tRight;
        uint256 weight0;
        uint256 weight1;
        bool useCarpet;
        int24 tickSpacing;
    }

    struct WeightCalculationParams {
        ILiquidityStrategy strategy;
        int24 center;
        uint24 tLeft;
        uint24 tRight;
        int24 tickSpacing;
        bool useCarpet;
        uint160 sqrtPriceX96;
        int24 currentTick;
    }

    /// @notice Supported swap aggregators
    enum Aggregator {
        ZERO_X,      // 0
        KYBERSWAP,   // 1
        ODOS,        // 2
        PARASWAP     // 3
    }

    /// @notice Parameters for executing a swap through an aggregator
    struct SwapParams {
        Aggregator aggregator;     // Which aggregator to use
        address aggregatorAddress; // Aggregator router address (call this)
        address allowanceTarget;   // Address to approve (for 0x allowance-holder pattern)
        bytes swapData;            // Complete encoded function call from JavaScript
        bool swapToken0;           // Direction: true = swap token0 for token1
        uint256 swapAmount;        // Amount being swapped (for validation)
        uint256 minAmountOut;      // Minimum output amount (slippage protection)
    }

    /**
     * @notice Main rebalance function
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param params Rebalance parameters
     * @param outMin Minimum output amounts for withdrawals
     * @param inMin Minimum input amounts for new positions (slippage protection)
     * @return baseRanges The base ranges to rebalance to
     * @return liquidities The liquidity amounts for each range
     * @return limitWidth The limit width for limit positions
     */
    function rebalance(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.RebalanceParams calldata params,
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    ) external returns (
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory liquidities,
        int24 limitWidth
    ) {
        if (outMin.length != s.basePositionsLength + s.limitPositionsLength) {
            revert OutMinLengthMismatch();
        }

        // Process in helper to avoid stack issues
        return _processRebalance(s, poolManager, params, outMin, inMin);
    }

    function _processRebalance(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.RebalanceParams memory params,
        uint256[2][] memory outMin,
        uint256[2][] memory inMin
    ) internal returns (
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory liquidities,
        int24 limitWidth
    ) {
        // Bundle strategy parameters in a struct to reduce stack depth
        StrategyContext memory ctx;

        ctx.weight0 = params.weight0;
        ctx.weight1 = params.weight1;
        ctx.weightsAreProportional = (ctx.weight0 == 0 && ctx.weight1 == 0);
        if (ctx.weightsAreProportional) {
            (uint256 available0, uint256 available1) = _getTotalAvailable(s, poolManager);
            (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(s.poolKey.toId());
            (ctx.weight0, ctx.weight1) = calculateWeightsFromAmounts(available0, available1, sqrtPriceX96);
        }

        if (ctx.weight0 + ctx.weight1 != 1e18) revert InvalidWeightSum();

        // Resolve strategy parameters
        ctx.resolvedStrategy = params.strategy != address(0) ? params.strategy : s.lastStrategyParams.strategy;

        if (params.center == type(int24).max) {
            (, int24 currentTick, , ) = poolManager.getSlot0(s.poolKey.toId());
            // Always round down to ensure the range contains the current tick
            int24 compressed = currentTick / s.poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % s.poolKey.tickSpacing != 0) {
                compressed--; // Round down for negative ticks with remainder
            }
            ctx.center = compressed * s.poolKey.tickSpacing;
        } else {
            ctx.center = params.center;
        }

        ctx.tLeft = params.tLeft;
        ctx.tRight = params.tRight;
        ctx.useCarpet = params.useCarpet;
        ctx.limitWidth = params.limitWidth;

        // Get strategy interface
        if (ctx.resolvedStrategy == address(0)) revert NoStrategySpecified();
        ctx.strategy = ILiquidityStrategy(ctx.resolvedStrategy);

        // Generate ranges
        (int24[] memory lowerTicks, int24[] memory upperTicks) = ctx.strategy.generateRanges(
            ctx.center,
            ctx.tLeft,
            ctx.tRight,
            s.poolKey.tickSpacing,
            ctx.useCarpet
        );

        // Convert to Range array
        baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint i = 0; i < lowerTicks.length; i++) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
        }

        // Calculate weights in separate function to avoid stack issues
        uint256[] memory weights = _calculateWeights(s, poolManager, ctx, lowerTicks, upperTicks);

        // Continue processing in another helper to further reduce stack
        return _executeRebalance(
            s,
            poolManager,
            ctx,
            baseRanges,
            weights,
            outMin,
            inMin
        );
    }

    function _calculateWeights(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        StrategyContext memory ctx,
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) internal view returns (uint256[] memory) {
        // Store flag early to avoid stack too deep
        bool weightsAreProportional = ctx.weightsAreProportional;

        DensityParams memory params;
        params.lowerTicks = lowerTicks;
        params.upperTicks = upperTicks;

        // Get current tick
        (, params.tick, , ) = poolManager.getSlot0(s.poolKey.toId());

        params.center = ctx.center;
        params.tLeft = ctx.tLeft;
        params.tRight = ctx.tRight;
        params.weight0 = ctx.weight0;
        params.weight1 = ctx.weight1;
        params.useCarpet = ctx.useCarpet;
        params.tickSpacing = s.poolKey.tickSpacing;

        // Check weights support
        {
            bool supportsWeightedDist = false;
            try ctx.strategy.supportsWeights() returns (bool supported) {
                supportsWeightedDist = supported;
            } catch {}

            // Use default weights if needed
            if (!params.useCarpet && !supportsWeightedDist &&
                (params.weight0 != 0.5e18 || params.weight1 != 0.5e18)) {
                params.weight0 = 0.5e18;
                params.weight1 = 0.5e18;
            }
        }

        return ctx.strategy.calculateDensities(
            params.lowerTicks,
            params.upperTicks,
            params.tick,
            params.center,
            params.tLeft,
            params.tRight,
            params.weight0,
            params.weight1,
            params.useCarpet,
            params.tickSpacing,
            weightsAreProportional
        );
    }

    function _executeRebalance(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        StrategyContext memory ctx,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256[] memory weights,
        uint256[2][] memory /* outMin */,
        uint256[2][] memory /* inMin */
    ) internal returns (
        IMultiPositionManager.Range[] memory,
        uint128[] memory,
        int24
    ) {
        // Calculate liquidities from weights
        uint128[] memory liquidities = new uint128[](baseRanges.length);

        // Process in separate scope to reduce stack
        {
            // Get current pool state
            (uint160 sqrtPriceX96, , , ) = poolManager.getSlot0(s.poolKey.toId());

            // Get total available amounts (will be calculated by caller)
            (uint256 available0, uint256 available1) = _getTotalAvailable(s, poolManager);

            // Carpet mode requires both tokens to create base layer across all positions
            if (ctx.useCarpet && (available0 == 0 || available1 == 0)) {
                revert CarpetRequiresBothTokens();
            }

            // Use existing helper to calculate liquidities from weights
            _calculateLiquiditiesFromWeights(
                liquidities,
                weights,
                baseRanges,
                available0,
                available1,
                sqrtPriceX96
            );
        }

        // Verify carpet positions have sufficient liquidity
        if (ctx.useCarpet) {
            _validateCarpetLiquidity(baseRanges, liquidities, s.poolKey.tickSpacing);
        }

        // Store the parameters for future use
        _updateStrategyParams(s, ctx);

        // Emit event using helper
        _emitRebalanceEvent(baseRanges, s.poolKey);

        // Return the data needed for the unlock
        return (baseRanges, liquidities, ctx.limitWidth);
    }

    function _updateStrategyParams(
        SharedStructs.ManagerStorage storage s,
        StrategyContext memory ctx
    ) internal {
        s.lastStrategyParams = SharedStructs.StrategyParams({
            strategy: ctx.resolvedStrategy,
            centerTick: ctx.center,
            ticksLeft: ctx.tLeft,
            ticksRight: ctx.tRight,
            limitWidth: uint24(uint256(int256(ctx.limitWidth))),
            weight0: uint120(ctx.weight0),
            weight1: uint120(ctx.weight1),
            useCarpet: ctx.useCarpet
        });
    }

    /**
     * @notice Helper to calculate liquidities from weights
     */
    function _calculateLiquiditiesFromWeights(
        uint128[] memory liquidities,
        uint256[] memory weights,
        IMultiPositionManager.Range[] memory baseRanges,
        uint256 total0,
        uint256 total1,
        uint160 sqrtPriceX96
    ) internal pure {
        uint256 rangesLength = baseRanges.length;


        // First pass: calculate how much token0 and token1 each range needs per unit of liquidity
        uint256 totalWeightedToken0 = 0;
        uint256 totalWeightedToken1 = 0;

        for (uint i = 0; i < rangesLength; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick);

            // Calculate how much token0 and token1 is needed for 1e18 liquidity in this range
            (uint256 amount0For1e18, uint256 amount1For1e18) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPriceX96,
                sqrtPriceLower,
                sqrtPriceUpper,
                1e18
            );


            // Weight these requirements
            totalWeightedToken0 += (amount0For1e18 * weights[i]) / 1e18;
            totalWeightedToken1 += (amount1For1e18 * weights[i]) / 1e18;
        }


        // Calculate the maximum liquidity we can provide given our token amounts
        uint128 maxLiquidityFromToken0 = totalWeightedToken0 > 0
            ? uint128((total0 * 1e18) / totalWeightedToken0)
            : type(uint128).max;
        uint128 maxLiquidityFromToken1 = totalWeightedToken1 > 0
            ? uint128((total1 * 1e18) / totalWeightedToken1)
            : type(uint128).max;

        // Use the limiting factor (smaller of the two)
        uint128 totalLiquidity = maxLiquidityFromToken0 < maxLiquidityFromToken1
            ? maxLiquidityFromToken0
            : maxLiquidityFromToken1;


        // Second pass: distribute liquidity according to weights
        for (uint i = 0; i < rangesLength; i++) {
            liquidities[i] = uint128((uint256(totalLiquidity) * weights[i]) / 1e18);
        }

    }

    function _validateCarpetLiquidity(
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory liquidities,
        int24 tickSpacing
    ) internal pure {
        int24 minUsable = TickMath.minUsableTick(tickSpacing);
        int24 maxUsable = TickMath.maxUsableTick(tickSpacing);

        if (baseRanges[0].lowerTick == minUsable && liquidities[0] == 0) {
            revert InsufficientLiquidityForCarpet();
        }

        uint256 lastIdx = baseRanges.length - 1;
        if (baseRanges[lastIdx].upperTick == maxUsable && liquidities[lastIdx] == 0) {
            revert InsufficientLiquidityForCarpet();
        }
    }

    /**
     * @notice Get total available token amounts
     * @dev Gets total amounts from all positions including fees and unused balances
     */
    function _getTotalAvailable(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager
    ) internal view returns (uint256 total0, uint256 total1) {
        uint256 totalFee0;
        uint256 totalFee1;

        // Get amounts from base positions including fees
        for (uint256 i = 0; i < s.basePositionsLength; i++) {
            (
                ,
                uint256 amount0,
                uint256 amount1,
                uint256 feesOwed0,
                uint256 feesOwed1
            ) = PoolManagerUtils.getAmountsOf(
                poolManager,
                s.poolKey,
                s.basePositions[i]
            );
            total0 += amount0;
            total1 += amount1;
            totalFee0 += feesOwed0;
            totalFee1 += feesOwed1;
        }

        // Get amounts from limit positions including fees
        for (uint256 i = 0; i < s.limitPositionsLength; i++) {
            (
                ,
                uint256 amount0,
                uint256 amount1,
                uint256 feesOwed0,
                uint256 feesOwed1
            ) = PoolManagerUtils.getAmountsOf(
                poolManager,
                s.poolKey,
                s.limitPositions[i]
            );
            total0 += amount0;
            total1 += amount1;
            totalFee0 += feesOwed0;
            totalFee1 += feesOwed1;
        }

        // Exclude protocol fee from the total fees
        totalFee0 = totalFee0 - (totalFee0 / s.fee);
        totalFee1 = totalFee1 - (totalFee1 / s.fee);

        // Add fees net of protocol fees to the total amount
        total0 += totalFee0;
        total1 += totalFee1;

        // Add unused balances
        total0 += s.currency0.balanceOfSelf();
        total1 += s.currency1.balanceOfSelf();

        return (total0, total1);
    }

    /**
     * @notice Helper to emit rebalance event
     */
    function _emitRebalanceEvent(
        IMultiPositionManager.Range[] memory baseRanges,
        PoolKey memory poolKey
    ) internal {
        IMultiPositionManager.Position[] memory positions = new IMultiPositionManager.Position[](baseRanges.length);
        for (uint i = 0; i < baseRanges.length; i++) {
            positions[i] = IMultiPositionManager.Position({
                poolKey: poolKey,
                lowerTick: baseRanges[i].lowerTick,
                upperTick: baseRanges[i].upperTick
            });
        }
        emit Rebalance(positions);
        // Note: LogTotalAmounts will be emitted by the main contract
    }

    /**
     * @notice Process REBALANCE action in callback
     * @dev Handles the complete rebalance flow including zeroBurn, burn old positions, and mint new ones
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param params Encoded rebalance parameters
     * @param totalSupply Current total supply
     * @return Empty bytes (no return value needed)
     */
    function processRebalanceInCallback(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        bytes memory params,
        uint256 totalSupply
    ) external returns (bytes memory) {
        // Perform zeroBurn if there are active positions
        _performZeroBurnIfNeeded(s, poolManager);

        // Decode parameters
        (
            IMultiPositionManager.Range[] memory baseRanges,
            uint128[] memory liquidities,
            int24 limitWidth,
            uint256[2][] memory inMin,
            uint256[2][] memory outMin
        ) = abi.decode(params, (IMultiPositionManager.Range[], uint128[], int24, uint256[2][], uint256[2][]));

        // Burn old positions and set up new ones
        _burnAndSetupPositions(s, poolManager, baseRanges, limitWidth, outMin, totalSupply);

        // Ensure inMin has correct length for slippage protection
        if (inMin.length != baseRanges.length) {
            revert InMinLengthMismatch(inMin.length, baseRanges.length);
        }

        // Mint new positions
        PositionLogic.mintLiquidities(poolManager, s, liquidities, inMin);

        return "";
    }

    /**
     * @notice Perform zeroBurn if there are active positions
     */
    function _performZeroBurnIfNeeded(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager
    ) private {
        if (s.basePositionsLength > 0 ||
            s.limitPositions[0].lowerTick != s.limitPositions[0].upperTick ||
            s.limitPositions[1].lowerTick != s.limitPositions[1].upperTick) {

            // Get ranges for zeroBurn
            IMultiPositionManager.Range[] memory baseRangesArray = new IMultiPositionManager.Range[](s.basePositionsLength);
            for (uint8 i = 0; i < s.basePositionsLength; i++) {
                baseRangesArray[i] = s.basePositions[i];
            }
            IMultiPositionManager.Range[2] memory limitRangesArray = [s.limitPositions[0], s.limitPositions[1]];

            PoolManagerUtils.zeroBurnAll(
                poolManager,
                s.poolKey,
                baseRangesArray,
                limitRangesArray,
                s.currency0,
                s.currency1,
                s.fee
            );
        }
    }

    /**
     * @notice Burn old positions and set up new ones
     */
    function _burnAndSetupPositions(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.Range[] memory baseRanges,
        int24 limitWidth,
        uint256[2][] memory outMin,
        uint256 totalSupply
    ) private {
        // Only burn if there are actual positions to burn
        if (totalSupply > 0 && (s.basePositionsLength > 0 || s.limitPositionsLength > 0)) {
            PositionLogic.burnLiquidities(poolManager, s, totalSupply, totalSupply, outMin);
        }

        // Set up new base positions
        IMultiPositionManager.Range[] memory allRanges = new IMultiPositionManager.Range[](baseRanges.length + 2);
        s.basePositionsLength = baseRanges.length;
        for (uint8 i = 0; i < baseRanges.length; ) {
            s.basePositions[i] = baseRanges[i];
            allRanges[i] = baseRanges[i];
            unchecked {
                i = i + 1;
            }
        }

        // Set limit ranges
        (, int24 curTick, , ) = poolManager.getSlot0(s.poolId);
        PositionLogic.setLimitRanges(s, limitWidth, baseRanges, s.poolKey.tickSpacing, curTick);
        allRanges[baseRanges.length] = s.limitPositions[0];
        allRanges[baseRanges.length + 1] = s.limitPositions[1];

        // Check ranges for duplicates
        PositionLogic.checkRanges(allRanges);
    }

    /**
     * @notice Process rebalance after a single token withdrawal
     * @dev This function handles the rebalance logic when there are remaining tokens after withdrawal
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param remainingToken0 Amount of token0 remaining after withdrawal
     * @param remainingToken1 Amount of token1 remaining after withdrawal
     */
    function processRebalanceAfterWithdraw(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        uint256 remainingToken0,
        uint256 remainingToken1
    ) external {
        // Check if we need to rebalance - need remaining tokens and a strategy
        if ((remainingToken0 == 0 && remainingToken1 == 0) || s.lastStrategyParams.strategy == address(0)) {
            return;
        }

        // Create rebalance params from stored strategy
        IMultiPositionManager.RebalanceParams memory rebalanceParams = IMultiPositionManager.RebalanceParams({
            strategy: s.lastStrategyParams.strategy,
            center: s.lastStrategyParams.centerTick,
            tLeft: s.lastStrategyParams.ticksLeft,
            tRight: s.lastStrategyParams.ticksRight,
            limitWidth: int24(uint24(s.lastStrategyParams.limitWidth)),
            weight0: uint256(s.lastStrategyParams.weight0),
            weight1: uint256(s.lastStrategyParams.weight1),
            useCarpet: s.lastStrategyParams.useCarpet
        });

        // Empty outMin for internal rebalance (no withdrawal happening)
        uint256[2][] memory outMin = new uint256[2][](0);

        // Rebalance using the remaining amounts
        (IMultiPositionManager.Range[] memory baseRanges, uint128[] memory liquidities, ) =
            _processRebalance(s, poolManager, rebalanceParams, outMin, new uint256[2][](0));

        // Set positions
        for (uint256 i = 0; i < baseRanges.length; i++) {
            s.basePositions[i] = baseRanges[i];
        }
        s.basePositionsLength = baseRanges.length;

        // Create empty inMin for internal deposit (no slippage protection needed for internal calls)
        uint256[2][] memory inMin = new uint256[2][](baseRanges.length);

        // Mint positions
        PositionLogic.mintLiquidities(poolManager, s, liquidities, inMin);

        // Emit rebalance event
        IMultiPositionManager.Position[] memory positions = new IMultiPositionManager.Position[](baseRanges.length);
        for (uint i = 0; i < baseRanges.length; i++) {
            positions[i] = IMultiPositionManager.Position({
                poolKey: s.poolKey,
                lowerTick: baseRanges[i].lowerTick,
                upperTick: baseRanges[i].upperTick
            });
        }
        emit Rebalance(positions);
    }

    /**
     * @notice Calculate weights based on current token amounts and price
     * @param amount0 Current amount of token0
     * @param amount1 Current amount of token1
     * @param sqrtPriceX96 Current pool sqrt price
     * @return weight0 Weight for token0 (in 1e18)
     * @return weight1 Weight for token1 (in 1e18)
     */
    function calculateWeightsFromAmounts(
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96
    ) internal pure returns (uint256 weight0, uint256 weight1) {
        if (amount0 == 0 && amount1 == 0) {
            return (0.5e18, 0.5e18);
        }

        // Calculate value0 in token1 terms using sqrtPriceX96 directly
        uint256 value0InToken1 = FullMath.mulDiv(
            FullMath.mulDiv(amount0, uint256(sqrtPriceX96), 1 << 96),
            uint256(sqrtPriceX96),
            1 << 96
        );
        uint256 totalValue = value0InToken1 + amount1;

        if (totalValue == 0) {
            return (0.5e18, 0.5e18);
        }

        weight0 = FullMath.mulDiv(value0InToken1, 1e18, totalValue);
        weight1 = 1e18 - weight0;
    }

    /**
     * @notice Get density weights from strategy
     */
    function _getDensities(
        WeightCalculationParams memory params,
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) private view returns (uint256[] memory) {
        return params.strategy.calculateDensities(
            lowerTicks, upperTicks, params.currentTick, params.center,
            params.tLeft, params.tRight, 0, 0, params.useCarpet,
            params.tickSpacing, true
        );
    }

    /**
     * @notice Calculate weighted token amounts based on strategy densities
     * @dev Helper function to avoid stack too deep in calculateWeightsFromStrategy
     */
    function _calculateWeightedAmounts(
        WeightCalculationParams memory params,
        int24[] memory lowerTicks,
        int24[] memory upperTicks
    ) private view returns (uint256 totalAmount0, uint256 totalAmount1) {
        uint256[] memory densities = _getDensities(params, lowerTicks, upperTicks);

        uint160 sqrtPrice = params.sqrtPriceX96;
        for (uint256 i = 0; i < lowerTicks.length; i++) {
            uint160 sqrtPriceLower = TickMath.getSqrtPriceAtTick(lowerTicks[i]);
            uint160 sqrtPriceUpper = TickMath.getSqrtPriceAtTick(upperTicks[i]);

            (uint256 amount0For1e18, uint256 amount1For1e18) = LiquidityAmounts.getAmountsForLiquidity(
                sqrtPrice, sqrtPriceLower, sqrtPriceUpper, 1e18
            );

            totalAmount0 += (amount0For1e18 * densities[i]) / 1e18;
            totalAmount1 += (amount1For1e18 * densities[i]) / 1e18;
        }
    }

    function calculateWeightsFromStrategy(
        ILiquidityStrategy strategy,
        int24 center,
        uint24 tLeft,
        uint24 tRight,
        int24 tickSpacing,
        bool useCarpet,
        uint160 sqrtPriceX96,
        int24 currentTick
    ) internal view returns (uint256 weight0, uint256 weight1) {
        WeightCalculationParams memory params = WeightCalculationParams({
            strategy: strategy,
            center: center,
            tLeft: tLeft,
            tRight: tRight,
            tickSpacing: tickSpacing,
            useCarpet: useCarpet,
            sqrtPriceX96: sqrtPriceX96,
            currentTick: currentTick
        });

        (int24[] memory lowerTicks, int24[] memory upperTicks) = strategy.generateRanges(
            center, tLeft, tRight, tickSpacing, useCarpet
        );

        if (lowerTicks.length == 0) return (0.5e18, 0.5e18);

        (uint256 totalAmount0, uint256 totalAmount1) = _calculateWeightedAmounts(
            params, lowerTicks, upperTicks
        );

        if (totalAmount0 == 0 && totalAmount1 == 0) return (0.5e18, 0.5e18);

        uint256 value0InToken1 = FullMath.mulDiv(
            FullMath.mulDiv(totalAmount0, uint256(sqrtPriceX96), 1 << 96),
            uint256(sqrtPriceX96), 1 << 96
        );
        uint256 totalValue = value0InToken1 + totalAmount1;

        if (totalValue == 0) return (0.5e18, 0.5e18);

        weight0 = FullMath.mulDiv(value0InToken1, 1e18, totalValue);
        weight1 = 1e18 - weight0;
    }

    /**
     * @notice Calculate optimal swap amount to achieve target weight distribution
     * @param amount0 Current amount of token0
     * @param amount1 Current amount of token1
     * @param sqrtPriceX96 Current pool sqrt price
     * @param weight0 Target weight for token0 (in 1e18)
     * @return swapToken0 True if swapping token0 to token1, false otherwise
     * @return swapAmount Amount to swap
     */
    function calculateOptimalSwap(
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        uint256 weight0,
        uint256 /* weight1 */
    ) public pure returns (bool swapToken0, uint256 swapAmount) {
        // Calculate value0 in token1 terms using sqrtPriceX96 directly to avoid precision loss
        uint256 value0InToken1 = FullMath.mulDiv(
            FullMath.mulDiv(amount0, uint256(sqrtPriceX96), 1 << 96),
            uint256(sqrtPriceX96),
            1 << 96
        );

        // Total value in token1 terms
        uint256 totalValue = value0InToken1 + amount1;

        // Target token0 value in token1 terms
        uint256 target0ValueInToken1 = FullMath.mulDiv(totalValue, weight0, 1e18);

        // Convert target back to token0 amount
        // target0Amount = target0ValueInToken1 / (sqrtPriceX96^2 / 2^192)
        // = target0ValueInToken1 * 2^192 / sqrtPriceX96^2
        // = (target0ValueInToken1 * 2^96 / sqrtPriceX96) * 2^96 / sqrtPriceX96
        uint256 target0Amount = FullMath.mulDiv(
            FullMath.mulDiv(target0ValueInToken1, 1 << 96, uint256(sqrtPriceX96)),
            1 << 96,
            uint256(sqrtPriceX96)
        );

        if (amount0 > target0Amount) {
            swapToken0 = true;
            swapAmount = amount0 - target0Amount;
        } else {
            swapToken0 = false;
            uint256 token0Deficit = target0Amount - amount0;
            // Convert token0Deficit to token1 amount
            swapAmount = FullMath.mulDiv(
                FullMath.mulDiv(token0Deficit, uint256(sqrtPriceX96), 1 << 96),
                uint256(sqrtPriceX96),
                1 << 96
            );
        }
    }

    /**
     * @notice Rebalance with token swap through aggregator
     * @param s Storage struct
     * @param poolManager Pool manager contract
     * @param params Rebalance parameters
     * @param aggregator Aggregator contract address
     * @param swapData Encoded swap calldata
     * @param minAmountOut Minimum amount expected from swap
     * @param outMin Minimum output amounts for withdrawals
     * @param inMin Minimum input amounts for new positions (slippage protection)
     * @param totalSupply Current total supply of shares
     * @return baseRanges The base ranges to rebalance to
     * @return liquidities The liquidity amounts for each range
     * @return limitWidth The limit width for limit positions
     */
    /**
     * @notice Execute swap exactly as specified in swapParams
     * @dev Trusts off-chain calculation from SimpleLens.calculateOptimalSwapForRebalance
     * @param s Storage struct
     * @param swapParams Complete swap parameters from JavaScript including aggregator and calldata
     * @param amount0 Current amount of token0
     * @param amount1 Current amount of token1
     * @return Updated amount0 and amount1 after swap
     */
    function _executeProvidedSwap(
        SharedStructs.ManagerStorage storage s,
        SwapParams calldata swapParams,
        uint256 amount0,
        uint256 amount1
    ) private returns (uint256, uint256) {
        if (swapParams.swapData.length == 0) {
            // No swap needed
            return (amount0, amount1);
        }

        // Get token addresses for swap execution
        address currency0 = Currency.unwrap(s.poolKey.currency0);
        address currency1 = Currency.unwrap(s.poolKey.currency1);

        // Execute aggregator swap with validation
        uint256 amountOut = _executeAggregatorSwap(
            swapParams,
            amount0,
            amount1,
            currency0,
            currency1
        );

        emit SwapExecuted(swapParams.aggregatorAddress, swapParams.swapAmount, amountOut, swapParams.swapToken0);

        // Update amounts based on swap direction
        if (swapParams.swapToken0) {
            return (amount0 - swapParams.swapAmount, amount1 + amountOut);
        }
        return (amount0 + amountOut, amount1 - swapParams.swapAmount);
    }

    /**
     * @notice Execute swap and calculate rebalance ranges in one call
     * @dev Combines swap execution and range calculation for cleaner flow
     * @param s Storage struct
     * @param poolManager The pool manager
     * @param params Rebalance parameters including swap details
     * @return baseRanges The base ranges to rebalance to
     * @return liquidities The liquidity amounts for each range
     * @return limitWidth The limit width for limit positions
     */
    function executeSwapAndCalculateRanges(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.RebalanceSwapParams calldata params
    ) external returns (
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory liquidities,
        int24 limitWidth
    ) {
        // 1. Get current balances
        uint256 amount0 = s.currency0.balanceOfSelf();
        uint256 amount1 = s.currency1.balanceOfSelf();

        // 2. Execute swap if needed
        if (params.swapParams.swapData.length > 0) {
            (amount0, amount1) = _executeProvidedSwap(
                s, params.swapParams, amount0, amount1
            );
        }

        // 3. Calculate ranges with updated amounts
        return _calculateRebalanceRanges(s, poolManager, params.rebalanceParams, amount0, amount1);
    }

    /**
     * @notice Execute swap through aggregator with validation
     * @dev JavaScript builds complete function call, Solidity just executes it
     * @param params Swap parameters including aggregator type and encoded calldata
     * @param amount0 Available amount of token0
     * @param amount1 Available amount of token1
     * @param currency0 Address of token0
     * @param currency1 Address of token1
     * @return amountOut Amount of output token received
     */
    function _executeAggregatorSwap(
        SwapParams calldata params,
        uint256 amount0,
        uint256 amount1,
        address currency0,
        address currency1
    ) private returns (uint256 amountOut) {
        // Validate aggregator type (prevents arbitrary contract calls)
        if (uint8(params.aggregator) > 3) revert InvalidAggregator();

        // Validate we have sufficient tokens for the swap
        if (params.swapToken0) {
            if (amount0 < params.swapAmount) revert InsufficientTokensForSwap();
        } else {
            if (amount1 < params.swapAmount) revert InsufficientTokensForSwap();
        }

        // Determine input and output tokens
        address inputToken = params.swapToken0 ? currency0 : currency1;
        address outputToken = params.swapToken0 ? currency1 : currency0;

        // Check if input token is native ETH (address(0))
        bool isETHIn = inputToken == address(0);

        // Determine approval target (use allowanceTarget if set, otherwise use router)
        address approvalTarget = params.allowanceTarget != address(0)
            ? params.allowanceTarget
            : params.aggregatorAddress;

        // Approve aggregator to spend input tokens (skip if native ETH)
        if (!isETHIn) {
            IERC20(inputToken).forceApprove(approvalTarget, params.swapAmount);
        }

        // Record balance before swap
        uint256 balanceBefore = _getBalance(outputToken);

        // Execute the aggregator's function call
        // swapData already contains the complete, ready-to-execute function call from JavaScript
        (bool success,) = params.aggregatorAddress.call{ value: msg.value }(params.swapData);

        // Reset approval for security (skip if native ETH)
        if (!isETHIn) {
            IERC20(inputToken).forceApprove(approvalTarget, 0);
        }

        // Bubble up revert reason if swap failed
        if (!success) {
            assembly {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }
        }

        // Calculate and validate output amount
        amountOut = _getBalance(outputToken) - balanceBefore;
        if (amountOut < params.minAmountOut) revert InsufficientOutput();

        return amountOut;
    }

    /**
     * @notice Get balance of a token (handles both ERC20 and native ETH)
     * @param token Token address (address(0) for native ETH)
     * @return balance Current balance
     */
    function _getBalance(address token) private view returns (uint256) {
        if (token == address(0)) {
            return address(this).balance;
        } else {
            return IERC20(token).balanceOf(address(this));
        }
    }

    /**
     * @notice Process the rebalance result after swap
     * @dev Helper to avoid stack too deep
     */
    function _calculateRebalanceRanges(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        IMultiPositionManager.RebalanceParams calldata params,
        uint256 amount0,
        uint256 amount1
    ) private returns (
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory liquidities,
        int24 limitWidth
    ) {
        (uint160 sqrtPriceX96, int24 currentTick, , ) = poolManager.getSlot0(s.poolKey.toId());
        StrategyContext memory ctx = _buildStrategyContext(s, params, amount0, amount1, sqrtPriceX96, currentTick);

        (baseRanges, liquidities) = _generateRangesAndLiquidities(
            s,
            poolManager,
            ctx,
            amount0,
            amount1
        );

        _updateStrategyParams(s, ctx);

        s.basePositionsLength = 0;
        s.limitPositionsLength = 0;

        return (baseRanges, liquidities, ctx.limitWidth);
    }

    /**
     * @notice Build strategy context from params
     */
    function _buildStrategyContext(
        SharedStructs.ManagerStorage storage s,
        IMultiPositionManager.RebalanceParams calldata params,
        uint256 amount0,
        uint256 amount1,
        uint160 sqrtPriceX96,
        int24 currentTick
    ) private view returns (StrategyContext memory ctx) {
        if (params.weight0 == 0 && params.weight1 == 0) {
            (ctx.weight0, ctx.weight1) = calculateWeightsFromAmounts(amount0, amount1, sqrtPriceX96);
        } else {
            ctx.weight0 = params.weight0;
            ctx.weight1 = params.weight1;
        }

        ctx.resolvedStrategy = params.strategy != address(0) ? params.strategy : s.lastStrategyParams.strategy;

        if (params.center == type(int24).max) {
            // Always round down to ensure the range contains the current tick
            int24 compressed = currentTick / s.poolKey.tickSpacing;
            if (currentTick < 0 && currentTick % s.poolKey.tickSpacing != 0) {
                compressed--; // Round down for negative ticks with remainder
            }
            ctx.center = compressed * s.poolKey.tickSpacing;
        } else {
            ctx.center = params.center;
        }

        ctx.tLeft = params.tLeft;
        ctx.tRight = params.tRight;
        ctx.useCarpet = params.useCarpet;
        ctx.limitWidth = params.limitWidth;

        if (ctx.resolvedStrategy == address(0)) revert NoStrategySpecified();
        ctx.strategy = ILiquidityStrategy(ctx.resolvedStrategy);
    }

    /**
     * @notice Generate ranges and calculate liquidities
     */
    function _generateRangesAndLiquidities(
        SharedStructs.ManagerStorage storage s,
        IPoolManager poolManager,
        StrategyContext memory ctx,
        uint256 amount0,
        uint256 amount1
    ) private view returns (
        IMultiPositionManager.Range[] memory baseRanges,
        uint128[] memory liquidities
    ) {
        // Generate tick ranges
        (int24[] memory lowerTicks, int24[] memory upperTicks) = ctx.strategy.generateRanges(
            ctx.center,
            ctx.tLeft,
            ctx.tRight,
            s.poolKey.tickSpacing,
            ctx.useCarpet
        );

        // Convert to Range array
        baseRanges = new IMultiPositionManager.Range[](lowerTicks.length);
        for (uint i = 0; i < lowerTicks.length; i++) {
            baseRanges[i] = IMultiPositionManager.Range(lowerTicks[i], upperTicks[i]);
        }

        // Calculate weights
        uint256[] memory weights = _calculateWeights(s, poolManager, ctx, lowerTicks, upperTicks);

        // Initialize liquidities array
        liquidities = new uint128[](baseRanges.length);

        // Get current sqrt price
        (uint160 sqrtPriceX96Current, , , ) = poolManager.getSlot0(s.poolKey.toId());

        // Calculate liquidities
        _calculateLiquiditiesFromAmounts(
            liquidities,
            weights,
            baseRanges,
            sqrtPriceX96Current,
            amount0,
            amount1
        );
    }

    /**
     * @notice Calculate liquidities from token amounts and weights
     * @dev Internal helper for rebalanceSwap
     */
    function _calculateLiquiditiesFromAmounts(
        uint128[] memory liquidities,
        uint256[] memory weights,
        IMultiPositionManager.Range[] memory baseRanges,
        uint160 sqrtPriceX96,
        uint256 amount0,
        uint256 amount1
    ) internal pure {
        uint256 totalWeight = 0;
        for (uint256 i = 0; i < weights.length; i++) {
            totalWeight += weights[i];
        }

        for (uint256 i = 0; i < baseRanges.length; i++) {
            // Calculate proportional amounts for this range
            uint256 amount0ForRange = (amount0 * weights[i]) / totalWeight;
            uint256 amount1ForRange = (amount1 * weights[i]) / totalWeight;

            // Calculate liquidity for this range
            liquidities[i] = LiquidityAmounts.getLiquidityForAmounts(
                sqrtPriceX96,
                TickMath.getSqrtPriceAtTick(baseRanges[i].lowerTick),
                TickMath.getSqrtPriceAtTick(baseRanges[i].upperTick),
                amount0ForRange,
                amount1ForRange
            );
        }
    }

    /**
     * @notice Store rebalance result in storage
     * @dev Internal helper for rebalanceSwap
     */
    function _storeRebalanceResult(
        SharedStructs.ManagerStorage storage s,
        IPoolManager /* poolManager */,
        StrategyContext memory ctx,
        IMultiPositionManager.Range[] memory baseRanges
    ) internal {
        // Update stored strategy parameters
        s.lastStrategyParams.strategy = ctx.resolvedStrategy;
        s.lastStrategyParams.centerTick = ctx.center;
        s.lastStrategyParams.ticksLeft = ctx.tLeft;
        s.lastStrategyParams.ticksRight = ctx.tRight;
        s.lastStrategyParams.useCarpet = ctx.useCarpet;

        // Clear and update base positions length
        s.basePositionsLength = baseRanges.length;
        s.limitPositionsLength = 0;

        // Store new base positions
        for (uint256 i = 0; i < baseRanges.length; i++) {
            s.basePositions[i] = baseRanges[i];
        }
    }
}