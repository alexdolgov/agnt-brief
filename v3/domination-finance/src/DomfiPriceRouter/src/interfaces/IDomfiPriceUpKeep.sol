// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDomfiPriceUpKeep {
    struct PriceUpKeepAnswer {
        uint256 orderId;
        uint256 validator;
        int192 price;
    }

    enum OrderType {
        MARKET_OPEN,
        MARKET_CLOSE,
        LIMIT_OPEN,
        LIMIT_CLOSE,
        RC
    }

    struct Order {
        uint256 publishId;
        uint32 timestamp;
        uint16 pairIndex;
        OrderType orderType;
        bool initiated;
    }

    event PriceRequested(
        uint256 indexed orderId, bytes32 feed, uint256 timestamp, uint256 publishId
    );
    event PriceRequested(bytes32 feed);
    event PriceReceived(
        uint256 indexed orderId, uint256 indexed pairIndex, int192 price, uint256 nativeFee
    );
    event PendingSlOrderUnregistered(uint256 indexed orderId);

    error WrongParams();
    error NotGov(address caller);
    error NotRouter(address caller);
    error NotInitiated(uint256 orderId);
    error AlreadyInitiated(uint256 orderId);
    error InvalidPrice(uint256 orderId);

    function orders(uint256 orderId)
        external
        view
        returns (uint256, uint32, uint16, OrderType, bool);

    // only forwarder
    function performUpkeep(bytes calldata performData) external;

    // only price router
    function getPrice(uint256 orderId, uint16 pairIndex, OrderType orderType, uint256 timestamp)
        external;
    function storeOrder(uint256 orderId, uint16 pairIndex, OrderType orderType, uint256 timestamp)
        external;
    function getPriceNoStore(uint16 pairIndex) external;
}
