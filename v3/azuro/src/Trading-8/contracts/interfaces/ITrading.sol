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

    struct CollateralToken {
        uint64 holdingFeeRate;
        uint256 totalPositionsSize;
        uint256 cumulativeHoldingRate;
        uint256 holdingFeeAccruedAt;
    }

    struct Market {
        uint256 totalLong;
        uint256 totalShort;
        int256 cumulativeFundingFee;
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
        uint256 entryHoldingRate;
    }

    function setPool(IPool newPool) external;
    function changeBaseFundingRate(uint64 newBaseFundingRate) external;
    function changeHoldingFeeRate(address token, uint64 newHoldingFeeRate) external;
    function changeLiquidationFeeRate(uint64 newLiquidationFeeRate) external;
    function changeLiquidationThreshold(uint64 newLiquidationThreshold) external;
    function changeMaintenanceMarginRate(uint64 newMaintenanceMarginRate) external;
    function changeMarketImbalanceFeeSettings(
        uint64 newMinMarketImbalance,
        uint64 newMaxMarketImbalance,
        uint64 newMaxMarketImbalanceFeeRate
    ) external;
    function changeMaxLeverage(uint256 newMaxLeverage) external;
    function changeMaxPayoutThreshold(uint256 maxPayoutThreshold) external;
    function changeTradingFeeRate(uint64 newTradingFeeRate) external;
    function changeTreasury(address newTreasury) external;

    function placeMarketOrder(
        address collateralToken,
        uint256 collateralAmount,
        uint256 leverage,
        bool isLong,
        uint256 limitPrice,
        uint256 indexId
    ) external returns (uint256);

    function placeLimitOrder(
        address collateralToken,
        uint256 collateralAmount,
        uint256 leverage,
        bool isLong,
        uint256 entryPrice,
        uint256 indexId
    ) external returns (uint256);

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

    function getHoldingFee(uint256 tradeId) external view returns (uint256);

    function getPayout(uint256 tradeId) external view returns (uint256);

    event BaseFundingRateChanged(uint256 newBaseFundingRate);
    event ExtraFeesAccrued(uint256 indexed tradeId, int256 fundingPnl, uint256 holdingFee);
    event FundingRateUpdated(
        uint256 indexed indexId,
        address indexed collateralToken,
        int256 fundingRate
    );
    event HoldingFeeRateChanged(address indexed token, uint256 newHoldingFeeRate);
    event LiquidationFeeRateChanged(uint256 newLiquidationFeeRate);
    event LiquidationThresholdChanged(uint256 newLiquidationThreshold);
    event MaintenanceMarginRateChanged(uint256 newMaintenanceMarginRate);
    event MarketImbalanceFeeSettingsChanged(
        uint256 newMinMarketImbalance,
        uint256 newMaxMarketImbalance,
        uint256 newMaxMarketImbalanceFeeRate
    );
    event MaxLeverageChanged(uint256 newMaxLeverage);
    event MaxPayoutThresholdChanged(uint256 newMaxPayoutThreshold);
    event OrderCanceled(uint256 indexed tradeId);
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
    event PoolSet(IPool newPool);
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
    error OnlyTradeOwner();
    error OrderAlreadyResolved(uint256 tradeId);
    error OrderNotExecuted(uint256 tradeId);
    error PriceLimit(uint256 limitPrice, uint256 indexPrice);
    error PoolAlreadySet();
    error PossibleFeeTooHigh();
    error TradeClosed(uint256 tradeId);
    error TradeDoesNotExist(uint256 tradeId);
}
