// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

library BlockTradeLib {
    error OutOfOrderMax();
    error InvalidBlockId();
    error InvalidOrderId();
    error InvalidQty();
    error InvalidMinQty();
    error InvalidSymbol();
    error InvalidLeverage();
    error InvalidSignature();
    error InvalidChainId();
    error InvalidCaller();
    error InvalidAddress();
    error InvalidStatus();
    error InvalidSide();
    error InvalidRole();
    error InvalidPolicy();
    error InvalidPrice();
    error FillQtyBelowMin();
    error FillQtyExceedsRemaining();
    error Timeout();
    error InvalidContract();
    error OutOfBuffer();
    error DuplicateOrderId();
    error MakerCannotBeTaker();
    error CannotExecuteOption();
    error CannotCloseOption();
    error InvalidOptionFee();
    error BlockIsNotOpen();
    error InvalidBatchSize();

    struct State {
        address validator;
        address messageSigner;
        uint64 blockId;
        uint256[32] _reserved;
    }

    uint16 public constant MAX_LEVERAGE = 40;

    enum Side {
        Long,
        Short
    }

    enum Role {
        Maker,
        Taker
    }

    enum MatchPolicy {
        Flexible,
        Full,
        IssueRight,
        SubscribeRight
    }

    enum PriceType {
        Mark,
        Limit
    }

    enum BlockStatus {
        Open,
        OnchainMatched,
        Closed,
        Halted,
        OnchainFullExecuted
    }

    enum OrderStatus {
        Open,
        Matching,
        Filled,
        Failed,
        Closed,
        Archived,
        SystemCanceled,
        Taken
    }

    struct Message {
        bytes32 symbol;
        uint256 qty;
        uint256 takerMinQty;
        uint256 price;
        Role role;
        Side side;
        MatchPolicy policy;
        PriceType priceType;
        uint64 blockId;
        uint64 orderId;
        uint16 leverage;
        uint256 expiredAt;
        uint256 makerFee;
        uint256 takerFee;
    }

    struct MessageSignature {
        uint256 expiredAt;
        uint256 chainId;
        address caller;
        address contractAddress;
        bytes signature;
    }

    struct OrderAckParams {
        uint64 blockId;
        uint64 orderId;
        OrderStatus status;
    }

    struct OrderIdentifierMessage {
        uint64 blockId;
        uint64 orderId;
    }

    struct MatchedOrder {
        address taker;
        uint256 qty;
        uint64 orderId;
    }
}
