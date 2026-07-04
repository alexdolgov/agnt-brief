// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.30;

library BlockTradeLib {
    error OutOfOrderMax(); // 0x326673c3
    error InvalidBlockId(); // 0x37a804f0
    error InvalidOrderId(); // 0x5d706033
    error InvalidQty(); // 0x14dc6225
    error InvalidMinQty(); // 0x50bb22db
    error InvalidSymbol(); // 0x04119bc4
    error InvalidLeverage(); // 0x7fd13972
    error InvalidSignature(); // 0x8baa579f
    error InvalidChainId(); // 0x7a47c9a2
    error InvalidCaller(); // 0x48f5c3ed
    error InvalidAddress(); // 0xe6c4247b
    error InvalidStatus(); // 0xf525e320
    error InvalidSide(); // 0x0dfa289a
    error InvalidRole(); // 0xd954416a
    error InvalidPrice(); // 0x00bfc921
    error FillQtyBelowMin(); // 0x258baf85
    error FillQtyExceedsRemaining(); // 0x7f53b04d
    error Timeout(); // 0x2af0c7f8
    error InvalidContract(); // 0x6eefed20
    error OutOfBuffer(); // 0x22052599
    error DuplicateOrderId(); // 0x43898c0a
    error MakerCannotBeTaker(); // 0xc3f49bcd
    error BlockIsNotOpen(); // 0x45652c1d
    error InvalidBatchSize(); // 0x7862e959

    struct State {
        address validator;
        address messageSigner;
        uint64 blockId;
        uint256[32] _reserved; // NOTE: reserved for future
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
        Full
    }

    enum PriceType {
        Mark,
        Limit
    }

    enum BlockStatus {
        Open,
        OnchainMatched,
        Closed,
        Halted
    }

    enum OrderStatus {
        Open,
        Matching, // NOTE: for taker only
        Filled,
        Failed,
        Closed,
        Archived,
        SystemCanceled
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

    struct CloseOrderMessage {
        uint64 blockId;
        uint64 orderId;
    }

    struct MatchedOrder {
        address taker;
        uint256 qty;
        uint64 orderId;
    }
}
