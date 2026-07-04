// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

import {ILimitOrderEngine as ILimitOrderEngineBase} from "limit-orders/src/interfaces/ILimitOrderEngine.sol";

/**
 * @title ILimitOrderEngine
 * @notice Extends the base limit order engine interface with the fillOrders entrypoint
 *         used by the router's LimitOrderModule.
 */
interface ILimitOrderEngine is ILimitOrderEngineBase {
    /// @notice Validates orders and executes settlement, receiving the taker input token from the router.
    /// @dev The router transfers the taker input token to this contract before calling this function.
    ///      The taker input token and order type determine whether settlement is direct or cross-market.
    /// @param receiver Address receiving maker tokens.
    /// @param params Order parameters.
    /// @param data ABI-encoded taker input token address: abi.encode(takerInputToken).
    /// @custom:event Emits `OrderFilled(bytes32 orderHash, uint256 actualMaking)` for each filled order.
    function fillOrders(address receiver, FillOrderParams[] memory params, bytes memory data) external;
}
