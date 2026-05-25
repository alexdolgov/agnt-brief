// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.28;

import "./IPriceFeed.sol";
import "./IPool.sol";

interface ITrading {
    enum TradeStatus {
        ORDER,
        POSITION,
        CLOSED
    }

    enum PositionCloseStatus {
        PENDING, // Cannot be closed by TP/SL or liquidated
        TRIGGERED, // Meets TP/SL conditions and can be closed
        LIQUIDATABLE // Position meets liquidation conditions
    }

    struct Market {
        uint256 longTokens;
        uint256 shortTokens;
        uint256 longIndex;
        uint256 shortIndex;
        int256 cumulativeLongFundingFee;
        int256 cumulativeShortFundingFee;
        uint256 fundingRateUpdatedAt;
        uint256 fundingFeeAccruedAt;
        int256 fundingRate;
    }

    struct Trade {
        address trader;
        address collateralToken;
        uint256 collateralAmount;
        uint256 leverage;
        uint256 leveragedAmount;
        uint256 maxPayout;
        bool isLong;
        int256 entryFundingRate;
        uint256 entryPrice;
        uint256 takeProfitPrice;
        uint256 stopLossPrice;
        uint256 indexId;
        TradeStatus status;
    }

    function changeBaseFundingRate(uint64 newBaseFundingRate) external;
    function changeLiquidationFeeRate(uint64 newLiquidationFeeRate) external;
    function changeLiquidationThreshold(uint64 newLiquidationThreshold) external;
    function changeMarketImbalanceFeeSettings(
        uint64 newMinMarketImbalance,
        uint64 newMaxMarketImbalance,
        uint64 newMaxMarketImbalanceFeeRate
    ) external;
    function changeMaxLeverage(uint256 newMaxLeverage) external;
    function changeMaxPayoutThreshold(uint64 maxPayoutThreshold) external;
    function changePool(IPool newPool) external;
    function changeTradingFeeRate(uint64 newTradingFeeRate) external;
    function changeTreasury(address newTreasury) external;

    function placeMarketOrder(
        address collateralToken,
        uint256 collateralAmount,
        uint256 leverage,
        bool isLong,
        uint256 limitPrice,
        uint256 indexId
    ) external;

    function placeLimitOrder(
        address collateralToken,
        uint256 collateralAmount,
        uint256 leverage,
        bool isLong,
        uint256 entryPrice,
        uint256 indexId
    ) external;

    function cancelOrder(uint256 tradeId) external;

    function processTrades(uint256[] calldata tradeIds, address feeReceiver) external;

    function closePosition(uint256 tradeId) external;

    function setTargetPrices(
        uint256 tradeId,
        uint256 takeProfitPrice,
        uint256 stopLossPrice
    ) external;

    function canProcessTrades(
        uint256[] calldata tradeIds
    ) external view returns (bool[] memory result);

    function getFundingPnL(uint256 tradeId) external view returns (int256);

    function getPayout(uint256 tradeId) external view returns (uint256);

    event BaseFundingRateChanged(uint256 newBaseFundingRate);
    event FundingRateUpdated(
        uint256 indexed indexId,
        address indexed collateralToken,
        int256 fundingRate
    );
    event LiquidationFeeRateChanged(uint256 newLiquidationFeeRate);
    event LiquidationThresholdChanged(uint256 newLiquidationThreshold);
    event MarketImbalanceFeeSettingsChanged(
        uint256 newMinMarketImbalance,
        uint256 newMaxMarketImbalance,
        uint256 newMaxMarketImbalanceFeeRate
    );
    event MaxLeverageChanged(uint256 newMaxLeverage);
    event MaxPayoutThresholdChanged(uint256 newMaxPayoutThreshold);
    event OrderCanceled(uint256 tradeId);
    event OrderExecuted(
        uint256 indexed tradeId,
        uint256 tradingFee,
        uint256 marketImbalanceFee,
        uint256 maxPayout
    );
    event OrderPlaced(
        uint256 indexed tradeId,
        address indexed trader,
        address indexed collateralToken,
        uint256 collateralAmount,
        uint256 leverage,
        bool isLong,
        uint256 entryPrice,
        uint256 indexId
    );
    event PoolChanged(IPool newPool);
    event PositionClosed(uint256 indexed tradeId, uint256 payout, uint256 indexPrice);
    event PositionLiquidated(
        address indexed liquidator,
        uint256 indexed tradeId,
        uint256 payout,
        uint256 indexPrice,
        uint256 liquidationFee,
        address feeReceiver
    );
    event TargetPricesSet(uint256 indexed tradeId, uint256 takeProfitPrice, uint256 stopLossPrice);
    event TradingFeeRateChanged(uint256 newFeeRate);
    event TradingInitialized(
        uint256 maxLeverage,
        uint256 liquidationThreshold,
        uint256 maxPayoutThreshold,
        uint256 baseFundingRate,
        uint256 tradingFeeRate
    );
    event TreasuryChanged(address newTreasury);

    error IncorrectMarketImbalanceBounds();
    error InvalidLeverage(uint256 minLeverage, uint256 maxLeverage);
    error InvalidTargetPrices(uint256 takeProfitPrice, uint256 stopLossPrice);
    error NoCollateral();
    error NoChanges();
    error OnlyTradeOwner(address owner);
    error OrderAlreadyExecuted(uint256 tradeId);
    error OrderNotExecuted(uint256 tradeId);
    error PriceLimit(uint256 limitPrice, uint256 indexPrice);
    error TradeClosed(uint256 tradeId);
    error TradeDoesNotExist(uint256 tradeId);
}
