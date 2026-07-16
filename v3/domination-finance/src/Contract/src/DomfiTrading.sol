// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

import { Delegatable } from "./abstract/Delegatable.sol";
import { ChainUtils } from "./lib/ChainUtils.sol";

import { IDomfiTrading } from "./interfaces/IDomfiTrading.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiTradingCallbacks } from "./interfaces/IDomfiTradingCallbacks.sol";
import { IDomfiTradingStorage } from "./interfaces/IDomfiTradingStorage.sol";
import { IDomfiPairsStorage } from "./interfaces/IDomfiPairsStorage.sol";
import { IDomfiPriceRouter } from "./interfaces/IDomfiPriceRouter.sol";
import { IDomfiPriceUpKeep } from "./interfaces/IDomfiPriceUpKeep.sol";

contract DomfiTrading is IDomfiTrading, Delegatable, Initializable {
    using SafeCast for uint256;
    using SafeCast for uint16;
    using Math for uint256;

    // Contracts (constant)
    IDomfiRegistry public registry;

    // Params (constant)
    uint32 internal constant PRECISION_6 = 1e6;
    uint16 internal constant MAX_GAIN_P = 900;
    uint16 internal constant MAX_SLIPPAGE_P = 10000;
    uint16 internal constant MAX_CLOSE_P = 100e2;

    // Params (adjustable)
    uint256 public maxAllowedCollateral; // PRECISION_6
    uint16 public marketOrdersTimeout; // block (eg. 30)
    uint16 public triggerTimeout; // block (eg. 30)

    // State
    bool public isPaused; // Prevent opening new trades
    bool public isDone; // Prevent any interaction with the contract

    // Delegation permit nonces
    mapping(address => uint256) public delegatableNonces;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        IDomfiRegistry registryAddress,
        uint256 initialMaxAllowedCollateral,
        uint16 initialMarketOrdersTimeout,
        uint16 initialTriggerTimeout
    ) external initializer {
        if (address(registryAddress) == address(0)) {
            revert WrongParams();
        }

        registry = registryAddress;
        _setTriggerTimeout(initialTriggerTimeout);
        _setMaxAllowedCollateral(initialMaxAllowedCollateral);
        _setMarketOrdersTimeout(initialMarketOrdersTimeout);
    }

    modifier notDone() {
        isNotDone();
        _;
    }

    function isNotDone() private view {
        if (isDone) {
            revert IsDone();
        }
    }

    modifier notPaused() {
        isNotPaused();
        _;
    }

    modifier pairIndexListed(uint16 pairIndex) {
        isPairIndexListed(pairIndex);
        _;
    }

    function isPairIndexListed(uint16 pairIndex) private view {
        if (!IDomfiPairsStorage(registry.getContractAddress("pairsStorage"))
                .isPairIndexListed(pairIndex)) {
            revert PairNotListed(pairIndex);
        }
    }

    function isNotPaused() private view {
        if (isPaused) revert IsPaused();
    }

    function setMaxAllowedCollateral(uint256 newMaxAllowedCollateral) external {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
        _setMaxAllowedCollateral(newMaxAllowedCollateral);
    }

    function _setMaxAllowedCollateral(uint256 newMaxAllowedCollateral) private {
        if (newMaxAllowedCollateral == 0) {
            revert WrongParams();
        }
        maxAllowedCollateral = newMaxAllowedCollateral;

        emit MaxAllowedCollateralUpdated(newMaxAllowedCollateral);
    }

    function setMarketOrdersTimeout(uint16 newMarketOrdersTimeout) external {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
        _setMarketOrdersTimeout(newMarketOrdersTimeout);
    }

    function _setMarketOrdersTimeout(uint16 newMarketOrdersTimeout) private {
        if (newMarketOrdersTimeout == 0) {
            revert WrongParams();
        }

        marketOrdersTimeout = newMarketOrdersTimeout;
        emit MarketOrdersTimeoutUpdated(marketOrdersTimeout);
    }

    function setTriggerTimeout(uint16 newTriggerTimeout) external {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
        _setTriggerTimeout(newTriggerTimeout);
    }

    function _setTriggerTimeout(uint16 newTriggerTimeout) private {
        if (newTriggerTimeout == 0) {
            revert WrongParams();
        }

        triggerTimeout = newTriggerTimeout;
        emit TriggerTimeoutUpdated(triggerTimeout);
    }

    function pause() external {
        if (msg.sender != registry.manager()) {
            revert NotManager(msg.sender);
        }
        isPaused = !isPaused;
        emit Paused(isPaused);
    }

    function done() external {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
        isDone = !isDone;
        emit Done(isDone);
    }

    // slither-disable-next-line cyclomatic-complexity
    function openTrade(
        IDomfiTradingStorage.Trade calldata t,
        IDomfiTradingStorage.OpenOrderType orderType,
        uint256 slippageP // for market orders only
    ) external notDone notPaused pairIndexListed(t.pairIndex) {
        if (slippageP == 0 || slippageP >= MAX_SLIPPAGE_P || t.openPrice == 0) {
            revert WrongParams();
        }

        address sender = msgSender();

        IDomfiPairsStorage pairsStorage =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage"));

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        uint32 totalOpenUserTrades = tradingStorage.openTradesCount(sender, t.pairIndex)
            + tradingStorage.pendingMarketOpenCount(sender, t.pairIndex)
            + tradingStorage.openLimitOrdersCount(sender, t.pairIndex);

        if (totalOpenUserTrades >= tradingStorage.maxTradesPerPair()) {
            revert MaxTradesPerPairReached(sender, t.pairIndex);
        }

        if (tradingStorage.pendingOrderIdsCount(sender) >= tradingStorage.maxPendingMarketOrders())
        {
            revert MaxPendingMarketOrdersReached(sender);
        }

        if (
            t.leverage == 0 || t.leverage < pairsStorage.pairMinLeverage(t.pairIndex)
                || t.leverage > pairsStorage.pairMaxLeverage(t.pairIndex)
        ) revert WrongLeverage(t.leverage);

        if (t.collateral > maxAllowedCollateral) {
            revert AboveMaxAllowedCollateral();
        }

        if ((t.collateral * t.leverage) / 100 < pairsStorage.pairMinLevPos(t.pairIndex)) {
            revert BelowMinLevPos();
        }

        if (t.tp != 0 && (t.buy ? t.tp <= t.openPrice : t.tp >= t.openPrice)) {
            revert WrongTP();
        }

        if (t.sl != 0 && (t.buy ? t.sl >= t.openPrice : t.sl <= t.openPrice)) {
            revert WrongSL();
        }

        uint256 oracleFee = pairsStorage.pairOracleFee(t.pairIndex);

        tradingStorage.transferUsdc(sender, address(tradingStorage), t.collateral + oracleFee);
        tradingStorage.handleOracleFee(oracleFee);
        emit OracleFeeCharged(sender, t.pairIndex, oracleFee);

        if (orderType != IDomfiTradingStorage.OpenOrderType.MARKET) {
            uint8 index = tradingStorage.firstEmptyOpenLimitIndex(sender, t.pairIndex);

            IDomfiPriceRouter router = IDomfiPriceRouter(registry.getContractAddress("priceRouter"));
            uint256 latestPublishId = router.getLatestPriceValidator(t.pairIndex);
            uint256 blockNum = ChainUtils.getBlockNumber();

            IDomfiTradingStorage.OpenLimitOrder memory order = IDomfiTradingStorage.OpenLimitOrder(
                sender,
                t.collateral,
                latestPublishId,
                blockNum,
                t.openPrice,
                t.tp,
                t.sl,
                t.leverage,
                t.pairIndex,
                index,
                t.buy,
                orderType
            );

            tradingStorage.storeOpenLimitOrder(order);

            emit OpenLimitPlaced(sender, t.pairIndex, index, order);

            // request new price without incrementing the `orderId` and storing the order
            IDomfiPriceRouter(registry.getContractAddress("priceRouter"))
                .getPriceNoIncrementNoStore(t.pairIndex);
        } else {
            uint256 orderId = IDomfiPriceRouter(registry.getContractAddress("priceRouter"))
                .getPriceLatest(t.pairIndex, IDomfiPriceUpKeep.OrderType.MARKET_OPEN);

            tradingStorage.storePendingMarketOrder(
                IDomfiTradingStorage.PendingMarketOrder(
                    0,
                    t.openPrice,
                    slippageP.toUint32(),
                    IDomfiTradingStorage.Trade(
                        t.collateral, 0, t.tp, t.sl, sender, t.leverage, t.pairIndex, 0, t.buy
                    ),
                    0
                ),
                orderId,
                true
            );

            emit MarketOpenOrderInitiated(orderId, sender, t.pairIndex);
        }
    }

    function closeTradeMarket(
        uint16 pairIndex,
        uint8 index,
        uint16 closeP,
        uint256 slippageP,
        uint192 wantedPrice
    ) external notDone {
        if (slippageP == 0 || slippageP >= MAX_SLIPPAGE_P || wantedPrice == 0) {
            revert WrongParams();
        }

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        IDomfiPairsStorage pairsStorage =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage"));

        address sender = msgSender();

        if (closeP > MAX_CLOSE_P) {
            revert WrongParams();
        }

        if (closeP == 0) {
            closeP = MAX_CLOSE_P;
        }

        IDomfiTradingStorage.Trade memory t = tradingStorage.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }

        if (tradingStorage.pendingOrderIdsCount(sender) >= tradingStorage.maxPendingMarketOrders())
        {
            revert MaxPendingMarketOrdersReached(sender);
        }

        if (!checkNoPendingTriggers(tradingStorage, sender, pairIndex, index)) {
            revert TriggerPending(sender, pairIndex, index);
        }

        IDomfiTradingStorage.TradeInfo memory i =
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index);

        if (i.beingMarketClosed) {
            revert AlreadyMarketClosed(sender, t.pairIndex, t.index);
        }

        uint256 remainingCollateral = (t.collateral * (MAX_CLOSE_P - closeP)) / MAX_CLOSE_P;

        // Check if remaining position remains above minimum
        if (
            // slither-disable-next-line divide-before-multiply
            closeP != MAX_CLOSE_P
                && (remainingCollateral * t.leverage) / 100 < pairsStorage.pairMinLevPos(pairIndex)
        ) {
            revert BelowMinLevPos();
        }

        uint256 oracleFee = pairsStorage.pairOracleFee(t.pairIndex);

        tradingStorage.transferUsdc(sender, address(tradingStorage), oracleFee);
        tradingStorage.handleOracleFee(oracleFee);
        emit OracleFeeCharged(sender, t.pairIndex, oracleFee);

        uint256 orderId = IDomfiPriceRouter(registry.getContractAddress("priceRouter"))
            .getPriceLatest(pairIndex, IDomfiPriceUpKeep.OrderType.MARKET_CLOSE);

        tradingStorage.storePendingMarketOrder(
            IDomfiTradingStorage.PendingMarketOrder(
                0,
                wantedPrice,
                slippageP.toUint32(),
                IDomfiTradingStorage.Trade(0, 0, 0, 0, sender, 0, pairIndex, index, t.buy),
                closeP
            ),
            orderId,
            false
        );

        emit MarketCloseOrderInitiated(orderId, i.tradeId, sender, pairIndex, closeP);
    }

    function updateOpenLimitOrder(
        uint16 pairIndex,
        uint8 index,
        uint192 price,
        uint192 tp,
        uint192 sl
    ) external notDone {
        address sender = msgSender();

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        if (!tradingStorage.hasOpenLimitOrder(sender, pairIndex, index)) {
            revert NoLimitFound(sender, pairIndex, index);
        }

        IDomfiTradingStorage.OpenLimitOrder memory o =
            tradingStorage.getOpenLimitOrder(sender, pairIndex, index);

        if (price == 0) {
            revert WrongParams();
        }

        if (tp != 0 && (o.buy ? tp <= price : tp >= price)) {
            revert WrongTP();
        }

        if (sl != 0 && (o.buy ? sl >= price : sl <= price)) {
            revert WrongSL();
        }

        if (!checkNoPendingTrigger(
                tradingStorage, sender, pairIndex, index, IDomfiTradingStorage.LimitOrder.OPEN
            )) {
            revert TriggerPending(sender, pairIndex, index);
        }

        o.targetPrice = price;
        o.tp = tp;
        o.sl = sl;

        tradingStorage.updateOpenLimitOrder(o);

        emit OpenLimitUpdated(sender, pairIndex, index, price, tp, sl);
    }

    function cancelOpenLimitOrder(uint16 pairIndex, uint8 index) external notDone {
        address sender = msgSender();

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        if (!tradingStorage.hasOpenLimitOrder(sender, pairIndex, index)) {
            revert NoLimitFound(sender, pairIndex, index);
        }

        if (!checkNoPendingTrigger(
                tradingStorage, sender, pairIndex, index, IDomfiTradingStorage.LimitOrder.OPEN
            )) {
            revert TriggerPending(sender, pairIndex, index);
        }

        IDomfiTradingStorage.OpenLimitOrder memory o =
            tradingStorage.getOpenLimitOrder(sender, pairIndex, index);

        tradingStorage.unregisterOpenLimitOrder(sender, pairIndex, index);
        tradingStorage.transferUsdc(address(tradingStorage), sender, o.collateral);

        emit OpenLimitCanceled(sender, pairIndex, index);
    }

    // slither-disable-next-line cyclomatic-complexity
    function updateTp(uint16 pairIndex, uint8 index, uint192 newTp) external notDone {
        address sender = msgSender();

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        if (
            !checkNoPendingTrigger(
                    tradingStorage, sender, pairIndex, index, IDomfiTradingStorage.LimitOrder.TP
                )
                || !checkNoPendingTrigger(
                    tradingStorage, sender, pairIndex, index, IDomfiTradingStorage.LimitOrder.RC
                )
        ) {
            revert TriggerPending(sender, pairIndex, index);
        }

        IDomfiTradingStorage.Trade memory t = tradingStorage.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }

        IDomfiTradingStorage.TradeInfo memory i =
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index);

        if (i.beingMarketClosed) {
            revert AlreadyMarketClosed(sender, t.pairIndex, t.index);
        }

        uint256 maxTpDist = (t.openPrice * MAX_GAIN_P)
            / (i.initialLeverage > t.leverage ? i.initialLeverage : t.leverage);

        if (newTp != 0) {
            if (t.buy) {
                if (newTp > t.openPrice + maxTpDist) {
                    revert WrongTP();
                }
            } else {
                if (maxTpDist < t.openPrice) {
                    if (newTp < t.openPrice - maxTpDist) {
                        revert WrongTP();
                    }
                }
            }
        }

        IDomfiPairsStorage pairsStorage =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage"));

        uint256 oracleFee = pairsStorage.pairOracleFee(t.pairIndex);

        tradingStorage.transferUsdc(sender, address(tradingStorage), oracleFee);
        tradingStorage.handleOracleFee(oracleFee);
        emit OracleFeeCharged(sender, t.pairIndex, oracleFee);

        IDomfiPriceRouter router = IDomfiPriceRouter(registry.getContractAddress("priceRouter"));
        uint256 latestPublishId = router.getLatestPriceValidator(pairIndex);

        tradingStorage.updateTp(sender, pairIndex, index, newTp, latestPublishId);

        emit TpUpdated(
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index).tradeId,
            sender,
            pairIndex,
            index,
            newTp
        );
    }

    function updateSl(uint16 pairIndex, uint8 index, uint192 newSl) external notDone {
        address sender = msgSender();

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        if (!checkNoPendingTrigger(
                tradingStorage, sender, pairIndex, index, IDomfiTradingStorage.LimitOrder.SL
            )) {
            revert TriggerPending(sender, pairIndex, index);
        }

        if (!checkNoPendingTrigger(
                tradingStorage, sender, pairIndex, index, IDomfiTradingStorage.LimitOrder.RC
            )) {
            revert TriggerPending(sender, pairIndex, index);
        }

        IDomfiTradingStorage.Trade memory t = tradingStorage.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }

        IDomfiTradingStorage.TradeInfo memory i =
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index);

        if (i.beingMarketClosed) {
            revert AlreadyMarketClosed(sender, t.pairIndex, t.index);
        }

        uint8 maxSlP = IDomfiTradingCallbacks(registry.getContractAddress("callbacks")).maxSlP();
        uint256 maxSlDist = (t.openPrice * maxSlP) / t.leverage;

        if (newSl != 0) {
            if (t.buy) {
                if (newSl < t.openPrice - maxSlDist) {
                    revert WrongSL();
                }
            } else {
                if (newSl > t.openPrice + maxSlDist) {
                    revert WrongSL();
                }
            }
        }

        IDomfiPairsStorage pairsStorage =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage"));

        uint256 oracleFee = pairsStorage.pairOracleFee(t.pairIndex);

        tradingStorage.transferUsdc(sender, address(tradingStorage), oracleFee);
        tradingStorage.handleOracleFee(oracleFee);
        emit OracleFeeCharged(sender, t.pairIndex, oracleFee);

        IDomfiPriceRouter router = IDomfiPriceRouter(registry.getContractAddress("priceRouter"));
        uint256 latestPublishId = router.getLatestPriceValidator(pairIndex);

        tradingStorage.updateSl(sender, pairIndex, index, newSl, latestPublishId);

        emit SlUpdated(
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index).tradeId,
            sender,
            pairIndex,
            index,
            newSl
        );
    }

    function topUpCollateral(uint16 pairIndex, uint8 index, uint256 topUpAmount) external notDone {
        address sender = msgSender();

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        IDomfiPairsStorage pairsStorage =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage"));

        IDomfiTradingStorage.Trade memory t = tradingStorage.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }

        IDomfiTradingStorage.TradeInfo memory i =
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index);

        if (i.beingMarketClosed) {
            revert AlreadyMarketClosed(sender, t.pairIndex, t.index);
        }

        if (topUpAmount == 0) {
            revert WrongParams();
        }

        if (!checkNoPendingTriggers(tradingStorage, t.trader, t.pairIndex, t.index)) {
            revert TriggerPending(t.trader, t.pairIndex, t.index);
        }

        uint256 tradeSize = t.collateral.mulDiv(t.leverage, 100, Math.Rounding.Ceil);
        uint256 newCollateral = t.collateral + topUpAmount;

        uint256 leverageNumerator = tradeSize * PRECISION_6;
        uint256 leverageDenominator = newCollateral * 1e4;

        uint32 newLeverage = (leverageNumerator / leverageDenominator).toUint32();

        if (newLeverage >= t.leverage || newLeverage < pairsStorage.pairMinLeverage(t.pairIndex)) {
            revert WrongLeverage(newLeverage);
        }

        // check for precision loss in the `newLeverage` calculation
        uint256 remainder = leverageNumerator % leverageDenominator;

        if (remainder != 0) {
            // increment leverage to negate truncation
            newLeverage += 1;
            newCollateral = tradeSize * 1e2 / newLeverage;

            if (newCollateral > t.collateral) {
                topUpAmount = newCollateral - t.collateral;
            } else {
                revert WrongParams();
            }
        }

        if (
            pairsStorage.groupCollateral(pairIndex, t.buy) + topUpAmount
                > pairsStorage.groupMaxCollateral(pairIndex)
        ) {
            revert ExposureLimits();
        }

        if (newCollateral > maxAllowedCollateral) {
            revert AboveMaxAllowedCollateral();
        }

        if (newLeverage >= t.leverage || newLeverage < pairsStorage.pairMinLeverage(t.pairIndex)) {
            revert WrongLeverage(newLeverage);
        }

        t.leverage = newLeverage;
        t.collateral = newCollateral;

        tradingStorage.transferUsdc(sender, address(tradingStorage), topUpAmount);

        tradingStorage.updateTrade(t);
        pairsStorage.updateGroupCollateral(t.pairIndex, topUpAmount, t.buy, true);

        emit TopUpCollateralExecuted(
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index).tradeId,
            sender,
            pairIndex,
            topUpAmount,
            t.leverage
        );
    }

    function removeCollateral(uint16 pairIndex, uint8 index, uint256 removeAmount)
        external
        notDone
    {
        address sender = msgSender();

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        IDomfiPairsStorage pairsStorage =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage"));

        IDomfiTradingStorage.Trade memory t = tradingStorage.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }

        IDomfiTradingStorage.TradeInfo memory i =
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index);

        if (i.beingMarketClosed) {
            revert AlreadyMarketClosed(sender, t.pairIndex, t.index);
        }

        if (removeAmount == 0 || removeAmount >= t.collateral) {
            revert WrongParams();
        }

        if (!checkNoPendingTriggers(tradingStorage, t.trader, t.pairIndex, t.index)) {
            revert TriggerPending(t.trader, t.pairIndex, t.index);
        }

        uint256 tradeSize = t.collateral.mulDiv(t.leverage, 100, Math.Rounding.Ceil);
        uint256 newCollateral = t.collateral - removeAmount;

        uint256 leverageNumerator = tradeSize * PRECISION_6;
        uint256 leverageDenominator = newCollateral * 1e4;

        uint32 newLeverage = (leverageNumerator / leverageDenominator).toUint32();

        if (newLeverage <= t.leverage || newLeverage > pairsStorage.pairMaxLeverage(t.pairIndex)) {
            revert WrongLeverage(newLeverage);
        }

        // check for precision loss in the `newLeverage` calculation
        uint256 remainder = leverageNumerator % leverageDenominator;

        if (remainder != 0) {
            newCollateral = tradeSize * 1e2 / newLeverage;

            if (newCollateral < t.collateral) {
                removeAmount = t.collateral - newCollateral;
            } else {
                revert WrongParams();
            }
        }

        uint256 oracleFee = pairsStorage.pairOracleFee(t.pairIndex);

        tradingStorage.transferUsdc(sender, address(tradingStorage), oracleFee);
        tradingStorage.handleOracleFee(oracleFee);
        emit OracleFeeCharged(sender, t.pairIndex, oracleFee);

        uint256 orderId = IDomfiPriceRouter(registry.getContractAddress("priceRouter"))
            .getPriceLatest(pairIndex, IDomfiPriceUpKeep.OrderType.RC);

        tradingStorage.storePendingRemoveCollateral(
            IDomfiTradingStorage.PendingRemoveCollateral(removeAmount, sender, pairIndex, index),
            orderId
        );

        tradingStorage.setTrigger(t.trader, pairIndex, index, IDomfiTradingStorage.LimitOrder.RC);

        emit RemoveCollateralInitiated(
            tradingStorage.getOpenTradeInfo(sender, pairIndex, index).tradeId,
            orderId,
            sender,
            pairIndex,
            removeAmount
        );
    }

    function handleTradeMarketTimeout(uint256 orderId) external notDone {
        address sender = msgSender();

        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        (
            uint256 blockNumber,
            uint192 wantedPrice,
            uint32 slippageP,
            IDomfiTradingStorage.Trade memory trade,
            uint16 percentage
        ) = tradingStorage.pendingMarketOrders(orderId);

        if (trade.trader == address(0)) {
            revert NoTradeToTimeoutFound(orderId);
        }

        if (trade.trader != sender) {
            revert NotYourOrder(orderId, trade.trader);
        }

        if (blockNumber == 0 || ChainUtils.getBlockNumber() < blockNumber + marketOrdersTimeout) {
            revert WaitTimeout(orderId);
        }

        // market open percentage is always zero; market close percentage is `1` to `MAX_CLOSE_P`
        bool isMarketOpen = percentage == 0;

        tradingStorage.unregisterPendingMarketOrder(orderId, isMarketOpen);

        if (!isMarketOpen) {
            emit MarketCloseTimeoutExecuted(
                orderId,
                tradingStorage.getOpenTradeInfo(sender, trade.pairIndex, trade.index).tradeId,
                IDomfiTradingStorage.PendingMarketOrder({
                    blockNumber: blockNumber,
                    wantedPrice: wantedPrice,
                    slippageP: slippageP,
                    trade: trade,
                    percentage: percentage
                })
            );
        } else {
            tradingStorage.transferUsdc(address(tradingStorage), trade.trader, trade.collateral);
            emit MarketOpenTimeoutExecuted(
                orderId,
                IDomfiTradingStorage.PendingMarketOrder({
                    blockNumber: blockNumber,
                    wantedPrice: wantedPrice,
                    slippageP: slippageP,
                    trade: trade,
                    percentage: percentage
                })
            );
        }
    }

    function checkNoPendingTrigger(
        IDomfiTradingStorage tradingStorage,
        address trader,
        uint16 pairIndex,
        uint8 index,
        IDomfiTradingStorage.LimitOrder orderType
    ) public view returns (bool) {
        uint256 triggerBlock = tradingStorage.orderTriggerBlock(trader, pairIndex, index, orderType);

        if (
            triggerBlock == 0
                || (triggerBlock > 0
                    && ChainUtils.getBlockNumber() - triggerBlock >= triggerTimeout)
        ) {
            return true;
        }
        return false;
    }

    function checkNoPendingTriggers(
        IDomfiTradingStorage tradingStorage,
        address trader,
        uint16 pairIndex,
        uint8 index
    ) public view returns (bool) {
        return checkNoPendingTrigger(
            tradingStorage, trader, pairIndex, index, IDomfiTradingStorage.LimitOrder.TP
        )
            && checkNoPendingTrigger(
            tradingStorage, trader, pairIndex, index, IDomfiTradingStorage.LimitOrder.SL
        )
            && checkNoPendingTrigger(
            tradingStorage, trader, pairIndex, index, IDomfiTradingStorage.LimitOrder.LIQ
        )
            && checkNoPendingTrigger(
            tradingStorage, trader, pairIndex, index, IDomfiTradingStorage.LimitOrder.RC
        );
    }

    function _incrementDelegatableNonce(address delegator) internal override {
        delegatableNonces[delegator]++;
    }

    function _getDelegatableNonce(address delegator) internal view override returns (uint256) {
        return delegatableNonces[delegator];
    }

    function _isDelegatedActionAllowed(bytes4 selector) internal pure override returns (bool) {
        return selector == this.openTrade.selector || selector == this.closeTradeMarket.selector
            || selector == this.updateOpenLimitOrder.selector
            || selector == this.cancelOpenLimitOrder.selector || selector == this.updateTp.selector
            || selector == this.updateSl.selector || selector == this.topUpCollateral.selector
            || selector == this.removeCollateral.selector
            || selector == this.handleTradeMarketTimeout.selector;
    }
}
