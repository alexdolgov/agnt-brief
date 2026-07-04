// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { IDomfiTradingStorage } from "./IDomfiTradingStorage.sol";

interface IDomfiAutomationCompatible {
    struct SimplifiedTradeId {
        uint256 pairId;
        uint256 index;
        address trader;
        IDomfiTradingStorage.LimitOrder limitOrder;
    }

    struct RemovePendingOrders {
        uint256 pairId;
        uint256 orderId;
        address trader;
        IDomfiTradingStorage.OpenOrderType orderType;
    }

    function performUpkeep(bytes calldata performData) external;
}
