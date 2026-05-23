// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

struct WithdrawOrder {
    uint256 orderId;
    uint256 amount;
    uint256 timestamp;
    address user;
}

contract OrderQueue is Initializable, OwnableUpgradeable, UUPSUpgradeable {
    address public staking;
    // Two queues
    WithdrawOrder[] public orderQueue;
    mapping(address => uint256[]) public userOrderQueueMap;
    // Queue pointers
    uint256 public orderFront;
    mapping(address => uint256) public userOrderFront;

    constructor() {
        _disableInitializers();
    }

    function initialize(address _staking) public initializer {
        __Ownable_init(msg.sender);
        __UUPSUpgradeable_init();
        staking = _staking;
        orderFront = 0;
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    // WithdrawOrder queue operations
    function enqueueOrder(WithdrawOrder memory order) public {
        require(
            msg.sender == staking,
            "Only staking contract can enqueue order"
        );
        uint256 orderIndex = orderQueue.length;
        orderQueue.push(order);
        userOrderQueueMap[order.user].push(orderIndex);
    }

    function dequeueOrder() public returns (WithdrawOrder memory) {
        require(
            msg.sender == staking,
            "Only staking contract can dequeue order"
        );
        require(orderFront < orderQueue.length, "Order queue is empty");
        WithdrawOrder memory order = orderQueue[orderFront];

        // sanity check
        require(
            orderFront ==
                userOrderQueueMap[order.user][userOrderFront[order.user]],
            "Order is not the first in the queue"
        );

        orderFront++;
        userOrderFront[order.user]++;
        return order;
    }

    function peekOrder() public view returns (WithdrawOrder memory) {
        require(orderFront < orderQueue.length, "Order queue is empty");
        return orderQueue[orderFront];
    }

    // View all data functions
    function getOrderData(
        uint256 start,
        uint256 end
    ) public view returns (WithdrawOrder[] memory) {
        if (end == 0) {
            end = orderQueue.length;
        }
        uint256 length = end - start;
        require(end <= orderQueue.length, "End is greater than order queue");
        WithdrawOrder[] memory data = new WithdrawOrder[](length);

        for (uint256 i = start; i < end; i++) {
            data[i - start] = orderQueue[i];
        }
        return data;
    }

    function getUserOrderQueue(
        address user,
        uint256 start,
        uint256 end
    ) public view returns (WithdrawOrder[] memory) {
        if (end == 0) {
            end = userOrderQueueMap[user].length;
        }
        uint256 length = end - start;

        require(
            end <= userOrderQueueMap[user].length,
            "End is greater than user order queue"
        );
        WithdrawOrder[] memory data = new WithdrawOrder[](length);
        for (uint256 i = start; i < end; i++) {
            data[i - start] = orderQueue[userOrderQueueMap[user][i]];
        }
        return data;
    }

    // Get queue lengths
    function getOrderQueueLength() public view returns (uint256) {
        return orderQueue.length - orderFront;
    }

    function getFullOrderQueueLength() public view returns (uint256) {
        return orderQueue.length;
    }

    function getUserOrderQueueLength(
        address user
    ) public view returns (uint256) {
        return userOrderQueueMap[user].length - userOrderFront[user];
    }

    function getFullUserOrderQueueLength(
        address user
    ) public view returns (uint256) {
        return userOrderQueueMap[user].length;
    }
}
