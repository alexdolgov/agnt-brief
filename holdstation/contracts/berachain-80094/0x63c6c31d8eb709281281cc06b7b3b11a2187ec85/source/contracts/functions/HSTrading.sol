// File: contracts\interfaces\UniswapRouterInterfaceV5.sol
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "../interfaces/UniswapRouterInterfaceV5.sol";
import "../interfaces/TokenInterfaceV5.sol";
import "../interfaces/NftInterfaceV5.sol";
import "../interfaces/VaultInterfaceV5.sol";
import "../interfaces/PairsStorageInterfaceV6.sol";
import "../interfaces/StorageInterfaceV5.sol";
import "../interfaces/HSPairInfosInterfaceV6.sol";
import "../interfaces/HSReferralsInterfaceV6_2.sol";
import "../interfaces/NftRewardsInterfaceV6.sol";

contract HSTrading is Initializable, ReentrancyGuardUpgradeable {
    // Params (constant)
    uint256 constant PRECISION = 1e10;
    uint256 constant MAX_SL_P = 75; // -75% PNL

    // Contracts (constant)
    StorageInterfaceV5 public storageT;
    NftRewardsInterfaceV6 public nftRewards;
    HSPairInfosInterfaceV6 public pairInfos;

    // Params (adjustable)
    uint256 public maxPosUsdc; // 1e18 (eg. 75000 * 1e18)
    uint256 public limitOrdersTimelock; // block (eg. 30)
    uint256 public marketOrdersTimeout; // block (eg. 30)

    // State
    bool public isPaused; // Prevent opening new trades
    bool public isDone; // Prevent any interaction with the contract

    // Events
    event Done(bool done);
    event Paused(bool paused);

    event NumberUpdated(string name, uint256 value);

    event MarketOrderInitiated(uint256 indexed orderId, address indexed trader, uint256 indexed pairIndex, bool open);

    event OpenLimitPlaced(address indexed trader, uint256 indexed pairIndex, uint256 index);
    event OpenLimitUpdated(
        address indexed trader,
        uint256 indexed pairIndex,
        uint256 index,
        uint256 newPrice,
        uint256 newTp,
        uint256 newSl
    );
    event OpenLimitCanceled(address indexed trader, uint256 indexed pairIndex, uint256 index);

    event TpUpdated(address indexed trader, uint256 indexed pairIndex, uint256 index, uint256 newTp);
    event SlUpdated(address indexed trader, uint256 indexed pairIndex, uint256 index, uint256 newSl);
    event SlUpdateInitiated(
        uint256 indexed orderId,
        address indexed trader,
        uint256 indexed pairIndex,
        uint256 index,
        uint256 newSl
    );

    event NftOrderInitiated(
        uint256 orderId,
        address indexed nftHolder,
        address indexed trader,
        uint256 indexed pairIndex
    );
    event NftOrderSameBlock(address indexed nftHolder, address indexed trader, uint256 indexed pairIndex);

    event CouldNotCloseTrade(address indexed trader, uint256 indexed pairIndex, uint256 index);

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        StorageInterfaceV5 _storageT,
        NftRewardsInterfaceV6 _nftRewards,
        HSPairInfosInterfaceV6 _pairInfos,
        uint256 _maxPosUsdc,
        uint256 _limitOrdersTimelock,
        uint256 _marketOrdersTimeout
    ) external initializer {
        require(
            address(_storageT) != address(0) &&
                address(_nftRewards) != address(0) &&
                address(_pairInfos) != address(0) &&
                _maxPosUsdc > 0 &&
                _limitOrdersTimelock > 0 &&
                _marketOrdersTimeout > 0,
            "WRONG_PARAMS"
        );

        storageT = _storageT;
        nftRewards = _nftRewards;
        pairInfos = _pairInfos;

        maxPosUsdc = _maxPosUsdc;
        limitOrdersTimelock = _limitOrdersTimelock;
        marketOrdersTimeout = _marketOrdersTimeout;
    }

    // Modifiers
    modifier onlyGov() {
        require(msg.sender == storageT.gov(), "GOV_ONLY");
        _;
    }

    modifier notDone() {
        require(!isDone, "DONE");
        _;
    }

    // Manage params
    function setMaxPosUsdc(uint256 value) external onlyGov {
        require(value > 0, "VALUE_0");
        maxPosUsdc = value;

        emit NumberUpdated("maxPosUsdc", value);
    }

    function setTimelock(uint256 marketValue, uint256 limitValue) external onlyGov {
        require(limitValue > 0 && marketValue > 0, "VALUE_0");
        limitOrdersTimelock = limitValue;
        marketOrdersTimeout = marketValue;
        emit NumberUpdated("marketOrdersTimeout", marketValue);
        emit NumberUpdated("limitOrdersTimelock", limitValue);
    }

    // Manage state
    function pause() external onlyGov {
        isPaused = !isPaused;
        emit Paused(isPaused);
    }

    // Open new trade (MARKET/LIMIT)
    function openTrade(
        StorageInterfaceV5.Trade memory t,
        NftRewardsInterfaceV6.OpenLimitOrderType orderType, // LEGACY => market
        uint256 spreadReductionId,
        uint256 slippageP, // for market orders only
        address
    ) external notDone nonReentrant {
        require(!isPaused, "PAUSED");

        AggregatorInterfaceV6 aggregator = storageT.priceAggregator();
        PairsStorageInterfaceV6 pairsStored = aggregator.pairsStorage();

        address sender = msg.sender;

        require(
            storageT.openTradesCount(sender, t.pairIndex) +
                storageT.pendingMarketOpenCount(sender, t.pairIndex) +
                storageT.openLimitOrdersCount(sender, t.pairIndex) <
                storageT.maxTradesPerPair(),
            "MAX_TRADES_PER_PAIR"
        );

        require(storageT.pendingOrderIdsCount(sender) < storageT.maxPendingMarketOrders(), "MAX_PENDING_ORDERS");

        require(t.positionSizeUsdc <= maxPosUsdc, "ABOVE_MAX_POS");
        require(t.positionSizeUsdc * t.leverage >= pairsStored.pairMinLevPosUsdc(t.pairIndex), "BELOW_MIN_POS");

        require(
            t.leverage > 0 &&
                t.leverage >= pairsStored.pairMinLeverage(t.pairIndex) &&
                t.leverage <= pairsStored.pairMaxLeverage(t.pairIndex),
            "LEVERAGE_INCORRECT"
        );

        require(
            spreadReductionId == 0 || storageT.nfts(spreadReductionId - 1).balanceOf(sender) > 0,
            "NO_CORRESPONDING_NFT_SPREAD_REDUCTION"
        );

        require(t.tp == 0 || (t.buy ? t.tp > t.openPrice : t.tp < t.openPrice), "WRONG_TP");

        require(t.sl == 0 || (t.buy ? t.sl < t.openPrice : t.sl > t.openPrice), "WRONG_SL");

        (uint256 priceImpactP, ) = pairInfos.getTradePriceImpact(
            0,
            t.pairIndex,
            t.buy,
            t.positionSizeUsdc * t.leverage
        );

        require(priceImpactP * t.leverage <= pairInfos.maxNegativePnlOnOpenP(), "PRICE_IMPACT_TOO_HIGH");

        storageT.transferUsdc(sender, address(storageT), t.positionSizeUsdc);

        if (orderType != NftRewardsInterfaceV6.OpenLimitOrderType.LEGACY) {
            uint256 index = storageT.firstEmptyOpenLimitIndex(sender, t.pairIndex);

            storageT.storeOpenLimitOrder(
                StorageInterfaceV5.OpenLimitOrder(
                    StorageInterfaceV5.OrderInfo(
                        t.pairIndex,
                        t.positionSizeUsdc,
                        t.buy,
                        t.leverage,
                        t.tp,
                        t.sl,
                        t.openPrice,
                        t.openPrice
                    ),
                    sender,
                    index,
                    spreadReductionId > 0 ? storageT.spreadReductionsP(spreadReductionId - 1) : 0,
                    block.number
                )
            );

            nftRewards.setOpenLimitOrderType(sender, t.pairIndex, index, orderType);

            emit OpenLimitPlaced(sender, t.pairIndex, index);
        } else {
            uint256 orderId = aggregator.getPrice(
                t.pairIndex,
                AggregatorInterfaceV6.OrderType.MARKET_OPEN,
                t.positionSizeUsdc * t.leverage
            );

            storageT.storePendingMarketOrder(
                StorageInterfaceV5.PendingMarketOrder(
                    StorageInterfaceV5.Trade(
                        sender,
                        t.pairIndex,
                        0,
                        0,
                        t.positionSizeUsdc,
                        0,
                        t.buy,
                        t.leverage,
                        t.tp,
                        t.sl
                    ),
                    0,
                    t.openPrice,
                    slippageP,
                    spreadReductionId > 0 ? storageT.spreadReductionsP(spreadReductionId - 1) : 0,
                    0
                ),
                orderId,
                true
            );

            aggregator.emptyNodeFulFill(t.pairIndex, orderId, AggregatorInterfaceV6.OrderType.MARKET_OPEN);

            emit MarketOrderInitiated(orderId, sender, t.pairIndex, true);
        }
    }

    // Close trade (MARKET)
    function closeTradeMarket(uint256 pairIndex, uint256 index) external notDone nonReentrant {
        address sender = msg.sender;
        _closeTradeMarket(pairIndex, index, sender);
    }

    // Manage limit order (OPEN)
    function updateOpenLimitOrder(
        uint256 pairIndex,
        uint256 index,
        uint256 price, // PRECISION
        uint256 tp,
        uint256 sl
    ) external notDone nonReentrant {
        address sender = msg.sender;

        require(storageT.hasOpenLimitOrder(sender, pairIndex, index), "NO_LIMIT");

        StorageInterfaceV5.OpenLimitOrder memory o = storageT.getOpenLimitOrder(sender, pairIndex, index);

        require(block.number - o.block >= limitOrdersTimelock, "LIMIT_TIMELOCK");

        require(tp == 0 || (o.orderInfo.buy ? tp > price : tp < price), "WRONG_TP");

        require(sl == 0 || (o.orderInfo.buy ? sl < price : sl > price), "WRONG_SL");

        o.orderInfo.minPrice = o.orderInfo.maxPrice = price;

        o.orderInfo.tp = tp;
        o.orderInfo.sl = sl;

        storageT.updateOpenLimitOrder(o);

        emit OpenLimitUpdated(sender, pairIndex, index, price, tp, sl);
    }

    function cancelOpenLimitOrder(uint256 pairIndex, uint256 index) external notDone nonReentrant {
        address sender = msg.sender;

        require(storageT.hasOpenLimitOrder(sender, pairIndex, index), "NO_LIMIT");

        StorageInterfaceV5.OpenLimitOrder memory o = storageT.getOpenLimitOrder(sender, pairIndex, index);

        require(block.number - o.block >= limitOrdersTimelock, "LIMIT_TIMELOCK");

        storageT.unregisterOpenLimitOrder(sender, pairIndex, index);
        storageT.transferUsdc(address(storageT), sender, o.orderInfo.positionSize);

        emit OpenLimitCanceled(sender, pairIndex, index);
    }

    // Manage limit order (TP/SL)
    function updateTp(uint256 pairIndex, uint256 index, uint256 newTp) external notDone nonReentrant {
        address sender = msg.sender;

        StorageInterfaceV5.Trade memory t = storageT.openTrades(sender, pairIndex, index);

        require(t.leverage > 0, "NO_TRADE");

        storageT.updateTp(sender, pairIndex, index, newTp);

        emit TpUpdated(sender, pairIndex, index, newTp);
    }

    function updateSl(uint256 pairIndex, uint256 index, uint256 newSl) external notDone nonReentrant {
        address sender = msg.sender;

        StorageInterfaceV5.Trade memory t = storageT.openTrades(sender, pairIndex, index);

        require(t.leverage > 0, "NO_TRADE");

        uint256 maxSlDist = (t.openPrice * MAX_SL_P) / 100 / t.leverage;

        require(
            newSl == 0 || (t.buy ? newSl >= t.openPrice - maxSlDist : newSl <= t.openPrice + maxSlDist),
            "SL_TOO_BIG"
        );

        storageT.updateSl(sender, pairIndex, index, newSl);
        emit SlUpdated(sender, pairIndex, index, newSl);
    }

    function updateTPSL(uint256 pairIndex, uint256 index, uint256 newTp, uint256 newSl) external notDone nonReentrant {
        address sender = msg.sender;
        StorageInterfaceV5.Trade memory t = storageT.openTrades(sender, pairIndex, index);
        require(t.leverage > 0, "NO_TRADE");
        uint256 maxSlDist = (t.openPrice * MAX_SL_P) / 100 / t.leverage;
        require(
            newSl == 0 || (t.buy ? newSl >= t.openPrice - maxSlDist : newSl <= t.openPrice + maxSlDist),
            "SL_TOO_BIG"
        );
        storageT.updateTp(sender, pairIndex, index, newTp);
        storageT.updateSl(sender, pairIndex, index, newSl);
        emit TpUpdated(sender, pairIndex, index, newTp);
        emit SlUpdated(sender, pairIndex, index, newSl);
    }

    // Execute Order By Bot
    function executeOrderByHSTBot(
        StorageInterfaceV5.LimitOrder orderType,
        address trader,
        uint256 pairIndex,
        uint256 index,
        uint256 nftId,
        uint256 nftType
    ) external notDone {
        address sender = msg.sender;

        require(nftType >= 1 && nftType <= 5, "WRONG_NFT_TYPE");
        require(storageT.nfts(nftType - 1).ownerOf(nftId) == sender, "NO_NFT");

        require(block.number >= storageT.nftLastSuccess(nftId) + storageT.nftSuccessTimelock(), "SUCCESS_TIMELOCK");

        StorageInterfaceV5.Trade memory t;

        if (orderType == StorageInterfaceV5.LimitOrder.OPEN) {
            require(storageT.hasOpenLimitOrder(trader, pairIndex, index), "NO_LIMIT");
        } else {
            t = storageT.openTrades(trader, pairIndex, index);

            require(t.leverage > 0, "NO_TRADE");

            if (orderType == StorageInterfaceV5.LimitOrder.LIQ) {
                uint256 liqPrice = getTradeLiquidationPrice(t);

                require(t.sl == 0 || (t.buy ? liqPrice > t.sl : liqPrice < t.sl), "HAS_SL");
            } else {
                require(orderType != StorageInterfaceV5.LimitOrder.SL || t.sl > 0, "NO_SL");
                require(orderType != StorageInterfaceV5.LimitOrder.TP || t.tp > 0, "NO_TP");
            }
        }

        NftRewardsInterfaceV6.TriggeredLimitId memory triggeredLimitId = NftRewardsInterfaceV6.TriggeredLimitId(
            trader,
            pairIndex,
            index,
            orderType
        );

        if (!nftRewards.triggered(triggeredLimitId) || nftRewards.timedOut(triggeredLimitId)) {
            uint256 leveragedPosUsdc;

            if (orderType == StorageInterfaceV5.LimitOrder.OPEN) {
                StorageInterfaceV5.OpenLimitOrder memory l = storageT.getOpenLimitOrder(trader, pairIndex, index);

                leveragedPosUsdc = l.orderInfo.positionSize * l.orderInfo.leverage;

                (uint256 priceImpactP, ) = pairInfos.getTradePriceImpact(
                    0,
                    l.orderInfo.pairIndex,
                    l.orderInfo.buy,
                    leveragedPosUsdc
                );

                require(
                    priceImpactP * l.orderInfo.leverage <= pairInfos.maxNegativePnlOnOpenP(),
                    "PRICE_IMPACT_TOO_HIGH"
                );
            } else {
                leveragedPosUsdc =
                    (t.initialPosToken *
                        storageT.openTradesInfo(trader, pairIndex, index).tokenPriceUsdc *
                        t.leverage) /
                    PRECISION;
            }

            storageT.transferLinkToAggregator(sender, pairIndex, leveragedPosUsdc);

            uint256 orderId = storageT.priceAggregator().getPrice(
                pairIndex,
                orderType == StorageInterfaceV5.LimitOrder.OPEN
                    ? AggregatorInterfaceV6.OrderType.LIMIT_OPEN
                    : AggregatorInterfaceV6.OrderType.LIMIT_CLOSE,
                leveragedPosUsdc
            );

            storageT.storePendingNftOrder(
                StorageInterfaceV5.PendingNftOrder(sender, nftId, trader, pairIndex, index, orderType),
                orderId
            );

            nftRewards.storeFirstToTrigger(triggeredLimitId, sender);
            storageT.priceAggregator().emptyNodeFulFill(
                pairIndex,
                orderId,
                orderType == StorageInterfaceV5.LimitOrder.OPEN
                    ? AggregatorInterfaceV6.OrderType.LIMIT_OPEN
                    : AggregatorInterfaceV6.OrderType.LIMIT_CLOSE
            );
            emit NftOrderInitiated(orderId, sender, trader, pairIndex);
        } else {
            nftRewards.storeTriggerSameBlock(triggeredLimitId, sender);
            emit NftOrderSameBlock(sender, trader, pairIndex);
        }
    }

    // Avoid stack too deep error in executeOrderByHSTBot
    function getTradeLiquidationPrice(StorageInterfaceV5.Trade memory t) private view returns (uint256) {
        return
            pairInfos.getTradeLiquidationPrice(
                t.trader,
                t.pairIndex,
                t.index,
                t.openPrice,
                t.buy,
                (t.initialPosToken * storageT.openTradesInfo(t.trader, t.pairIndex, t.index).tokenPriceUsdc) /
                    PRECISION,
                t.leverage
            );
    }

    // Market timeout
    function openTradeMarketTimeout(uint256 _order) external notDone nonReentrant {
        address sender = msg.sender;

        StorageInterfaceV5.PendingMarketOrder memory o = storageT.reqID_pendingMarketOrder(_order);

        StorageInterfaceV5.Trade memory t = o.trade;

        require(o.block > 0 && block.number >= o.block + marketOrdersTimeout, "WAIT_TIMEOUT");

        require(t.trader == sender, "NOT_YOUR_ORDER");
        require(t.leverage > 0, "WRONG_MARKET_ORDER_TYPE");

        storageT.unregisterPendingMarketOrder(_order, true);
        storageT.transferUsdc(address(storageT), sender, t.positionSizeUsdc);
    }

    // function closeTradeMarketTimeout(uint256 _order) external notDone {
    //   address sender = msg.sender;
    //   StorageInterfaceV5.PendingMarketOrder memory o = storageT.reqID_pendingMarketOrder(_order);
    //   StorageInterfaceV5.Trade memory t = o.trade;

    //   require(o.block > 0 && block.number >= o.block + marketOrdersTimeout, "WAIT_TIMEOUT");

    //   require(t.trader == sender, "NOT_YOUR_ORDER");
    //   require(t.leverage == 0, "WRONG_MARKET_ORDER_TYPE");

    //   storageT.unregisterPendingMarketOrder(_order, false);

    //   (bool success, ) = address(this).delegatecall(
    //     abi.encodeWithSignature("closeTradeMarket(uint256,uint256)", t.pairIndex, t.index)
    //   );

    //   if (!success) {
    //     emit CouldNotCloseTrade(sender, t.pairIndex, t.index);
    //   }
    // }

    function closeTradeMarketTimeout(uint256 _order) external notDone {
        address sender = msg.sender;
        StorageInterfaceV5.PendingMarketOrder memory o = storageT.reqID_pendingMarketOrder(_order);
        StorageInterfaceV5.Trade memory t = o.trade;

        require(o.block > 0 && block.number >= o.block + marketOrdersTimeout, "WAIT_TIMEOUT");

        require(t.trader == sender, "NOT_YOUR_ORDER");
        require(t.leverage == 0, "WRONG_MARKET_ORDER_TYPE");

        storageT.unregisterPendingMarketOrder(_order, false);
        _closeTradeMarket(t.pairIndex, t.index, sender);
    }

    function _closeTradeMarket(uint256 pairIndex, uint256 index, address sender) private {
        StorageInterfaceV5.Trade memory t = storageT.openTrades(sender, pairIndex, index);

        StorageInterfaceV5.TradeInfo memory i = storageT.openTradesInfo(sender, pairIndex, index);

        require(storageT.pendingOrderIdsCount(sender) < storageT.maxPendingMarketOrders(), "MAX_PENDING_ORDERS");

        require(!i.beingMarketClosed, "ALREADY_BEING_CLOSED");
        require(t.leverage > 0, "NO_TRADE");

        uint256 orderId = storageT.priceAggregator().getPrice(
            pairIndex,
            AggregatorInterfaceV6.OrderType.MARKET_CLOSE,
            (t.initialPosToken * i.tokenPriceUsdc * t.leverage) / PRECISION
        );

        storageT.storePendingMarketOrder(
            StorageInterfaceV5.PendingMarketOrder(
                StorageInterfaceV5.Trade(sender, pairIndex, index, 0, 0, 0, false, 0, 0, 0),
                0,
                0,
                0,
                0,
                0
            ),
            orderId,
            false
        );

        storageT.priceAggregator().emptyNodeFulFill(pairIndex, orderId, AggregatorInterfaceV6.OrderType.MARKET_CLOSE);

        emit MarketOrderInitiated(orderId, sender, pairIndex, false);
    }
}
