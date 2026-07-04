// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SignedMath.sol";

import "@gmx/data/Keys.sol";

import "@gmx/market/MarketStoreUtils.sol";

import "@gmx/deposit/DepositStoreUtils.sol";
import "@gmx/withdrawal/WithdrawalStoreUtils.sol";

import "@gmx/position/Position.sol";
import "@gmx/position/PositionUtils.sol";
import "@gmx/position/PositionStoreUtils.sol";
import "@gmx/position/IncreasePositionUtils.sol";
import "@gmx/position/DecreasePositionUtils.sol";

import "@gmx/order/OrderStoreUtils.sol";

import "@gmx/market/MarketUtils.sol";
import "@gmx/market/Market.sol";
import "@gmx/reader/ReaderPricingUtils.sol";

library GmxFeeReader {
    using SignedMath for int256;
    using SafeCast for uint256;
    using SafeCast for int256;
    using Price for Price.Props;
    using Position for Position.Props;
    using Order for Order.Props;

    struct GetDepositAmountOutForSingleTokenParams {
        DataStore dataStore;
        Market.Props market;
        MarketUtils.MarketPrices prices;
        address tokenIn;
        Price.Props tokenInPrice;
        address tokenOut;
        Price.Props tokenOutPrice;
        uint256 amount;
        int256 priceImpactUsd;
        address uiFeeReceiver;
    }

    struct GetDepositAmountOutParams {
        DataStore dataStore;
        Market.Props market;
        MarketUtils.MarketPrices prices;
        uint256 longTokenAmount;
        uint256 shortTokenAmount;
        address uiFeeReceiver;
    }

    struct GetWithdrawalAmountOutCache {
        uint256 poolValue;
        uint256 marketTokensSupply;
        uint256 longTokenPoolAmount;
        uint256 shortTokenPoolAmount;
        uint256 longTokenPoolUsd;
        uint256 shortTokenPoolUsd;
        uint256 totalPoolUsd;
        uint256 marketTokensUsd;
        uint256 longTokenOutputUsd;
        uint256 shortTokenOutputUsd;
        uint256 longTokenOutputAmount;
        uint256 shortTokenOutputAmount;
    }

    function getWithdrawalFeeAmountInUSD(
        DataStore dataStore,
        Market.Props memory market,
        MarketUtils.MarketPrices memory prices,
        uint256 marketTokenAmount,
        address uiFeeReceiver
    ) external view returns (uint256, uint256) {
        GetWithdrawalAmountOutCache memory cache;

        MarketPoolValueInfo.Props memory poolValueInfo = MarketUtils.getPoolValueInfo(
            dataStore,
            market,
            prices.indexTokenPrice,
            prices.longTokenPrice,
            prices.shortTokenPrice,
            Keys.MAX_PNL_FACTOR_FOR_WITHDRAWALS,
            false
        );

        if (poolValueInfo.poolValue <= 0) {
            revert Errors.InvalidPoolValueForWithdrawal(poolValueInfo.poolValue);
        }

        cache.poolValue = poolValueInfo.poolValue.toUint256();
        cache.marketTokensSupply = MarketUtils.getMarketTokenSupply(MarketToken(payable(market.marketToken)));

        cache.longTokenPoolAmount = MarketUtils.getPoolAmount(dataStore, market, market.longToken);
        cache.shortTokenPoolAmount = MarketUtils.getPoolAmount(dataStore, market, market.shortToken);

        cache.longTokenPoolUsd = cache.longTokenPoolAmount * prices.longTokenPrice.max;
        cache.shortTokenPoolUsd = cache.shortTokenPoolAmount * prices.shortTokenPrice.max;

        cache.totalPoolUsd = cache.longTokenPoolUsd + cache.shortTokenPoolUsd;

        cache.marketTokensUsd =
            MarketUtils.marketTokenAmountToUsd(marketTokenAmount, cache.poolValue, cache.marketTokensSupply);

        cache.longTokenOutputUsd = Precision.mulDiv(cache.marketTokensUsd, cache.longTokenPoolUsd, cache.totalPoolUsd);
        cache.shortTokenOutputUsd = Precision.mulDiv(cache.marketTokensUsd, cache.shortTokenPoolUsd, cache.totalPoolUsd);

        cache.longTokenOutputAmount = cache.longTokenOutputUsd / prices.longTokenPrice.max;
        cache.shortTokenOutputAmount = cache.shortTokenOutputUsd / prices.shortTokenPrice.max;

        SwapPricingUtils.SwapFees memory longTokenFees = SwapPricingUtils.getSwapFees(
            dataStore,
            market.marketToken,
            cache.longTokenOutputAmount,
            false, // forPositiveImpact
            uiFeeReceiver
        );

        SwapPricingUtils.SwapFees memory shortTokenFees = SwapPricingUtils.getSwapFees(
            dataStore,
            market.marketToken,
            cache.shortTokenOutputAmount,
            false, // forPositiveImpact
            uiFeeReceiver
        );

        return (
            (cache.longTokenOutputAmount - longTokenFees.amountAfterFees) * prices.longTokenPrice.max,
            (cache.shortTokenOutputAmount - shortTokenFees.amountAfterFees) * prices.shortTokenPrice.max
        );
    }

    function getDepositFeeAmountInUSD(GetDepositAmountOutParams memory params)
        external
        view
        returns (uint256, uint256)
    {
        uint256 longTokenUsd = params.longTokenAmount * params.prices.longTokenPrice.midPrice();
        uint256 shortTokenUsd = params.shortTokenAmount * params.prices.shortTokenPrice.midPrice();
        int256 priceImpactUsd = SwapPricingUtils.getPriceImpactUsd(
            SwapPricingUtils.GetPriceImpactUsdParams(
                params.dataStore,
                params.market,
                params.market.longToken,
                params.market.shortToken,
                params.prices.longTokenPrice.midPrice(),
                params.prices.shortTokenPrice.midPrice(),
                longTokenUsd.toInt256(),
                shortTokenUsd.toInt256()
            )
        );

        int256 longPriceImpact = Precision.mulDiv(priceImpactUsd, longTokenUsd, longTokenUsd + shortTokenUsd);
        int256 shortPriceImpact = Precision.mulDiv(priceImpactUsd, shortTokenUsd, longTokenUsd + shortTokenUsd);

        uint256 feeAmountLongToken = getDepositFeeAmountOutForSingleToken(
            GetDepositAmountOutForSingleTokenParams(
                params.dataStore,
                params.market,
                params.prices,
                params.market.longToken,
                params.prices.longTokenPrice,
                params.market.shortToken,
                params.prices.shortTokenPrice,
                params.longTokenAmount,
                longPriceImpact > 0 ? int256(0) : longPriceImpact,
                params.uiFeeReceiver
            )
        );

        uint256 feeAmountShortToken = getDepositFeeAmountOutForSingleToken(
            GetDepositAmountOutForSingleTokenParams(
                params.dataStore,
                params.market,
                params.prices,
                params.market.shortToken,
                params.prices.shortTokenPrice,
                params.market.longToken,
                params.prices.longTokenPrice,
                params.shortTokenAmount,
                shortPriceImpact > 0 ? int256(0) : shortPriceImpact,
                params.uiFeeReceiver
            )
        );

        return (feeAmountLongToken, feeAmountShortToken);
    }

    function getDepositFeeAmountOutForSingleToken(GetDepositAmountOutForSingleTokenParams memory params)
        public
        view
        returns (uint256)
    {
        SwapPricingUtils.SwapFees memory fees = SwapPricingUtils.getSwapFees(
            params.dataStore,
            params.market.marketToken,
            params.amount,
            params.priceImpactUsd > 0, // forPositiveImpact
            params.uiFeeReceiver // uiFeeReceiver
        );

        MarketPoolValueInfo.Props memory poolValueInfo = MarketUtils.getPoolValueInfo(
            params.dataStore,
            params.market,
            params.prices.indexTokenPrice,
            params.prices.longTokenPrice,
            params.prices.shortTokenPrice,
            Keys.MAX_PNL_FACTOR_FOR_DEPOSITS,
            true
        );

        if (poolValueInfo.poolValue < 0) {
            revert Errors.InvalidPoolValueForDeposit(poolValueInfo.poolValue);
        }
        uint256 marketTokensSupply = MarketUtils.getMarketTokenSupply(MarketToken(payable(params.market.marketToken)));

        if (poolValueInfo.poolValue == 0 && marketTokensSupply > 0) {
            revert Errors.InvalidPoolValueForDeposit(poolValueInfo.poolValue);
        }

        if (params.priceImpactUsd > 0 && marketTokensSupply == 0) {
            params.priceImpactUsd = 0;
        }

        /// @dev removed positive price impact

        if (params.priceImpactUsd < 0) {
            int256 negativeImpactAmount = MarketUtils.getSwapImpactAmountWithCap(
                params.dataStore, params.market.marketToken, params.tokenIn, params.tokenInPrice, params.priceImpactUsd
            );

            fees.amountAfterFees -= (-negativeImpactAmount).toUint256();
        }

        return (params.amount - fees.amountAfterFees) * params.tokenInPrice.min;
    }
}
