// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import "./interface/IGateway.sol";
import "./OrderbookStorage.sol";
import './interface/IDToken.sol';
import './library/SafeMath.sol';
import "./library/ETHAndERC20.sol";
import '@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol';

contract OrderbookImplementation is OrderbookStorage, IERC721Receiver {

    using SafeMath for int256;
    using SafeMath for uint256;
    using ETHAndERC20 for address;

    error InsufficientExecutionFee();
    error InsufficientBAmount();
    error NonExistedOrder();
    error ExecutorOnly();
    error NotOrderOwner();
    error NotOrderOwnerOrExecutor();
    error InsufficientValue();

    address constant tokenETH = address(1);
    IDToken internal immutable pToken;
    IGateway internal immutable gateway;

    event CreateOrder(
        uint256 indexed orderIndex,
        bool isLite,
        address account,
        uint256 pTokenId,
        bytes32 symbolId,
        address bToken,
        int256 bAmount,
        int256[] orderParams,
        int256[] tradeParams,
        uint256 executionFee
    );
    event ExecuteOrder(
        uint256 indexed orderIndex,
        bool isLite,
        address account,
        uint256 pTokenId,
        bytes32 symbolId,
        address bToken,
        int256 bAmount,
        int256[] orderParams,
        int256[] tradeParams,
        uint256 executionFee
    );
    event CancelOrder(
        uint256 indexed orderIndex,
        bool isLite,
        address account,
        uint256 pTokenId,
        bytes32 symbolId,
        address bToken,
        int256 bAmount,
        int256[] orderParams,
        int256[] tradeParams
    );

    constructor (
        address pToken_,
        address gateway_
    ) {
        pToken = IDToken(pToken_);
        gateway = IGateway(gateway_);
    }

    //================================================================================

    function setExecutor(address executor_) external _onlyAdmin_ {
        executor = executor_;
    }

    function approveBToken(address bToken) external _onlyAdmin_ {
        bToken.approveMax(address(gateway));
    }

    //================================================================================

    function createOrder(Order calldata order) external payable _reentryLock_ {
        (, uint256 requiredValue) = _createOrder(order);
        if (requiredValue > msg.value) {
            revert InsufficientValue();
        }
    }

    function processMarketAndCreateOrders(
        Order memory marketOrder,
        Order memory stopLossOrder,
        Order memory takeProfitOrder
    ) external payable _reentryLock_
    {
        if (marketOrder.account != msg.sender) {
            revert NotOrderOwner();
        }

        (uint256 pTokenId, uint256 totalRequiredValue) = _executeOrder(0, marketOrder); // Use orderIndex 0 for market order

        uint256 orderIndex1;
        uint256 orderIndex2;
        uint256 requiredValue1;
        uint256 requiredValue2;

        if (stopLossOrder.account != address(0)) {
            stopLossOrder.pTokenId = pTokenId; // Assign the newly created pTokenId if possible
            (orderIndex1, requiredValue1) = _createOrder(stopLossOrder);
        }

        if (takeProfitOrder.account != address(0)) {
            takeProfitOrder.pTokenId = pTokenId; // Assign the newly created pTokenId if possible
            (orderIndex2, requiredValue2) = _createOrder(takeProfitOrder);
        }

        // Associated orders
        if (orderIndex1 != 0 && orderIndex2 != 0) {
            associatedOrder[marketOrder.account][orderIndex1] = orderIndex2;
            associatedOrder[marketOrder.account][orderIndex2] = orderIndex1;
        }

        totalRequiredValue += requiredValue1 + requiredValue2;
        if (totalRequiredValue > msg.value) {
            revert InsufficientValue();
        }
    }

    function processMarketAndCancelOrders(
        Order memory marketOrder,
        uint256[] memory cancelOrderIndexes
    ) external payable _reentryLock_
    {
        if (marketOrder.account != msg.sender) {
            revert NotOrderOwner();
        }

        (, uint256 requiredValue) = _executeOrder(0, marketOrder);
        if (requiredValue > msg.value) {
            revert InsufficientValue();
        }

        for (uint256 i = 0; i < cancelOrderIndexes.length; i++) {
            uint256 orderIndex = cancelOrderIndexes[i];
            Order memory order = orders[msg.sender][orderIndex];
            if (order.account != address(0)) {
                _cancelOrder(orderIndex, order);
                _removeOrderAssociation(order.account, orderIndex);
            }
        }
    }

    function executeOrder(address account, uint256 orderIndex, int256 positionVolume) external payable _reentryLock_ {
        if (msg.sender != executor) {
            revert ExecutorOnly();
        }

        Order memory order = orders[account][orderIndex];
        if (order.account == address(0)) {
            revert NonExistedOrder();
        }

        // For TP/SL orders, force 'Close Only' trade
        // If tradeVolume.abs() > positionVolume.abs(), a full close trade will be executed
        if (order.orderParams.length > 3 && order.orderParams[3] == 1) {
            int256 tradeVolume = order.tradeParams[0];
            if (positionVolume * tradeVolume >= 0) { // Open not allowed, cancel order
                _cancelOrder(orderIndex, order);
            } else {
                if (tradeVolume.abs() > positionVolume.abs()) { // Adjust order volume for full close
                    order.tradeParams[0] = -positionVolume;
                }
                _executeOrder(orderIndex, order);
            }
        } else {
            _executeOrder(orderIndex, order);
        }

        // Cancel associated order if any
        uint256 associatedOrderIndex = _removeOrderAssociation(account, orderIndex);
        if (associatedOrderIndex != 0) {
            _cancelOrder(associatedOrderIndex, orders[account][associatedOrderIndex]);
        }
    }

    function cancelOrder(address account, uint256 orderIndex) external _reentryLock_ {
        // Only order owner or executor can cancel order
        if (msg.sender != account && msg.sender != executor) {
            revert NotOrderOwnerOrExecutor();
        }

        Order memory order = orders[account][orderIndex];
        _cancelOrder(orderIndex, order);

        // Remove association if exists associated order, but do not cancel associated order
        _removeOrderAssociation(account, orderIndex);
    }

    //================================================================================

    function _getExecutionFee(Order memory order) internal view returns (uint256 executionFee) {
        uint256[] memory fees = gateway.getExecutionFees();
        if (order.isLite && order.bAmount < 0) {
            executionFee = fees[4];
        } else {
            executionFee = fees[3];
        }
    }

    function _getValue(Order memory order) internal pure returns (uint256 value) {
        if (order.bAmount > 0 && order.bToken == tokenETH) {
            value = order.bAmount.itou();
        }
    }

    function _createOrder(Order memory order) internal returns (uint256 orderIndex, uint256 requiredValue) {
        // Order can only be created by user himself
        if (order.account != msg.sender) {
            revert NotOrderOwner();
        }

        uint256 executionFee = _getExecutionFee(order);
        uint256 value = _getValue(order);
        requiredValue = executionFee + value;

        if (order.bAmount > 0 && order.bToken != tokenETH) {
            order.bToken.transferIn(order.account, order.bAmount.itou());
        }

        orderIndex = ++ordersIndex[order.account];
        orders[order.account][orderIndex] = order;
        executionFees[order.account][orderIndex] = executionFee;

        emit CreateOrder(
            orderIndex,
            order.isLite,
            order.account,
            order.pTokenId,
            order.symbolId,
            order.bToken,
            order.bAmount,
            order.orderParams,
            order.tradeParams,
            executionFee
        );
    }

    function _executeOrder(uint256 orderIndex, Order memory order)
    internal returns (uint256 pTokenId, uint256 requiredValue)
    {
        uint256 executionFee = _getExecutionFee(order);
        uint256 value = _getValue(order);

        if (order.pTokenId != 0) {
            pToken.safeTransferFrom(order.account, address(this), order.pTokenId);
        }

        if (order.isLite) { // lite mode
            if (order.bAmount > 0) {
                // create pTokenId or add additional margin
                order.pTokenId = gateway.requestAddMargin{value: order.bToken == tokenETH? order.bAmount.itou() : 0}(
                    order.pTokenId,
                    order.bToken,
                    order.bAmount.itou(),
                    order.isLite
                );
                gateway.requestTrade{value: executionFee}(order.pTokenId, order.symbolId, order.tradeParams);
            } else {
                gateway.requestTradeAndRemoveMargin{value: executionFee}(
                    order.pTokenId,
                    order.bToken,
                    (-order.bAmount).itou(),
                    order.symbolId,
                    order.tradeParams
                );
            }
        } else { // pro mode
            gateway.requestTrade{value: executionFee}(order.pTokenId, order.symbolId, order.tradeParams);
        }

        pToken.safeTransferFrom(address(this), order.account, order.pTokenId);

        delete orders[order.account][orderIndex];
        emit ExecuteOrder(
            orderIndex,
            order.isLite,
            order.account,
            order.pTokenId,
            order.symbolId,
            order.bToken,
            order.bAmount,
            order.orderParams,
            order.tradeParams,
            executionFee
        );

        return (order.pTokenId, executionFee + value);
    }

    function _cancelOrder(uint256 orderIndex, Order memory order) internal {
        if (order.account == address(0)) {
            revert NonExistedOrder();
        }

        uint256 executionFee = executionFees[order.account][orderIndex];
        if (order.bAmount > 0 && order.bToken == tokenETH) {
            tokenETH.transferOut(order.account, order.bAmount.itou() + executionFee);
        } else if (order.bAmount > 0) {
            order.bToken.transferOut(order.account, order.bAmount.itou());
            tokenETH.transferOut(order.account, executionFee);
        } else {
            tokenETH.transferOut(order.account, executionFee);
        }

        delete orders[order.account][orderIndex];
        emit CancelOrder(
            orderIndex,
            order.isLite,
            order.account,
            order.pTokenId,
            order.symbolId,
            order.bToken,
            order.bAmount,
            order.orderParams,
            order.tradeParams
        );
    }

    function _removeOrderAssociation(address account, uint256 orderIndex) internal returns (uint256 associatedOrderIndex) {
        associatedOrderIndex = associatedOrder[account][orderIndex];
        if (associatedOrderIndex != 0) {
            delete associatedOrder[account][orderIndex];
            delete associatedOrder[account][associatedOrderIndex];
        }
    }

    // Params: (address operator, address from, uint256 tokenId, bytes calldata data)
    function onERC721Received(address, address, uint256, bytes calldata) external pure returns (bytes4) {
        return IERC721Receiver.onERC721Received.selector;
    }

}
