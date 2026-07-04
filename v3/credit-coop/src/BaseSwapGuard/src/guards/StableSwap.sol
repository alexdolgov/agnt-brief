// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

import {BaseSwapGuard} from "./BaseSwapGuard.sol";
import {IConditionalOrder, GPv2Order} from "../interfaces/IConditionalOrder.sol";

contract StableSwapGuard is BaseSwapGuard {
    address constant receiver = 0xb228a0fA1118B6F4fc4c8999feF2189e5DA2FdfD;
    address constant USDT = 0xdAC17F958D2ee523a2206206994597C13D831ec7;
    address constant USDC = 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48;

    /**
     * Only allow USDT<>USDC orders that are at least 1:1 with a receiver of 0x0 (ie. self)
     * @param order The order being verified
     */
    function verify(
        GPv2Order.Data calldata order,
        bytes32,
        IConditionalOrder.ConditionalOrderParams calldata,
        bytes calldata
    ) external pure override returns (bool) {
        // allow ONLY USDT-sell / USDC-buy and enforce ≥ 1 : 1
        require(address(order.receiver) == receiver, "receiver must be Safe multisig");
        require(address(order.sellToken) == USDT, "must sell USDT");
        require(address(order.buyToken)  == USDC, "must buy  USDC");
        require(order.buyAmount >= order.sellAmount, "price < 1 : 1");
        return true;
    }
}
