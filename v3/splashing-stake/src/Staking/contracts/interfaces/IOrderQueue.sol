// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

struct WithdrawOrder {
    uint256 orderId;
    uint256 amount;
    uint256 timestamp;
    address user;
}

interface IOrderQueue {
    // Events
    event OrderEnqueued(uint256 orderId, address user, uint256 amount, uint256 timestamp);
    event OrderDequeued(uint256 orderId, address user, uint256 amount, uint256 timestamp);

    // State variables
    function staking() external view returns (address);
    function orderQueue(uint256 index) external view returns (WithdrawOrder memory);
    function userOrderQueueMap(address user, uint256 index) external view returns (uint256);
    function orderFront() external view returns (uint256);
    function userOrderFront(address user) external view returns (uint256);

    // Queue operations
    function enqueueOrder(WithdrawOrder memory order) external;
    function dequeueOrder() external returns (WithdrawOrder memory);
    function peekOrder() external view returns (WithdrawOrder memory);
    function setBatchOrderId(uint256 orderId, uint256 batchOrderId) external;
    function orderToBatchId(uint256 orderId) external view returns (uint256);

    // View functions
    function getOrderData(uint256 start, uint256 end) external view returns (WithdrawOrder[] memory);
    function getUserOrderQueue(address user, uint256 start, uint256 end) external view returns (WithdrawOrder[] memory);
    function getOrderQueueLength() external view returns (uint256);
    function getUserOrderQueueLength(address user) external view returns (uint256);
    function getFullUserOrderQueueLength(address user) external view returns (uint256);
    function getFullOrderQueueLength() external view returns (uint256);
}