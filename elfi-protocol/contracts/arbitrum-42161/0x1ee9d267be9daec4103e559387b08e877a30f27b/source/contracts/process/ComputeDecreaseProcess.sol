// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "./FeeQueryProcess.sol";
import "./PositionQueryProcess.sol";
import "./OracleProcess.sol";

/// @title DecreasePositionProcess
/// @dev Library for decreasing position functions
library ComputeDecreaseProcess {
    using SafeMath for uint256;
    using SafeCast for uint256;
    using SafeCast for int256;
    using SignedSafeMath for int256;
    using Math for uint256;
    using Position for Position.Props;

    /// @dev DecreasePositionCache struct used to record intermediate state values to avoid stack too deep errors
    ///
    /// @param stakeToken the address of the pool.
    /// @param position Position.Props.
    /// @param marginTokenPrice The price of the margin token.
    /// @param executePrice The price at which the position is decreased.
    /// @param recordPnlToken The recorded profit and loss in tokens.
    /// @param settledMargin The settled margin amount.
    /// @param decreaseMargin The amount by which the margin is decreased.
    /// @param decreaseIntQty The integer quantity by which the position is decreased.
    /// @param positionIntQty The integer quantity of the position.
    /// @param decreaseMarginInUsd The amount by which the margin is decreased, in USD.
    /// @param decreaseMarginInUsdFromBalance The amount by which the margin is decreased from the balance, in USD.
    /// @param settledBorrowingFee The settled borrowing fee.
    /// @param settledBorrowingFeeInUsd The settled borrowing fee, in USD.
    /// @param settledFundingFee The settled funding fee.
    /// @param settledFundingFeeInUsd The settled funding fee, in USD.
    /// @param settledFee The total settled fee.
    /// @param unHoldPoolAmount The amount unheld in the pool.
    /// @param closeFee The closing fee.
    /// @param closeFeeInUsd The closing fee, in USD.
    /// @param realizedPnl The realized profit and loss.
    /// @param poolPnlToken The profit and loss in the pool, in tokens.
    /// @param isLiquidation Indicates if the position is being liquidated
    struct DecreasePositionCache {
        address stakeToken;
        Position.Props position;
        uint256 marginTokenPrice;
        int256 executePrice;
        int256 recordPnlToken;
        int256 settledMargin;
        uint256 decreaseMargin;
        int256 decreaseIntQty;
        int256 positionIntQty;
        uint256 decreaseMarginInUsd;
        uint256 decreaseMarginInUsdFromBalance;
        uint256 settledBorrowingFee;
        uint256 settledBorrowingFeeInUsd;
        int256 settledFundingFee;
        int256 settledFundingFeeInUsd;
        int256 settledFee;
        uint256 unHoldPoolAmount;
        uint256 closeFee;
        uint256 closeFeeInUsd;
        int256 realizedPnl;
        int256 poolPnlToken;
        int256 insuranceFund;
        bool isLiquidation;
    }

    /// @dev Calculates all settlement values for the position.
    /// @param position Position.Props.
    /// @param decreaseQty The quantity to decrease.
    /// @param pnlInUsd The profit and loss in USD.
    /// @param executePrice The execution price of market index token.
    /// @param closeFeeRate The close fee rate.
    /// @param isLiquidation Whether the position is being liquidated.
    /// @param isCrossMargin Whether the position is cross margin.
    /// @return cache DecreasePositionCache.
    function getDecreasePositionSettledData(
        Position.Props storage position,
        uint256 decreaseQty,
        int256 pnlInUsd,
        int256 executePrice,
        uint256 closeFeeRate,
        bool isLiquidation,
        bool isCrossMargin
    ) external view returns (DecreasePositionCache memory cache) {
        cache.position = position;
        cache.executePrice = executePrice;
        cache.isLiquidation = isLiquidation;
        int256 tokenPrice = OracleProcess.getLatestUsdPrice(position.marginToken, false);
        cache.marginTokenPrice = tokenPrice.toUint256();
        cache.isLiquidation = isLiquidation;
        uint8 tokenDecimals = TokenUtils.decimals(position.marginToken);
        if (position.qty == decreaseQty) {
            cache.decreaseMargin = cache.position.initialMargin;
            cache.decreaseMarginInUsd = cache.position.initialMarginInUsd;
            cache.unHoldPoolAmount = cache.position.holdPoolAmount;
            (cache.settledBorrowingFee, cache.settledBorrowingFeeInUsd) = FeeQueryProcess.calcBorrowingFee(
                decreaseQty,
                position
            );
            cache.settledFundingFee = cache.position.positionFee.realizedFundingFee;
            cache.settledFundingFeeInUsd = cache.position.positionFee.realizedFundingFeeInUsd;
            cache.closeFeeInUsd = cache.position.positionFee.closeFeeInUsd;
            cache.closeFee = FeeQueryProcess.calcCloseFee(tokenDecimals, cache.closeFeeInUsd, tokenPrice.toUint256());
            cache.settledFee =
                cache.settledBorrowingFee.toInt256() +
                cache.settledFundingFee +
                cache.closeFee.toInt256();
            if (isLiquidation && isCrossMargin) {
                cache.settledMargin = CalUtils.usdToTokenInt(
                    cache.position.initialMarginInUsd.toInt256() -
                        _getPosFee(cache) +
                        pnlInUsd -
                        PositionQueryProcess.getPositionMM(cache.position).toInt256(),
                    TokenUtils.decimals(cache.position.marginToken),
                    tokenPrice
                );
                cache.recordPnlToken = cache.settledMargin - cache.decreaseMargin.toInt256();
                cache.insuranceFund = CalUtils.usdToTokenInt(
                    PositionQueryProcess.getPositionMM(cache.position).toInt256(),
                    TokenUtils.decimals(cache.position.marginToken),
                    tokenPrice
                );
                cache.poolPnlToken =
                    cache.decreaseMargin.toInt256() -
                    cache.settledMargin -
                    cache.settledFee -
                    cache.insuranceFund;
            } else if (isLiquidation && !isCrossMargin) {
                cache.settledMargin = int256(0);
                cache.recordPnlToken = -cache.decreaseMargin.toInt256();
                cache.insuranceFund = CalUtils.usdToTokenInt(
                    PositionQueryProcess.getPositionMM(cache.position).toInt256(),
                    TokenUtils.decimals(cache.position.marginToken),
                    tokenPrice
                );
                cache.poolPnlToken = cache.decreaseMargin.toInt256() - cache.settledFee - cache.insuranceFund;
            } else {
                cache.settledMargin = CalUtils.usdToTokenInt(
                    cache.position.initialMarginInUsd.toInt256() - _getPosFee(cache) + pnlInUsd,
                    TokenUtils.decimals(cache.position.marginToken),
                    tokenPrice
                );
                cache.recordPnlToken = cache.settledMargin - cache.decreaseMargin.toInt256();
                cache.poolPnlToken = cache.decreaseMargin.toInt256() - cache.settledMargin - cache.settledFee;
            }
            cache.realizedPnl = CalUtils.tokenToUsdInt(
                cache.recordPnlToken,
                TokenUtils.decimals(cache.position.marginToken),
                tokenPrice
            );
        } else {
            cache.decreaseMargin = cache.position.initialMargin.mul(decreaseQty).div(cache.position.qty);
            cache.unHoldPoolAmount = cache.position.holdPoolAmount.mul(decreaseQty).div(cache.position.qty);
            cache.closeFeeInUsd = CalUtils.mulRate(decreaseQty, closeFeeRate);
            (cache.settledBorrowingFee, cache.settledBorrowingFeeInUsd) = FeeQueryProcess.calcBorrowingFee(
                decreaseQty,
                position
            );
            cache.decreaseIntQty = decreaseQty.toInt256();
            cache.positionIntQty = cache.position.qty.toInt256();
            cache.settledFundingFee = cache.position.positionFee.realizedFundingFee.mul(cache.decreaseIntQty).div(
                cache.positionIntQty
            );
            cache.settledFundingFeeInUsd = cache
                .position
                .positionFee
                .realizedFundingFeeInUsd
                .mul(cache.decreaseIntQty)
                .div(cache.positionIntQty);
            if (cache.closeFeeInUsd > cache.position.positionFee.closeFeeInUsd) {
                cache.closeFeeInUsd = cache.position.positionFee.closeFeeInUsd;
            }
            cache.closeFee = FeeQueryProcess.calcCloseFee(tokenDecimals, cache.closeFeeInUsd, tokenPrice.toUint256());
            cache.settledFee =
                cache.settledBorrowingFee.toInt256() +
                cache.settledFundingFee +
                cache.closeFee.toInt256();
            cache.settledMargin = CalUtils.usdToTokenInt(
                (cache.position.initialMarginInUsd.toInt256() + pnlInUsd).mul(cache.decreaseIntQty).div(
                    cache.positionIntQty
                ) - _getPosFee(cache),
                TokenUtils.decimals(cache.position.marginToken),
                tokenPrice
            );
            cache.recordPnlToken = cache.settledMargin - cache.decreaseMargin.toInt256();
            cache.poolPnlToken = cache.decreaseMargin.toInt256() - cache.settledMargin - cache.settledFee;
            cache.decreaseMarginInUsd = cache.position.initialMarginInUsd.mul(decreaseQty).div(position.qty);
            cache.realizedPnl = CalUtils.tokenToUsdInt(
                cache.recordPnlToken,
                TokenUtils.decimals(cache.position.marginToken),
                tokenPrice
            );
        }

        cache.decreaseMarginInUsdFromBalance = (cache.decreaseMarginInUsd + position.initialMarginInUsdFromBalance >
            position.initialMarginInUsd)
            ? cache.decreaseMarginInUsd + position.initialMarginInUsdFromBalance - position.initialMarginInUsd
            : 0;

        return cache;
    }

    /// @dev Calculates the position fee.
    /// @param cache DecreasePositionCache.
    /// @return The calculated position fee.
    function _getPosFee(DecreasePositionCache memory cache) internal pure returns (int256) {
        return
            cache.closeFeeInUsd.toInt256() + cache.settledBorrowingFeeInUsd.toInt256() + cache.settledFundingFeeInUsd;
    }
}
