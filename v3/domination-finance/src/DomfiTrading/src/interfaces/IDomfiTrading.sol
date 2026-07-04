// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IDomfiTradingStorage } from "./IDomfiTradingStorage.sol";

interface IDomfiTrading {
    event Done(bool done);
    event Paused(bool paused);
    event MaxAllowedCollateralUpdated(uint256 newMaxAllowedCollateral);
    event MarketOrdersTimeoutUpdated(uint16 newMarketOrdersTimeout);
    event TriggerTimeoutUpdated(uint16 newTriggerTimeout);
    event MarketOpenOrderInitiated(
        uint256 indexed orderId, address indexed trader, uint16 indexed pairIndex
    );
    event MarketCloseOrderInitiated(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint16 pairIndex,
        uint16 closePercentage
    );
    event OpenLimitPlaced(
        address indexed trader, uint16 indexed pairIndex, uint8 index, uint192 wantedPrice
    );
    event OpenLimitPlaced(
        address indexed trader,
        uint16 indexed pairIndex,
        uint8 index,
        IDomfiTradingStorage.OpenLimitOrder order
    );
    event OpenLimitUpdated(
        address indexed trader,
        uint16 indexed pairIndex,
        uint8 index,
        uint192 newPrice,
        uint192 newTp,
        uint192 newSl
    );
    event OpenLimitCanceled(address indexed trader, uint16 indexed pairIndex, uint8 index);
    event TpUpdated(
        uint256 indexed tradeId,
        address indexed trader,
        uint16 indexed pairIndex,
        uint8 index,
        uint192 newTp
    );
    event SlUpdated(
        uint256 indexed tradeId,
        address indexed trader,
        uint16 indexed pairIndex,
        uint8 index,
        uint192 newSl
    );
    event MarketOpenTimeoutExecuted(
        uint256 indexed orderId, IDomfiTradingStorage.PendingMarketOrder order
    );
    event MarketCloseTimeoutExecuted(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        IDomfiTradingStorage.PendingMarketOrder order
    );
    event MarketCloseFailed(
        uint256 indexed tradeId, address indexed trader, uint16 indexed pairIndex
    );
    event TopUpCollateralExecuted(
        uint256 indexed tradeId,
        address indexed trader,
        uint16 indexed pairIndex,
        uint256 topUpAmount,
        uint32 newLeverage
    );
    event RemoveCollateralInitiated(
        uint256 indexed tradeId,
        uint256 indexed orderId,
        address indexed trader,
        uint16 pairIndex,
        uint256 removeAmount
    );
    event RemoveCollateralRejected(
        uint256 indexed tradeId,
        uint256 indexed orderId,
        address indexed trader,
        uint16 pairIndex,
        uint256 removeAmount,
        string reason
    );
    event OracleFeeCharged(address indexed trader, uint16 pairIndex, uint256 oracleFee);

    error IsDone();
    error WrongTP();
    error WrongSL();
    error IsPaused();
    error WrongParams();
    error BelowMinLevPos();
    error ExposureLimits();
    error NotGov(address caller);
    error NotManager(address caller);
    error AboveMaxAllowedCollateral();
    error PairNotListed(uint16 pairIndex);
    error WaitTimeout(uint256 orderId);
    error WrongLeverage(uint32 leverage);
    error NoTradeToTimeoutFound(uint256 orderId);
    error NotYourOrder(uint256 orderId, address trader);
    error MaxPendingMarketOrdersReached(address trader);
    error MaxTradesPerPairReached(address trader, uint16 pairIndex);
    error NoTradeFound(address trader, uint16 pairIndex, uint8 index);
    error NoLimitFound(address trader, uint16 pairIndex, uint8 index);
    error AlreadyMarketClosed(address trader, uint16 pairIndex, uint8 index);
    error TriggerPending(address sender, uint16 pairIndex, uint8 index);
    error InsufficientOracleFee();
    error InvalidOracleFee();

    function isDone() external view returns (bool);
    function isPaused() external view returns (bool);
    function maxAllowedCollateral() external view returns (uint256);
    function marketOrdersTimeout() external view returns (uint16);
    function triggerTimeout() external view returns (uint16);

    function openTrade(
        IDomfiTradingStorage.Trade calldata t,
        IDomfiTradingStorage.OpenOrderType orderType,
        uint256 slippageP
    ) external payable;

    function closeTradeMarket(
        uint16 pairIndex,
        uint8 index,
        uint16 closeP,
        uint256 slippageP,
        uint192 wantedPrice
    ) external payable;

    function updateOpenLimitOrder(
        uint16 pairIndex,
        uint8 index,
        uint192 price,
        uint192 tp,
        uint192 sl
    ) external;

    function cancelOpenLimitOrder(uint16 pairIndex, uint8 index) external;
    function updateTp(uint16 pairIndex, uint8 index, uint192 newTp) external payable;
    function updateSl(uint16 pairIndex, uint8 index, uint192 newSl) external payable;
    function topUpCollateral(uint16 pairIndex, uint8 index, uint256 topUpAmount) external;
    function removeCollateral(uint16 pairIndex, uint8 index, uint256 removeAmount) external payable;
    function handleTradeMarketTimeout(uint256 orderId) external;

    function checkNoPendingTrigger(
        IDomfiTradingStorage tradingStorage,
        address trader,
        uint16 pairIndex,
        uint8 index,
        IDomfiTradingStorage.LimitOrder orderType
    ) external view returns (bool);

    function checkNoPendingTriggers(
        IDomfiTradingStorage tradingStorage,
        address trader,
        uint16 pairIndex,
        uint8 index
    ) external view returns (bool);

    //only gov
    function done() external;
    function setTriggerTimeout(uint16 newTriggerTimeout) external;
    function setMarketOrdersTimeout(uint16 newMarketOrdersTimeout) external;
    function setMaxAllowedCollateral(uint256 newMaxAllowedCollateral) external;

    // only manager
    function pause() external;
}
