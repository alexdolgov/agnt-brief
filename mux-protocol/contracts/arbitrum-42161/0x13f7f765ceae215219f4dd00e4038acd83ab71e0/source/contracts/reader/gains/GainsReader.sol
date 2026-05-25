// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./interfaces/IGNSMultiCollatDiamond.sol";
import "./interfaces/IGNSTradingStorage.sol";
import "./interfaces/IGNSTrading.sol";
import "./interfaces/IGNSOracleRewards.sol";
import "./interfaces/libraries/IPairsStorageUtils.sol";

contract GainsReader {
    struct PairOpenInterestDai {
        uint256 long;
        uint256 short;
        uint256 max;
    }

    struct GainsConfig {
        IPairsStorageUtils.Fee[] fees;
        IPairsStorageUtils.Group[] groups;
        IGNSTrading trading;
        address callbacks;
        uint256 maxTradesPerPair;
        address[] supportedTokens;
        address oracleRewards;
        uint256 maxPosDai;
        bool isPaused;
        uint256 maxNegativePnlOnOpenP;
        uint256 pairsCount;
    }

    struct PairLeverage {
        uint pairMinLeverage;
        uint pairMaxLeverage;
    }

    struct GainsPair {
        IPairsStorageUtils.Pair pair;
        PairOpenInterestDai openInterestDai; // note: do NOT use .max, use IGNSTradingStorage.openInterestDai
        IPriceImpactUtils.PairDepth pairDepth;
        PairLeverage pairLeverage;
    }

    struct PositionInfo {
        IGNSTradingStorage.Trade trade;
        IGNSTradingStorage.TradeInfo tradeInfo;
    }

    struct MarketOrder {
        uint256 id;
        IGNSTradingStorage.PendingMarketOrder order;
    }

    IGNSMultiCollatDiamond public immutable multiCollatDiamond;
    IGNSTradingStorage public immutable tradingStorage;

    constructor(IGNSMultiCollatDiamond multiCollatDiamond_, IGNSTradingStorage tradingStorage_) {
        multiCollatDiamond = multiCollatDiamond_;
        tradingStorage = tradingStorage_;
    }

    function getPairsCount() external view returns (uint256) {
        return multiCollatDiamond.pairsCount();
    }

    function config() external view returns (GainsConfig memory) {
        IGNSTrading trading = IGNSTrading(tradingStorage.trading());
        uint256 feesCount = multiCollatDiamond.feesCount();
        uint256 groupsCount = multiCollatDiamond.groupsCount();

        GainsConfig memory gainsInfo = GainsConfig(
            new IPairsStorageUtils.Fee[](feesCount),
            new IPairsStorageUtils.Group[](groupsCount),
            trading,
            tradingStorage.callbacks(),
            tradingStorage.maxTradesPerPair(),
            tradingStorage.getSupportedTokens(),
            address(trading.oracleRewards()),
            trading.maxPosDai(),
            trading.isPaused(),
            40, // constant -40% after 2024-01-23. was pairInfos.maxNegativePnlOnOpenP()
            multiCollatDiamond.pairsCount()
        );
        for (uint256 i = 0; i < feesCount; i++) {
            gainsInfo.fees[i] = multiCollatDiamond.fees(i);
        }
        for (uint256 i = 0; i < groupsCount; i++) {
            gainsInfo.groups[i] = multiCollatDiamond.groups(i);
        }
        return gainsInfo;
    }

    function pair(uint256 pairIndex) external view returns (GainsPair memory gainsPair) {
        IGNSTradingCallbacks tradingCallbacks = IGNSTradingCallbacks(tradingStorage.callbacks());
        gainsPair.pair = multiCollatDiamond.pairs(pairIndex);
        gainsPair.openInterestDai = PairOpenInterestDai(
            tradingStorage.openInterestDai(pairIndex, 0),
            tradingStorage.openInterestDai(pairIndex, 1),
            tradingStorage.openInterestDai(pairIndex, 2) // note: do NOT use .max, use IGNSTradingStorage.openInterestDai
        );
        gainsPair.pairDepth = multiCollatDiamond.getPairDepth(pairIndex);
        // 2024-01-23 removed: pairInfoItem.rolloverFeePerBlockP = raw.rolloverFeePerBlockP;
        // 2024-01-23 removed: pairInfoItem.fundingFeePerBlockP = raw.fundingFeePerBlockP;
        // 2024-01-23 removed: accPerCollateral, lastRolloverUpdateBlock. was pairRolloverFees
        // 2024-01-23 removed: accPerOiLong, accPerOiShort, lastFundingUpdateBlock. was pairFundingFees(pairIndex)
        // pairLeverage was copied from GNSTradingV6_3_2.sol
        uint callbacksMaxLev = tradingCallbacks.pairMaxLeverage(pairIndex);
        uint pairMaxLeverage = callbacksMaxLev > 0 ? callbacksMaxLev : multiCollatDiamond.pairMaxLeverage(pairIndex);
        gainsPair.pairLeverage = PairLeverage(multiCollatDiamond.pairMinLeverage(pairIndex), pairMaxLeverage);
    }

    function getLimitOrders(
        address trader
    )
        external
        view
        returns (
            IGNSTradingStorage.OpenLimitOrder[] memory openLimitOrders,
            IGNSOracleRewards.OpenLimitOrderType[] memory openLimitOrderTypes
        )
    {
        IGNSTrading trading = IGNSTrading(tradingStorage.trading());
        IGNSOracleRewards oracleRewards = IGNSOracleRewards(trading.oracleRewards());
        uint256 maxTradesPerPair = tradingStorage.maxTradesPerPair();
        uint256 pairsCount = multiCollatDiamond.pairsCount();
        uint256[] memory limitOrderCounts = new uint256[](pairsCount);
        uint256 total;
        for (uint256 pairIndex = 0; pairIndex < pairsCount; pairIndex++) {
            limitOrderCounts[pairIndex] = tradingStorage.openLimitOrdersCount(trader, pairIndex);
            total += limitOrderCounts[pairIndex];
        }
        openLimitOrders = new IGNSTradingStorage.OpenLimitOrder[](total);
        openLimitOrderTypes = new IGNSOracleRewards.OpenLimitOrderType[](total);
        uint256 openLimitOrderIndex;
        if (total > 0) {
            for (uint256 pairIndex = 0; pairIndex < pairsCount; pairIndex++) {
                if (limitOrderCounts[pairIndex] > 0) {
                    // orders could be [order, empty, order] and limitOrderCounts will be 2
                    for (uint256 orderIndex = 0; orderIndex < maxTradesPerPair; orderIndex++) {
                        if (tradingStorage.hasOpenLimitOrder(trader, pairIndex, orderIndex)) {
                            openLimitOrders[openLimitOrderIndex] = tradingStorage.getOpenLimitOrder(
                                trader,
                                pairIndex,
                                orderIndex
                            );
                            openLimitOrderTypes[openLimitOrderIndex] = oracleRewards.openLimitOrderTypes(
                                trader,
                                pairIndex,
                                orderIndex
                            );
                            openLimitOrderIndex++;
                        }
                    }
                }
            }
        }
    }

    function getPositionsAndMarketOrders(
        address trader
    ) external view returns (PositionInfo[] memory positionInfos, MarketOrder[] memory marketOrders) {
        uint256 pairsCount = multiCollatDiamond.pairsCount();
        uint256[] memory openTradesCount = new uint256[](pairsCount);
        uint256 total;
        for (uint256 pairIndex = 0; pairIndex < pairsCount; pairIndex++) {
            openTradesCount[pairIndex] = tradingStorage.openTradesCount(trader, pairIndex);
            total += openTradesCount[pairIndex];
        }
        positionInfos = new PositionInfo[](total);
        uint256 positionInfoIndex;
        if (total > 0) {
            uint256 maxTradesPerPair = tradingStorage.maxTradesPerPair();
            for (uint256 pairIndex = 0; pairIndex < pairsCount; pairIndex++) {
                if (openTradesCount[pairIndex] > 0) {
                    positionInfoIndex = _getPositionInfo(
                        positionInfos,
                        positionInfoIndex,
                        trader,
                        pairIndex,
                        maxTradesPerPair
                    );
                }
            }
        }
        uint256[] memory pendingOrderIds = tradingStorage.getPendingOrderIds(trader);
        marketOrders = new MarketOrder[](pendingOrderIds.length);
        for (uint256 i = 0; i < pendingOrderIds.length; i++) {
            marketOrders[i].id = pendingOrderIds[i];
            marketOrders[i].order = tradingStorage.reqID_pendingMarketOrder(pendingOrderIds[i]);
        }
    }

    function _getPositionInfo(
        PositionInfo[] memory positionInfos,
        uint256 positionInfoIndex,
        address trader,
        uint256 pairIndex,
        uint256 maxTradesPerPair
    ) internal view returns (uint256 newPositionInfoIndex) {
        newPositionInfoIndex = positionInfoIndex;
        // positions could be [position, empty, position] and openTradesCount will be 2
        for (uint256 orderIndex = 0; orderIndex < maxTradesPerPair; orderIndex++) {
            IGNSTradingStorage.Trade memory trade = getOpenTrades(trader, pairIndex, orderIndex);
            if (trade.trader == trader && trade.pairIndex == pairIndex && trade.index == orderIndex) {
                IGNSTradingStorage.TradeInfo memory tradeInfo = tradingStorage.openTradesInfo(
                    trader,
                    pairIndex,
                    orderIndex
                );
                positionInfos[newPositionInfoIndex] = PositionInfo(trade, tradeInfo);
                newPositionInfoIndex++;
            }
        }
    }

    function getOpenTrades(
        address trader,
        uint256 pairIndex,
        uint256 orderIndex
    ) internal view returns (IGNSTradingStorage.Trade memory trade) {
        (bool success, bytes memory data) = address(tradingStorage).staticcall(
            abi.encodeWithSignature("openTrades(address,uint256,uint256)", trader, pairIndex, orderIndex)
        );
        require(success, "openTrades revert");
        require(data.length >= 32 * 10, "openTrades broken");
        assembly {
            mstore(add(trade, 0), mload(add(data, 32)))
            mstore(add(trade, 32), mload(add(data, 64)))
            mstore(add(trade, 64), mload(add(data, 96)))
            mstore(add(trade, 96), mload(add(data, 128)))
            mstore(add(trade, 128), mload(add(data, 160)))
            mstore(add(trade, 160), mload(add(data, 192)))
            mstore(add(trade, 192), mload(add(data, 224)))
            mstore(add(trade, 224), mload(add(data, 256)))
            mstore(add(trade, 256), mload(add(data, 288)))
            mstore(add(trade, 288), mload(add(data, 320)))
        }
    }
}
