// SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

enum CloseType {
    INITIATIVE,
    LQI,
    TP,
    SL
}

enum TradeType {
    MARKET,
    LIMIT,
    STOP
}
struct TradeBase {
    address trader;
    uint256 pairIndex;
    uint256 margin;
    bool long;
    uint leverage; // x10?
    uint tp;
    uint sl;
}

struct OpenTrade {
    TradeBase base;
    uint256 openPrice; // x10**18
    uint256 lastUpdateTime;
}
struct OpenRequest {
    TradeType tradeType;
    TradeBase base;
    address callTarget;
    uint256 maxPrice; // x10**18
    uint256 minPrice; // x10**18
    uint256 time;
}
struct CloseRequest {
    uint256 closeMargin;
    address callTarget;
    uint256 time;
    bool isDone;
}

struct Close {
    uint256 requestAmount;
    CloseRequest[] requests;
}
