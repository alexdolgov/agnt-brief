// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import "solady/src/tokens/ERC20.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { FixedPoint96 } from "@uniswap/v3-core/contracts/libraries/FixedPoint96.sol";
import { FullMath } from "../../external/uniswap/libraries/FullMath.sol";
import { TickMath } from "../../external/uniswap/libraries/TickMath.sol";
import "../Errors.sol";

/// @title Uniswap V3 TWAP Math
library UniswapV3PoolMath {
    using UniswapV3PoolMath for IUniswapV3Pool;

    /// @notice Get the last exchange rate from the pool's last observed value
    /// @return price_ The exchange rate between the underlying asset and the peg asset
    function getSpotPrice(IUniswapV3Pool pool, address baseAsset) internal view returns (uint256 price_) {
        // Only the sqrtPriceX96 is needed to get the price
        // slither-disable-next-line unused-return
        (uint160 sqrtPriceX96_,,,,,,) = IUniswapV3Pool(pool).slot0();

        if (IUniswapV3Pool(pool).token0() == baseAsset) {
            return pool._invertPrice(pool._getPriceFromSqrtPriceX96(sqrtPriceX96_));
        } else {
            return pool._getPriceFromSqrtPriceX96(sqrtPriceX96_);
        }
    }

    /// @notice Get the exchange rate over a TWAP period
    /// @param secondsAgo_ Two times in seconds to look back as an array i.e. [start, end]
    /// @param baseAsset Asset that the price should be denominated in
    /// @param pool Uniswap V3 pool where 1 side should be the base asset
    /// @return prices_ The exchange rate between the base asset and the peg asset
    function _getTwaps(
        IUniswapV3Pool pool,
        address baseAsset,
        uint32[] memory secondsAgo_
    )
        internal
        view
        returns (uint256[] memory prices_)
    {
        // Loop over the sqrtPrice and get the price for each interval
        uint160[] memory sqrtPricesX96_ = pool._getSqrtTwapX96(secondsAgo_);
        prices_ = new uint256[](sqrtPricesX96_.length);

        // Convert the sqrtPrices to prices
        // slither-disable-start calls-loop
        for (uint256 i = 0; i < sqrtPricesX96_.length; i++) {
            if (pool.token0() == baseAsset) {
                prices_[i] = pool._invertPrice(pool._getPriceFromSqrtPriceX96(sqrtPricesX96_[i]));
            } else {
                prices_[i] = pool._getPriceFromSqrtPriceX96(sqrtPricesX96_[i]);
            }
        }
        // slither-disable-end calls-loop
    }

    // Uniswap Helper Methods
    // Read this Uniswap Math Primer for math help: https://blog.uniswap.org/uniswap-v3-math-primer

    /// @notice  Get the exchange rate over a TWAP period
    /// @param secondsAgos_ The amount of time to look back for the TWAP
    /// @dev e.g [480, 240, 120, 60, 30]
    function _getSqrtTwapX96(
        IUniswapV3Pool pool,
        uint32[] memory secondsAgos_
    )
        internal
        view
        returns (uint160[] memory sqrtPriceX96_)
    {
        // Opserve the pool with secondsAgo to get the tickCumulatives for each point
        // secondsPerLiquidityCumulatives is unused
        // slither-disable-next-line unused-return
        (int56[] memory tickCumulatives_,) = pool.observe(secondsAgos_);

        sqrtPriceX96_ = new uint160[](tickCumulatives_.length - 1);

        // Get the sqrtPriceX96 for each interval of the twap
        int56 interval_;

        // Note: This needs attention
        // slither-disable-next-line calls-loop
        for (uint256 i = 0; i < tickCumulatives_.length - 1; i++) {
            interval_ = int56(int256(uint256(secondsAgos_[i] - secondsAgos_[i + 1])));
            sqrtPriceX96_[i] =
                TickMath.getSqrtRatioAtTick(int24((tickCumulatives_[i + 1] - tickCumulatives_[i]) / interval_));
        }
    }

    /// @notice Get the price from the sqrt price
    /// @param sqrtPriceX96_ The sqrt price to convert
    function _getPriceFromSqrtPriceX96(
        IUniswapV3Pool pool,
        uint160 sqrtPriceX96_
    )
        internal
        view
        returns (uint256 priceX96)
    {
        // slither-disable-next-line calls-loop
        return FullMath.mulDiv(
            uint256(sqrtPriceX96_) * uint256(sqrtPriceX96_),
            10 ** ERC20(pool.token0()).decimals(),
            1 << 192 // 96 * 2
        );
    }

    /// @notice Invert the price
    /// @param price_ The price to invert
    /// @return invertedPrice_  The inverted price in units of wei
    function _invertPrice(IUniswapV3Pool pool, uint256 price_) internal view returns (uint256 invertedPrice_) {
        // slither-disable-next-line calls-loop
        return FullMath.mulDiv(10 ** ERC20(pool.token0()).decimals(), 10 ** ERC20(pool.token1()).decimals(), price_);
    }
}
