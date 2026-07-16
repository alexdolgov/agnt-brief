// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { ChainUtils } from "./lib/ChainUtils.sol";

import { IDomfiPairInfos } from "./interfaces/IDomfiPairInfos.sol";
import { IDomfiPriceRouter } from "./interfaces/IDomfiPriceRouter.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiTradingStorage } from "./interfaces/IDomfiTradingStorage.sol";

contract DomfiTradingStorage is IDomfiTradingStorage, Initializable {
    using SafeCast for uint256;
    using SafeERC20 for IERC20;

    IDomfiRegistry public registry;

    address public usdc;

    uint256 public devFees; // PRECISION_6 (USDC)
    uint256 public oracleFees; // PRECISION_6 (USDC)

    uint64 internal constant PRECISION_18 = 1e18; // 18 decimals

    uint32 public totalOpenTradesCount;

    uint8 public maxTradesPerPair;
    uint8 public maxPendingMarketOrders;

    // Trades mappings
    mapping(address trader => mapping(uint16 pairIndex => mapping(uint8 tradeIndex => Trade)))
        public openTrades;

    // Indexes as: [trader:address][pairIndex:uint16][tradeIndex:uint8]
    mapping(address => mapping(uint16 => mapping(uint8 => TradeInfo))) public openTradesInfo;
    mapping(address trader => mapping(uint16 pairIndex => uint32)) public openTradesCount;

    // Limit orders mappings
    mapping(
        address trader => mapping(uint16 pairIndex => mapping(uint8 orderIndex => uint256))
    ) public openLimitOrderIds;

    mapping(address trader => mapping(uint16 pairIndex => uint8)) public openLimitOrdersCount;

    mapping(
        address trader
            => mapping(
            uint16 pairIndex => mapping(uint8 index => mapping(LimitOrder orderType => uint256))
        )
    ) public orderTriggerBlock;

    mapping(uint16 pairIndex => OpenLimitOrder[]) public pairLimitOrders;

    // Pending orders mappings
    mapping(uint256 orderId => PendingMarketOrder) public pendingMarketOrders;
    mapping(uint256 orderId => PendingAutomationOrder) public pendingAutomationOrders;

    mapping(address trader => uint256[]) public pendingOrderIds;
    mapping(address trader => mapping(uint16 pairIndex => uint8)) public pendingMarketOpenCount;
    mapping(address trader => mapping(uint16 pairIndex => uint8)) public pendingMarketCloseCount;

    // List of open trades & limit orders
    mapping(uint16 pairIndex => address[]) public pairTraders;
    mapping(address trader => mapping(uint16 pairIndex => uint256)) public pairTradersId;

    // Current and max open interests for each pair
    // [ notional long (18 dec), notional short (18 dec), $ max (6 dec)]
    mapping(uint16 pairIndex => uint256[3]) public openInterest;

    mapping(uint256 orderId => PendingRemoveCollateral) public pendingRemoveCollaterals;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        IDomfiRegistry registryAddress,
        address usdcAddress,
        uint8 initialMaxTradesPerPair,
        uint8 initialMaxPendingMarketOrders
    ) external initializer {
        if (address(registryAddress) == address(0) || usdcAddress == address(0)) {
            revert NullAddr();
        }

        usdc = usdcAddress;
        registry = registryAddress;
        oracleFees = 0;

        _setMaxTradesPerPair(initialMaxTradesPerPair);
        _setMaxPendingMarketOrders(initialMaxPendingMarketOrders);
    }

    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() internal view {
        if (msg.sender != registry.gov()) revert NotGov(msg.sender);
    }

    modifier onlyTrading() {
        _onlyTrading();
        _;
    }

    function _onlyTrading() internal view {
        if (msg.sender != registry.getContractAddress("trading")) {
            revert NotTrading(msg.sender);
        }
    }

    modifier onlyCallbacks() {
        _onlyCallbacks();
        _;
    }

    function _onlyCallbacks() internal view {
        if (msg.sender != registry.getContractAddress("callbacks")) {
            revert NotCallbacks(msg.sender);
        }
    }

    modifier onlyTradesUpKeep() {
        _onlyTradesUpKeep();
        _;
    }

    function _onlyTradesUpKeep() internal view {
        if (msg.sender != registry.getContractAddress("tradesUpKeep")) {
            revert NotTradesUpKeep(msg.sender);
        }
    }

    modifier onlyRegisteryOrGov() {
        _onlyRegistryOrGov();
        _;
    }

    function _onlyRegistryOrGov() internal view {
        if (msg.sender != registry.getContractAddress("registry") && msg.sender != registry.gov()) {
            revert NotRegistryOrGov(msg.sender);
        }
    }

    modifier onlyManager() {
        _onlyManager();
        _;
    }

    function _onlyManager() internal view {
        if (msg.sender != registry.manager()) revert NotManager(msg.sender);
    }

    modifier onlyCallbacksOrTrading() {
        _onlyCallbacksOrTrading();
        _;
    }

    function _onlyCallbacksOrTrading() internal view {
        if (
            msg.sender != registry.getContractAddress("callbacks")
                && msg.sender != registry.getContractAddress("trading")
        ) revert NotTradingOrCallbacks(msg.sender);
    }

    modifier onlyTradesUpKeepOrTrading() {
        _onlyTradesUpKeepOrTrading();
        _;
    }

    function _onlyTradesUpKeepOrTrading() internal view {
        if (
            msg.sender != registry.getContractAddress("tradesUpKeep")
                && msg.sender != registry.getContractAddress("trading")
        ) revert NotTradesUpKeepOrTrading(msg.sender);
    }

    modifier onlyCallbacksOrTradesUpKeep() {
        _onlyCallbacksOrTradesUpKeep();
        _;
    }

    function _onlyCallbacksOrTradesUpKeep() internal view {
        if (
            msg.sender != registry.getContractAddress("callbacks")
                && msg.sender != registry.getContractAddress("tradesUpKeep")
        ) revert NotCallbacksOrTradesUpKeep(msg.sender);
    }

    modifier onlyCallbacksOrTradesUpKeepOrTrading() {
        _onlyCallbacksOrTradesUpKeepOrTrading();
        _;
    }

    function _onlyCallbacksOrTradesUpKeepOrTrading() internal view {
        if (
            msg.sender != registry.getContractAddress("callbacks")
                && msg.sender != registry.getContractAddress("tradesUpKeep")
                && msg.sender != registry.getContractAddress("trading")
        ) revert NotCallbacksOrTradesUpKeepOrTrading(msg.sender);
    }

    function setMaxTradesPerPair(uint8 newMaxTradesPerPair) external onlyGov {
        _setMaxTradesPerPair(newMaxTradesPerPair);
    }

    function _setMaxTradesPerPair(uint8 newMaxTradesPerPair) private {
        if (newMaxTradesPerPair == 0) {
            revert WrongParams();
        }

        maxTradesPerPair = newMaxTradesPerPair;
        emit MaxTradesPerPairUpdated(newMaxTradesPerPair);
    }

    function setMaxPendingMarketOrders(uint8 newMaxPendingMarketOrders) external onlyGov {
        _setMaxPendingMarketOrders(newMaxPendingMarketOrders);
    }

    function _setMaxPendingMarketOrders(uint8 newMaxPendingMarketOrders) private {
        if (newMaxPendingMarketOrders == 0) {
            revert WrongParams();
        }

        maxPendingMarketOrders = newMaxPendingMarketOrders;
        emit MaxPendingMarketOrdersUpdated(newMaxPendingMarketOrders);
    }

    function setMaxOpenInterest(uint16 pairIndex, uint256 newMaxOpenInterest) public onlyManager {
        openInterest[pairIndex][uint256(OpenInterest.MAX)] = newMaxOpenInterest;
        emit MaxOpenInterestUpdated(pairIndex, newMaxOpenInterest);
    }

    function setMaxOpenInterestArray(
        uint16[] calldata indices,
        uint256[] calldata newMaxOpenInterests
    ) external onlyManager {
        if (indices.length != newMaxOpenInterests.length) {
            revert WrongParams();
        }

        for (uint256 i = 0; i < indices.length; i++) {
            setMaxOpenInterest(indices[i], newMaxOpenInterests[i]);
        }
    }

    function storeTrade(Trade memory trade, TradeInfo memory tradeInfo) external onlyCallbacks {
        trade.index = firstEmptyTradeIndex(trade.trader, trade.pairIndex);
        openTrades[trade.trader][trade.pairIndex][trade.index] = trade;

        ++openTradesCount[trade.trader][trade.pairIndex];
        ++totalOpenTradesCount;

        if (openTradesCount[trade.trader][trade.pairIndex] == 1) {
            pairTradersId[trade.trader][trade.pairIndex] = pairTraders[trade.pairIndex].length;
            pairTraders[trade.pairIndex].push(trade.trader);
        }

        tradeInfo.beingMarketClosed = false;
        openTradesInfo[trade.trader][trade.pairIndex][trade.index] = tradeInfo;

        updateOpenInterest(trade.pairIndex, tradeInfo.oiNotional, true, trade.buy);
    }

    function unregisterTrade(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 collateralToClose
    ) external onlyCallbacks {
        Trade storage t = openTrades[trader][pairIndex][index];
        TradeInfo storage i = openTradesInfo[trader][pairIndex][index];
        if (t.leverage == 0) return;

        uint256 oiNotionalToClose = (i.oiNotional * collateralToClose) / t.collateral;
        updateOpenInterest(pairIndex, oiNotionalToClose, false, t.buy);

        if (collateralToClose != t.collateral) {
            t.collateral = t.collateral - collateralToClose;
            i.oiNotional = i.oiNotional - oiNotionalToClose;
            i.beingMarketClosed = false;
            return;
        }

        delete orderTriggerBlock[trader][pairIndex][index][LimitOrder.LIQ];
        delete orderTriggerBlock[trader][pairIndex][index][LimitOrder.RC];
        delete orderTriggerBlock[trader][pairIndex][index][LimitOrder.SL];
        delete orderTriggerBlock[trader][pairIndex][index][LimitOrder.TP];

        if (openTradesCount[trader][pairIndex] == 1) {
            uint256 id = pairTradersId[trader][pairIndex];
            address[] storage p = pairTraders[pairIndex];

            p[id] = p[p.length - 1];
            pairTradersId[p[id]][pairIndex] = id;

            delete pairTradersId[trader][pairIndex];
            p.pop();
        }

        delete openTrades[trader][pairIndex][index];
        delete openTradesInfo[trader][pairIndex][index];

        --openTradesCount[trader][pairIndex];
        --totalOpenTradesCount;
    }

    function storePendingMarketOrder(PendingMarketOrder calldata order, uint256 id, bool open)
        external
        onlyTrading
    {
        pendingOrderIds[order.trade.trader].push(id);

        pendingMarketOrders[id] = order;
        pendingMarketOrders[id].blockNumber = ChainUtils.getBlockNumber();

        if (open) {
            pendingMarketOpenCount[order.trade.trader][order.trade.pairIndex]++;
        } else {
            pendingMarketCloseCount[order.trade.trader][order.trade.pairIndex]++;
            openTradesInfo[order.trade.trader][order.trade.pairIndex][order.trade.index]
                .beingMarketClosed = true;
        }
    }

    function unregisterPendingMarketOrder(uint256 id, bool open)
        external
        onlyCallbacksOrTradesUpKeepOrTrading
    {
        PendingMarketOrder memory order = pendingMarketOrders[id];
        uint256[] storage orderIds = pendingOrderIds[order.trade.trader];

        for (uint256 i = 0; i < orderIds.length; i++) {
            if (orderIds[i] == id) {
                if (open) {
                    pendingMarketOpenCount[order.trade.trader][order.trade.pairIndex]--;
                } else {
                    pendingMarketCloseCount[order.trade.trader][order.trade.pairIndex]--;
                    openTradesInfo[order.trade.trader][order.trade.pairIndex][order.trade.index]
                        .beingMarketClosed = false;
                }

                orderIds[i] = orderIds[orderIds.length - 1];
                orderIds.pop();

                // slither-disable-next-line costly-loop
                delete pendingMarketOrders[id];
                return;
            }
        }
    }

    function updateOpenInterest(uint16 pairIndex, uint256 oiNotional, bool open, bool long)
        private
    {
        uint256 index = long ? uint256(OpenInterest.LONG) : uint256(OpenInterest.SHORT);
        uint256[3] storage o = openInterest[pairIndex];
        uint256 newOi = open ? o[index] + oiNotional : o[index] - oiNotional;
        o[index] = newOi;

        emit OpenInterestUpdated(pairIndex, index, newOi);
    }

    function storeOpenLimitOrder(OpenLimitOrder calldata o) external onlyTrading {
        pairLimitOrders[o.pairIndex].push(o);
        openLimitOrderIds[o.trader][o.pairIndex][o.index] = pairLimitOrders[o.pairIndex].length - 1;
        openLimitOrdersCount[o.trader][o.pairIndex]++;
    }

    function updateOpenLimitOrder(OpenLimitOrder calldata newLimit) external onlyTrading {
        if (!hasOpenLimitOrder(newLimit.trader, newLimit.pairIndex, newLimit.index)) return;

        OpenLimitOrder storage limit = pairLimitOrders[
            newLimit.pairIndex
        ][openLimitOrderIds[newLimit.trader][newLimit.pairIndex][newLimit.index]];

        IDomfiPriceRouter router = IDomfiPriceRouter(registry.getContractAddress("priceRouter"));
        uint256 latestPublishId = router.getLatestPriceValidator(limit.pairIndex);

        limit.collateral = newLimit.collateral;
        limit.buy = newLimit.buy;
        limit.leverage = newLimit.leverage;
        limit.tp = newLimit.tp;
        limit.sl = newLimit.sl;
        limit.targetPrice = newLimit.targetPrice;
        limit.orderType = newLimit.orderType;
        limit.lastUpdated = latestPublishId;
    }

    function unregisterOpenLimitOrder(address trader, uint16 pairIndex, uint8 index)
        external
        onlyCallbacksOrTrading
    {
        if (!hasOpenLimitOrder(trader, pairIndex, index)) return;

        uint256 id = openLimitOrderIds[trader][pairIndex][index];

        pairLimitOrders[pairIndex][id] =
            pairLimitOrders[pairIndex][pairLimitOrders[pairIndex].length - 1];

        openLimitOrderIds[
            pairLimitOrders[pairIndex][id].trader
        ][pairLimitOrders[pairIndex][id].pairIndex][pairLimitOrders[pairIndex][id].index] = id;

        delete openLimitOrderIds[trader][pairIndex][index];
        pairLimitOrders[pairIndex].pop();

        openLimitOrdersCount[trader][pairIndex]--;
    }

    function setTrigger(address trader, uint16 pairIndex, uint8 index, LimitOrder orderType)
        external
        onlyTradesUpKeepOrTrading
    {
        orderTriggerBlock[trader][pairIndex][index][orderType] = ChainUtils.getBlockNumber();
    }

    function unregisterTrigger(address trader, uint16 pairIndex, uint8 index, LimitOrder orderType)
        external
        onlyCallbacksOrTradesUpKeep
    {
        delete orderTriggerBlock[trader][pairIndex][index][orderType];
    }

    function storePendingAutomationOrder(
        PendingAutomationOrder calldata automationOrder,
        uint256 orderId
    ) external onlyTradesUpKeep {
        pendingAutomationOrders[orderId] = automationOrder;
    }

    function unregisterPendingAutomationOrder(uint256 orderId)
        external
        onlyCallbacksOrTradesUpKeep
    {
        delete pendingAutomationOrders[orderId];
    }

    function updateSl(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint192 newSl,
        uint256 latestPublishId
    ) external onlyTrading {
        _updateSl(trader, pairIndex, index, newSl, latestPublishId);
    }

    function _updateSl(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint192 newSl,
        uint256 latestPublishId
    ) internal {
        Trade storage t = openTrades[trader][pairIndex][index];

        if (t.leverage == 0) {
            return;
        }

        TradeInfo storage i = openTradesInfo[trader][pairIndex][index];

        t.sl = newSl;
        i.slLastUpdated = latestPublishId;
    }

    function updateTp(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint192 newTp,
        uint256 latestPublishId
    ) external onlyTrading {
        _updateTp(trader, pairIndex, index, newTp, latestPublishId);
    }

    function _updateTp(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint192 newTp,
        uint256 latestPublishId
    ) internal {
        Trade storage t = openTrades[trader][pairIndex][index];

        if (t.leverage == 0) {
            return;
        }

        TradeInfo storage i = openTradesInfo[trader][pairIndex][index];

        t.tp = newTp;
        i.tpLastUpdated = latestPublishId;
    }

    function updateTrade(Trade calldata newT) external onlyCallbacksOrTrading {
        Trade storage t = openTrades[newT.trader][newT.pairIndex][newT.index];
        TradeInfo storage i = openTradesInfo[newT.trader][newT.pairIndex][newT.index];

        if (t.leverage == 0) {
            return;
        }

        t.collateral = newT.collateral;
        t.leverage = newT.leverage;

        IDomfiPriceRouter router = IDomfiPriceRouter(registry.getContractAddress("priceRouter"));
        uint256 latestPublishId = router.getLatestPriceValidator(newT.pairIndex);

        if (newT.tp != t.tp) {
            _updateTp(newT.trader, newT.pairIndex, newT.index, newT.tp, latestPublishId);
        }
        if (newT.sl != t.sl) {
            _updateSl(newT.trader, newT.pairIndex, newT.index, newT.sl, latestPublishId);
        }
        if (newT.leverage > i.initialLeverage) {
            i.initialLeverage = newT.leverage;
        }
    }

    function _getOiDelta(uint16 pairIndex, uint256 latestPrice) private view returns (int256) {
        uint256 oiLong = (openInterest[pairIndex][uint256(OpenInterest.LONG)] * latestPrice)
            / PRECISION_18 / 1e12;
        uint256 oiShort = (openInterest[pairIndex][uint256(OpenInterest.SHORT)] * latestPrice)
            / PRECISION_18 / 1e12;
        return oiLong.toInt256() - oiShort.toInt256();
    }

    function handleOpeningFees(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external onlyCallbacks returns (uint256 devFee, uint256 vaultFee) {
        (devFee, vaultFee) = _quoteOpeningFee(
            pairIndex, latestPrice, leveragedPositionSize, leverage, isBuy
        );
        devFees += devFee;
    }

    function quoteOpeningFee(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external view returns (uint256 devFee, uint256 vaultFee) {
        (devFee, vaultFee) = _quoteOpeningFee(
            pairIndex, latestPrice, leveragedPositionSize, leverage, isBuy
        );
    }

    function _quoteOpeningFee(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) internal view returns (uint256 devFee, uint256 vaultFee) {
        int256 oiDelta = _getOiDelta(pairIndex, latestPrice);

        (devFee, vaultFee) = IDomfiPairInfos(registry.getContractAddress("pairInfos"))
            .getOpeningFee(
                pairIndex,
                isBuy ? leveragedPositionSize.toInt256() : -leveragedPositionSize.toInt256(),
                leverage,
                oiDelta
            );
    }

    function handleClosingFees(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external onlyCallbacks returns (uint256 devFee, uint256 vaultFee) {
        (devFee, vaultFee) = _quoteClosingFee(
            pairIndex, latestPrice, leveragedPositionSize, leverage, isBuy
        );
        devFees += devFee;
    }

    function quoteClosingFee(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external view returns (uint256 devFee, uint256 vaultFee) {
        (devFee, vaultFee) = _quoteClosingFee(
            pairIndex, latestPrice, leveragedPositionSize, leverage, isBuy
        );
    }

    function _quoteClosingFee(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) internal view returns (uint256 devFee, uint256 vaultFee) {
        int256 oiDelta = _getOiDelta(pairIndex, latestPrice);

        (devFee, vaultFee) = IDomfiPairInfos(registry.getContractAddress("pairInfos"))
            .getClosingFee(
                pairIndex,
                isBuy ? -leveragedPositionSize.toInt256() : leveragedPositionSize.toInt256(),
                leverage,
                oiDelta
            );
    }

    function claimFees(uint256 amount) external onlyRegisteryOrGov {
        if (amount > devFees) {
            revert InvalidDevFeeClaimAmount();
        }

        if (amount == 0) {
            return;
        }

        devFees -= amount;

        emit DevFeeClaimed(amount);

        SafeERC20.safeTransfer(IERC20(usdc), registry.dev(), amount);
    }

    function handleOracleFee(uint256 amount) external onlyTrading {
        oracleFees += amount;
    }

    function claimOracleFees(uint256 amount) external onlyRegisteryOrGov {
        if (amount > oracleFees) {
            revert InvalidOracleFeeClaimAmount();
        }

        if (amount == 0) {
            return;
        }

        oracleFees -= amount;

        emit OracleFeeClaimed(amount);

        SafeERC20.safeTransfer(IERC20(usdc), registry.dev(), amount);
    }

    function transferUsdc(address from, address to, uint256 amount)
        external
        onlyCallbacksOrTradesUpKeepOrTrading
    {
        if (from == address(this)) {
            SafeERC20.safeTransfer(IERC20(usdc), to, amount);
        } else {
            // slither-disable-next-line arbitrary-send-erc20
            SafeERC20.safeTransferFrom(IERC20(usdc), from, to, amount);
        }
    }

    function firstEmptyTradeIndex(address trader, uint16 pairIndex) public view returns (uint8) {
        for (uint8 i = 0; i < maxTradesPerPair; i++) {
            if (openTrades[trader][pairIndex][i].leverage == 0) {
                return i;
            }
        }
        revert NotEmptyIndex();
    }

    function firstEmptyOpenLimitIndex(address trader, uint16 pairIndex)
        external
        view
        returns (uint8)
    {
        for (uint8 i = 0; i < maxTradesPerPair; i++) {
            if (!hasOpenLimitOrder(trader, pairIndex, i)) {
                return i;
            }
        }
        revert NotEmptyIndex();
    }

    function hasOpenLimitOrder(address trader, uint16 pairIndex, uint8 index)
        public
        view
        returns (bool)
    {
        if (pairLimitOrders[pairIndex].length == 0) return false;

        OpenLimitOrder storage o =
            pairLimitOrders[pairIndex][openLimitOrderIds[trader][pairIndex][index]];

        return o.trader == trader && o.pairIndex == pairIndex && o.index == index;
    }

    function pairTradersArray(uint16 pairIndex) external view returns (address[] memory) {
        return pairTraders[pairIndex];
    }

    function pairTradersCount(uint16 pairIndex) external view returns (uint256) {
        return pairTraders[pairIndex].length;
    }

    function getPendingOrderIds(address trader) external view returns (uint256[] memory) {
        return pendingOrderIds[trader];
    }

    function pendingOrderIdsCount(address trader) external view returns (uint256) {
        return pendingOrderIds[trader].length;
    }

    function getOpenLimitOrder(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (OpenLimitOrder memory)
    {
        if (!hasOpenLimitOrder(trader, pairIndex, index)) {
            revert NoOpenLimitOrder(trader, pairIndex, index);
        }

        return pairLimitOrders[pairIndex][openLimitOrderIds[trader][pairIndex][index]];
    }

    function getOpenLimitOrderByIndex(uint16 pairIndex, uint256 index)
        external
        view
        returns (OpenLimitOrder memory)
    {
        if (index >= pairLimitOrders[pairIndex].length) {
            revert WrongParams();
        }
        return pairLimitOrders[pairIndex][index];
    }

    function getOpenLimitOrders(uint16 pairIndex) external view returns (OpenLimitOrder[] memory) {
        return pairLimitOrders[pairIndex];
    }

    function getOpenTrade(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (Trade memory)
    {
        return openTrades[trader][pairIndex][index];
    }

    function getOpenTradeInfo(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (TradeInfo memory)
    {
        return openTradesInfo[trader][pairIndex][index];
    }

    function getPairOpenInterestInfo(uint16 pairIndex)
        external
        view
        returns (uint256, uint256, uint256, uint256, int256)
    {
        uint256 oiLong = openInterest[pairIndex][uint256(OpenInterest.LONG)];
        uint256 oiShort = openInterest[pairIndex][uint256(OpenInterest.SHORT)];
        uint256 oiMax = openInterest[pairIndex][uint256(OpenInterest.MAX)];

        uint256 totalOi = oiLong + oiShort;
        int256 skew = int256(oiLong) - int256(oiShort);

        return (oiLong, oiShort, oiMax, totalOi, skew);
    }

    function totalOpenLimitOrders(uint16 pairIndex) external view returns (uint256) {
        return pairLimitOrders[pairIndex].length;
    }

    function storePendingRemoveCollateral(PendingRemoveCollateral calldata request, uint256 orderId)
        external
        onlyTrading
    {
        pendingRemoveCollaterals[orderId] = request;
    }

    function getPendingRemoveCollateral(uint256 orderId)
        external
        view
        returns (PendingRemoveCollateral memory)
    {
        return pendingRemoveCollaterals[orderId];
    }

    function unregisterPendingRemoveCollateral(uint256 orderId)
        external
        onlyCallbacksOrTradesUpKeep
    {
        delete pendingRemoveCollaterals[orderId];
    }
}
