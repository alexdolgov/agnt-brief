// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { SafeCast } from "@openzeppelin/contracts/utils/math/SafeCast.sol";

import { ChainUtils } from "./lib/ChainUtils.sol";

import { IDomfiTrading } from "./interfaces/IDomfiTrading.sol";
import { IDomfiTradingStorage } from "./interfaces/IDomfiTradingStorage.sol";
import { IDomfiRegistry } from "./interfaces/IDomfiRegistry.sol";
import { IDomfiForwarded } from "./interfaces/IDomfiForwarded.sol";
import { IDomfiTradesUpKeep } from "./interfaces/IDomfiTradesUpKeep.sol";
import { IDomfiAutomationCompatible } from "./interfaces/IDomfiAutomationCompatible.sol";
import { IDomfiPairsStorage } from "./interfaces/IDomfiPairsStorage.sol";
import { IDomfiPriceRouter } from "./interfaces/IDomfiPriceRouter.sol";
import { IDomfiPriceUpKeep } from "./interfaces/IDomfiPriceUpKeep.sol";

contract DomfiTradesUpKeep is
    IDomfiTradesUpKeep,
    IDomfiAutomationCompatible,
    IDomfiForwarded,
    Initializable
{
    using SafeCast for uint256;

    IDomfiRegistry public registry;

    mapping(address forwarder => bool) public isForwarder;

    modifier isDone() {
        _isDone();
        _;
    }

    function _isDone() private view {
        if (IDomfiTrading(registry.getContractAddress("trading")).isDone()) {
            revert IsDone();
        }
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

    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() private view {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
    }

    constructor() {
        _disableInitializers();
    }

    function initialize(IDomfiRegistry registryAddress) external initializer {
        if (address(registryAddress) == address(0)) revert WrongParams();
        registry = registryAddress;
    }

    function performUpkeep(bytes calldata performData) external {
        if (!isForwarder[msg.sender]) {
            revert NotForwarder(msg.sender);
        }

        (bytes memory data, uint256 validator, bool execute) =
            abi.decode(performData, (bytes, uint256, bool));

        if (execute) {
            SimplifiedTradeId[] memory orders = abi.decode(data, (SimplifiedTradeId[]));
            processAutomationOrders(orders, validator);
        } else {
            RemovePendingOrders[] memory orders = abi.decode(data, (RemovePendingOrders[]));
            removePendingOrders(orders);
        }
    }

    /// @dev validator is either `timestamp` or `publishId`
    function processAutomationOrders(SimplifiedTradeId[] memory orders, uint256 validator)
        internal
    {
        for (uint256 i = 0; i < orders.length; i++) {
            if (orders[i].trader != address(0)) {
                (AutomationOrderStatus status, uint256 orderId) = executeAutomationOrder(
                    orders[i].limitOrder,
                    orders[i].trader,
                    orders[i].pairId.toUint16(),
                    orders[i].index.toUint8(),
                    validator
                );
                emit AutomationExecutePerformed(
                    orderId, orders[i].limitOrder, orders[i].pairId, status, orders[i].trader
                );
            }
        }
    }

    /// @dev the `*.Initiated` family of orders *always* produces an orderId that should and will be
    /// used to remove pending orders
    function removePendingOrders(RemovePendingOrders[] memory orders) internal {
        for (uint256 i = 0; i < orders.length; i++) {
            if (orders[i].trader != address(0)) {
                IDomfiTradingStorage.OpenOrderType orderType = orders[i].orderType;

                AutomationOrderStatus status;
                if (orderType == IDomfiTradingStorage.OpenOrderType.MARKET) {
                    status = removePendingMarketOrder(orders[i].orderId);
                } else if (orderType == IDomfiTradingStorage.OpenOrderType.RC) {
                    status = removePendingRemoveCollateral(orders[i].orderId);
                } else {
                    // `LIMIT` and `STOP` are handled the same way
                    status = removePendingAutomationOrder(orders[i].orderId);
                }

                emit AutomationRemovePerformed(
                    orders[i].orderId, orderType, orders[i].pairId, status, orders[i].trader
                );
            }
        }
    }

    /// @dev if automation order status is not `SUCCESS`, `orderId` is 0 (no-op)
    function executeAutomationOrder(
        IDomfiTradingStorage.LimitOrder orderType,
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 validator
    ) internal isDone pairIndexListed(pairIndex) returns (AutomationOrderStatus, uint256 orderId) {
        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        if (orderType == IDomfiTradingStorage.LimitOrder.OPEN) {
            if (!tradingStorage.hasOpenLimitOrder(trader, pairIndex, index)) {
                return (AutomationOrderStatus.NO_LIMIT, orderId);
            }

            IDomfiTradingStorage.OpenLimitOrder memory limitOrder =
                tradingStorage.getOpenLimitOrder(trader, pairIndex, index);

            if (limitOrder.lastUpdated > validator) {
                return (AutomationOrderStatus.IN_TIMEOUT, orderId);
            }

            if (IDomfiTrading(registry.getContractAddress("trading")).isPaused()) {
                return (AutomationOrderStatus.PAUSED, orderId);
            }
        } else {
            IDomfiTradingStorage.Trade memory trade =
                tradingStorage.getOpenTrade(trader, pairIndex, index);

            IDomfiTradingStorage.TradeInfo memory tradeInfo =
                tradingStorage.getOpenTradeInfo(trader, pairIndex, index);

            if (trade.leverage == 0) {
                return (AutomationOrderStatus.NO_TRADE, orderId);
            }

            if (orderType == IDomfiTradingStorage.LimitOrder.SL) {
                if (trade.sl == 0) {
                    return (AutomationOrderStatus.NO_SL, orderId);
                } else if (tradeInfo.slLastUpdated > validator) {
                    return (AutomationOrderStatus.IN_TIMEOUT, orderId);
                }
            }

            if (orderType == IDomfiTradingStorage.LimitOrder.TP) {
                if (trade.tp == 0) {
                    return (AutomationOrderStatus.NO_TP, orderId);
                } else if (tradeInfo.tpLastUpdated > validator) {
                    return (AutomationOrderStatus.IN_TIMEOUT, orderId);
                }
            }
        }

        IDomfiTrading trading = IDomfiTrading(registry.getContractAddress("trading"));

        if (!trading.checkNoPendingTrigger(tradingStorage, trader, pairIndex, index, orderType)) {
            return (AutomationOrderStatus.PENDING_TRIGGER, orderId);
        }

        IDomfiPairsStorage pairsStorage =
            IDomfiPairsStorage(registry.getContractAddress("pairsStorage"));

        IDomfiPriceRouter priceRouter =
            IDomfiPriceRouter(registry.getContractAddress("priceRouter"));

        IDomfiPriceUpKeep.OrderType upkeepOrderType = orderType
            != IDomfiTradingStorage.LimitOrder.OPEN
            ? IDomfiPriceUpKeep.OrderType.LIMIT_CLOSE
            : IDomfiPriceUpKeep.OrderType.LIMIT_OPEN;

        bool requirePrice = !pairsStorage.pairHasNativeOracleFeed(pairIndex);

        if (requirePrice) {
            // increment `orderId` and store it while making a price request
            orderId = priceRouter.getPrice(pairIndex, upkeepOrderType, validator);
        } else {
            // increment `orderId` and store it without requesting a price update
            orderId = priceRouter.storeOrder(pairIndex, upkeepOrderType, validator);
        }

        tradingStorage.storePendingAutomationOrder(
            IDomfiTradingStorage.PendingAutomationOrder(trader, pairIndex, index, orderType),
            orderId
        );

        tradingStorage.setTrigger(trader, pairIndex, index, orderType);

        if (orderType == IDomfiTradingStorage.LimitOrder.OPEN) {
            emit AutomationOpenOrderInitiated(orderId, trader, pairIndex, index);
        } else {
            emit AutomationCloseOrderInitiated(
                orderId,
                tradingStorage.getOpenTradeInfo(trader, pairIndex, index).tradeId,
                trader,
                pairIndex,
                orderType
            );
        }

        return (AutomationOrderStatus.SUCCESS, orderId);
    }

    function removePendingAutomationOrder(uint256 orderId)
        internal
        isDone
        returns (AutomationOrderStatus)
    {
        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        (address trader, uint16 pairIndex, uint8 index, IDomfiTradingStorage.LimitOrder limitType) =
            tradingStorage.pendingAutomationOrders(orderId);

        if (trader == address(0)) {
            return AutomationOrderStatus.NO_TRADE;
        }

        tradingStorage.unregisterTrigger(trader, pairIndex, index, limitType);
        tradingStorage.unregisterPendingAutomationOrder(orderId);

        return AutomationOrderStatus.SUCCESS;
    }

    function removePendingMarketOrder(uint256 orderId)
        internal
        isDone
        returns (AutomationOrderStatus)
    {
        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        // slither-disable-next-line unused-return
        (uint256 blockNumber,,, IDomfiTradingStorage.Trade memory trade, uint16 percentage) =
            tradingStorage.pendingMarketOrders(orderId);

        if (trade.trader == address(0)) {
            return AutomationOrderStatus.NO_TRADE;
        }

        IDomfiTrading trading = IDomfiTrading(registry.getContractAddress("trading"));

        if (
            blockNumber != 0
                && ChainUtils.getBlockNumber() < blockNumber + trading.marketOrdersTimeout()
        ) {
            return AutomationOrderStatus.IN_TIMEOUT;
        }

        // market open percentage is always zero; market close percentage is `1` to `MAX_CLOSE_P`
        bool isMarketOpen = percentage == 0;

        tradingStorage.unregisterPendingMarketOrder(orderId, isMarketOpen);

        if (isMarketOpen) {
            tradingStorage.transferUsdc(address(tradingStorage), trade.trader, trade.collateral);
        }

        return AutomationOrderStatus.SUCCESS;
    }

    function removePendingRemoveCollateral(uint256 orderId)
        internal
        isDone
        returns (AutomationOrderStatus)
    {
        IDomfiTradingStorage tradingStorage =
            IDomfiTradingStorage(registry.getContractAddress("tradingStorage"));

        IDomfiTradingStorage.PendingRemoveCollateral memory pending =
            tradingStorage.getPendingRemoveCollateral(orderId);

        if (pending.trader == address(0)) {
            return AutomationOrderStatus.NO_TRADE;
        }

        IDomfiTrading trading = IDomfiTrading(registry.getContractAddress("trading"));

        if (!trading.checkNoPendingTrigger(
                tradingStorage,
                pending.trader,
                pending.pairIndex,
                pending.index,
                IDomfiTradingStorage.LimitOrder.RC
            )) {
            return AutomationOrderStatus.PENDING_TRIGGER;
        }

        tradingStorage.unregisterTrigger(
            pending.trader, pending.pairIndex, pending.index, IDomfiTradingStorage.LimitOrder.RC
        );
        tradingStorage.unregisterPendingRemoveCollateral(orderId);

        return AutomationOrderStatus.SUCCESS;
    }

    function registerForwarder(address forwarderAddress) public onlyGov {
        if (isForwarder[forwarderAddress]) revert AlreadyForwarder(forwarderAddress);
        isForwarder[forwarderAddress] = true;
        emit ForwarderAdded(forwarderAddress);
    }

    function registerForwarders(address[] calldata forwarderAddresses) external onlyGov {
        for (uint256 i = 0; i < forwarderAddresses.length; i++) {
            registerForwarder(forwarderAddresses[i]);
        }
    }

    function unregisterForwarder(address forwarderAddress) public onlyGov {
        if (!isForwarder[forwarderAddress]) revert NotForwarder(forwarderAddress);
        // slither-disable-next-line costly-loop
        delete isForwarder[forwarderAddress];
        emit ForwarderRemoved(forwarderAddress);
    }

    function unregisterForwarders(address[] calldata forwarderAddresses) external onlyGov {
        for (uint256 i = 0; i < forwarderAddresses.length; i++) {
            unregisterForwarder(forwarderAddresses[i]);
        }
    }
}
