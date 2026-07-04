// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MarketStorage.sol";
import "../libraries/RateMath.sol";
import "../libraries/YieldPositionLib.sol";
import "../interfaces/IOracle.sol";
import "../libraries/LiquidityAmount.sol";
import "../libraries/SafeMath.sol";

contract LiquidityImp is MarketStorage {
    using SafeMath for int256;
    using SafeMath for uint256;
    using YieldPositionLib for YieldPositionLib.YieldPosition;

    error OnlyClearingHouse();
    error InvalidImpliedRate();
    error LpAmountTooLow();
    error InvalidLiquidityRange();
    error PositionNotActive();
    error MarketPaused();
    error MarketNotActive();
    error InvalidPercentage();
    error InsufficientDeposit();
    error NoFee();
    error InvalidSlossQuota();
    error NotSpotMarket();
    
    struct RemoveLpVars {
        uint256 ammBaseAmount;
        uint256 ammQuoteAmount;
        uint256 ammBaseAmountRemove;
        uint256 ammQuoteAmountRemove;
        int256 reserveBaseAmount;
        int256 reserveQuoteAmount;
        int256 reserveBaseAmountRemove;
        int256 reserveQuoteAmountRemove;
    }

    modifier onlyClearingHouse() {
        if (msg.sender != address(clearingHouse)) revert OnlyClearingHouse();
        _;
    }
    

    event LpRecord(
        uint256 indexed timestamp,
        bytes32 indexed subAccountId,
        bool isAdd,
        int24 lowerTick,
        int24 upperTick,
        uint256 lowerRate,
        uint256 upperRate,
        uint128 liquidity,
        int256 deltaBaseAmount,
        int256 deltaQuoteAmount,
        int256 scaledMarginAmount,
        int256 mintQuoteAmount,
        int256 reserveQuoteAmount,
        int256 reserveBaseAmount,
        int256 totalQuoteAssetAmount,
        int256 totalMarginAmount,
        bool isActive,
        int256 socialLossBaseAmountFilled,
        int256 socialLossQuoteAmountFilled
    );


    event ClaimFee(
        bytes32 indexed subAccountId,
        int24 tickLower,
        int24 tickUpper, 
        uint256 lowerRate,
        uint256 upperRate,
        uint128 fee0,
        uint128 fee1,        
        uint256 amount
    );

    // Add LP shares
    function addLpShares(
        bytes32 subAccountId,
        int256 scaledAmount,
        uint256 lowerRate,
        uint256 upperRate
    ) external onlyClearingHouse {
        if (scaledAmount <= 0) revert InsufficientDeposit();
        if (lowerRate >= upperRate) revert InvalidImpliedRate();
        if (!isMarketActive()) revert MarketNotActive();
        if (uint256(scaledAmount) < minLpAmount) revert LpAmountTooLow();
        if (lowerRate < minAllowedRate || upperRate > maxAllowedRate) revert InvalidImpliedRate();


        // Calculate tick range
        uint256 maturitySecond = RateMath.getMaturity(IOracle(oracle).epochStartTs(), expireTs);
        int24 lowerTickIndex = RateMath.calculateTickIndexFromImpliedRate(
            uint64(maturitySecond),
            lowerRate,
            tickSpacing,
            true
        );
        int24 upperTickIndex = RateMath.calculateTickIndexFromImpliedRate(
            uint64(maturitySecond), 
            upperRate,
            tickSpacing,
            false
        );

        // Get Uniswap V3 Pool
        IUniswapV3Pool poolInstance = IUniswapV3Pool(pool);
        
        LiquidityPosition memory position = liquidityPositions[subAccountId];
        
        if (position.lowerTick != 0 && position.upperTick != 0) {
            if (lowerTickIndex != position.lowerTick || upperTickIndex != position.upperTick) {
                revert InvalidLiquidityRange();
            }
        }
        // Get position info using view function
        bytes32 positionKey = keccak256(abi.encodePacked(subAccountId, lowerTickIndex, upperTickIndex));
        (uint128 liquidity,,,,,,) = poolInstance.positions(positionKey);
        bool isNewPosition = liquidity == 0 && position.reserveBaseAmount == 0 && position.reserveQuoteAmount == 0;

        // Check existing position
        if (liquidity > 0) {
            if (lowerTickIndex != position.lowerTick || upperTickIndex != position.upperTick) {
                revert InvalidLiquidityRange();
            }
        }

        // Calculate liquidity amount
        int256 mintedQuoteAmount = _marginToQuote(scaledAmount, false);
        uint256 baseAmountMax = uint256(mintedQuoteAmount) * activeRatioCoef / 1e18;
        uint128 liquidityAmount = LiquidityMath.calculateLiquidityFromBaseMax(
            baseAmountMax,
            lowerTickIndex,
            upperTickIndex
        );

        // Mint liquidity
        (uint256 amount0, uint256 amount1) = poolInstance.mint(
            subAccountId,
            lowerTickIndex,
            upperTickIndex,
            liquidityAmount
        );
        int256 reserveBaseAmountBefore = position.reserveBaseAmount < 0 ? position.reserveBaseAmount : int256(0);     
        
        // Update position state in memory first
        position.reserveQuoteAmount += mintedQuoteAmount - int256(amount1);
        position.reserveBaseAmount -= int256(amount0);
        if (isNewPosition) {
            position.state = IMarketStorage.LpStatus.Active;
            position.lowerTick = lowerTickIndex;
            position.upperTick = upperTickIndex;
            position.lowerRate = lowerRate;
            position.upperRate = upperRate;
            stats.numberOfActiveLps++;
        }

        // Update global stats
        stats.totalMarginAmount += scaledAmount;
        stats.totalQuoteAssetAmount += mintedQuoteAmount;

        int256 reserveBaseAmountAfter = position.reserveBaseAmount < 0 ? position.reserveBaseAmount : int256(0);
        stats.totalReserveBaseAmount += reserveBaseAmountAfter - reserveBaseAmountBefore;
        stats.totalReserveQuoteAmount += mintedQuoteAmount - int256(amount1);
        liquidityPositions[subAccountId] = position;

        // Emit the LpRecord event for adding liquidity
        emit LpRecord(
            block.timestamp,
            subAccountId,
            true, // direction: true for add
            position.lowerTick,
            position.upperTick,
            position.lowerRate,
            position.upperRate,
            liquidityAmount,
            int256(amount0), // deltaBaseAmount
            int256(amount1), // deltaQuoteAmount
            scaledAmount,
            mintedQuoteAmount,
            position.reserveQuoteAmount, // reserveQuoteAmount
            position.reserveBaseAmount, // reserveBaseAmount
            stats.totalQuoteAssetAmount, // totalQuoteAssetAmount
            stats.totalMarginAmount, // totalMarginAmount
            position.state == IMarketStorage.LpStatus.Active ? true : false, // isActive
            0, // socialLossBaseAmountFilled
            0  // socialLossQuoteAmountFilled
        );
    }
    
    
    function removeLpShares(
        bytes32 subAccountId,
        uint256 percentage,
        uint160 sqrtPriceLimitX96
    ) external onlyClearingHouse returns (uint256 withdrawMarginAmount, uint256 feeMargin) {
        if (percentage == 0 || percentage > 1e18) revert InvalidPercentage();

        // Get user's liquidity position
        // LiquidityPosition storage position = liquidityPositions[subAccountId];
        LiquidityPosition memory position = liquidityPositions[subAccountId];
        if (position.state != LpStatus.Active) revert PositionNotActive();
        if (!isMarketActive() && stats.status != MarketStatus.Expired) revert MarketPaused();
        
        // Get Uniswap V3 Pool
        IUniswapV3Pool poolInstance = IUniswapV3Pool(pool);
        (uint160 curSqrtPriceX96, , , , , , ) = poolInstance.slot0();

        RemoveLpVars memory vars;
        vars.reserveBaseAmount = position.reserveBaseAmount;
        vars.reserveQuoteAmount = position.reserveQuoteAmount;
        vars.reserveBaseAmountRemove = vars.reserveBaseAmount * int256(percentage) / 1e18;
        vars.reserveQuoteAmountRemove = vars.reserveQuoteAmount * int256(percentage) / 1e18;

        int256 baseAmountFilled;
        int256 quoteAmountFilled;
        uint256 feeAmount;
        
        // Get position info using view function
        bytes32 positionKey = keccak256(abi.encodePacked(subAccountId, position.lowerTick, position.upperTick));
        (uint128 liquidity,,,,,,) = poolInstance.positions(positionKey);
        if (liquidity > 0) {
            (vars.ammBaseAmount, vars.ammQuoteAmount) = LiquidityAmount.getAmountsForLiquidity(
                curSqrtPriceX96,
                TickMath.getSqrtRatioAtTick(position.lowerTick),
                TickMath.getSqrtRatioAtTick(position.upperTick),
                liquidity
            );
        }
        uint128 liquidityToRemove = uint128((uint256(liquidity) * percentage) / 1e18);
        // Remove liquidity from Uniswap V3
        if (liquidityToRemove > 0) {
            (vars.ammBaseAmountRemove, vars.ammQuoteAmountRemove) = poolInstance.burn(
                subAccountId,
                position.lowerTick,
                position.upperTick,
                liquidityToRemove
            );
            if (vars.ammBaseAmountRemove > 0 || vars.ammQuoteAmountRemove > 0) {
                poolInstance.collect(
                    subAccountId,
                    position.lowerTick,
                    position.upperTick,
                    uint128(vars.ammBaseAmountRemove),
                    uint128(vars.ammQuoteAmountRemove)
                );
            }
        }

        int256 slossTotalBase = socialLossYieldPosition.baseAssetAmount;
        int256 slossTotalQuote = socialLossYieldPosition.quoteAssetAmount;
        int256 slossBaseAmount = 0;
        int256 slossQuoteAmount = 0;

        if (slossTotalBase < 0 || slossTotalQuote < 0) {
            // Calculate sloss quota for this LP position
            int256 lpSlossQuoteQuota = SafeMath.mulDiv(_getLpSlossQuota(position), int256(percentage), 1e18);
            int256 totalSlossQuoteQuota = _getTotalSlossQuota();
            if (lpSlossQuoteQuota > 0 || totalSlossQuoteQuota > 0) {
                revert InvalidSlossQuota();
            }
            
            // Calculate executing ratio based on social loss position
            int256 executingRatio;
            if (slossTotalQuote < 0 && slossTotalBase >= 0) {
                executingRatio = totalSlossQuoteQuota * 1e18 / slossTotalQuote;
            } else if (slossTotalQuote >= 0 && slossTotalBase < 0) {
                executingRatio = totalSlossQuoteQuota * int256(activeRatioCoef) / slossTotalBase;
            } else {
                executingRatio = totalSlossQuoteQuota * int256(activeRatioCoef) * 1e18 / (slossTotalQuote * int256(activeRatioCoef) + slossTotalBase * 1e18);
            }
            if (executingRatio > 1e18) executingRatio = 1e18;

            // Calculate sloss amounts
            if (slossTotalQuote >= 0) {
                slossQuoteAmount = SafeMath.mulDiv(slossTotalQuote * lpSlossQuoteQuota, executingRatio, totalSlossQuoteQuota * 1e18);
            } else {
                slossQuoteAmount = SafeMath.mulDivCeil(slossTotalQuote * lpSlossQuoteQuota, executingRatio, totalSlossQuoteQuota * 1e18);
            }

            if (slossTotalBase >= 0) {
                slossBaseAmount = SafeMath.mulDiv(slossTotalBase * lpSlossQuoteQuota, executingRatio, totalSlossQuoteQuota * 1e18);
            } else {
                slossBaseAmount = SafeMath.mulDivCeil(slossTotalBase * lpSlossQuoteQuota, executingRatio, totalSlossQuoteQuota * 1e18);
            }
        }

        int256 netBaseAmount = position.reserveBaseAmount + int256(vars.ammBaseAmount);
        int256 netQuoteAmount = position.reserveQuoteAmount + int256(vars.ammQuoteAmount);
        int256 baseAmountRemove = vars.reserveBaseAmountRemove + int256(vars.ammBaseAmountRemove);
        int256 quoteAmountRemove = vars.reserveQuoteAmountRemove + int256(vars.ammQuoteAmountRemove);
        
        int256 baseAmountRemoveSloss = baseAmountRemove + slossBaseAmount;

        if (stats.status == MarketStatus.Expired) {
            (baseAmountFilled, quoteAmountFilled, feeAmount) = (-baseAmountRemoveSloss, 0, 0);
        } else {
            if (baseAmountRemoveSloss >= 0) {
                sqrtPriceLimitX96 = _checkPriceBounds(true, sqrtPriceLimitX96);  
                
                if (baseAmountRemoveSloss == 0) {
                    (baseAmountFilled, quoteAmountFilled, feeAmount) = (0, 0, 0);
                } else {       
                    // Execute swap
                    (int256 amount0, int256 amount1, uint256 fee) = poolInstance.swap(
                        subAccountId,           // recipient
                        true,             // zeroForOne
                        false,                  // isEarn
                        baseAmountRemoveSloss,       // amountSpecified
                        sqrtPriceLimitX96,       // Price limit
                        ""
                    );
                    baseAmountFilled = -amount0;
                    quoteAmountFilled = -amount1;
                    feeAmount = fee;
                }
            } else {
                uint160 maxSqrtPrice = LiquidityMath.maxSqrtPrice(activeRatioCoef);
                uint160 ratioPriceLimitSqrt;
                if (netBaseAmount == 0) {
                    ratioPriceLimitSqrt = maxSqrtPrice;
                } else {
                    uint256 ratioPriceLimit = uint256(netQuoteAmount.abs()) * 1e18 / uint256(netBaseAmount.abs());
                    ratioPriceLimitSqrt = LiquidityMath.priceToSqrtPriceX96(ratioPriceLimit);
                    ratioPriceLimitSqrt = ratioPriceLimitSqrt > maxSqrtPrice ? maxSqrtPrice : ratioPriceLimitSqrt;
                }
                
                sqrtPriceLimitX96 = _checkPriceBounds(false, sqrtPriceLimitX96);  
                sqrtPriceLimitX96 = sqrtPriceLimitX96 > ratioPriceLimitSqrt ? ratioPriceLimitSqrt : sqrtPriceLimitX96;

                // Execute swap
                (int256 amount0, int256 amount1, uint256 fee) = poolInstance.swap(
                    subAccountId,           // recipient
                    false,             // zeroForOne
                    false,                  // isEarn
                    baseAmountRemoveSloss,     // amountSpecified (negative means out)
                    sqrtPriceLimitX96,       // Price limit
                    ""
                ); 
                baseAmountFilled = -amount0;
                quoteAmountFilled = -amount1;
                feeAmount = fee;
                
            }
        }
        
        int256 fillRatio = baseAmountRemoveSloss == 0? int256(1e18) : baseAmountFilled.abs() * 1e18 / baseAmountRemoveSloss.abs();
        // int256 residualBaseAmount = baseAmountRemoveSloss + baseAmountFilled;

        int256 slossBaseAmountFilled = slossBaseAmount * fillRatio / 1e18;
        int256 slossQuoteAmountFilled = slossQuoteAmount * fillRatio / 1e18;
        int256 slossBaseAmountUnfilled = slossBaseAmount - slossBaseAmountFilled;
        int256 slossQuoteAmountUnfilled = slossQuoteAmount - slossQuoteAmountFilled;
        // int256 baseAmountRemoveFilled = baseAmountRemove * fillRatio / 1e18;
        int256 quoteAmountRemoveFilled = quoteAmountRemove * fillRatio / 1e18;

        position.reserveBaseAmount += int256(vars.ammBaseAmountRemove) + slossBaseAmount + baseAmountFilled - slossBaseAmountUnfilled;
        int256 withdrawQuoteAmount = quoteAmountRemoveFilled + slossQuoteAmount - slossQuoteAmountUnfilled + quoteAmountFilled - int256(feeAmount);
        position.reserveQuoteAmount += int256(vars.ammQuoteAmountRemove) + slossQuoteAmount - slossQuoteAmountUnfilled + quoteAmountFilled - int256(feeAmount) - withdrawQuoteAmount;
        withdrawMarginAmount = uint256(_quoteToMargin(withdrawQuoteAmount, false));
        
        stats.totalQuoteAssetAmount -= int256(withdrawQuoteAmount);
        stats.totalMarginAmount -= int256(withdrawMarginAmount);
        if (feeAmount > 0) {
            stats.netQuoteAmountRealized += int256(feeAmount);
        } 

        stats.totalReserveBaseAmount += position.reserveBaseAmount.min(0) - vars.reserveBaseAmount.min(0);
        stats.totalReserveQuoteAmount += position.reserveQuoteAmount - vars.reserveQuoteAmount;

        (,,,,,, uint128 feesOwed1) = poolInstance.positions(positionKey);
        if (feesOwed1 > 0) {
            (, uint128 fee) = poolInstance.collectFee(
                subAccountId,
                position.lowerTick,
                position.upperTick
            );
            feeMargin = uint256(_quoteToMargin(int256(uint256(fee)), false));

            emit ClaimFee(subAccountId, position.lowerTick, position.upperTick, position.lowerRate, position.upperRate, 0, fee, feeMargin);
        }
        
        if (liquidityToRemove == liquidity && position.reserveBaseAmount == 0 && position.reserveQuoteAmount == 0) {
            stats.numberOfActiveLps--;
            position.state = IMarketStorage.LpStatus.Inactive;
        }
        liquidityPositions[subAccountId] = position;

        // Emit the LpRecord event for removing liquidity
        emit LpRecord(
            block.timestamp,
            subAccountId,
            false, // direction: false for remove
            position.lowerTick, // lowerTick
            position.upperTick, // upperTick
            position.lowerRate, // lowerRate
            position.upperRate, // upperRate
            liquidityToRemove, // liquidityAmount
            -int256(vars.ammBaseAmountRemove), // deltaBaseAmount
            -int256(vars.ammQuoteAmountRemove), // deltaQuoteAmount
            -int256(withdrawMarginAmount), // withdrawMarginAmount
            -int256(withdrawQuoteAmount), // withdrawQuoteAmount
            position.reserveQuoteAmount, // reserveQuoteAmount
            position.reserveBaseAmount, // reserveBaseAmount
            stats.totalQuoteAssetAmount, // totalQuoteAssetAmount
            stats.totalMarginAmount, // totalMarginAmount
            position.state == IMarketStorage.LpStatus.Active ? true : false, // isActive
            slossBaseAmountFilled, // socialLossBaseAmountFilled
            slossQuoteAmountFilled // socialLossQuoteAmountFilled
        );
    }


    function claimFee(
        bytes32 subAccountId
    ) external onlyClearingHouse returns (uint256 amount) {
        LiquidityPosition storage position = liquidityPositions[subAccountId];
        if (position.state != IMarketStorage.LpStatus.Active) revert PositionNotActive();
        int24 lowerTick = position.lowerTick;
        int24 upperTick = position.upperTick;
        bytes32 key = keccak256(abi.encodePacked(subAccountId, lowerTick, upperTick));
        IUniswapV3Pool poolInstance = IUniswapV3Pool(pool);    
        (uint128 liquidity,,,,,,) = poolInstance.positions(key);
        if (liquidity > 0) { 
            poolInstance.burn(
                subAccountId,
                lowerTick,
                upperTick,
                0
            );
        }

        (, uint128 fee) = poolInstance.collectFee(
            subAccountId, 
            lowerTick,
            upperTick            
        );
        if (fee == 0) revert NoFee();
        amount = uint256(_quoteToMargin(int256(uint256(fee)), false));

        emit ClaimFee(subAccountId, lowerTick, upperTick, position.lowerRate, position.upperRate, 0, fee, amount);
    }

    function claimYield(bytes32 subAccountId) external onlyClearingHouse returns (int256) {
        if (!isMarketActive()) revert MarketNotActive();
        if (marketType != MarketType.Spot) revert NotSpotMarket();

        YieldPositionLib.YieldPosition storage position = yieldPosition[subAccountId];
        int256 currentRate = int256(uint256(IOracle(oracle).getValue()));
        (int256 baseAssetAmount, int256 quoteAssetAmount, int256 lastRate) = (position.baseAssetAmount, position.quoteAssetAmount, position.lastRate);
        int256 quoteYieldForSpotMarket;
        if (baseAssetAmount != 0) {
            quoteYieldForSpotMarket = (baseAssetAmount * currentRate) / lastRate - baseAssetAmount;
        }
        position.rebaseYieldPosition(currentRate);
        position.quoteAssetAmount -= quoteYieldForSpotMarket;

        stats.netPosition.quoteAssetAmount -= quoteYieldForSpotMarket;
        stats.netQuoteAmountRealized += quoteYieldForSpotMarket;
       
        return _quoteToMargin(quoteYieldForSpotMarket, false);
    }

    function updateAndQueryFee(
        bytes32 subAccountId
    ) external onlyClearingHouse returns (uint256 amount) {
        MarketStorage.LiquidityPosition storage position = liquidityPositions[subAccountId];
        if (position.state != IMarketStorage.LpStatus.Active) revert PositionNotActive();
        bytes32 key = keccak256(abi.encodePacked(subAccountId, position.lowerTick, position.upperTick));
         IUniswapV3Pool poolInstance = IUniswapV3Pool(pool);  
        (uint128 liquidity,,,,,,) = poolInstance.positions(key);
        if (liquidity > 0) {
            poolInstance.burn(
                subAccountId,
                position.lowerTick,
                position.upperTick,
                0
            );
        }
        (,,,,,, uint128 fee) = poolInstance.positions(key);

        if (fee > 0) {
            amount = uint256(_quoteToMargin(int256(uint256(fee)), false));
        }     
    }

    function isMarketActive() internal view returns (bool) {
        return stats.status == MarketStatus.Active && block.timestamp < expireTs;
    }


    function _quoteToMargin(int256 quoteAmount, bool isCeil) internal view returns (int256) {
        uint256 oraclePrice = IOracle(oracle).getValue();
        return isCeil ? SafeMath.mulDivCeil(quoteAmount, 1e18, int256(oraclePrice)) : SafeMath.mulDiv(quoteAmount, 1e18, int256(oraclePrice));
    }

    function _marginToQuote(int256 marginAmount, bool isCeil) internal view returns (int256) {
        uint256 oraclePrice = IOracle(oracle).getValue();
        return isCeil ? SafeMath.mulDivCeil(marginAmount, int256(oraclePrice), 1e18) : SafeMath.mulDiv(marginAmount, int256(oraclePrice), 1e18);
    }

    function _getLpSlossQuota(LiquidityPosition memory position) internal view returns (int256) {
        // Calculate quote used based on base amount
        int256 baseAmount = position.reserveBaseAmount < 0 ? position.reserveBaseAmount : int256(0);
        int256 quoteUsed = baseAmount * 1e18 / int256(activeRatioCoef);
        
        // Calculate quote quota
        int256 quoteQuota = -position.reserveQuoteAmount - quoteUsed;
        return quoteQuota;
    }

    function _getTotalSlossQuota() internal view returns (int256) {
        int256 quoteUsed = stats.totalReserveBaseAmount * int256(1e18) / int256(activeRatioCoef);
        int256 quoteQuota = -stats.totalReserveQuoteAmount - quoteUsed;
        return quoteQuota;
    }

    function _checkPriceBounds(
        bool zeroForOne,
        uint160 sqrtPrice
    ) internal view returns (uint160) {
        if (marketType == MarketType.Spot) {
            uint160 boundPrice = zeroForOne ? minAllowedSqrtPriceX96 : maxAllowedSqrtPriceX96;
            return (zeroForOne && sqrtPrice <= boundPrice) || (!zeroForOne && sqrtPrice >= boundPrice) ? boundPrice : sqrtPrice;
        }

        IUniswapV3Pool poolInstance = IUniswapV3Pool(pool);
        (int24 arithmeticMeanTick,) = OracleLibrary.consult(address(poolInstance), boundTwapDuration);
        uint160 sqrtPriceX96 = TickMath.getSqrtRatioAtTick(arithmeticMeanTick);
        uint160 twapPriceX96 = LiquidityMath.sqrtPriceX96ToPriceX96(sqrtPriceX96);
        
        uint256 percentPrecision = 10000;
        uint160 twapPriceBound = zeroForOne ? 
            (twapPriceX96 * uint160(percentPrecision - boundPercentage)) / uint160(percentPrecision): 
            (twapPriceX96 * uint160(percentPrecision + boundPercentage)) / uint160(percentPrecision);

        uint256 gap = block.timestamp - epochUpdate.epochUpdateEndTs;
        if (gap <= boundTwapDuration && epochUpdate.epochPriceGapX64 != 0) {
            uint160 gapPrice = uint160(SafeMath.mulDiv(
                uint256(epochUpdate.epochPriceGapX64),
                boundTwapDuration - gap,
                boundTwapDuration
            ));
            twapPriceBound = twapPriceBound - gapPrice;
        }

        uint160 twapSqrtPriceBoundX96 = LiquidityMath.priceX96ToSqrtPriceX96(twapPriceBound);
        uint160 boundPrice = zeroForOne 
            ? twapSqrtPriceBoundX96 > minAllowedSqrtPriceX96 ? twapSqrtPriceBoundX96 : minAllowedSqrtPriceX96
            : twapSqrtPriceBoundX96 < maxAllowedSqrtPriceX96 ? twapSqrtPriceBoundX96 : maxAllowedSqrtPriceX96;

        return (zeroForOne && sqrtPrice <= boundPrice) || (!zeroForOne && sqrtPrice >= boundPrice) 
            ? boundPrice 
            : sqrtPrice;
    }
}