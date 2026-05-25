// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import "./IGNSTradingStorage_Prev.sol";

/**
 * @custom:version 7
 * @dev Interface of deprecated GNSTradingCallbacks contract, used for state copy
 * @dev All types are the same but only functions relevant to state copy were kept
 */
interface IGNSTradingCallbacks_Prev {
    enum TradeType {
        MARKET,
        LIMIT
    }

    enum CancelReason {
        NONE,
        PAUSED,
        MARKET_CLOSED,
        SLIPPAGE,
        TP_REACHED,
        SL_REACHED,
        EXPOSURE_LIMITS,
        PRICE_IMPACT,
        MAX_LEVERAGE,
        NO_TRADE,
        WRONG_TRADE,
        NOT_HIT
    }

    struct AggregatorAnswer {
        uint256 orderId;
        uint256 price;
        uint256 spreadP;
        uint256 open;
        uint256 high;
        uint256 low;
    }

    // Useful to avoid stack too deep errors
    struct Values {
        uint256 posDai;
        uint256 levPosDai;
        uint256 tokenPriceDai;
        int256 profitP;
        uint256 price;
        uint256 liqPrice;
        uint256 daiSentToTrader;
        uint256 reward1;
        uint256 reward2;
        uint256 reward3;
        uint128 collateralPrecisionDelta;
        uint256 collateralPriceUsd;
        bool exactExecution;
    }

    // Internally used struct to avoid stack too deep
    struct RegisterTradeOutput {
        IGNSTradingStorage_Prev.Trade finalTrade;
        uint256 tokenPriceDai; // 1e10
        uint256 collateralPriceUsd; // 1e8
        uint128 collateralPrecisionDelta;
    }

    struct SimplifiedTradeId {
        address trader;
        uint256 pairIndex;
        uint256 index;
        TradeType tradeType;
    }

    struct LastUpdated {
        uint32 tp;
        uint32 sl;
        uint32 limit;
        uint32 created;
    }

    struct TradeData {
        uint40 maxSlippageP; // 1e10 (%)
        uint48 lastOiUpdateTs;
        uint48 collateralPriceUsd; // 1e8 collateral price at trade open
        uint120 _placeholder; // for potential future data
    }

    struct OpenTradePrepInput {
        bool isPaused;
        uint256 executionPrice;
        uint256 wantedPrice;
        uint256 marketPrice;
        uint256 spreadP;
        bool buy;
        uint256 pairIndex;
        uint256 positionSize;
        uint256 leverage;
        uint256 maxSlippageP;
        uint256 tp;
        uint256 sl;
    }

    function getTradeLastUpdated(address, uint256, uint256, TradeType) external view returns (LastUpdated memory);
}
