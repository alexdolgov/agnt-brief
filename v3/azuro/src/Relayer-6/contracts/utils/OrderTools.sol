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

    function getOrderBetsAmounts(
        OrderData memory order
    )
        public
        pure
        virtual
        returns (uint128 totalAmount, uint128[] memory amounts)
    {
        if (order.betType == BetType.COMBO) {
            totalAmount = abi
                .decode(order.clientBetData, (ClientComboBetData))
                .amount;
            amounts = new uint128[](1);
            amounts[0] = totalAmount;
            return (totalAmount, amounts);
        }

        ClientBetData memory betData = abi.decode(
            order.clientBetData,
            (ClientBetData)
        );
        amounts = new uint128[](betData.bets.length);
        for (uint256 i; i < betData.bets.length; ++i) {
            amounts[i] = betData.bets[i].amount;
            totalAmount += betData.bets[i].amount;
        }
    }
}
