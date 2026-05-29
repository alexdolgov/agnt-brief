// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

import "./Price.sol";
import "./DataStore.sol";
import "./Keys.sol";

import "./Market.sol";

// @title MarketUtils
// @dev Library for market functions
library MarketUtils {
    // @dev struct to store the prices of tokens of a market
    // @param indexTokenPrice price of the market's index token
    // @param longTokenPrice price of the market's long token
    // @param shortTokenPrice price of the market's short token
    struct MarketPrices {
        Price.Props indexTokenPrice;
        Price.Props longTokenPrice;
        Price.Props shortTokenPrice;
    }

    // @dev get the virtual inventory for swaps
    // @param dataStore DataStore
    // @param market the market to check
    // @return returns (has virtual inventory, virtual long token inventory, virtual short token inventory)
    function getVirtualInventoryForSwaps(DataStore dataStore, address market)
        internal
        view
        returns (bool, uint256, uint256)
    {
        bytes32 virtualMarketId = dataStore.getBytes32(Keys.virtualMarketIdKey(market));
        if (virtualMarketId == bytes32(0)) {
            return (false, 0, 0);
        }

        return (
            true,
            dataStore.getUint(Keys.virtualInventoryForSwapsKey(virtualMarketId, true)),
            dataStore.getUint(Keys.virtualInventoryForSwapsKey(virtualMarketId, false))
        );
    }

    // @dev get the amount of tokens in the pool
    // @param dataStore DataStore
    // @param market the market to check
    // @param token the token to check
    // @return the amount of tokens in the pool
    function getPoolAmount(DataStore dataStore, Market.Props memory market, address token)
        internal
        view
        returns (uint256)
    {
        /* Market.Props memory market = MarketStoreUtils.get(dataStore, marketAddress); */
        // if the longToken and shortToken are the same, return half of the token amount, so that
        // calculations of pool value, etc would be correct
        uint256 divisor = getPoolDivisor(market.longToken, market.shortToken);
        return dataStore.getUint(Keys.poolAmountKey(market.marketToken, token)) / divisor;
    }

    // this is used to divide the values of getPoolAmount and getOpenInterest
    // if the longToken and shortToken are the same, then these values have to be divided by two
    // to avoid double counting
    function getPoolDivisor(address longToken, address shortToken) internal pure returns (uint256) {
        return longToken == shortToken ? 2 : 1;
    }

    function getAdjustedSwapImpactFactor(DataStore dataStore, address market, bool isPositive)
        internal
        view
        returns (uint256)
    {
        (uint256 positiveImpactFactor, uint256 negativeImpactFactor) = getAdjustedSwapImpactFactors(dataStore, market);

        return isPositive ? positiveImpactFactor : negativeImpactFactor;
    }

    function getAdjustedSwapImpactFactors(DataStore dataStore, address market)
        internal
        view
        returns (uint256, uint256)
    {
        uint256 positiveImpactFactor = dataStore.getUint(Keys.swapImpactFactorKey(market, true));
        uint256 negativeImpactFactor = dataStore.getUint(Keys.swapImpactFactorKey(market, false));

        // if the positive impact factor is more than the negative impact factor, positions could be opened
        // and closed immediately for a profit if the difference is sufficient to cover the position fees
        if (positiveImpactFactor > negativeImpactFactor) {
            positiveImpactFactor = negativeImpactFactor;
        }

        return (positiveImpactFactor, negativeImpactFactor);
    }

    function getUiFeeFactor(DataStore dataStore, address account) internal view returns (uint256) {
        uint256 maxUiFeeFactor = dataStore.getUint(Keys.MAX_UI_FEE_FACTOR);
        uint256 uiFeeFactor = dataStore.getUint(Keys.uiFeeFactorKey(account));

        return uiFeeFactor < maxUiFeeFactor ? uiFeeFactor : maxUiFeeFactor;
    }
}
