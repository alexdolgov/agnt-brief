// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { IDomfiPriceUpKeep } from "./IDomfiPriceUpKeep.sol";
import { IDomfiTradingStorage } from "./IDomfiTradingStorage.sol";

interface IDomfiTradingCallbacks {
    enum TradeType {
        MARKET,
        LIMIT
    }

    enum CancelReason {
        NONE,
        PAUSED,
        SLIPPAGE,
        TP_REACHED,
        SL_REACHED,
        EXPOSURE_LIMITS,
        PRICE_IMPACT,
        MAX_LEVERAGE,
        MIN_LEVERAGE,
        NO_TRADE,
        UNDER_LIQUIDATION,
        NOT_HIT,
        GAIN_LOSS
    }

    event MarketOpenExecuted(
        uint256 indexed orderId,
        IDomfiTradingStorage.Trade t,
        uint256 priceImpactP,
        uint256 tradeNotional
    );
    event MarketCloseExecuted(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        uint256 price,
        uint256 priceImpactP,
        int256 percentProfit,
        uint256 usdcSentToTrader,
        uint256 percentageClosed
    );
    event LimitOpenExecuted(
        uint256 indexed orderId,
        uint256 limitIndex,
        IDomfiTradingStorage.Trade t,
        uint256 priceImpactP,
        uint256 tradeNotional
    );
    event LimitCloseExecuted(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        IDomfiTradingStorage.LimitOrder orderType,
        uint256 price,
        uint256 priceImpactP,
        int256 percentProfit,
        uint256 usdcSentToTrader
    );
    event MarketOpenCanceled(
        uint256 indexed orderId,
        address indexed trader,
        uint256 indexed pairIndex,
        CancelReason cancelReason
    );
    event MarketCloseCanceled(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint256 pairIndex,
        uint256 index,
        CancelReason cancelReason
    );
    event AutomationOpenOrderCanceled(
        uint256 indexed orderId,
        address indexed trader,
        uint256 indexed pairIndex,
        CancelReason cancelReason
    );
    event AutomationCloseOrderCanceled(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint256 pairIndex,
        IDomfiTradingStorage.LimitOrder orderType,
        CancelReason cancelReason
    );
    event Done(bool done);
    event Paused(bool paused);
    event MaxSlPUpdated(uint8 value);
    event DevFeeCharged(uint256 indexed tradeId, address indexed trader, uint256 amount);
    event VaultOpeningFeeCharged(uint256 indexed tradeId, address indexed trader, uint256 amount);
    event VaultClosingFeeCharged(uint256 indexed tradeId, address indexed trader, uint256 amount);
    event VaultLiqFeeCharged(
        uint256 indexed orderId, uint256 indexed tradeId, address indexed trader, uint256 amount
    );
    event RemoveCollateralRejected(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint16 pairIndex,
        uint256 removeAmount,
        CancelReason reason
    );
    event RemoveCollateralExecuted(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint16 pairIndex,
        uint256 removeAmount,
        uint32 leverage,
        uint192 tp,
        uint192 sl
    );
    event FeesCharged(
        uint256 indexed orderId, uint256 indexed tradeId, address indexed trader, int256 fundingFees
    );

    error IsDone();
    error WrongParams();
    error NotGov(address caller);
    error NotManager(address caller);
    error NotPriceUpKeep(address caller);

    function isDone() external view returns (bool);
    function isPaused() external view returns (bool);
    function maxSlP() external view returns (uint8);

    // only priceUpKeep
    function openTradeMarketCallback(IDomfiPriceUpKeep.PriceUpKeepAnswer calldata a) external;
    function closeTradeMarketCallback(IDomfiPriceUpKeep.PriceUpKeepAnswer calldata a) external;

    function executeAutomationOpenOrderCallback(IDomfiPriceUpKeep.PriceUpKeepAnswer calldata a)
        external;

    function executeAutomationCloseOrderCallback(IDomfiPriceUpKeep.PriceUpKeepAnswer calldata a)
        external;

    function handleRemoveCollateral(IDomfiPriceUpKeep.PriceUpKeepAnswer calldata a) external;

    // only gov
    function done() external;
    function setVaultMaxAllowance() external;
    function setMaxSlP(uint8 newMaxSlP) external;
    function unsetVaultMaxAllowance(address oldVault) external;

    // only manager
    function pause() external;
}
