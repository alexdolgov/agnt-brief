// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./MarketStorage.sol";
import "../libraries/SafeMath.sol";
import "../libraries/YieldPositionLib.sol";
import "../libraries/RateMath.sol";
import "../interfaces/IOracle.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../clearinghouse/ClearingHouseImp.sol";
import "../tokens/PToken.sol";


contract EarnImp is MarketStorage {
    using SafeMath for int256;
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using YieldPositionLib for YieldPositionLib.YieldPosition;

    uint256 private constant PERCENT_PRECISION = 10000;
    uint256 private constant USER_RATIO = 9500;

    error OnlyClearingHouse();
    error InvalidAmount();
    error InsufficientSwapAmount();

    event EarnRecord(
        uint256 indexed timestamp,
        address indexed user,
        bool isInvest,
        int256 baseAmountFilled,
        int256 quoteAmountFilled,
        int256 baseAmountHeld,
        int256 quoteAmountHeld,
        uint256 ptAmount,
        uint256 ptAmountHeld,
        uint256 marginAmount,
        uint256 feeAmount,
        uint256 rate
    );

    modifier onlyClearingHouse() {
        if (msg.sender != address(clearingHouse)) revert OnlyClearingHouse();
        _;
    }

    struct EarnPreview {
        int256 baseAmountFilled;
        int256 quoteAmountFilled;
        int256 ptAmount;          
        uint256 marginAmount;     
        uint256 feeAmountInMargin;
    }

    function calculateSwap(
        bool zeroForOne,
        bool isEarn,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96
    ) public returns (int256 amount0, int256 amount1, uint256 feeAmount, uint160 sqrtPriceX96) {
        try 
            IUniswapV3Pool(pool).swap(
                bytes32(0),           
                zeroForOne,             
                isEarn,
                amountSpecified,
                sqrtPriceLimitX96,
                "Q"
            )
        {}
        catch (bytes memory reason)  {
            if (reason.length != 128) {
                revert('UE');
            }
            return abi.decode(reason, (int256, int256, uint256, uint160));
        }
    }

    function calculateEarnInvest(
        address user, 
        uint256 marginAmount
    ) external returns (EarnPreview memory) {
        return _calculateEarnInvest(user, marginAmount, true);
    }

    function calculateEarnRedeem(
        address user,
        uint256 ptAmount,
        uint160 sqrtPriceLimitX96
    ) external returns (EarnPreview memory) {
        return _calculateEarnRedeem(user, ptAmount, sqrtPriceLimitX96, true);
    }

    function earnInvest(
        address user, 
        uint256 marginAmount
    ) external onlyClearingHouse returns (uint256, uint256) {
        if (marginAmount == 0) revert InvalidAmount();

        _updateEarnProtocolFee();

        EarnPreview memory preview = _calculateEarnInvest(user, marginAmount, false);

        // Update yield position
        YieldPositionLib.YieldPosition storage position = earnPosition.yieldPosition;
        position.baseAssetAmount += preview.baseAmountFilled;
        position.quoteAssetAmount += preview.quoteAmountFilled; // Convert to int256
        // Update margin position
        earnPosition.marginBalance += int256(preview.marginAmount);

        stats.netPosition.baseAssetAmount += preview.baseAmountFilled;
        stats.netPosition.quoteAssetAmount += preview.quoteAmountFilled;
        
        // Mint PT tokens to the user
        PToken(pToken).mint(user, uint256(preview.ptAmount));

        // Emit event
        emit EarnRecord(
            block.timestamp,
            user,
            true,
            preview.baseAmountFilled,
            preview.quoteAmountFilled,
            position.baseAssetAmount,
            position.quoteAssetAmount,
            uint256(preview.ptAmount),
            PToken(pToken).balanceOf(user),
            preview.marginAmount,
            preview.feeAmountInMargin,
            uint256(IOracle(oracle).getValue())
        );

        // Return margin amount and fee amount
        return (preview.marginAmount, preview.feeAmountInMargin);
    }

    function earnRedeem(
        address user, 
        uint256 ptAmount, 
        uint160 sqrtPriceLimitX96
    ) external onlyClearingHouse returns (uint256, uint256) {
        _updateEarnProtocolFee();

        EarnPreview memory preview = _calculateEarnRedeem(user, ptAmount, sqrtPriceLimitX96, false);

        // Calculate redeem ratio and entry amount for quota tracking
        uint256 redeemRatio = ptAmount * 1e18 / PToken(pToken).totalSupply();
        int256 entryAmount = int256(redeemRatio) * earnPosition.yieldPosition.quoteAssetAmount / 1e18;

        // Update net quote amount realized
        int256 netQuoteAmountRealized = preview.quoteAmountFilled + entryAmount;
        earnPosition.netQuoteAmountRealized += netQuoteAmountRealized;
        earnPosition.yieldPosition.baseAssetAmount += preview.baseAmountFilled;
        earnPosition.yieldPosition.quoteAssetAmount += (preview.quoteAmountFilled - netQuoteAmountRealized);
        earnPosition.marginBalance -= int256(preview.marginAmount);

        stats.netPosition.baseAssetAmount += preview.baseAmountFilled;
        stats.netPosition.quoteAssetAmount += (preview.quoteAmountFilled - netQuoteAmountRealized);

        PToken(pToken).burn(user, ptAmount);

        emit EarnRecord(
            block.timestamp,
            user,
            false,
            preview.baseAmountFilled,
            preview.quoteAmountFilled,
            earnPosition.yieldPosition.baseAssetAmount,
            earnPosition.yieldPosition.quoteAssetAmount,
            ptAmount,
            PToken(pToken).balanceOf(user),
            preview.marginAmount,
            preview.feeAmountInMargin,
            uint256(IOracle(oracle).getValue())
        );
        return (preview.marginAmount, preview.feeAmountInMargin);
    }

    function collectEarnFee() external onlyClearingHouse returns (int256 feeInMargin) {
        // Update protocol fee first
        _updateEarnProtocolFee();

        // Get fee amounts
        int256 feeAmount = int256(earnPosition.protocolFee);
        feeInMargin = _quoteToMargin(feeAmount, false);

        if (feeInMargin > 0) {
            // Update earn vault margin position
            earnPosition.marginBalance -= feeInMargin;
        }

        // Reset protocol fee
        earnPosition.protocolFee = 0;
    }

    function _updateEarnProtocolFee() internal {
        uint256 rate = uint256(IOracle(oracle).getValue());
        if (earnPosition.yieldPosition.lastRate == 0) {
            earnPosition.yieldPosition.lastRate = int256(rate);
            return;
        }

        int256 lastRate = earnPosition.yieldPosition.lastRate;
        if (lastRate != int256(rate)) {
            uint256 effectiveQuoteAmount = PToken(pToken).totalSupply();
            uint256 protocolOwnedQuote = effectiveQuoteAmount * (PERCENT_PRECISION - USER_RATIO) / PERCENT_PRECISION;
            int256 protocolOwnedRebase = int256(protocolOwnedQuote) + int256(earnPosition.protocolFee);

            int256 protocolYield = (protocolOwnedRebase * int256(rate) / lastRate) - protocolOwnedRebase;
            int256 quoteYieldFromRealized = (earnPosition.netQuoteAmountRealized * int256(rate) / lastRate) - earnPosition.netQuoteAmountRealized;

            earnPosition.protocolFee += uint256(protocolYield);
            earnPosition.netQuoteAmountRealized += quoteYieldFromRealized;

            // Use YieldPositionLib to rebase the yield position
            earnPosition.yieldPosition.rebaseYieldPosition(int256(rate));
        }
    }

    function _quoteToMargin(int256 quoteAmount, bool isCeil) internal view returns (int256) {
        uint256 oraclePrice = IOracle(oracle).getValue();
        return isCeil ? SafeMath.mulDivCeil(quoteAmount, 1e18, int256(oraclePrice)) : SafeMath.mulDiv(quoteAmount, 1e18, int256(oraclePrice));
    }

    function _marginToQuote(int256 marginAmount, bool isCeil) internal view returns (int256) {
        uint256 oraclePrice = IOracle(oracle).getValue();
        return isCeil ? SafeMath.mulDivCeil(marginAmount, int256(oraclePrice), 1e18) : SafeMath.mulDiv(marginAmount, int256(oraclePrice), 1e18);
    }

    function _calculateEarnInvest(
        address user, 
        uint256 marginAmount,
        bool calcMode
    ) internal returns (EarnPreview memory) {
        int256 quoteAmount = _marginToQuote(int256(marginAmount), false);

        // Get Uniswap V3 Pool
        IUniswapV3Pool poolInstance = IUniswapV3Pool(pool);
        // uint160 sqrtPriceLimitX96 = TickMath.MIN_SQRT_RATIO + 1; // Use minimum price limit
        int256 amount0; 
        int256 amount1;
        uint256 feeAmount;
        if (calcMode) {
            (amount0, amount1, feeAmount, ) = calculateSwap(
                true,
                true,
                quoteAmount,
                _checkPriceBounds(true, minAllowedSqrtPriceX96)
            );
        } else {
            (amount0, amount1, feeAmount) = poolInstance.swap(
                bytes32(uint256(uint160(user))), // Convert address to bytes32
                true,                 // zeroForOne
                true,                 // isEarn
                quoteAmount,          // amountSpecified
                _checkPriceBounds(true, minAllowedSqrtPriceX96),     // Price limit
                ""
            );
        }
        (int256 baseAmountFilled, int256 quoteAmountFilled) = (-amount0, -amount1);

        // Calculate total quote amount and dust
        int256 quoteAmountSum = quoteAmount + quoteAmountFilled;
        int256 ptAmount = int256(uint256(baseAmountFilled.abs()) * PERCENT_PRECISION / USER_RATIO);

        int256 dustAmount = ptAmount - quoteAmountSum;
        int256 dustAmountInMargin = _quoteToMargin(dustAmount, true);

        // Update margin amount with dust
        uint256 finalMarginAmount = uint256(int256(marginAmount) + dustAmountInMargin);
        
        // Convert fee amount to margin
        uint256 feeAmountInMargin = uint256(_quoteToMargin(int256(feeAmount), true));

        return EarnPreview({
            baseAmountFilled: baseAmountFilled,
            quoteAmountFilled: quoteAmountFilled,
            ptAmount: ptAmount,                       // Positive value indicates invest
            marginAmount: finalMarginAmount,
            feeAmountInMargin: feeAmountInMargin
        });
    }

    function _calculateEarnRedeem(
        address user,
        uint256 ptAmount,
        uint160 sqrtPriceLimitX96,
        bool calcMode
    ) internal returns (EarnPreview memory) {
        // Calculate redeem ratio and entry amount
        uint256 redeemRatio = ptAmount * 1e18 / PToken(pToken).totalSupply();
        // int256 entryAmount = int256(redeemRatio) * earnPosition.yieldPosition.quoteAssetAmount / 1e18;
        
        // Apply price limits
        uint160 maxSqrtPrice = LiquidityMath.maxSqrtPrice(activeRatioCoef);
        sqrtPriceLimitX96 = sqrtPriceLimitX96 > maxSqrtPrice ? maxSqrtPrice : sqrtPriceLimitX96;
        sqrtPriceLimitX96 = sqrtPriceLimitX96 > maxAllowedSqrtPriceX96 ? maxAllowedSqrtPriceX96 : sqrtPriceLimitX96;
        
        int256 amount0;
        int256 amount1;
        uint256 feeAmount;
        if (stats.status == MarketStatus.Expired) {
            // If market is expired, set direct values
            (amount0, amount1, feeAmount) = (-int256(ptAmount), 0, 0);
        } else {
            // Calculate swap results or execute real swap
            int256 baseSwapAmount = int256(ptAmount * USER_RATIO / PERCENT_PRECISION);
            if (calcMode) {
                (amount0, amount1, feeAmount, ) = calculateSwap(
                    false,                // zeroForOne
                    false,                // isEarn
                    -int256(baseSwapAmount),    // amountSpecified
                    _checkPriceBounds(false, sqrtPriceLimitX96)    // Price limit
                );
            } else {
                IUniswapV3Pool poolInstance = IUniswapV3Pool(pool);
                (amount0, amount1, feeAmount) = poolInstance.swap(
                    bytes32(uint256(uint160(user))), // Convert address to bytes32
                    false,                // zeroForOne
                    false,                // isEarn
                    -int256(baseSwapAmount),    // amountSpecified
                    _checkPriceBounds(false, sqrtPriceLimitX96),    // Price limit
                    ""
                );
                
            }
            if (!calcMode && amount0 != -baseSwapAmount) {
                    revert InsufficientSwapAmount();
            }
        }

        if (calcMode) {
            ptAmount = uint256(amount0.abs()) * PERCENT_PRECISION / USER_RATIO;
        }

        // Calculate amounts filled
        int256 baseAmountFilled = -amount0;
        int256 quoteAmountFilled = -amount1;
        
        // Calculate redeem amount
        int256 redeemAmount = int256(ptAmount) + quoteAmountFilled;
        uint256 redeemMarginAmount = uint256(_quoteToMargin(redeemAmount, false));
        uint256 feeAmountInMargin = uint256(_quoteToMargin(int256(feeAmount), true));

        return EarnPreview({
            baseAmountFilled: baseAmountFilled,
            quoteAmountFilled: quoteAmountFilled,
            ptAmount: -int256(ptAmount),                 // Negative value indicates redeem
            marginAmount: redeemMarginAmount,
            feeAmountInMargin: feeAmountInMargin
        });
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