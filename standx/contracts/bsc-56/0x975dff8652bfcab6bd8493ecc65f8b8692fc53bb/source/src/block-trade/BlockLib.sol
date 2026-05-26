// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

import {BlockTradeLib} from "./BlockTradeLib.sol";
import {OrderLib, OrderMapLib} from "./OrderLib.sol";
import {
    EnumerableSet
} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

library BlockLib {
    uint8 public constant BLOCK_MAX_TAKER = 25;

    struct Block {
        uint64 blockId;
        bytes32 symbol;
        uint256 totalQty;
        uint256 remainingQty;
        uint256 takerMinQty;
        BlockTradeLib.PriceType priceType;
        uint256 price;
        BlockTradeLib.BlockStatus status;
        BlockTradeLib.MatchPolicy policy;
        uint64 makerOrderId;
        uint64[BLOCK_MAX_TAKER] takerOrderList;
        uint256 expiredAt;
        int256 blockFee; // NOTE: reserved for future
        uint256 makerBlockMargin; // NOTE: reserved for future
        uint256 takerBlockMargin; // NOTE: reserved for future
    }

    function _initBlock(
        BlockMapLib.BlockMap storage blockMap,
        OrderMapLib.OrderMap storage orderMap,
        uint64 blockId,
        BlockTradeLib.Message calldata orderMsg
    ) internal returns (Block storage, OrderLib.Order storage) {
        BlockLib.Block memory blockInfo;
        blockInfo.blockId = blockId;
        blockInfo.makerOrderId = orderMsg.orderId;
        blockInfo.symbol = orderMsg.symbol;
        blockInfo.totalQty = orderMsg.qty;
        blockInfo.remainingQty = orderMsg.qty;
        blockInfo.takerMinQty = orderMsg.takerMinQty;
        blockInfo.priceType = orderMsg.priceType;
        blockInfo.price = orderMsg.price;
        blockInfo.policy = orderMsg.policy;
        blockInfo.expiredAt = orderMsg.expiredAt;
        blockInfo.status = BlockTradeLib.BlockStatus.Open;

        BlockMapLib.set(blockMap, blockId, blockInfo);
        OrderLib._initOrder(
            orderMap,
            blockId,
            orderMsg.orderId,
            orderMsg.qty,
            orderMsg.leverage,
            BlockTradeLib.Role.Maker,
            orderMsg.side,
            orderMsg.policy
        );
        return (
            BlockMapLib.get(blockMap, blockId),
            OrderMapLib.get(orderMap, orderMsg.orderId)
        );
    }

    function _updateBlock(
        BlockMapLib.BlockMap storage map,
        Block memory blockInfo
    ) internal returns (bool) {
        return BlockMapLib.set(map, blockInfo.blockId, blockInfo);
    }

    function _fillBlock(
        Block storage blockInfo,
        OrderLib.Order storage takerOrder
    ) internal {
        takerOrder.position = _getAvailablePosition(blockInfo);
        require(
            takerOrder.position < BLOCK_MAX_TAKER,
            BlockTradeLib.OutOfOrderMax()
        );
        blockInfo.remainingQty -= takerOrder.qty;
        blockInfo.takerOrderList[takerOrder.position] = takerOrder.orderId;
    }

    function _unfillBlock(
        Block storage blockInfo,
        OrderLib.Order storage takerOrder
    ) internal {
        blockInfo.remainingQty += takerOrder.qty;
        blockInfo.takerOrderList[takerOrder.position] = 0;
        takerOrder.position = type(uint8).max;
    }

    function _isBlockOpen(
        Block storage blockInfo
    ) internal view returns (bool) {
        return
            blockInfo.status == BlockTradeLib.BlockStatus.Open &&
            blockInfo.expiredAt > block.timestamp;
    }

    function _getAvailablePosition(
        Block storage blockInfo
    ) internal view returns (uint8) {
        uint8 availableSlot = BLOCK_MAX_TAKER;
        for (uint8 i = 0; i < BLOCK_MAX_TAKER; i++) {
            if (blockInfo.takerOrderList[i] == 0) {
                availableSlot = i;
                break;
            }
        }
        return availableSlot;
    }

    function matchingOrders(
        OrderMapLib.OrderMap storage map,
        uint64 orderId
    ) internal returns (BlockTradeLib.MatchedOrder[] memory) {
        BlockTradeLib.MatchedOrder[]
            memory matchedOrders = new BlockTradeLib.MatchedOrder[](1);
        OrderLib.Order storage orderInfo = OrderMapLib.get(map, orderId);
        orderInfo.status = BlockTradeLib.OrderStatus.Matching;
        matchedOrders[0] = BlockTradeLib.MatchedOrder(
            orderInfo.caller,
            orderInfo.qty,
            orderInfo.orderId
        );
        return matchedOrders;
    }

    function matchingOrders(
        OrderMapLib.OrderMap storage map,
        uint64[BLOCK_MAX_TAKER] memory takerOrderList
    ) internal returns (BlockTradeLib.MatchedOrder[] memory) {
        uint8 length = 0;
        for (uint8 i = 0; i < BLOCK_MAX_TAKER; i++) {
            if (takerOrderList[i] > 0) {
                length++;
            }
        }

        BlockTradeLib.MatchedOrder[]
            memory matchedOrders = new BlockTradeLib.MatchedOrder[](length);
        uint8 index = 0;
        for (uint8 i = 0; i < BlockLib.BLOCK_MAX_TAKER; i++) {
            if (takerOrderList[i] > 0) {
                OrderLib.Order storage orderInfo = OrderMapLib.get(
                    map,
                    takerOrderList[i]
                );
                orderInfo.status = BlockTradeLib.OrderStatus.Matching;
                matchedOrders[index] = BlockTradeLib.MatchedOrder(
                    orderInfo.caller,
                    orderInfo.qty,
                    orderInfo.orderId
                );
                index++;
            }
        }

        return matchedOrders;
    }
}

library BlockMapLib {
    using EnumerableSet for EnumerableSet.UintSet;

    error EnumerableMapNonexistentKey(uint256 key); //0x3a054bd4

    struct BlockMap {
        // Storage of keys
        EnumerableSet.UintSet _keys;
        mapping(uint64 key => BlockLib.Block) _values;
    }

    function set(
        BlockMap storage map,
        uint64 key,
        BlockLib.Block memory value
    ) internal returns (bool) {
        map._values[key] = value;
        return map._keys.add(key);
    }

    function remove(BlockMap storage map, uint64 key) internal returns (bool) {
        delete map._values[key];
        return map._keys.remove(key);
    }

    function contains(
        BlockMap storage map,
        uint64 key
    ) internal view returns (bool) {
        return map._keys.contains(key);
    }

    function length(BlockMap storage map) internal view returns (uint256) {
        return map._keys.length();
    }

    function get(
        BlockMap storage map,
        uint64 key
    ) internal view returns (BlockLib.Block storage) {
        if (!contains(map, key)) {
            revert EnumerableMapNonexistentKey(key);
        }
        return map._values[key];
    }
}
