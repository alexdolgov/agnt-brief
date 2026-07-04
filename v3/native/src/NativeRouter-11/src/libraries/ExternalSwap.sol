// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import {ErrorsLib} from "./ErrorsLib.sol";
import {Orders} from "./Order.sol";
import {FullMath} from "./FullMath.sol";

library ExternalSwap {
    using SafeERC20 for IERC20;

    struct SwapState {
        uint256 buyerTokenAmount;
        uint256 sellerTokenAmount;
    }

    event ExternalSwapExecuted(
        address externalRouter,
        address sender,
        address tokenIn,
        address tokenOut,
        int256 amountIn,
        int256 amountOut,
        bytes16 quoteId
    );

    function externalSwap(
        Orders.Order memory order,
        uint256 flexibleAmount,
        address recipient,
        address payer,
        bytes memory fallbackCalldata
    ) internal returns (uint256 amountOut) {
        require(flexibleAmount > 0, ErrorsLib.ZeroAmount());
        require(order.deadlineTimestamp >= block.timestamp, ErrorsLib.OrderExpired());

        SwapState memory state;
        (state.buyerTokenAmount, state.sellerTokenAmount) = _calculateTokenAmount(flexibleAmount, order);

        // prepare token for external call
        if (payer != address(this)) {
            IERC20(order.sellerToken).safeTransferFrom(payer, address(this), state.sellerTokenAmount);
        }
        IERC20(order.sellerToken).safeIncreaseAllowance(order.buyer, state.sellerTokenAmount);

        uint256 routerTokenOutBalanceBefore = IERC20(order.buyerToken).balanceOf(address(this));
        uint256 recipientTokenOutBalanceBefore = IERC20(order.buyerToken).balanceOf(recipient);

        {
            // call to external contract
            (bool success,) = order.buyer.call(fallbackCalldata);

            require(success, ErrorsLib.ExternalCallFailed(order.buyer, bytes4(fallbackCalldata)));
        }

        {
            // assume the tokenOut is sent to "recipient" by external call directly
            uint256 recipientDiff = IERC20(order.buyerToken).balanceOf(recipient) - recipientTokenOutBalanceBefore;
            uint256 routerDiff = IERC20(order.buyerToken).balanceOf(address(this)) - routerTokenOutBalanceBefore;

            // if routerDiff is more, router has the tokens, so router transfers it out to recipient
            if (recipientDiff < routerDiff) {
                IERC20(order.buyerToken).safeTransfer(recipient, routerDiff);
                amountOut = IERC20(order.buyerToken).balanceOf(recipient) - recipientTokenOutBalanceBefore;
            } else {
                // otherwise, recipient has the tokens, so we can use recipientDiff
                amountOut = recipientDiff;
            }

            // amountOut is always the difference in after - before of recipient balance, to account for fee on transfer tokens
            require(amountOut >= state.buyerTokenAmount, ErrorsLib.NotEnoughTokenReceived());
        }

        emit ExternalSwapExecuted(
            order.buyer,
            order.caller,
            order.sellerToken,
            order.buyerToken,
            int256(state.sellerTokenAmount),
            -int256(amountOut),
            order.quoteId
        );
    }

    function _calculateTokenAmount(
        uint256 flexibleAmount,
        Orders.Order memory _order
    ) internal pure returns (uint256, uint256) {
        uint256 buyerTokenAmount = _order.buyerTokenAmount;
        uint256 sellerTokenAmount = _order.sellerTokenAmount;

        require(sellerTokenAmount > 0 && buyerTokenAmount > 0 && flexibleAmount > 0, ErrorsLib.ZeroAmount());

        if (flexibleAmount < sellerTokenAmount) {
            buyerTokenAmount = FullMath.mulDiv(flexibleAmount, buyerTokenAmount, sellerTokenAmount);
            sellerTokenAmount = flexibleAmount;
        }

        require(buyerTokenAmount > 0, ErrorsLib.ZeroAmount());

        return (buyerTokenAmount, sellerTokenAmount);
    }
}
