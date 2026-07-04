// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import "../lib/gmx-synthetics/contracts/data/Keys.sol";
import "../lib/gmx-synthetics/contracts/market/MarketStoreUtils.sol";
import "../lib/gmx-synthetics/contracts/position/Position.sol";
import "../lib/gmx-synthetics/contracts/position/PositionUtils.sol";
import "../lib/gmx-synthetics/contracts/position/PositionStoreUtils.sol";
import "../lib/gmx-synthetics/contracts/order/OrderStoreUtils.sol";
import "../lib/gmx-synthetics/contracts/market/MarketUtils.sol";
import "../lib/gmx-synthetics/contracts/market/Market.sol";
import "../lib/gmx-synthetics/contracts/reader/ReaderPricingUtils.sol";

// @title Reader
// @dev Library for read functions
contract ReaderLite {
    using SafeCast for uint256;
    using Position for Position.Props;

    struct GetPositionInfoCache {
        Market.Props market;
        Price.Props collateralTokenPrice;
        uint256 sizeDeltaUsd;
        int256 basePnlUsd;
    }

    function getMarketTokens(
        DataStore dataStore,
        address key
    )
        public
        view
        returns (
            address marketToken,
            address indexToken,
            address longToken,
            address shortToken
        )
    {
        if (dataStore.containsAddress(Keys.MARKET_LIST, key)) {
            marketToken = dataStore.getAddress(
                keccak256(abi.encode(key, MarketStoreUtils.MARKET_TOKEN))
            );
            indexToken = dataStore.getAddress(
                keccak256(abi.encode(key, MarketStoreUtils.INDEX_TOKEN))
            );
            longToken = dataStore.getAddress(
                keccak256(abi.encode(key, MarketStoreUtils.LONG_TOKEN))
            );
            shortToken = dataStore.getAddress(
                keccak256(abi.encode(key, MarketStoreUtils.SHORT_TOKEN))
            );
        }
    }

    function isOrderExist(
        DataStore dataStore,
        bytes32 orderKey
    ) external view returns (bool) {
        return
            dataStore.getAddress(
                keccak256(abi.encode(orderKey, OrderStoreUtils.ACCOUNT))
            ) != address(0);
    }

    function getPositionSizeInUsd(
        DataStore dataStore,
        bytes32 positionKey
    ) external view returns (uint256) {
        return
            dataStore.getUint(
                keccak256(
                    abi.encode(positionKey, PositionStoreUtils.SIZE_IN_USD)
                )
            );
    }

    function getPositionMarginInfo(
        DataStore dataStore,
        IReferralStorage referralStorage,
        bytes32 positionKey,
        MarketUtils.MarketPrices memory prices
    )
        external
        view
        returns (
            uint256 collateralAmount,
            uint256 sizeInUsd,
            uint256 totalCostAmount,
            int256 pnlAfterPriceImpactUsd
        )
    {
        GetPositionInfoCache memory cache;
        Position.Props memory position = PositionStoreUtils.get(
            dataStore,
            positionKey
        );
        cache.market = MarketStoreUtils.get(dataStore, position.market());
        cache.collateralTokenPrice = MarketUtils.getCachedTokenPrice(
            position.collateralToken(),
            cache.market,
            prices
        );
        cache.sizeDeltaUsd = position.sizeInUsd();
        ReaderPricingUtils.ExecutionPriceResult
            memory executionPriceResult = ReaderPricingUtils.getExecutionPrice(
                dataStore,
                cache.market,
                prices,
                position.sizeInUsd(),
                position.sizeInTokens(),
                -cache.sizeDeltaUsd.toInt256(),
                position.isLong()
            );

        PositionPricingUtils.GetPositionFeesParams
            memory getPositionFeesParams = PositionPricingUtils
                .GetPositionFeesParams({
                    dataStore: dataStore,
                    referralStorage: referralStorage,
                    position: position,
                    collateralTokenPrice: cache.collateralTokenPrice,
                    balanceWasImproved: executionPriceResult.balanceWasImproved,
                    longToken: cache.market.longToken,
                    shortToken: cache.market.shortToken,
                    sizeDeltaUsd: cache.sizeDeltaUsd,
                    uiFeeReceiver: address(0),
                    isLiquidation: false
                });

        PositionPricingUtils.PositionFees memory fees = getPositionFees(
            cache,
            getPositionFeesParams,
            prices
        );

        (cache.basePnlUsd, , ) = PositionUtils.getPositionPnlUsd(
            dataStore,
            cache.market,
            prices,
            position,
            cache.sizeDeltaUsd
        );

        collateralAmount = position.collateralAmount();
        sizeInUsd = cache.sizeDeltaUsd;
        totalCostAmount = fees.totalCostAmount;
        pnlAfterPriceImpactUsd =
            executionPriceResult.priceImpactUsd +
            cache.basePnlUsd;
    }

    function getPositionFees(
        GetPositionInfoCache memory cache,
        PositionPricingUtils.GetPositionFeesParams memory params,
        MarketUtils.MarketPrices memory prices
    ) internal view returns (PositionPricingUtils.PositionFees memory) {
        PositionPricingUtils.PositionFees memory fees = PositionPricingUtils
            .getPositionFeesAfterReferral(
                params.dataStore,
                params.referralStorage,
                params.collateralTokenPrice,
                params.balanceWasImproved,
                params.position.account(),
                params.position.market(),
                params.sizeDeltaUsd
            );

        uint256 borrowingFeeUsd = MarketUtils.getBorrowingFees(
            params.dataStore,
            params.position
        );

        fees.borrowing = PositionPricingUtils.getBorrowingFees(
            params.dataStore,
            params.collateralTokenPrice,
            borrowingFeeUsd
        );

        fees.feeAmountForPool =
            fees.positionFeeAmountForPool +
            fees.borrowing.borrowingFeeAmount -
            fees.borrowing.borrowingFeeAmountForFeeReceiver;
        fees.feeReceiverAmount += fees
            .borrowing
            .borrowingFeeAmountForFeeReceiver;

        fees.funding.latestFundingFeeAmountPerSize = MarketUtils
            .getFundingFeeAmountPerSize(
                params.dataStore,
                params.position.market(),
                params.position.collateralToken(),
                params.position.isLong()
            );

        fees.funding.latestLongTokenClaimableFundingAmountPerSize = MarketUtils
            .getClaimableFundingAmountPerSize(
                params.dataStore,
                params.position.market(),
                params.longToken,
                params.position.isLong()
            );

        fees.funding.latestShortTokenClaimableFundingAmountPerSize = MarketUtils
            .getClaimableFundingAmountPerSize(
                params.dataStore,
                params.position.market(),
                params.shortToken,
                params.position.isLong()
            );

        MarketUtils.GetNextFundingAmountPerSizeResult
            memory nextFundingAmountResult = MarketUtils
                .getNextFundingAmountPerSize(
                    params.dataStore,
                    cache.market,
                    prices
                );

        uint256 multiplier = cache.market.longToken == cache.market.shortToken
            ? 2
            : 1;
        if (params.position.isLong()) {
            fees.funding.latestLongTokenClaimableFundingAmountPerSize +=
                nextFundingAmountResult
                    .claimableFundingAmountPerSizeDelta
                    .long
                    .longToken *
                multiplier;
            fees.funding.latestShortTokenClaimableFundingAmountPerSize +=
                nextFundingAmountResult
                    .claimableFundingAmountPerSizeDelta
                    .long
                    .shortToken *
                multiplier;

            if (params.position.collateralToken() == cache.market.longToken) {
                fees.funding.latestFundingFeeAmountPerSize +=
                    nextFundingAmountResult
                        .fundingFeeAmountPerSizeDelta
                        .long
                        .longToken *
                    multiplier;
            } else {
                fees.funding.latestFundingFeeAmountPerSize +=
                    nextFundingAmountResult
                        .fundingFeeAmountPerSizeDelta
                        .long
                        .shortToken *
                    multiplier;
            }
        } else {
            fees.funding.latestLongTokenClaimableFundingAmountPerSize +=
                nextFundingAmountResult
                    .claimableFundingAmountPerSizeDelta
                    .short
                    .longToken *
                multiplier;
            fees.funding.latestShortTokenClaimableFundingAmountPerSize +=
                nextFundingAmountResult
                    .claimableFundingAmountPerSizeDelta
                    .short
                    .shortToken *
                multiplier;

            if (params.position.collateralToken() == cache.market.longToken) {
                fees.funding.latestFundingFeeAmountPerSize +=
                    nextFundingAmountResult
                        .fundingFeeAmountPerSizeDelta
                        .short
                        .longToken *
                    multiplier;
            } else {
                fees.funding.latestFundingFeeAmountPerSize +=
                    nextFundingAmountResult
                        .fundingFeeAmountPerSizeDelta
                        .short
                        .shortToken *
                    multiplier;
            }
        }

        fees.funding = PositionPricingUtils.getFundingFees(
            fees.funding,
            params.position
        );

        fees.ui = PositionPricingUtils.getUiFees(
            params.dataStore,
            params.collateralTokenPrice,
            params.sizeDeltaUsd,
            params.uiFeeReceiver
        );

        fees.totalCostAmountExcludingFunding =
            fees.positionFeeAmount +
            fees.borrowing.borrowingFeeAmount +
            fees.ui.uiFeeAmount -
            fees.referral.traderDiscountAmount;

        fees.totalCostAmount =
            fees.totalCostAmountExcludingFunding +
            fees.funding.fundingFeeAmount;

        return fees;
    }
}
