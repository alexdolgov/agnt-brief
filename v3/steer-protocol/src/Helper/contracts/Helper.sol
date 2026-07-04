// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;
pragma abicoder v2;

//Libraries
import { Math } from "@openzeppelin/contracts-7/math/Math.sol"; // max(), min(), and average
import { SafeMath } from "@openzeppelin/contracts-7/math/SafeMath.sol";

//Uniswap
import { FullMath } from "@uniswap/v3-core/contracts/libraries/FullMath.sol";
import { LiquidityAmounts } from "@uniswap/v3-periphery/contracts/libraries/LiquidityAmounts.sol";
import { TickMath } from "@uniswap/v3-core/contracts/libraries/TickMath.sol";
import { PositionKey } from "@uniswap/v3-periphery/contracts/libraries/PositionKey.sol";

//Algebra
import { PositionKey as AlgebrPositionKey } from "@cryptoalgebra/periphery/contracts/libraries/PositionKey.sol";
import { TickMath as AlgberaTickMath } from "@cryptoalgebra/core/contracts/libraries/TickMath.sol";
import { LiquidityAmounts as AlgebraLiquidityAmounts } from "@cryptoalgebra/periphery/contracts/libraries/LiquidityAmounts.sol";
import { FullMath as AlgebraFullMath } from "@cryptoalgebra/core/contracts/libraries/FullMath.sol";

//Pool Interfaces
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IAlgebraPool } from "@cryptoalgebra/core/contracts/interfaces/IAlgebraPool.sol";
import { IPoolSharkOracle } from "./interfaces/IPoolSharkOracle.sol";
import { IHelper } from "./interfaces/IHelper.sol";
import { IFeeManager } from "./interfaces/IFeeManager.sol";

