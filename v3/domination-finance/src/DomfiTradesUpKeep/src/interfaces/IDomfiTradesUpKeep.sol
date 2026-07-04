// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IDomfiTrading } from "./IDomfiTrading.sol";
import { IDomfiTradingStorage } from "./IDomfiTradingStorage.sol";

interface IDomfiTradesUpKeep {
    enum AutomationOrderStatus {
        PENDING_TRIGGER,
        IN_TIMEOUT,
        NO_LIMIT,
        NO_TRADE,
        NO_SL,
        NO_TP,
        SUCCESS,
        PAUSED
    }

    event AutomationExecutePerformed(
        uint256 orderId,
        IDomfiTradingStorage.LimitOrder indexed limitOrder,
        uint256 indexed pairIndex,
        AutomationOrderStatus indexed status,
        address trader
    );

    event AutomationRemovePerformed(
        uint256 orderId,
        IDomfiTradingStorage.OpenOrderType indexed orderType,
        uint256 indexed pairIndex,
        AutomationOrderStatus indexed status,
        address trader
    );

    event AutomationOpenOrderInitiated(
        uint256 indexed orderId, address indexed trader, uint16 indexed pairIndex, uint8 index
    );

    event AutomationCloseOrderInitiated(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint16 pairIndex,
        IDomfiTradingStorage.LimitOrder
    );

    error IsDone();
    error IsPaused();
    error PairNotListed(uint16 pairIndex);
    error WrongParams();
    error NotGov(address caller);
}
