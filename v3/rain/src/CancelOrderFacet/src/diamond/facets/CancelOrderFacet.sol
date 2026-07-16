// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { LibDiamond } from "../libraries/LibDiamond.sol";

import { ICancelOrder } from "../interfaces/ICancelOrder.sol";

import { _revert } from "../../utils/Globals.sol";

import { LinkedListLogic } from "../../libraries/LinkedList.sol";
import { LinkedListStorage } from "../../interfaces/LinkedListStorage.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";

/**
 * @title CancelOrderFacet
 * @author Rain Team
 * @notice External interface for the rain pool `CancelOrder` facet.
 */
contract CancelOrderFacet is ICancelOrder {
    using SafeERC20 for IERC20;
    using LinkedListLogic for LinkedListStorage.LinkedList;

    /**
     * @inheritdoc ICancelOrder
     */
    function cancelSellOrders(
        uint256[] memory option,
        uint256[] memory price, //1e18
        uint256[] memory orderID
    ) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (price.length != orderID.length || orderID.length != option.length) {
            _revert(IRainPool.ArrayLengthMismatch.selector);
        }

        uint256 i = 0;
        for (; i < orderID.length; ) {
            if (option[i] == 0 || option[i] > ds.numberOfOptions) {
                _revert(IRainPool.InvalidOption.selector);
            }
            if (price[i] == 0 || price[i] > 0.99 ether || price[i] % ds.TICK_SPACING != 0) {
                _revert(IRainPool.InvalidPrice.selector);
            }

            _cancelSellOrder(option[i], price[i], orderID[i], msg.sender);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @inheritdoc ICancelOrder
     */
    function cancelBuyOrders(
        uint256[] memory option,
        uint256[] memory price, //1e18
        uint256[] memory orderID
    ) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (price.length != orderID.length || orderID.length != option.length) {
            _revert(IRainPool.ArrayLengthMismatch.selector);
        }

        uint256 i = 0;
        for (; i < orderID.length; ) {
            if (option[i] == 0 || option[i] > ds.numberOfOptions) {
                _revert(IRainPool.InvalidOption.selector);
            }
            if (price[i] == 0 || price[i] > 0.99 ether || price[i] % ds.TICK_SPACING != 0) {
                _revert(IRainPool.InvalidPrice.selector);
            }

            _cancelBuyOrder(option[i], price[i], orderID[i], msg.sender);

            unchecked {
                ++i;
            }
        }
    }

    /**
     * @notice Cancels a specific sell order in the order book.
     * @dev Reverts if the order ID is invalid or the caller is not the order's creator.
     *      Emits a {CancelSellOrder} event upon successful cancellation.
     * @param option The option index for which the order was placed.
     * @param price The price at which the order was placed.
     * @param orderID The unique identifier of the order to cancel.
     * @param caller The address of the user calling the function.
     */
    function _cancelSellOrder(
        uint256 option,
        uint256 price, // 1e18
        uint256 orderID,
        address caller
    ) private {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (ds.orderBook[option][price][orderID].exists == false) {
            _revert(IRainPool.OrderDoesNotExist.selector);
        }

        LinkedListStorage.LinkedList storage linkedList = ds.sellOrders[option][price];

        if (!linkedList.isInitialized) {
            _revert(IRainPool.LinkedListNotInitalized.selector);
        }

        int256 nodeIndex = ds.orderBook[option][price][orderID].index;
        uint256 orderAmount = LinkedListLogic.getAmount(linkedList, nodeIndex);
        address sellerAddress = LinkedListLogic.getMaker(linkedList, nodeIndex);

        if (caller != sellerAddress) {
            _revert(IRainPool.CallerNotOrderPlacer.selector);
        }

        linkedList.remove(nodeIndex);
        ds.orderBook[option][price][orderID].exists = false;
        ds.orderBook[option][price][orderID].index = 0;

        ds.userActiveSellOrders[caller]--;
        ds.userVotesInEscrow[option][caller] -= orderAmount;
        ++ds.ordersRemoved;

        emit IRainPool.CancelSellOrder({
            orderOption: option,
            orderPrice: price,
            orderAmount: orderAmount,
            orderID: orderID,
            orderCreator: sellerAddress
        });
    }

    /**
     * @notice Cancels a specific Buy order in the order book.
     * @dev Reverts if the order ID is invalid or the caller is not the order's creator.
     *      Emits a {CancelBuyOrder} event upon successful cancellation.
     * @param option The option index for which the order was placed.
     * @param price The price at which the order was placed.
     * @param orderID The unique identifier of the order to cancel.
     * @param caller The address of the user calling the function.
     */
    function _cancelBuyOrder(
        uint256 option,
        uint256 price, // 1e18
        uint256 orderID,
        address caller
    ) private {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (ds.orderBook[option][price][orderID].exists == false) {
            _revert(IRainPool.OrderDoesNotExist.selector);
        }

        LinkedListStorage.LinkedList storage linkedList = ds.buyOrders[option][price];

        if (!linkedList.isInitialized) {
            _revert(IRainPool.LinkedListNotInitalized.selector);
        }

        int256 nodeIndex = ds.orderBook[option][price][orderID].index;
        uint256 orderAmount = LinkedListLogic.getAmount(linkedList, nodeIndex);
        address buyerAddress = LinkedListLogic.getMaker(linkedList, nodeIndex);

        if (caller != buyerAddress) {
            _revert(IRainPool.CallerNotOrderPlacer.selector);
        }

        linkedList.remove(nodeIndex);
        ds.orderBook[option][price][orderID].exists = false;
        ds.orderBook[option][price][orderID].index = 0;

        ds.userActiveBuyOrders[caller]--;
        ds.userAmountInEscrow[option][caller] -= orderAmount;
        ++ds.ordersRemoved;

        IERC20(ds.baseToken).safeTransfer(caller, orderAmount);

        emit IRainPool.CancelBuyOrder({
            orderOption: option,
            orderPrice: price,
            orderAmount: orderAmount,
            orderID: orderID,
            orderCreator: buyerAddress
        });
    }
}
