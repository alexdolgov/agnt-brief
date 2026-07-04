// SPDX-License-Identifier: BUSL-1.1
pragma solidity =0.8.20;

import "@cryptoalgebra/integral-core/contracts/libraries/TickMath.sol";
import "@cryptoalgebra/integral-periphery/contracts/libraries/LiquidityAmounts.sol";
import "@cryptoalgebra/integral-periphery/contracts/interfaces/INonfungiblePositionManager.sol";
import "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";

library PositionValue {
    uint256 internal constant Q128 = 1 << 128;
    function amountsForLiquidity(
        IAlgebraPool pool,
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity
    ) internal view returns (uint256, uint256) {
        (uint160 sqrtRatioX96, , , , , ,) = pool.safelyGetStateOfAMM();
        return
            LiquidityAmounts.getAmountsForLiquidity(
                sqrtRatioX96,
                TickMath.getSqrtRatioAtTick(tickLower),
                TickMath.getSqrtRatioAtTick(tickUpper),
                liquidity
            );
    }

    function liquidityForAmounts(
        IAlgebraPool pool,
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0,
        uint256 amount1
    ) internal view returns (uint128) {
        (uint160 sqrtRatioX96, , , , , ,) = pool.safelyGetStateOfAMM();
        return
            LiquidityAmounts.getLiquidityForAmounts(
                sqrtRatioX96,
                TickMath.getSqrtRatioAtTick(tickLower),
                TickMath.getSqrtRatioAtTick(tickUpper),
                amount0,
                amount1
            );
    }

    function position(
        INonfungiblePositionManager positionManager,
        uint256 tokenId
    ) internal view returns (
        uint128 liquidity,
        uint128 tokensOwed0,
        uint128 tokensOwed1
    ) {
        if (tokenId == 0) {
            return (0, 0, 0);
        }

        (, , , , , , , liquidity, , , tokensOwed0, tokensOwed1) = positionManager.positions(tokenId);
    }
    
    function liquidityForShares(
        INonfungiblePositionManager positionManager,
        uint256 tokenId, 
        uint256 shares,
        uint256 totalSupply
    ) internal view returns (uint128 liquidity) {
        (, , , , , , , uint128 positionLiquidity, , , , ) = positionManager.positions(tokenId);
        // x <= type(uint128).max check
        uint256 result = FullMath.mulDiv(uint256(positionLiquidity), shares, totalSupply);
        require(result <= type(uint128).max);
        return uint128(result);
    }

    function calculatePositionFee(
        INonfungiblePositionManager positionManager,
        IAlgebraPool pool,    
        uint256 tokenId
    ) internal view returns (uint256 fee0, uint256 fee1) {
        (, , , , , int24 tickLower, int24 tickUpper, uint128 liquidityBefore, uint256 feeGrowthInside0LastX128, uint256 feeGrowthInside1LastX128, uint128 tokensOwed0, uint128 tokensOwed1) = positionManager.positions(tokenId);

        // Early return if no liquidity
        if (liquidityBefore == 0) return (uint256(tokensOwed0), uint256(tokensOwed1));

        // Initial fee assignments outside unchecked
        fee0 = uint256(tokensOwed0);
        fee1 = uint256(tokensOwed1);

        (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) = getFeeGrowthInside(pool, tickLower, tickUpper);

        unchecked {
            if (feeGrowthInside0X128 != feeGrowthInside0LastX128) {
                fee0 += FullMath.mulDiv(feeGrowthInside0X128 - feeGrowthInside0LastX128,liquidityBefore,Q128);
            }
            if (feeGrowthInside1X128 != feeGrowthInside1LastX128) {
                fee1 += FullMath.mulDiv(feeGrowthInside1X128 - feeGrowthInside1LastX128,liquidityBefore,Q128);
            }
        }
    }

    function getFeeGrowthInside(
        IAlgebraPool pool,
        int24 bottomTick,
        int24 topTick
    ) internal view returns (uint256 feeGrowthInside0X128, uint256 feeGrowthInside1X128) {
        (, int24 currentTick, , , , ,) = pool.safelyGetStateOfAMM(); 
        
        (,,,, uint256 outerFeeGrowth0TokenLower, uint256 outerFeeGrowth1TokenLower) = pool.ticks(bottomTick);
        (,,,, uint256 outerFeeGrowth0TokenUpper, uint256 outerFeeGrowth1TokenUpper) = pool.ticks(topTick);
        
        uint256 feeGrowthGlobal0X128 = pool.totalFeeGrowth0Token();
        uint256 feeGrowthGlobal1X128 = pool.totalFeeGrowth1Token();

        unchecked {
            if (currentTick < bottomTick) {
                feeGrowthInside0X128 = outerFeeGrowth0TokenLower - outerFeeGrowth0TokenUpper;
                feeGrowthInside1X128 = outerFeeGrowth1TokenLower - outerFeeGrowth1TokenUpper;
            } else if (currentTick < topTick) {
                feeGrowthInside0X128 = feeGrowthGlobal0X128 - outerFeeGrowth0TokenLower - outerFeeGrowth0TokenUpper;
                feeGrowthInside1X128 = feeGrowthGlobal1X128 - outerFeeGrowth1TokenLower - outerFeeGrowth1TokenUpper;
            } else {
                feeGrowthInside0X128 = outerFeeGrowth0TokenUpper - outerFeeGrowth0TokenLower;
                feeGrowthInside1X128 = outerFeeGrowth1TokenUpper - outerFeeGrowth1TokenLower;
            }
        }
    }


}