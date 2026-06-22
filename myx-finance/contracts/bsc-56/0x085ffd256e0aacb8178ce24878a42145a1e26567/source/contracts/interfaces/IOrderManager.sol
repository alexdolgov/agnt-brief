// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import '../libraries/TradingTypes.sol';

interface IOrderManager {
    event UpdatePositionManager(address oldAddress, address newAddress);
    event CancelOrder(uint256 orderId, TradingTypes.TradeType tradeType, string reason);

    event CancelOrderV2(
        uint256 orderId,
        address account,
        uint256 pairIndex,
        TradingTypes.TradeType tradeType,
        string reason
    );

    event CreateOrderV2(
        address account,
        uint256 orderId,
        TradingTypes.TradeType tradeType,
        int256 collateral,
        uint256 pairIndex,
        uint256 openPrice,
        uint256 sizeAmount,
        TradingTypes.InnerPaymentType paymentType,
        uint256 networkFeeAmount,
        uint256 flags //isIncrease, isLong, makerOnly, abovePrice
    );

    event UpdateRouterAddress(address sender, address oldAddress, address newAddress);
    event SetAllowedRouters(address sender, address router, bool enable);

    event CancelIncreaseOrder(address account, uint256 orderId, TradingTypes.TradeType tradeType);
    event CancelDecreaseOrder(address account, uint256 orderId, TradingTypes.TradeType tradeType);

    event UpdatedNetworkFee(
        address sender,
        TradingTypes.NetworkFeePaymentType paymentType,
        uint256 pairIndex,
        uint256 basicNetworkFee,
        uint256 discountThreshold,
        uint256 discountedNetworkFee
    );

    event SetOrderTpSl(
        address account,
        uint256 orderId,
        uint256 pairId,
        uint256 tpPrice,
        uint256 slPrice,
        uint128 tpSize,
        uint128 slSize
    );

    struct AddOrderTpSlRequest {
        uint256 orderId;
        TradingTypes.TradeType tradeType;
        uint256 tpPrice;
        uint128 tp;
        uint256 slPrice;
        uint128 sl;
        TradingTypes.InnerPaymentType paymentType;
        uint256 networkFeeAmount;
        bytes data;
    }

    struct PositionOrder {
        address account;
        uint256 pairIndex;
        bool isLong;
        bool isIncrease;
        TradingTypes.TradeType tradeType;
        uint256 orderId;
        uint256 sizeAmount;
    }

    struct OrderTpSl {
        address account;
        uint256 orderId;
        uint256 tpSize;
        uint256 tpPrice;
        uint256 slSize;
        uint256 slPrice;
    }

    struct NetworkFee {
        uint256 basicNetworkFee;
        uint256 discountThreshold;
        uint256 discountedNetworkFee;
    }

    function ordersIndex() external view returns (uint256);

    function getPositionOrders(bytes32 key) external view returns (PositionOrder[] memory);

    function getOrderTpSl(uint256 orderId) external view returns (OrderTpSl memory);

    function getNetworkFee(TradingTypes.NetworkFeePaymentType paymentType, uint256 pairIndex) external view returns (NetworkFee memory);

    function createOrder(TradingTypes.CreateOrderRequest memory request) external payable returns (uint256 orderId);

    function cancelOrder(
        uint256 orderId,
        TradingTypes.TradeType tradeType,
        bool isIncrease,
        string memory reason
    ) external;

    function addOrderTpSl(AddOrderTpSlRequest calldata request) external payable;

    function createOrderTpSl(uint256 orderId, TradingTypes.TradeType tradeType) external;

    function cancelAllPositionOrders(address account, uint256 pairIndex, bool isLong) external;

    function orderMakerOnly(uint256 orderId) external view returns (bool);

    function getIncreaseOrder(
        uint256 orderId,
        TradingTypes.TradeType tradeType
    ) external view returns (
        TradingTypes.IncreasePositionOrder memory order,
        TradingTypes.OrderNetworkFee memory orderNetworkFee
    );

    function getDecreaseOrder(
        uint256 orderId,
        TradingTypes.TradeType tradeType
    ) external view returns (
        TradingTypes.DecreasePositionOrder memory order,
        TradingTypes.OrderNetworkFee memory orderNetworkFee
    );

    function increaseOrderExecutedSize(
        uint256 orderId,
        TradingTypes.TradeType tradeType,
        bool isIncrease,
        uint256 increaseSize
    ) external;

    function removeOrderFromPosition(PositionOrder memory order) external;

    function removeIncreaseMarketOrders(uint256 orderId) external;

    function removeIncreaseLimitOrders(uint256 orderId) external;

    function removeDecreaseMarketOrders(uint256 orderId) external;

    function removeDecreaseLimitOrders(uint256 orderId) external;

    function setOrderNeedADL(uint256 orderId, TradingTypes.TradeType tradeType, bool needADL) external;

}
