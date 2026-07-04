// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

import {BlockTradeLib} from "./BlockTradeLib.sol";
import {BlockLib, BlockMapLib} from "./BlockLib.sol";
import {OrderLib, OrderMapLib} from "./OrderLib.sol";

library UserOrderBufferLib {
    uint8 public constant USER_ORDER_BUFFER_SIZE = 32;

    struct UserOrderBuffer {
        mapping(address caller => UserOrder) users;
    }

    struct UserOrder {
        uint64[USER_ORDER_BUFFER_SIZE] orderIdList;
    }

    function _addOrder(
        UserOrderBuffer storage buffer,
        BlockMapLib.BlockMap storage blockMap,
        OrderMapLib.OrderMap storage orderMap,
        address caller,
        uint64 orderId
    ) internal {
        uint8 availableSlot = USER_ORDER_BUFFER_SIZE;
        UserOrder storage userOrder = buffer.users[caller];
        for (uint8 i = 0; i < USER_ORDER_BUFFER_SIZE; i++) {
            uint64 userOrderId = userOrder.orderIdList[i];
            if (userOrderId == 0) {
                availableSlot = i;
                break;
            }
            OrderLib.Order storage orderInfo = OrderMapLib.get(
                orderMap,
                userOrderId
            );
            if (!OrderLib._isOrderActive(orderInfo)) {
                availableSlot = i;
                break;
            }
            BlockLib.Block storage blockInfo = BlockMapLib.get(
                blockMap,
                orderInfo.blockId
            );
            if (!BlockLib._isBlockActive(blockInfo)) {
                availableSlot = i;
                break;
            }
        }
        require(
            availableSlot < USER_ORDER_BUFFER_SIZE,
            BlockTradeLib.OutOfBuffer()
        );

        userOrder.orderIdList[availableSlot] = orderId;
    }

    function getUserOrders(
        UserOrderBuffer storage buffer,
        address caller
    ) internal view returns (UserOrder memory) {
        return buffer.users[caller];
    }
}
