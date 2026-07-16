// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

import "../interface/IOrder.sol";

abstract contract OrderTools is IOrder {
    function getClientData(
        OrderData memory order
    ) public pure virtual returns (ClientData memory clientData) {
        if (order.betType == BetType.COMBO)
            return
                abi
                    .decode(order.clientBetData, (ClientComboBetData))
                    .clientData;

        return abi.decode(order.clientBetData, (ClientBetData)).clientData;
    }
}
