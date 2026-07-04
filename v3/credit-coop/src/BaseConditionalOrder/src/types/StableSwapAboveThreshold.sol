// SPDX-License-Identifier: MIT
/**
 * @title StableSwapAboveThreshold (fork of CoW Protocol's TradeAboveThreshold)
 * @author Credit Coop
 * @notice Sells USDT for USDC at ≥ 1 : 1 once the Safe balance ≥ threshold.
 */
pragma solidity >=0.8.0 <0.9.0;

import {
    IERC20,
    GPv2Order,
    IConditionalOrder,
    IConditionalOrderGenerator,
    BaseConditionalOrder
} from "../BaseConditionalOrder.sol";
import {ConditionalOrdersUtilsLib as Utils} from "./ConditionalOrdersUtilsLib.sol";

// --- error strings

/// @dev The sell token balance is below the threshold (ie. threshold not met).
string constant BALANCE_INSUFFICIENT = "balance insufficient";

/**
 * @title A smart contract that trades whenever its balance of a certain token exceeds a target threshold with a stable swap.
 */
contract StableSwapAboveThreshold is BaseConditionalOrder {
    struct Data {
        IERC20 sellToken;
        IERC20 buyToken;
        address receiver;
        uint32 validityBucketSeconds;
        uint256 threshold;
        bytes32 appData;
    }

    /**
     * @inheritdoc IConditionalOrderGenerator
     * @dev If the `owner`'s balance of `sellToken` is above the specified threshold, sell its entire balance
     * for `buyToken` at 1:1 ratio or better (stable swap limit order).
     */
    function getTradeableOrder(address owner, address, bytes32, bytes calldata staticInput, bytes calldata)
        public
        view
        override
        returns (GPv2Order.Data memory order)
    {
        /// @dev Decode the payload into the trade above threshold parameters.
        StableSwapAboveThreshold.Data memory data = abi.decode(staticInput, (Data));

        uint256 balance = data.sellToken.balanceOf(owner);
        // Don't allow the order to be placed if the balance is less than the threshold.
        if (!(balance >= data.threshold)) {
            revert IConditionalOrder.PollTryNextBlock(BALANCE_INSUFFICIENT);
        }
        // ensures that orders queried shortly after one another result in the same hash (to avoid spamming the orderbook)
        order = GPv2Order.Data(
            data.sellToken,
            data.buyToken,
            data.receiver,
            balance,
            balance, // enforce a 1:1 ratio for stable swaps
            Utils.validToBucket(data.validityBucketSeconds),
            data.appData,
            0,
            GPv2Order.KIND_SELL,
            false,
            GPv2Order.BALANCE_ERC20,
            GPv2Order.BALANCE_ERC20
        );
    }
}
