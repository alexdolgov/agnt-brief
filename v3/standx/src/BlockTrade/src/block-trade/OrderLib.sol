// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

import {BlockTradeLib} from "./BlockTradeLib.sol";
import {
    EnumerableSet
} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

library OrderLib {
    struct Order {
        uint64 blockId;
        uint64 orderId;
        uint8 position;
        address caller;
        BlockTradeLib.Role role;
        BlockTradeLib.Side side;
        uint256 qty;
        uint16 leverage;
        BlockTradeLib.OrderStatus status;
        BlockTradeLib.MatchPolicy policy;
        uint256 makerFee;
        uint256 takerFee;
        uint256[4] _reserved;
    }

    function _initOrder(
        OrderMapLib.OrderMap storage map,
        uint64 blockId,
        BlockTradeLib.Message calldata orderMsg
    ) internal returns (Order storage) {
        Order memory orderInfo;
        orderInfo.blockId = blockId;
        orderInfo.orderId = orderMsg.orderId;
        orderInfo.position = type(uint8).max;
        orderInfo.caller = msg.sender;
        orderInfo.qty = orderMsg.qty;
        orderInfo.leverage = orderMsg.leverage;
        orderInfo.status = BlockTradeLib.OrderStatus.Open;
        orderInfo.role = orderMsg.role;
        orderInfo.side = orderMsg.side;
        orderInfo.policy = orderMsg.policy;
        orderInfo.makerFee = orderMsg.makerFee;
        orderInfo.takerFee = orderMsg.takerFee;
        OrderMapLib.set(map, orderMsg.orderId, orderInfo);
        return OrderMapLib.get(map, orderMsg.orderId);
    }

    function _isOrderActive(
        Order storage orderInfo
    ) internal view returns (bool) {
        return
            orderInfo.status == BlockTradeLib.OrderStatus.Open ||
            orderInfo.status == BlockTradeLib.OrderStatus.Matching ||
            orderInfo.status == BlockTradeLib.OrderStatus.Taken;
    }
}

library OrderMapLib {
    using EnumerableSet for EnumerableSet.UintSet;

    error EnumerableMapNonexistentKey(uint256 key);

    struct OrderMap {
        EnumerableSet.UintSet _keys;
        mapping(uint64 key => OrderLib.Order) _values;
    }

    function set(
        OrderMap storage map,
        uint64 key,
        OrderLib.Order memory value
    ) internal returns (bool) {
        map._values[key] = value;
        return map._keys.add(key);
    }

    function remove(OrderMap storage map, uint64 key) internal returns (bool) {
        delete map._values[key];
        return map._keys.remove(key);
    }

    function contains(
        OrderMap storage map,
        uint64 key
    ) internal view returns (bool) {
        return map._keys.contains(key);
    }

    function length(OrderMap storage map) internal view returns (uint256) {
        return map._keys.length();
    }

    function get(
        OrderMap storage map,
        uint64 key
    ) internal view returns (OrderLib.Order storage) {
        if (!contains(map, key)) {
            revert EnumerableMapNonexistentKey(key);
        }
        return map._values[key];
    }
}
