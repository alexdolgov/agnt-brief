// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

/**
 * @title ICancelOrder
 * @author Rain Team
 * @notice Interface for the rain pool `CancelOrder` facet.
 * @dev Defines the external functions for cancelling a sell/buy (limit) order within the
 * Diamond architecture.
 */
interface ICancelOrder {
    /* =====================================  FUNCTIONS ===================================== */

    /**
     * @notice Cancels multiple sell orders in the pool.
     * @dev Cancels orders based on the provided option, price, amount, and orderID arrays.
     *      All arrays must be of equal length and correspond to each other by index.
     * @param option Array of option IDs associated with each order to cancel.
     * @param price Array of price values at which the orders were placed.
     * @param orderID Array of order IDs to be cancelled.
     */
    function cancelSellOrders(uint256[] memory option, uint256[] memory price, uint256[] memory orderID) external;

    /**
     * @notice Cancels multiple Buy orders in the pool.
     * @dev Cancels orders based on the provided option, price, amount, and orderID arrays.
     *      All arrays must be of equal length and correspond to each other by index.
     * @param option Array of option IDs associated with each order to cancel.
     * @param price Array of price values at which the orders were placed.
     * @param orderID Array of order IDs to be cancelled.
     */
    function cancelBuyOrders(
        uint256[] memory option,
        uint256[] memory price, //1e18
        uint256[] memory orderID
    ) external;
}