contract Helper {
    using SafeMath for uint256;
    uint256 internal constant FEE_DIVISOR = 100_00;

    function getShares(
        uint256 _totalSupply,
        uint256 total0,
        uint256 total1,
        uint256 amount0Desired,
        uint256 amount1Desired,
        uint256 amount0Min,
        uint256 amount1Min,
        uint256 minShares
    )
        external
        pure
        returns (uint256 shares, uint256 amount0Used, uint256 amount1Used)
    {
        // If total supply > 0, vault can't be empty.
        assert(_totalSupply == 0 || total0 > 0 || total1 > 0);

        if (_totalSupply == 0) {
            // For first deposit, just use the amounts desired
            amount0Used = amount0Desired;
            amount1Used = amount1Desired;
            shares = Math.max(amount0Used, amount1Used);
            require(shares >= minShares, "M");
        } else if (total0 == 0) {
            shares = FullMath.mulDiv(amount1Desired, _totalSupply, total1);
            amount1Used = FullMath.mulDivRoundingUp(
                shares,
                total1,
                _totalSupply
            );
        } else if (total1 == 0) {
            shares = FullMath.mulDiv(amount0Desired, _totalSupply, total0);
            amount0Used = FullMath.mulDivRoundingUp(
                shares,
                total0,
                _totalSupply
            );
        } else {
            uint256 cross = Math.min(
                amount0Desired.mul(total1),
                amount1Desired.mul(total0)
            );

            // If cross is zero, this means that the inputted ratio is totally wrong
            // and must be adjusted to better match the vault's held ratio.
            // This pretty much only happens if all of the vault's holdings are in one token,
            // and the user wants to exclusively deposit the other token.
            require(cross > 0, "C");

            // Round up amounts
            // cross - 1 can be unchecked since above we require cross != 0
            // total1 and total0 are also both > 0
            amount0Used = ((cross - 1) / total1) + 1;
            amount1Used = ((cross - 1) / total0) + 1;

            shares = FullMath.mulDiv(cross, _totalSupply, total0) / total1;
        }

        // Make sure deposit meets slippage requirements.
        // If amount0Used < amount0Min or amount1Used < amount1Min,
        // there has been too much slippage.
        require(shares > 0, "0 shares");
        require(amount0Used >= amount0Min, "0");
        require(amount1Used >= amount1Min, "1");
    }

    /// @dev revert if volatility is above acceptable levels
    ///      (mainly used to prevent flashloan attacks)
    /// @param currentTick Current pool tick
    function uniVolatilityCheck(
        int24 currentTick,
        uint32 _twapInterval,
        int24 _maxTickChange,
        address pool
    ) external view {
        // Get TWAP tick
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = _twapInterval;

        // tickCumulatives is basically where the tick was as of twapInterval seconds ago
        (int56[] memory tickCumulatives, ) = IUniswapV3Pool(pool).observe(
            secondsAgos
        );

        // tickCumulatives[1] will always be greater than [0]
        // so no need to check for underflow or division overflow here.
        int24 twapTick = int24(
            (tickCumulatives[1] - tickCumulatives[0]) / _twapInterval
        );

        // Make sure currentTick is not more than maxTickChange ticks away from twapTick
        // No SafeMath here--even if a compromised governance contract set _maxTickChange to a very high value,
        // it would only wrap around and cause this check to fail.
        require(
            currentTick <= twapTick + _maxTickChange &&
                currentTick >= twapTick - _maxTickChange,
            "V"
        );
    }

    /// @dev revert if volatility is above acceptable levels
    ///      (mainly used to prevent flashloan attacks)
    /// @param currentTick Current pool tick
    function algebraVolatilityCheck(
        int24 currentTick,
        uint32 _twapInterval,
        int24 _maxTickChange,
        address pool
    ) external view {
        // Get TWAP tick
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = _twapInterval;

        // tickCumulatives is basically where the tick was as of twapInterval seconds ago
        (int56[] memory tickCumulatives, , , ) = IAlgebraPool(pool)
            .getTimepoints(secondsAgos);

        // tickCumulatives[1] will always be greater than [0]
        // so no need to check for underflow or division overflow here.
        int24 twapTick = int24(
            (tickCumulatives[1] - tickCumulatives[0]) / _twapInterval
        );

        // Make sure currentTick is not more than maxTickChange ticks away from twapTick
        // No SafeMath here--even if a compromised governance contract set _maxTickChange to a very high value,
        // it would only wrap around and cause this check to fail.
        require(
            currentTick <= twapTick + _maxTickChange &&
                currentTick >= twapTick - _maxTickChange,
            "V"
        );
    }

    /// @dev revert if volatility is above acceptable levels
    ///      (mainly used to prevent flashloan attacks)
    /// @param currentTick Current pool tick
    function poolsharkCheckVolatility(
        int24 currentTick,
        uint32 _twapInterval,
        int24 _maxTickChange,
        address pool
    ) external view {
        // SLOADS for efficiency
        // Get TWAP tick
        uint32[] memory secondsAgos = new uint32[](2);
        secondsAgos[0] = _twapInterval;

        // tickCumulatives is basically where the tick was as of twapInterval seconds ago
        (int56[] memory tickCumulatives, , , , ) = IPoolSharkOracle(pool)
            .sample(secondsAgos);

        // tickCumulatives[1] will always be greater than tickCumulatives[0]
        int24 twapTick = int24(
            (tickCumulatives[1] - tickCumulatives[0]) / _twapInterval
        );

        // Make sure currentTick is not more than maxTickChange ticks away from twapTick
        // No SafeMath here--even if a compromised governance contract set _maxTickChange to a very high value,
        // it would only wrap around and cause this check to fail.
        require(
            currentTick <= twapTick + _maxTickChange &&
                currentTick >= twapTick - _maxTickChange,
            "V"
        );
    }

    struct UniswapBalanceCalculationData {
        uint160 sqrtPriceX96;
        uint256 totalFees;
        uint256 feeSubtract;
        uint256 positionCount;
        uint128 liquidity;
        uint256 fees0;
        uint256 fees1;
        uint256 amt0;
        uint256 amt1;
    }

    function getUniswapVaultBalances(
        uint256 total0,
        uint256 total1,
        IHelper.NewLiquidityPositions[] memory positions,
        address pool,
        address feeManager
    ) external view returns (uint256, uint256) {
        UniswapBalanceCalculationData memory data;
        (data.sqrtPriceX96, , , , , , ) = IUniswapV3Pool(pool).slot0();
        data.totalFees = IFeeManager(feeManager).vaultTotalFees(msg.sender);
        data.feeSubtract = FEE_DIVISOR - data.totalFees;
        data.positionCount = positions.length;

        for (uint256 i; i != data.positionCount; ++i) {
            (data.liquidity, , , data.fees0, data.fees1) = IUniswapV3Pool(pool)
                .positions(
                    PositionKey.compute(
                        msg.sender,
                        positions[i].lowerTick,
                        positions[i].upperTick
                    )
                );

            (data.amt0, data.amt1) = LiquidityAmounts.getAmountsForLiquidity(
                data.sqrtPriceX96,
                TickMath.getSqrtRatioAtTick(positions[i].lowerTick),
                TickMath.getSqrtRatioAtTick(positions[i].upperTick),
                data.liquidity
            );

            total0 = total0.add(
                data.amt0.add(
                    FullMath.mulDiv(data.fees0, data.feeSubtract, FEE_DIVISOR)
                )
            );
            total1 = total1.add(
                data.amt1.add(
                    FullMath.mulDiv(data.fees1, data.feeSubtract, FEE_DIVISOR)
                )
            );
        }

        return (total0, total1);
    }

    struct AlgebraBalanceCalculationData {
        uint256 totalFees;
        uint256 feeSubtract;
        uint256 positionCount;
        uint128 liquidity;
        uint128 fees0;
        uint128 fees1;
        uint256 amt0;
        uint256 amt1;
    }

    function getAlgebraVaultBalances(
        uint256 total0,
        uint256 total1,
        IHelper.NewLiquidityPositions[] memory positions,
        address pool,
        address feeManager,
        uint160 sqrtPriceX96
    ) external view returns (uint256, uint256) {
        AlgebraBalanceCalculationData memory data;
        data.totalFees = IFeeManager(feeManager).vaultTotalFees(msg.sender);
        data.feeSubtract = FEE_DIVISOR - data.totalFees;
        data.positionCount = positions.length;

        for (uint256 i; i != data.positionCount; ++i) {
            (data.liquidity, , , , data.fees0, data.fees1) = IAlgebraPool(pool)
                .positions(
                    AlgebrPositionKey.compute(
                        msg.sender,
                        positions[i].lowerTick,
                        positions[i].upperTick
                    )
                );

            (data.amt0, data.amt1) = AlgebraLiquidityAmounts
                .getAmountsForLiquidity(
                    sqrtPriceX96,
                    AlgberaTickMath.getSqrtRatioAtTick(positions[i].lowerTick),
                    AlgberaTickMath.getSqrtRatioAtTick(positions[i].upperTick),
                    data.liquidity
                );

            total0 = total0.add(
                data.amt0.add(
                    AlgebraFullMath.mulDiv(
                        data.fees0,
                        data.feeSubtract,
                        FEE_DIVISOR
                    )
                )
            );
            total1 = total1.add(
                data.amt1.add(
                    AlgebraFullMath.mulDiv(
                        data.fees1,
                        data.feeSubtract,
                        FEE_DIVISOR
                    )
                )
            );
        }

        return (total0, total1);
    }
}
