// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDomfiTradingStorage {
    enum LimitOrder {
        TP,
        SL,
        LIQ,
        OPEN,
        RC
    }

    enum OpenOrderType {
        MARKET,
        LIMIT,
        STOP,
        RC
    }

    enum OpenInterest {
        LONG,
        SHORT,
        MAX
    }

    struct Trade {
        uint256 collateral; // PRECISION_6
        uint192 openPrice; // PRECISION_18
        uint192 tp; // PRECISION_18
        uint192 sl; // PRECISION_18
        address trader;
        uint32 leverage; // PRECISION_2
        uint16 pairIndex;
        uint8 index;
        bool buy;
    }

    struct TradeInfo {
        uint256 tradeId;
        uint256 oiNotional; // PRECISION_18
        uint256 tpLastUpdated; // Should be `validator`
        uint256 slLastUpdated; // Should be `validator`
        uint32 initialLeverage;
        uint32 createdAt;
        bool beingMarketClosed;
    }

    struct OpenLimitOrder {
        address trader;
        uint256 collateral; // PRECISION_6
        uint256 lastUpdated; // Should be `validator`
        uint256 blockNum;
        uint192 targetPrice; // PRECISION_18
        uint192 tp; // PRECISION_18
        uint192 sl; // PRECISION_18
        uint32 leverage; // PRECISION_2
        uint16 pairIndex;
        uint8 index;
        bool buy;
        OpenOrderType orderType;
    }

    struct PendingMarketOrder {
        uint256 blockNumber;
        uint192 wantedPrice; // PRECISION_18
        uint32 slippageP; // PRECISION_2 (%)
        Trade trade;
        uint16 percentage; // PRECISION_2 (%)
    }

    struct PendingAutomationOrder {
        address trader;
        uint16 pairIndex;
        uint8 index;
        LimitOrder orderType;
    }

    struct PendingRemoveCollateral {
        uint256 removeAmount;
        address trader;
        uint16 pairIndex;
        uint8 index;
    }

    event DevFeeClaimed(uint256 amount);
    event OracleFeeClaimed(uint256 amount);
    event MaxTradesPerPairUpdated(uint8 newMaxTradesPerPair);
    event MaxPendingMarketOrdersUpdated(uint8 newMaxPendingMarketOrders);
    event MaxOpenInterestUpdated(uint16 indexed pairIndex, uint256 newMaxOpenInterest);
    event OpenInterestUpdated(uint16 indexed pairIndex, uint256 index, uint256 newOi);

    error NullAddr();
    error WrongParams();
    error NotEmptyIndex();
    error NotGov(address caller);
    error NotCallbacksOrTradesUpKeep(address caller);
    error NotCallbacksOrTradesUpKeepOrTrading(address caller);
    error NotTradesUpKeep(address caller);
    error NotTradesUpKeepOrTrading(address caller);
    error NotTrading(address caller);
    error NotManager(address caller);
    error NotCallbacks(address caller);
    error NotRegistryOrGov(address caller);
    error NotTradingOrCallbacks(address caller);
    error NoOpenLimitOrder(address trader, uint16 pairIndex, uint8 index);
    error InvalidDevFeeClaimAmount();
    error InvalidOracleFeeClaimAmount();

    function usdc() external view returns (address);
    function devFees() external view returns (uint256);
    function oracleFees() external view returns (uint256);
    function totalOpenTradesCount() external view returns (uint32);
    function maxTradesPerPair() external view returns (uint8);
    function maxPendingMarketOrders() external view returns (uint8);

    function openTrades(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (uint256, uint192, uint192, uint192, address, uint32, uint16, uint8, bool);

    function openTradesInfo(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (uint256, uint256, uint256, uint256, uint32, uint32, bool);

    function openTradesCount(address trader, uint16 pairIndex) external view returns (uint32);

    function openLimitOrderIds(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (uint256);

    function openLimitOrdersCount(address trader, uint16 pairIndex) external view returns (uint8);

    // slither-disable-next-line unimplemented-functions
    function orderTriggerBlock(address trader, uint16 pairIndex, uint8 index, LimitOrder orderType)
        external
        view
        returns (uint256);

    function pairLimitOrders(uint16 pairIndex, uint256 index)
        external
        view
        returns (
            address,
            uint256,
            uint256,
            uint256,
            uint192,
            uint192,
            uint192,
            uint32,
            uint16,
            uint8,
            bool,
            OpenOrderType
        );

    function pendingMarketOrders(uint256 orderId)
        external
        view
        returns (uint256, uint192, uint32, Trade memory, uint16);

    function pendingAutomationOrders(uint256 orderId)
        external
        view
        returns (address, uint16, uint8, LimitOrder);

    function pendingOrderIdsCount(address trader) external view returns (uint256);

    function pendingMarketOpenCount(address trader, uint16 pairIndex) external view returns (uint8);

    function pendingMarketCloseCount(address trader, uint16 pairIndex) external view returns (uint8);

    function pairTraders(uint16 pairIndex, uint256 index) external view returns (address);
    function pairTradersCount(uint16 pairIndex) external view returns (uint256);
    function pairTradersId(address trader, uint16 pairIndex) external view returns (uint256);
    function openInterest(uint16 pairIndex, uint256 oiType) external view returns (uint256);

    function hasOpenLimitOrder(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (bool);

    function getOpenTrade(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (Trade memory);

    function getOpenTradeInfo(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (TradeInfo memory);

    function firstEmptyTradeIndex(address trader, uint16 pairIndex) external view returns (uint8);

    function firstEmptyOpenLimitIndex(address trader, uint16 pairIndex)
        external
        view
        returns (uint8);

    function getPendingOrderIds(address) external view returns (uint256[] memory);
    function pairTradersArray(uint16 pairIndex) external view returns (address[] memory);

    function getOpenLimitOrder(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (OpenLimitOrder memory);

    function getOpenLimitOrderByIndex(uint16 pairIndex, uint256 index)
        external
        view
        returns (OpenLimitOrder memory);

    function getOpenLimitOrders(uint16 pairIndex) external view returns (OpenLimitOrder[] memory);
    function totalOpenLimitOrders(uint16 pairIndex) external view returns (uint256);

    function getPairOpenInterestInfo(uint16 pairIndex)
        external
        view
        returns (uint256, uint256, uint256, uint256, int256);

    // onlyGov
    function claimFees(uint256 amount) external;
    function claimOracleFees(uint256 amount) external;
    function setMaxTradesPerPair(uint8 newMaxTradesPerPair) external;
    function setMaxPendingMarketOrders(uint8 newMaxPendingMarketOrders) external;
    function setMaxOpenInterest(uint16 pairIndex, uint256 newMaxOpenInterest) external;
    function setMaxOpenInterestArray(
        uint16[] calldata pairIndex,
        uint256[] calldata newMaxOpenInterest
    ) external;

    // onlyTrading
    function storeTrade(Trade memory trade, TradeInfo memory tradeInfo) external;

    function unregisterTrade(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 collateralToClose
    ) external;

    function storePendingMarketOrder(PendingMarketOrder calldata order, uint256 id, bool open)
        external;

    function storeOpenLimitOrder(OpenLimitOrder calldata o) external;
    function updateOpenLimitOrder(OpenLimitOrder calldata newO) external;
    function setTrigger(address trader, uint16 pairIndex, uint8 index, LimitOrder orderType)
        external;

    function storePendingAutomationOrder(
        PendingAutomationOrder calldata automationOrder,
        uint256 orderId
    ) external;

    function updateSl(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint192 newSl,
        uint256 latestPublishId
    ) external;

    function updateTp(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint192 newTp,
        uint256 latestPublishId
    ) external;

    //only trading or callbacks
    function updateTrade(Trade calldata newT) external;
    function unregisterPendingMarketOrder(uint256 id, bool open) external;
    function unregisterOpenLimitOrder(address trader, uint16 pairIndex, uint8 index) external;
    function transferUsdc(address from, address to, uint256 amount) external;

    //only callbacks
    function unregisterTrigger(address trader, uint16 pairIndex, uint8 index, LimitOrder orderType)
        external;

    function unregisterPendingAutomationOrder(uint256 orderId) external;

    function quoteOpeningFee(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external view returns (uint256, uint256);

    function handleOpeningFees(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external returns (uint256, uint256);

    function quoteClosingFee(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external view returns (uint256, uint256);

    function handleClosingFees(
        uint16 pairIndex,
        uint256 latestPrice,
        uint256 leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external returns (uint256, uint256);

    function handleOracleFee(uint256 amount) external;

    function storePendingRemoveCollateral(PendingRemoveCollateral calldata request, uint256 orderId)
        external;

    function getPendingRemoveCollateral(uint256 orderId)
        external
        view
        returns (PendingRemoveCollateral memory);

    function unregisterPendingRemoveCollateral(uint256 orderId) external;
}
