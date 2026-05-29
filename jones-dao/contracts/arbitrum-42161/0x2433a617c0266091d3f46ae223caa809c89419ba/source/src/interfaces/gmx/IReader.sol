// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {DataStore} from "./DataStore.sol";
import {Market} from "./Market.sol";
import {MarketUtils} from "./MarketUtils.sol";

import {SwapPricingUtils} from "./SwapPricingUtils.sol";

import {Price} from "./Price.sol";

import {MarketPoolValueInfo} from "./MarketPoolValueInfo.sol";

interface IReader {
    function getDepositAmountOut(
        DataStore dataStore,
        Market.Props memory market,
        MarketUtils.MarketPrices memory prices,
        uint256 longTokenAmount,
        uint256 shortTokenAmount,
        address uiFeeReceiver
    ) external view returns (uint256);

    function getWithdrawalAmountOut(
        DataStore dataStore,
        Market.Props memory market,
        MarketUtils.MarketPrices memory prices,
        uint256 marketTokenAmount,
        address uiFeeReceiver
    ) external view returns (uint256, uint256);

    function getMarket(DataStore dataStore, address key) external view returns (Market.Props memory);

    function getMarketTokenPrice(
        DataStore dataStore,
        Market.Props memory market,
        Price.Props memory indexTokenPrice,
        Price.Props memory longTokenPrice,
        Price.Props memory shortTokenPrice,
        bytes32 pnlFactorType,
        bool maximize
    ) external view returns (int256, MarketPoolValueInfo.Props memory);

    function getSwapAmountOut(
        DataStore dataStore,
        Market.Props memory market,
        MarketUtils.MarketPrices memory prices,
        address tokenIn,
        uint256 amountIn,
        address uiFeeReceiver
    ) external view returns (uint256, int256, SwapPricingUtils.SwapFees memory fees);
}
