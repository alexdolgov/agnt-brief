// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @custom:version 7
 * @dev Interface of deprecated GNSTradingStorage contract, used for state copy
 * @dev All types are the same but only functions relevant to state copy were kept
 */
interface IGNSTradingStorage_Prev {
    enum LimitOrder {
        TP,
        SL,
        LIQ,
        OPEN
    }
    struct Trade {
        address trader;
        uint256 pairIndex;
        uint256 index;
        uint256 initialPosToken; // 1e18
        uint256 positionSizeDai; // 1e18 | 1e6
        uint256 openPrice; // PRECISION
        bool buy;
        uint256 leverage;
        uint256 tp; // PRECISION
        uint256 sl; // PRECISION
    }
    struct TradeInfo {
        uint256 tokenId; /// @custom:deprecated
        uint256 tokenPriceDai; // PRECISION
        uint256 openInterestDai; // 1e18 | 1e6
        uint256 tpLastUpdated;
        uint256 slLastUpdated;
        bool beingMarketClosed;
    }
    struct OpenLimitOrder {
        address trader;
        uint256 pairIndex;
        uint256 index;
        uint256 positionSize; // 1e18 | 1e6
        uint256 spreadReductionP; /// @custom:deprecated
        bool buy;
        uint256 leverage;
        uint256 tp; // PRECISION (%)
        uint256 sl; // PRECISION (%)
        uint256 minPrice; // PRECISION
        uint256 maxPrice; // PRECISION
        uint256 block;
        uint256 tokenId; /// @custom:deprecated index in supportedTokens
    }
    struct PendingMarketOrder {
        Trade trade;
        uint256 block;
        uint256 wantedPrice; // PRECISION
        uint256 slippageP; // PRECISION (%)
        uint256 spreadReductionP;
        uint256 tokenId; /// @custom:deprecated index in supportedTokens
    }
    struct PendingNftOrder {
        address nftHolder;
        uint256 nftId;
        address trader;
        uint256 pairIndex;
        uint256 index;
        LimitOrder orderType;
    }

    function getOpenLimitOrders() external view returns (OpenLimitOrder[] memory);

    function transferDai(address, address, uint256) external;

    function pairTradersArray(uint256) external view returns (address[] memory);

    function openTradesCount(address, uint256) external view returns (uint256);

    function openTrades(address, uint256, uint256) external view returns (Trade memory);

    function openTradesInfo(address, uint256, uint256) external view returns (TradeInfo memory);

    function openInterestDai(uint256, uint256) external view returns (uint256);

    function callbacks() external view returns (address);
}
