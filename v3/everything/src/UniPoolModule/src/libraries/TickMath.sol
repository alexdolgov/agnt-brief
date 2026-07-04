// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import { FixedPointMathLib } from "solady-0.1/utils/FixedPointMathLib.sol";

/**
 * @title Tick Math Library
 * @notice Converts between prices and ticks, where each tick represents an increase in price of 1%. Ticks are used
 * instead of liquidation prices to limit the number of possible buckets where a position can land, and allows for
 * batched liquidations.
 * @dev The prices are represented with 18 decimals.
 * The formula for calculating the price from a tick is: `price = 1.01^(tick)`.
 * The formula for calculating the tick from a price is: tick = `log_1.01(price)`.
 * Note that additional scaling must be performed on the price values to account for accumulated interests.
 */
library TickMath {
    /**
     * @dev The rounding direction for price to tick conversion.
     * @param Up Round up towards positive infinity.
     * @param Down Round down towards negative infinity.
     */
    enum Rounding {
        Up,
        Down
    }

    /// @dev The provided tick is out of bounds.
    error TickMathInvalidTick();

    /// @dev The provided price is out of bounds.
    error TickMathInvalidPrice();

    /// @dev The number of decimals for the price values.
    uint8 internal constant PRICE_DECIMALS = 18;

    /// @dev The divisor for price values.
    uint256 internal constant PRICE_DIVISOR = FixedPointMathLib.WAD;

    /// @dev The minimum price we want to resolve is 100 wei (~1e-16), which equates to `1.01^-3702`.
    int16 internal constant MIN_TICK = -3702;

    /// @dev The maximum tick is determined by the limits of the libraries used for math and testing.
    int16 internal constant MAX_TICK = 13_598;

    /// @dev The minimum representable value for the price.
    uint256 internal constant MIN_PRICE = 100;

    /// @dev The maximum representable value for the price.
    uint256 internal constant MAX_PRICE =
        57_815_022_151_131_386_756_303_782_211_187_007_940_748_075_867_886_491_464_141_064_982_387_492_939_866;

    /// @dev Pre-computed value for `ln(1.01)`.
    int256 internal constant LN_BASE = 9_950_330_853_168_083;

    /**
     * @notice Calculates the price at a given tick.
     * @dev Calculates the price as `1.01^tick = e^(tick * ln(1.01))`.
     * @param tick The tick.
     * @return price_ The corresponding price.
     */
    function calcPriceAtTick(int16 tick) internal pure returns (uint256 price_) {
        if (tick > MAX_TICK || tick < MIN_TICK) {
            revert TickMathInvalidTick();
        }
        price_ = uint256(FixedPointMathLib.expWad(tick * LN_BASE));
    }

    /**
     * @notice Calculates the tick corresponding to a price, rounded in the desired direction.
     * @dev `log_1.01(price) = ln(price)/ln(1.01)` gives the tick.
     * @param price The price.
     * @param dir The rounding direction.
     * @return tick_ The corresponding tick.
     */
    function calcTickAtPrice(uint256 price, Rounding dir) internal pure returns (int16 tick_) {
        if (price < MIN_PRICE || price > MAX_PRICE) {
            revert TickMathInvalidPrice();
        }
        if (price == MAX_PRICE) {
            // for MAX_PRICE and rounding down, this function would return MAX_TICK - 1 when MAX_TICK is more
            // accurate
            return MAX_TICK;
        }

        // SAFETY: the MAX_PRICE can safely be cast to an int256
        // forge-lint: disable-next-line(unsafe-typecast)
        int256 ln = FixedPointMathLib.lnWad(int256(price));

        // compute initial floor tick estimate (largest tick where calcPriceAtTick(tick) <= price)
        if (ln >= 0) {
            // rounding up, which is the default for the division operator (truncate towards zero)
            // SAFETY: MAX_PRICE results in MAX_TICK which fits an int16, so the result must fit an int16
            // forge-lint: disable-next-line(unsafe-typecast)
            tick_ = int16(ln / LN_BASE);
        } else {
            // we round up the positive number then invert it -> round towards negative infinity
            // SAFETY: we know `ln` is negative so `-ln` is positive and can be cast safely
            // SAFETY: LN_BASE is always positive
            // forge-lint: disable-next-line(unsafe-typecast)
            tick_ = -int16(int256(FixedPointMathLib.divUp(uint256(-ln), uint256(LN_BASE))));
            if (tick_ < MIN_TICK) {
                tick_ = MIN_TICK;
            }
        }

        // due to imprecisions in the ln implementation,
        // for some values of `price` the calculations below might not give the closest tick,
        // which when converted back to a price, is indeed >=/<= than the input price according to the rounding
        // so we convert the next tick back to a price to check if it would be a better fit

        uint256 priceAtTick = calcPriceAtTick(tick_);
        if (priceAtTick > price) {
            // estimate is too high, go down
            if (tick_ > MIN_TICK) {
                tick_ -= 1;
                if (dir == Rounding.Down) return tick_;
                priceAtTick = calcPriceAtTick(tick_);
                if (priceAtTick < price) tick_ += 1;
            }
            return tick_;
        }

        uint256 nextPrice = calcPriceAtTick(tick_ + 1);
        if (nextPrice <= price) {
            // estimate is too low, go up
            tick_ += 1;
            priceAtTick = nextPrice;
        }

        if (dir == Rounding.Up && priceAtTick < price) {
            tick_ += 1;
        }
    }
}
