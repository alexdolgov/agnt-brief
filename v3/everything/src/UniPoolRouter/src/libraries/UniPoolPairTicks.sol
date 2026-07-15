// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import { FixedPointMathLib } from "solady-0.1/utils/FixedPointMathLib.sol";

import "../UniPoolTypes.sol";
import { IUniPoolPair } from "../interfaces/IUniPoolPair.sol";
import { MathUtils } from "./MathUtils.sol";
import { TickMath } from "./TickMath.sol";
import { UniPoolPairConstants as Constants } from "./UniPoolPairConstants.sol";
import { UniPoolPairState as State } from "./UniPoolPairState.sol";
import { UniPoolPairUtils as Utils } from "./UniPoolPairUtils.sol";

/// @title Ticks and Price Helpers for `UniPoolPair`
library UniPoolPairTicks {
    using FixedPointMathLib for uint256;
    using MathUtils for uint128;

    /// @dev Maximum upper bound for a tick range (exclusive).
    int16 constant MAX_UPPER_BOUND = TickMath.MAX_TICK;

    /**
     * @notice Struct to hold temporary data in the {getAvailableBorrowInTickRange} function.
     * @param liquidity The amount of liquidity in the tick range.
     * @param lower The lower tick in the range.
     * @param upper The upper tick in the range (exclusive).
     * @param borrowedTokenReserve The reserve of the borrowed token.
     * @param collateralTokenReserve The reserve of the collateral token.
     * @param virtualReserveBorrowed The virtual reserve to consider for current price calculation (borrowed token).
     * @param virtualReserveCollateral The virtual reserve to consider for current price calculation (collateral token).
     * @param multiplier The interest multiplier for the borrowed token.
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     */
    struct LiquidityRangeData {
        uint256 liquidity;
        int16 lower;
        int16 upper;
        uint128 borrowedTokenReserve;
        uint128 collateralTokenReserve;
        uint128 virtualReserveBorrowed;
        uint128 virtualReserveCollateral;
        uint256 multiplier;
        uint256 yieldAccumulator;
    }

    /**
     * @notice Convert a tick number into the corresponding liquidation price, taking into account the due interests.
     * @dev For token0 loans, the price is reserve1 / reserve0. For token1 loans, the price is reserve0 / reserve1.
     * The interest multipliers in storage are only updated when action is performed on the pair. To preview the
     * multiplier value now, use {IUniPoolPair.previewInterestMultiplier0} and {IUniPoolPair.previewInterestMultiplier1}
     * with the current timestamp.
     * @param tick The tick number.
     * @param interestMultiplier The interest multiplier on the side of the loan.
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param roundUp Whether to round up the multiplier adjustment result.
     * @return price_ The liquidation price corresponding to the tick.
     */
    function calcPriceAtTickExternal(int16 tick, uint256 interestMultiplier, uint256 yieldAccumulator, bool roundUp)
        external
        pure
        returns (uint256 price_)
    {
        price_ = calcPriceAtTick(tick, interestMultiplier, yieldAccumulator, roundUp);
    }

    /**
     * @notice Convert a liquidation price (which takes into account accrued interests) into the corresponding tick
     * number.
     * @dev For token0 loans, the price is reserve1 / reserve0. For token1 loans, the price is reserve0 / reserve1.
     * The interest multipliers in storage are only updated when action is performed on the pair. To preview the
     * multiplier value now, use {IUniPoolPair.previewInterestMultiplier0} and {IUniPoolPair.previewInterestMultiplier1}
     * with the current timestamp.
     * @param price The liquidation price.
     * @param interestMultiplier The interest multiplier on the side of the loan.
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param roundUp Whether to round up the conversion result.
     * @return tick_ The tick number corresponding to the liquidation price.
     */
    function calcTickAtPriceExternal(uint256 price, uint256 interestMultiplier, uint256 yieldAccumulator, bool roundUp)
        external
        pure
        returns (int16 tick_)
    {
        tick_ = calcTickAtPrice(price, interestMultiplier, yieldAccumulator, roundUp);
    }

    /**
     * @notice Convert a tick number into the corresponding liquidation price, taking into account the due interests.
     * @dev For token0 loans, the price is reserve1 / reserve0. For token1 loans, the price is reserve0 / reserve1.
     * The interest multipliers in storage are only updated when action is performed on the pair. To preview the
     * multiplier value now, use {IUniPoolPair.previewInterestMultiplier0} and {IUniPoolPair.previewInterestMultiplier1}
     * with the current timestamp. Same for the yield accumulator, prefer to query {IUniPoolVault.getYieldAccumulator}.
     * @param tick The tick number.
     * @param interestMultiplier The interest multiplier on the side of the loan.
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param roundUp Whether to round up the multiplier adjustment result.
     * @return price_ The liquidation price corresponding to the tick.
     */
    function calcPriceAtTick(int16 tick, uint256 interestMultiplier, uint256 yieldAccumulator, bool roundUp)
        internal
        pure
        returns (uint256 price_)
    {
        price_ = TickMath.calcPriceAtTick(tick);
        // since the price always has the collateral token in the numerator, the liquidation price is always above
        // the current price
        // so the liquidation price must decreases when paying interests and increase when earning yield on the collat
        if (roundUp) {
            price_ = price_.fullMulDivUp(yieldAccumulator, interestMultiplier);
        } else {
            price_ = price_.fullMulDiv(yieldAccumulator, interestMultiplier);
        }
        // if the price becomes too small, it would mean that multiple ticks can resolve to the same price which
        // we want to avoid
        require(price_ >= TickMath.MIN_PRICE, IUniPoolPair.UniPoolPairPriceTooSmall());
    }

    /**
     * @notice Convert a liquidation price (which takes into account accrued interests) into the corresponding tick
     * number.
     * @dev For token0 loans, the price is reserve1 / reserve0. For token1 loans, the price is reserve0 / reserve1.
     * The interest multipliers in storage are only updated when action is performed on the pair. To preview the
     * multiplier value now, use {IUniPoolPair.previewInterestMultiplier0} and {IUniPoolPair.previewInterestMultiplier1}
     * with the current timestamp.
     * @param price The liquidation price.
     * @param interestMultiplier The interest multiplier on the side of the loan.
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param roundUp Whether to round up the conversion result.
     * @return tick_ The tick number corresponding to the liquidation price.
     */
    function calcTickAtPrice(uint256 price, uint256 interestMultiplier, uint256 yieldAccumulator, bool roundUp)
        internal
        pure
        returns (int16 tick_)
    {
        // since the price always has the collateral token in the numerator, the liquidation price is always above
        // the current price
        // so the liquidation price decreases when paying interests, so we increase it back up before conversion
        // similarly, the liquidation price increases if the vault generates yield, so we decrease it before conversion
        uint256 unadjustedPrice;
        TickMath.Rounding rounding;
        if (roundUp) {
            unadjustedPrice = price.fullMulDivUp(interestMultiplier, yieldAccumulator);
            rounding = TickMath.Rounding.Up;
        } else {
            unadjustedPrice = price.fullMulDiv(interestMultiplier, yieldAccumulator);
            rounding = TickMath.Rounding.Down;
        }
        tick_ = TickMath.calcTickAtPrice(unadjustedPrice, rounding);
    }

    /**
     * @notice Calculate how much reserve of token0 or token1 there would be at a given price.
     * @dev For token0 loans, the price is reserve1 / reserve0. For token1 loans, the price is reserve0 / reserve1.
     * If there are pending liquidations, then the previewed reserves should be used.
     * @param reserve0 The current reserves of token0.
     * @param reserve1 The current reserves of token1.
     * @param price The price with `PRICE_DECIMALS`.
     * @return reserve_ The reserves for the desired token.
     */
    function calcReserveAtPrice(uint128 reserve0, uint128 reserve1, uint256 price)
        internal
        pure
        returns (uint256 reserve_)
    {
        // k = reserve0 * reserve1 = const (with regards to price changes)
        // price0 = reserve1 / reserve0
        // price1 = reserve0 / reserve1
        // reserve0 = sqrt(k / price0)
        // reserve1 = sqrt(k / price1)
        reserve_ = uint256(reserve0).fullMulDiv(reserve1 * TickMath.PRICE_DIVISOR, price).sqrt();
    }

    /**
     * @notice Calculates the unconcentrated liquidity available on a given tick.
     * @dev This is the amount of token0 or token1 which is required to be swapped to move the price by 1 tick.
     * If given interestMultiplier0, then the liquidity of token0 is returned.
     * @param tick The tick number.
     * @param interestMultiplier The interest multiplier for the token to be borrowed.
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param reserve0 The current reserves of token0.
     * @param reserve1 The current reserves of token1.
     * @return liq_ The liquidity on the tick.
     */
    function calcLiquidityOnTick(
        int16 tick,
        uint256 interestMultiplier,
        uint256 yieldAccumulator,
        uint128 reserve0,
        uint128 reserve1
    ) internal pure returns (uint256 liq_) {
        // round up the price to underestimate the reserves available on a tick
        uint256 price = calcPriceAtTick(tick, interestMultiplier, yieldAccumulator, true);
        uint256 reserve = calcReserveAtPrice(reserve0, reserve1, price);
        // calculate the available unconcentrated liquidity on the tick
        //
        // this is the Δreserve that brings the price from price(tick) to price(tick+1) when sold
        // reserve@tick = sqrt(k / price(tick)) = sqrt(k/p)
        // Δreserve = sqrt(k/price(tick)) - sqrt(k/price(tick+1)) = sqrt(k/p) - sqrt(k/(1.01*p))
        // = (1 - sqrt(1/1.01)) * sqrt(k/p) = ONE_MINUS_SQRT_INVERSE_TICKBASE * reserve@tick
        liq_ = reserve.mulDiv(Constants.ONE_MINUS_SQRT_INVERSE_TICKBASE, FixedPointMathLib.WAD);
    }

    /**
     * @notice Calculates the bounds of a tick range containing a given tick. The upper bound is exclusive.
     * @param tick The tick number.
     * @return lower_ The lower bound of the range, inclusive.
     * @return upper_ The upper bound of range, exclusive.
     */
    function calcTickRangeBounds(int16 tick) internal pure returns (int16 lower_, int16 upper_) {
        int16 bound = tick - tick % Constants.TICK_RANGE_SIZE; // rounded to size, towards zero
        if (tick >= 0) {
            require(tick < MAX_UPPER_BOUND, IUniPoolPair.UniPoolPairInvalidTick());
            lower_ = bound;
            upper_ = bound + Constants.TICK_RANGE_SIZE;
            if (upper_ > MAX_UPPER_BOUND) {
                upper_ = MAX_UPPER_BOUND;
            }
        } else {
            require(tick >= TickMath.MIN_TICK, IUniPoolPair.UniPoolPairInvalidTick());
            if (tick % Constants.TICK_RANGE_SIZE == 0) {
                lower_ = bound;
                upper_ = bound + Constants.TICK_RANGE_SIZE;
            } else {
                lower_ = bound - Constants.TICK_RANGE_SIZE;
                upper_ = bound;
            }
            if (lower_ < TickMath.MIN_TICK) {
                lower_ = TickMath.MIN_TICK;
            }
        }
    }

    /**
     * @notice Calculates the unconcentrated liquidity for token0 or token1 available on a range of ticks.
     * @dev If given interestMultiplier0, then the liquidity of token0 is returned.
     * @param lower The lower bound of the range (inclusive).
     * @param upper The upper bound of the range (exclusive).
     * @param interestMultiplier The interest multiplier for the token to be borrowed.
     * @param yieldAccumulator The vault yield accumulator for the collateral token.
     * @param reserve0 The current reserves of token0.
     * @param reserve1 The current reserves of token1.
     * @return liq_ The liquidity on the tick range.
     */
    function calcLiquidityInTickRange(
        int16 lower,
        int16 upper,
        uint256 interestMultiplier,
        uint256 yieldAccumulator,
        uint128 reserve0,
        uint128 reserve1
    ) internal pure returns (uint256 liq_) {
        // for a range of ticks [l,u) the available liquidity is the sum of `calcLiquidityOnTick` for each tick
        //
        // sum_{i=l}^{u-1} (1 - (1/sqrt(1.01)) * sqrt((k*m)/1.01^i))
        // = sqrt((k*m)/1.01^l) - sqrt((k*m)/1.01^u) = reserve@l - reserve@u
        //
        // rounding price direction to underestimate the available liquidity for safety
        uint256 lowerPrice = calcPriceAtTick(lower, interestMultiplier, yieldAccumulator, true); // round up
        uint256 upperPrice = calcPriceAtTick(upper, interestMultiplier, yieldAccumulator, false); // round down
        uint256 lowerReserve = calcReserveAtPrice(reserve0, reserve1, lowerPrice);
        uint256 upperReserve = calcReserveAtPrice(reserve0, reserve1, upperPrice);
        liq_ = lowerReserve - upperReserve;
    }

    /**
     * @notice Gets the available borrowable amount for a given tick and token.
     * @param tick The tick number for the liquidation price.
     * @param isToken0 Whether token0 is being borrowed.
     * @return available_ The max amount that can be borrowed according to the max per tick and existing loans.
     */
    function getAvailableBorrowOnTick(int16 tick, bool isToken0) internal view returns (uint256 available_) {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        TokenStorage storage token = isToken0 ? s.token0 : s.token1;
        TickData storage tickData = token.tick[calcTickId(tick, token.tickVersion[tick])];
        uint256 liquidity = calcLiquidityOnTick(
            tick, token.interestMultiplier, token.lastCollatYieldAccumulator, s.token0.reserve, s.token1.reserve
        );
        available_ = liquidity.mulDiv(s.maxBorrowPerTickBps, Constants.BPS_DIVISOR).saturatingSub(tickData.amount);
    }

    /**
     * @notice Gets the available borrowable amount for the tick range containing a given tick.
     * @param tick The tick number for the liquidation price.
     * @param isToken0 Whether token0 is being borrowed.
     * @param state The updated state.
     * @return available_ The max amount that can be borrowed according to the available liquidity on the tick range,
     * the maximum borrow per tick range, and existing loans.
     */
    function getAvailableBorrowInTickRange(int16 tick, bool isToken0, State.UpdatedState memory state)
        internal
        view
        returns (uint256 available_)
    {
        IUniPoolPair.Storage storage s = Utils._getMainStorage();
        LiquidityRangeData memory data;
        TokenStorage storage token;
        TokenStorage storage collateralToken;
        if (isToken0) {
            (token, collateralToken) = (s.token0, s.token1);
            data.borrowedTokenReserve = s.token0.reserve;
            data.collateralTokenReserve = s.token1.reserve;
            data.virtualReserveBorrowed = state.vr.virtualReserve0In;
            data.virtualReserveCollateral = state.vr.virtualReserve1Out;
            data.multiplier = state.interestMultiplier0;
            data.yieldAccumulator = state.yieldAccumulator0;
        } else {
            (token, collateralToken) = (s.token1, s.token0);
            data.borrowedTokenReserve = s.token1.reserve;
            data.collateralTokenReserve = s.token0.reserve;
            data.virtualReserveBorrowed = state.vr.virtualReserve1In;
            data.virtualReserveCollateral = state.vr.virtualReserve0Out;
            data.multiplier = state.interestMultiplier1;
            data.yieldAccumulator = state.yieldAccumulator1;
        }
        // round up price, in order to avoid overestimating the available assets due to imprecision
        // maximize token reserve, minimize collateral reserve to minimize the virtual price (same calculation as
        // for liquidations)
        uint256 virtualPrice = State.calcPrice(
            data.virtualReserveBorrowed.max(data.borrowedTokenReserve),
            data.virtualReserveCollateral.min(data.collateralTokenReserve),
            true
        );
        // if the current price is e.g. 995 (rounded up), we don't want to liquidate positions with a
        // liquidation price of 1000, so we round down when converting the current price to a tick
        int16 currentTick = calcTickAtPrice(virtualPrice, data.multiplier, data.yieldAccumulator, false);
        // ticks equal or below the current tick can be liquidated and should not be taken into consideration
        int16 firstValidTick;
        unchecked {
            // SAFETY: since `calcTickAtPrice` returns at most `MAX_TICK`, we can always add 1
            firstValidTick = currentTick + 1;
        }
        (data.lower, data.upper) = calcTickRangeBounds(tick);
        if (firstValidTick > data.lower) {
            data.lower = firstValidTick;
        }
        if (data.lower >= data.upper) {
            // can't borrow on this tick
            return 0;
        }
        // order of reserves is not important in the call below, as they simply get multiplied together down the line
        data.liquidity = calcLiquidityInTickRange(
            data.lower,
            data.upper,
            data.multiplier,
            data.yieldAccumulator,
            data.borrowedTokenReserve,
            data.collateralTokenReserve
        );
        uint256 totalBorrowed;
        for (int16 i = data.lower; i < data.upper; i++) {
            TickData storage tickData = token.tick[calcTickId(i, token.tickVersion[i])];
            totalBorrowed += tickData.amount;
        }
        available_ =
            data.liquidity.mulDiv(s.maxBorrowPerTickRangeBps, Constants.BPS_DIVISOR).saturatingSub(totalBorrowed);
    }

    /**
     * @notice Calculates the ID for a tick at a specific version.
     * @param tickNumber The number of the tick.
     * @param tickVersion The version of the tick.
     * @return tickId_ The tick ID, result of concatenating the number and version.
     */
    function calcTickId(int16 tickNumber, uint232 tickVersion) internal pure returns (TickId tickId_) {
        assembly ("memory-safe") {
            tickId_ := or(shl(232, tickNumber), tickVersion)
        }
    }
}
