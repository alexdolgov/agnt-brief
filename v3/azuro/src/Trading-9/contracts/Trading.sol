// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.28;

import {
    OwnableUpgradeable
} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {TransferHelper} from "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import {IPool} from "./interfaces/IPool.sol";
import {IPriceFeed} from "./interfaces/IPriceFeed.sol";
import {ITrading} from "./interfaces/ITrading.sol";
import {FixedMath} from "./libraries/FixedMath.sol";

contract Trading is OwnableUpgradeable, ITrading {
    using FixedMath for *;

    uint256 public maxLeverage;
    uint256 public maxPayoutThreshold;
    uint64 public liquidationThreshold;
    uint64 public baseFundingRate;
    uint64 public maintenanceMarginRate;
    uint64 public minMarketImbalance;
    uint64 public maxMarketImbalance;
    uint64 public maxMarketImbalanceFeeRate;
    uint64 public tradingFeeRate;
    uint64 public liquidationFeeRate;

    mapping(uint256 => mapping(address => Market)) public markets;
    mapping(uint256 => Trade) public trades;

    uint256 public nextTradeId;

    IPool public pool;
    IPriceFeed public priceFeed;
    address public treasury;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    modifier checkMaxPossibleFee() {
        _;
        _checkMaxPossibleFee();
    }

    modifier updateFunding(Trade storage trade) {
        Market storage market = _getMarket(trade);
        _accrueFundingFee(market, trade.collateralToken);
        _;
        _updateFundingRate(trade, market);
    }

    function initialize(
        IPriceFeed priceFeed_,
        address treasury_,
        uint64 tradingFeeRate_,
        uint64 liquidationThreshold_,
        uint64 baseFundingRate_,
        uint256 maxLeverage_,
        uint256 maxPayoutThreshold_
    ) external initializer checkMaxPossibleFee {
        liquidationThreshold_.requireLessThanOne();
        baseFundingRate_.requireLessThanOne();
        maxLeverage_.requireAtLeastOne();
        maxPayoutThreshold_.requireAtLeastOne();

        __Ownable_init(msg.sender);

        priceFeed = priceFeed_;
        treasury = treasury_;
        tradingFeeRate = tradingFeeRate_;
        liquidationThreshold = liquidationThreshold_;
        maxPayoutThreshold = maxPayoutThreshold_;
        baseFundingRate = baseFundingRate_;
        maxLeverage = maxLeverage_;

        emit TradingInitialized(
            maxLeverage_,
            liquidationThreshold_,
            maxPayoutThreshold_,
            baseFundingRate_,
            tradingFeeRate_
        );
    }

    /**
     * @notice Owner: Set the pool contract address. Can be called only once.
     * @param newPool The new pool contract address to be set.
     */
    function setPool(IPool newPool) external onlyOwner {
        if (address(pool) != address(0)) revert PoolAlreadySet();
        pool = newPool;
        emit PoolSet(newPool);
    }

    /**
     * @notice Owner: Updates the base funding rate per hour.
     * @param newBaseFundingRate The new base funding rate per second to set (fixed-point, less than 1.0).
     */
    function changeBaseFundingRate(uint64 newBaseFundingRate) external onlyOwner {
        if (newBaseFundingRate == baseFundingRate) revert NoChanges();
        newBaseFundingRate.requireLessThanOne();

        baseFundingRate = newBaseFundingRate;

        emit BaseFundingRateChanged(newBaseFundingRate);
    }

    /**
     * @notice Owner: Updates the liquidation fee rate.
     * @param newLiquidationFeeRate The new fee rate to set (fixed-point, less than 1.0).
     */
    function changeLiquidationFeeRate(uint64 newLiquidationFeeRate) external onlyOwner {
        if (newLiquidationFeeRate == liquidationFeeRate) revert NoChanges();
        newLiquidationFeeRate.requireLessThanOne();

        liquidationFeeRate = newLiquidationFeeRate;

        emit LiquidationFeeRateChanged(newLiquidationFeeRate);
    }

    /**
     * @notice Owner: Updates the market imbalance fee settings.
     * @param newMinMarketImbalance The new minimum market imbalance threshold (scaled by 1e18).
     * @param newMaxMarketImbalance The new maximum market imbalance threshold (scaled by 1e18).
     * @param newMaxMarketImbalanceFeeRate The maximum fee rate to apply when market imbalance reaches maximum threshold.
     */
    function changeMarketImbalanceFeeSettings(
        uint64 newMinMarketImbalance,
        uint64 newMaxMarketImbalance,
        uint64 newMaxMarketImbalanceFeeRate
    ) external onlyOwner checkMaxPossibleFee {
        if (
            newMinMarketImbalance == minMarketImbalance &&
            newMaxMarketImbalance == maxMarketImbalance &&
            newMaxMarketImbalanceFeeRate == maxMarketImbalanceFeeRate
        ) revert NoChanges();
        if (
            newMinMarketImbalance <= FixedMath.ONE || newMaxMarketImbalance <= newMinMarketImbalance
        ) revert IncorrectMarketImbalanceBounds();

        minMarketImbalance = newMinMarketImbalance;
        maxMarketImbalance = newMaxMarketImbalance;
        maxMarketImbalanceFeeRate = newMaxMarketImbalanceFeeRate;

        emit MarketImbalanceFeeSettingsChanged(
            newMinMarketImbalance,
            newMaxMarketImbalance,
            newMaxMarketImbalanceFeeRate
        );
    }

    /**
     * @notice Owner: Updates the liquidation threshold for the contract.
     * @param newLiquidationThreshold The new liquidation threshold value to set (scaled by 1e18).
     */
    function changeLiquidationThreshold(uint64 newLiquidationThreshold) external onlyOwner {
        if (newLiquidationThreshold == liquidationThreshold) revert NoChanges();
        newLiquidationThreshold.requireLessThanOne();

        liquidationThreshold = newLiquidationThreshold;

        emit LiquidationThresholdChanged(newLiquidationThreshold);
    }

    /*
     * @notice Owner-only: Updates the maintenance margin rate used for liquidation checks.
     * @param newMaintenanceMarginRate The new maintenance margin rate, scaled by 1e18. It defines the minimum
     *        collateral ratio (after adding/deducting funding fee), relative to a position’s initial collateral size,
     *        that must be maintained to avoid liquidation.
     */
    function changeMaintenanceMarginRate(uint64 newMaintenanceMarginRate) external onlyOwner {
        if (newMaintenanceMarginRate == maintenanceMarginRate) revert NoChanges();
        newMaintenanceMarginRate.requireLessThanOne();

        maintenanceMarginRate = newMaintenanceMarginRate;

        emit MaintenanceMarginRateChanged(newMaintenanceMarginRate);
    }

    /**
     * @notice Owner: Updates the maximum leverage.
     * @param newMaxLeverage The new maximum leverage to set (fixed-point, minimum 1.0).
     */
    function changeMaxLeverage(uint256 newMaxLeverage) external onlyOwner checkMaxPossibleFee {
        if (newMaxLeverage == maxLeverage) revert NoChanges();
        newMaxLeverage.requireAtLeastOne();

        maxLeverage = newMaxLeverage;

        emit MaxLeverageChanged(newMaxLeverage);
    }

    /**
     * @notice Owner: Updates the maximum payout rate for positions.
     * @param newMaxPayoutThreshold Maximum payout rate relative to the trader's collateral (scaled by 1e18).
     */
    function changeMaxPayoutThreshold(uint256 newMaxPayoutThreshold) external onlyOwner {
        if (newMaxPayoutThreshold == maxPayoutThreshold) revert NoChanges();
        newMaxPayoutThreshold.requireAtLeastOne();

        maxPayoutThreshold = newMaxPayoutThreshold;

        emit MaxPayoutThresholdChanged(newMaxPayoutThreshold);
    }

    /**
     * @notice Owner: Updates the trading fee rate.
     * @param newTradingFeeRate The new fee rate to set (fixed-point, less than 1.0).
     */
    function changeTradingFeeRate(uint64 newTradingFeeRate) external onlyOwner checkMaxPossibleFee {
        if (newTradingFeeRate == tradingFeeRate) revert NoChanges();

        tradingFeeRate = newTradingFeeRate;

        emit TradingFeeRateChanged(newTradingFeeRate);
    }

    /**
     * @notice Owner: Updates the treasury address.
     * @dev Reverts if the new address is the same as the current one.
     * @param newTreasury The new treasury address to be set.
     */
    function changeTreasury(address newTreasury) external onlyOwner {
        if (newTreasury == treasury) revert NoChanges();
        treasury = newTreasury;
        emit TreasuryChanged(newTreasury);
    }

    /**
     * @notice Creates and executes a new market leveraged order with specified parameters
     * @param collateralToken Token used as collateral
     * @param collateralAmount Amount of collateral to deposit
     * @param leverage Leverage multiplier (e.g., 5e18 for 5x)
     * @param isLong Whether the position is long (true) or short (false)
     * @param limitPrice The worst index price at which the order will be accepted.
     * @param indexId Identifier of the asset index for the order
     */
    function placeMarketOrder(
        address collateralToken,
        uint256 collateralAmount,
        uint256 leverage,
        bool isLong,
        uint256 limitPrice,
        uint256 indexId
    ) external returns (uint256) {
        uint256 indexPrice = priceFeed.getPrice(indexId, isLong);
        if (isLong ? indexPrice > limitPrice : indexPrice < limitPrice)
            revert PriceLimit(limitPrice, indexPrice);
        return
            placeLimitOrder(
                collateralToken,
                collateralAmount,
                leverage,
                isLong,
                indexPrice,
                indexId
            );
    }

    /**
     * @notice Places a new leveraged order
     * @param collateralToken Token used as collateral
     * @param collateralAmount Amount of collateral
     * @param leverage Leverage multiplier (e.g., 5e18 for 5x)
     * @param isLong Whether the position is long (true) or short (false)
     * @param entryPrice Target price to trigger execution
     * @param indexId Index identifier
     */
    function placeLimitOrder(
        address collateralToken,
        uint256 collateralAmount,
        uint256 leverage,
        bool isLong,
        uint256 entryPrice,
        uint256 indexId
    ) public returns (uint256 tradeId) {
        if (collateralAmount == 0) revert NoCollateral();
        if (leverage < FixedMath.ONE || leverage > maxLeverage)
            revert InvalidLeverage(FixedMath.ONE, maxLeverage);

        pool.validateTrade(msg.sender, indexId, collateralToken, collateralAmount);
        TransferHelper.safeTransferFrom(
            collateralToken,
            msg.sender,
            address(this),
            collateralAmount
        );

        tradeId = nextTradeId++;
        Trade storage trade = trades[tradeId];
        trade.trader = msg.sender;
        trade.collateralToken = collateralToken;
        trade.collateralAmount = collateralAmount;
        trade.leverage = leverage;
        trade.isLong = isLong;
        trade.entryPrice = entryPrice;
        trade.indexId = indexId;

        emit OrderPlaced(
            tradeId,
            msg.sender,
            collateralToken,
            collateralAmount,
            leverage,
            isLong,
            entryPrice,
            indexId
        );

        _tryResolveOrder(tradeId, trade, true);
    }

    /**
     * @notice Cancels an un-executed order
     * @param tradeId ID of the trade to cancel
     */
    function cancelOrder(uint256 tradeId) public {
        if (msg.sender != trades[tradeId].trader) revert OnlyTradeOwner();
        _cancelOrder(tradeId);
    }

    /**
     * @notice Processes a list of trades to attempt execution, closing, or liquidation
     * @param tradeIds List of trade IDs to process
     * @param feeReceiver The address that will receive liquidation fees.
     */
    function processTrades(uint256[] calldata tradeIds, address feeReceiver) external {
        for (uint256 i; i < tradeIds.length; ++i) {
            uint256 tradeId = tradeIds[i];
            Trade storage trade = _getTrade(tradeId);
            if (trade.status == TradeStatus.ORDER) _tryResolveOrder(tradeId, trade, false);
            else if (trade.status == TradeStatus.POSITION)
                _tryClosePosition(tradeId, trade, false, feeReceiver);
        }
    }

    /**
     * @notice Manually closes an open position using the current market index price.
     * @param tradeId The unique identifier of the trade to be closed.
     */
    function closePosition(uint256 tradeId) external {
        Trade storage trade = _getPosition(tradeId);
        if (msg.sender != trade.trader) revert OnlyTradeOwner();

        _tryClosePosition(tradeId, trade, true, msg.sender);
    }

    /**
     * @notice Sets take-profit and stop-loss prices for a trade
     * @param tradeId ID of the trade
     * @param takeProfitPrice Price at which to take profit
     * @param stopLossPrice Price at which to stop loss
     */
    function setTargetPrices(
        uint256 tradeId,
        uint256 takeProfitPrice,
        uint256 stopLossPrice
    ) external {
        Trade storage trade = _getPosition(tradeId);
        if (msg.sender != trade.trader) revert OnlyTradeOwner();

        if (
            takeProfitPrice != 0 &&
            stopLossPrice != 0 &&
            (trade.isLong ? (stopLossPrice > takeProfitPrice) : (stopLossPrice < takeProfitPrice))
        ) revert InvalidTargetPrices(takeProfitPrice, stopLossPrice);

        trade.takeProfitPrice = takeProfitPrice;
        trade.stopLossPrice = stopLossPrice;
        emit TargetPricesSet(tradeId, takeProfitPrice, stopLossPrice);

        _tryClosePosition(tradeId, trade, false, msg.sender);
    }

    /**
     * @notice Checks if each trade in the given list can be processed (executed/closed/liquidated).
     * @param tradeIds An array of trade IDs to check.
     * @return result A boolean array where each element indicates whether the corresponding trade can be processed.
     */
    function canProcessTrades(
        uint256[] calldata tradeIds
    ) external view returns (bool[] memory result) {
        uint256 length = tradeIds.length;
        result = new bool[](length);
        for (uint256 i; i < length; ++i) {
            uint256 tradeId = tradeIds[i];
            Trade storage trade = _getTrade(tradeId);
            try
                priceFeed.getPrice(trade.indexId, true) // flag value is not important
            {} catch {
                result[i] = false;
                continue;
            }
            if (trade.status == TradeStatus.ORDER) {
                result[i] = _evaluateOrderExecution(trade);
            } else if (trade.status == TradeStatus.POSITION) {
                (, , , PositionCloseStatus status) = _evaluatePositionClose(trade);
                result[i] = status != PositionCloseStatus.PENDING;
            } else {
                result[i] = false;
            }
        }
    }

    /**
     * @notice Calculates the additional fee rate based on the current market imbalance.
     * @return The market imbalance fee rate scaled by 1e18.
     */
    function _getMarketImbalanceFeeRate(
        Market storage market,
        uint256 leveragedAmount,
        bool isLong
    ) internal view returns (uint256) {
        if (
            maxMarketImbalanceFeeRate == 0 || isLong
                ? market.totalShort == 0
                : market.totalLong == 0
        ) return 0;

        uint256 marketImbalance = isLong
            ? (market.totalLong + leveragedAmount).div(market.totalShort)
            : (market.totalShort + leveragedAmount).div(market.totalLong);
        if (marketImbalance < minMarketImbalance) return 0;
        if (marketImbalance >= maxMarketImbalance) return maxMarketImbalanceFeeRate;

        return (maxMarketImbalanceFeeRate * marketImbalance) / maxMarketImbalance;
    }

    /**
     * @notice Returns funding profit or loss for a given trade
     * @param tradeId Trade ID to evaluate
     * @return Signed funding PnL
     */
    function getFundingPnL(uint256 tradeId) external view returns (int256) {
        return _getFundingPnL(_getPosition(tradeId));
    }

    function getLiquidationPrice(
        uint256 tradeId
    ) external view returns (uint256 liquidationPrice, uint256 payoutThresholdPrice) {
        Trade storage trade = _getPosition(tradeId);

        {
            int256 tradingPnlForMax = int256(trade.maxPayout) - int256(trade.collateralAmount);
            int256 deltaNumerator = tradingPnlForMax * int256(trade.entryPrice);
            int256 delta = deltaNumerator / int256(trade.leveragedAmount);

            int256 pInt = trade.isLong
                ? int256(trade.entryPrice) + delta
                : int256(trade.entryPrice) - delta;
            payoutThresholdPrice = pInt > 0 ? uint256(pInt) : 0;
        }
        {
            int256 lhsFactor = int256(uint256(liquidationThreshold)) - int256(FixedMath.ONE);
            int256 sumCollateralFunding = int256(trade.collateralAmount) + _getFundingPnL(trade);
            int256 tradingPnlRequired = (lhsFactor * sumCollateralFunding) / int256(FixedMath.ONE);

            int256 deltaNumerator = tradingPnlRequired * int256(trade.entryPrice);
            int256 delta = deltaNumerator / int256(trade.leveragedAmount);

            int256 pInt = trade.isLong
                ? int256(trade.entryPrice) + delta
                : int256(trade.entryPrice) - delta;
            liquidationPrice = pInt > 0 ? uint256(pInt) : 0;
        }
    }

    /**
     * @notice Calculates the additional fee rate based on the current market imbalance.
     * @return The market imbalance fee rate scaled by 1e18.
     */
    function getMarketImbalanceFeeRate(
        address collateralToken,
        uint256 collateralAmount,
        uint256 leverage,
        bool isLong,
        uint256 indexId
    ) external view returns (uint256) {
        return
            _getMarketImbalanceFeeRate(
                markets[indexId][collateralToken],
                collateralAmount.mul(leverage),
                isLong
            );
    }

    /**
     * @notice Calculates expected payout for a given trade
     * @param tradeId Trade ID
     * @return payout Final payout in collateral tokens
     */
    function getPayout(uint256 tradeId) external view returns (uint256 payout) {
        (payout, , , ) = _getPayout(_getPosition(tradeId));
    }

    /**
     * @notice Attempts to convert an open order into a position or cancel it if the relevant conditions are met.
     * @param tradeId The unique identifier of the trade.
     * @param trade The trade storage reference.
     * @param orderValidated Is the order validated by the pool in this transaction.
     */
    function _tryResolveOrder(
        uint256 tradeId,
        Trade storage trade,
        bool orderValidated
    ) internal updateFunding(trade) {
        if (!orderValidated && !_isValidTrade(trade, true)) {
            _cancelOrder(tradeId);
            return;
        }
        if (!_evaluateOrderExecution(trade)) return;

        Market storage market = _getMarket(trade);

        trade.status = TradeStatus.POSITION;
        trade.entryFundingRate = market.cumulativeFundingFee;

        uint256 leveragedAmount = trade.collateralAmount.mul(trade.leverage);
        uint256 tradingFee = leveragedAmount.mul(tradingFeeRate);
        leveragedAmount -= tradingFee;

        uint256 marketImbalanceFee = leveragedAmount.mul(
            _getMarketImbalanceFeeRate(market, leveragedAmount, trade.isLong)
        );
        leveragedAmount -= marketImbalanceFee;
        trade.leveragedAmount = leveragedAmount;
        trade.collateralAmount -= tradingFee + marketImbalanceFee;

        if (trade.isLong) {
            market.totalLong += leveragedAmount;
        } else {
            market.totalShort += leveragedAmount;
        }

        uint256 maxPayout = _getMaxPayout(trade);
        trade.maxPayout = maxPayout;

        _adjustReserve(
            trade.collateralToken,
            int256(marketImbalanceFee),
            int256(maxPayout - trade.collateralAmount)
        );
        _transfer(trade.collateralToken, treasury, tradingFee);

        emit OrderExecuted(tradeId, tradingFee, marketImbalanceFee, maxPayout);
    }

    /**
     * @notice Attempts to finalize and close an open position, updating pool reserves and transferring any payout.
     * @param tradeId The unique identifier of the trade.
     * @param trade The trade storage reference.
     * @param requestedByTrader Indicates whether the position is being closed manually by the trader.
     * @param feeReceiver The address that will receive liquidation fees.
     * @return success True if the position was successfully closed.
     */
    function _tryClosePosition(
        uint256 tradeId,
        Trade storage trade,
        bool requestedByTrader,
        address feeReceiver
    ) internal updateFunding(trade) returns (bool) {
        (
            uint256 payout,
            uint256 indexPrice,
            int256 fundingPnl,
            PositionCloseStatus status
        ) = _evaluatePositionClose(trade);
        if (!requestedByTrader && status == PositionCloseStatus.PENDING) return false;

        trade.status = TradeStatus.CLOSED;

        Market storage market = _getMarket(trade);
        if (trade.isLong) {
            market.totalLong -= trade.leveragedAmount;
        } else {
            market.totalShort -= trade.leveragedAmount;
        }

        _adjustReserve(
            trade.collateralToken,
            int256(trade.collateralAmount) + fundingPnl - int256(payout),
            -int256(trade.maxPayout - trade.collateralAmount)
        );

        if (status == PositionCloseStatus.LIQUIDATABLE) {
            uint256 liquidationFee = payout.mul(liquidationFeeRate);
            payout -= liquidationFee;

            _transfer(trade.collateralToken, feeReceiver, liquidationFee);

            emit PositionLiquidated(
                msg.sender,
                tradeId,
                payout,
                indexPrice,
                liquidationFee,
                feeReceiver
            );
        } else {
            emit PositionClosed(tradeId, payout, indexPrice);
        }
        _transfer(trade.collateralToken, trade.trader, payout);

        return true;
    }

    /**
     * @notice Accrues funding fees based on the time elapsed since the last accrual.
     * @dev Updates cumulative funding rates for long and short positions.
     *      Skips if no time has passed or if there is no open interest on either side.
     */
    function _accrueFundingFee(Market storage market, address collateralToken) internal {
        int256 timeDelta = int256(block.timestamp - market.fundingFeeAccruedAt);
        market.fundingFeeAccruedAt = block.timestamp;

        if (timeDelta == 0 || market.totalLong == 0 || market.totalShort == 0) return;

        int256 accumulatedFundingFee = market.fundingRate * timeDelta;
        market.cumulativeFundingFee += accumulatedFundingFee;

        if (accumulatedFundingFee == 0) return;
        uint256 extraFunding = accumulatedFundingFee > 0
            ? (market.totalLong - market.totalShort).mul(uint256(accumulatedFundingFee))
            : (market.totalShort - market.totalLong).mul(uint256(-accumulatedFundingFee));
        _adjustReserve(collateralToken, int256(extraFunding), 0);
    }

    /**
     * @notice Refreshes funding fee rates based on index marketImbalance.
     * @dev Calculates per-second rate for the funding mechanism.
     *      Only updates if the funding interval has passed and both long and short open interest exist.
     */
    function _updateFundingRate(Trade storage trade, Market storage market) internal {
        market.fundingRateUpdatedAt = block.timestamp;

        if (market.totalLong == 0 || market.totalShort == 0) {
            market.fundingRate = 0;
        } else {
            if (market.totalLong > market.totalShort) {
                market.fundingRate = int256(
                    ((market.totalLong - market.totalShort) * baseFundingRate) / market.totalLong
                );
            } else {
                market.fundingRate = -int256(
                    ((market.totalShort - market.totalLong) * baseFundingRate) / market.totalShort
                );
            }
        }

        emit FundingRateUpdated(trade.indexId, trade.collateralToken, market.fundingRate);
    }

    /**
     * @notice Adjusts the reserve amount for a given collateral token in the pool.
     * @param collateralToken Token used as collateral.
     * @param deltaReserve The change in reserve amount:
     *        - Positive values increase the reserve.
     *        - Negative values decrease the reserve.
     * @param deltaReserve The change in locked reserve amount:
     *        - Positive values lock the reserve.
     *        - Negative values unlock the reserve.
     */
    function _adjustReserve(
        address collateralToken,
        int256 deltaReserve,
        int256 deltaLocked
    ) internal {
        if (deltaReserve == 0 && deltaLocked == 0) return;
        if (deltaReserve > 0) {
            TransferHelper.safeApprove(collateralToken, address(pool), uint256(deltaReserve));
        }
        pool.adjustReserve(collateralToken, deltaReserve, deltaLocked);
    }

    /**
     * @notice Cancels an un-executed order
     * @param tradeId ID of the trade to cancel
     */
    function _cancelOrder(uint256 tradeId) internal {
        Trade storage trade = _getOrder(tradeId);

        trade.status = TradeStatus.CLOSED;
        _transfer(trade.collateralToken, trade.trader, trade.collateralAmount);

        emit OrderCanceled(tradeId);
    }

    function _checkMaxPossibleFee() internal {
        if ((maxMarketImbalanceFeeRate + tradingFeeRate).mul(maxLeverage) >= FixedMath.ONE)
            revert PossibleFeeTooHigh();
    }

    /**
     * @notice Evaluates whether an order can be executed based on current index price.
     * @param trade The order to evaluate.
     * @return ok Whether the execution conditions are satisfied.
     */
    function _evaluateOrderExecution(Trade storage trade) internal view returns (bool ok) {
        uint256 price = priceFeed.getPrice(trade.indexId, trade.isLong);
        ok =
            (trade.isLong && price <= trade.entryPrice) ||
            (!trade.isLong && price >= trade.entryPrice);
    }

    /**
     * @notice Evaluates whether a trading position can be closed or liquidated, and calculates the payout.
     * @param trade The trade object containing position details (stored in contract storage).
     * @return payout The calculated payout amount if the position were to be closed.
     * @return indexPrice The current index price used for evaluation.
     * @return fundingPnl The profit or loss resulting from funding payments.
     * @return status The evaluated state of the position.
     */
    function _evaluatePositionClose(
        Trade storage trade
    )
        internal
        view
        returns (uint256 payout, uint256 indexPrice, int256 fundingPnl, PositionCloseStatus status)
    {
        bool maxPayoutReached;
        (payout, indexPrice, fundingPnl, maxPayoutReached) = _getPayout(trade);

        if (
            !_isValidTrade(trade, false) ||
            int256(trade.collateralAmount) + fundingPnl <=
            int256(maintenanceMarginRate.mul(trade.collateralAmount)) ||
            int256(payout) <= liquidationThreshold.mul(int256(trade.collateralAmount) + fundingPnl)
        ) {
            status = PositionCloseStatus.LIQUIDATABLE;
        } else if (
            maxPayoutReached ||
            (trade.takeProfitPrice != 0 &&
                (
                    trade.isLong
                        ? indexPrice >= trade.takeProfitPrice
                        : indexPrice <= trade.takeProfitPrice
                )) ||
            (trade.stopLossPrice != 0 &&
                (
                    trade.isLong
                        ? indexPrice <= trade.stopLossPrice
                        : indexPrice >= trade.stopLossPrice
                ))
        ) {
            status = PositionCloseStatus.TRIGGERED;
        }
    }

    /**
     * @notice Transfers a specified amount of tokens to a given address.
     * @param token The address of the ERC20 token to transfer.
     * @param to The recipient address of the tokens.
     * @param value The amount of tokens to transfer.
     */
    function _transfer(address token, address to, uint256 value) internal {
        if (value > 0) TransferHelper.safeTransfer(token, to, value);
    }

    /**
     * @notice Calculates the net funding profit or loss for a trade since it was opened.
     * @param trade The trade to evaluate.
     * @return pnl The funding PnL (positive or negative).
     */
    function _getFundingPnL(Trade storage trade) internal view returns (int256) {
        Market storage market = _getMarket(trade);

        int256 cumulativeFundingFee = market.cumulativeFundingFee;
        // *** For External Calls ***
        int256 timeDelta = int256(block.timestamp - market.fundingFeeAccruedAt);
        if (timeDelta > 0 && market.totalLong > 0 && market.totalShort > 0) {
            int256 accumulatedFundingFee = market.fundingRate * timeDelta;
            cumulativeFundingFee += accumulatedFundingFee;
        }
        // *** For External Calls ***

        int256 fundingFeeDelta = (
            trade.isLong
                ? trade.entryFundingRate - cumulativeFundingFee
                : cumulativeFundingFee - trade.entryFundingRate
        );

        return trade.leveragedAmount.mul(fundingFeeDelta);
    }

    /**
     * @notice Calculates the current payout for a trade.
     * @param trade The trade to evaluate.
     * @return payout The amount of tokens to be returned to the trader.
     * @return indexPrice The current price of the trade index.
     * @return fundingPnL The funding PnL.
     * @return maxPayoutReached If the current payout is the maximum possible payout for the trade.
     */
    function _getPayout(
        Trade storage trade
    )
        internal
        view
        returns (uint256 payout, uint256 indexPrice, int256 fundingPnL, bool maxPayoutReached)
    {
        indexPrice = priceFeed.getPrice(trade.indexId, !trade.isLong);

        int256 initialValue = int256(trade.leveragedAmount);
        int256 currentValue = int256((trade.leveragedAmount * indexPrice) / trade.entryPrice);
        int256 tradingPnl = (
            trade.isLong ? currentValue - initialValue : initialValue - currentValue
        );

        int256 rawPayout = int256(trade.collateralAmount) + tradingPnl;
        if (rawPayout >= int256(trade.maxPayout)) {
            rawPayout = int256(trade.maxPayout);
            maxPayoutReached = true;
        }

        fundingPnL = _getFundingPnL(trade);
        rawPayout += fundingPnL;

        payout = rawPayout > 0 ? uint256(rawPayout) : 0;
    }

    /**
     * @notice Fetches an existing trade and ensures it is not yet closed.
     * @param tradeId The unique identifier of the trade.
     * @return trade The trade storage reference.
     */
    function _getTrade(uint256 tradeId) internal view returns (Trade storage trade) {
        trade = trades[tradeId];
        if (trade.trader == address(0)) revert TradeDoesNotExist(tradeId);
    }

    /**
     * @notice Fetches a trade and ensures it is still in the "order" state.
     * @param tradeId The unique identifier of the trade.
     * @return trade The trade storage reference.
     */
    function _getOrder(uint256 tradeId) internal view returns (Trade storage trade) {
        trade = _getTrade(tradeId);
        if (trade.status != TradeStatus.ORDER) revert OrderAlreadyResolved(tradeId);
    }

    /**
     * @notice Fetches a trade and ensures it is currently an open position.
     * @param tradeId The unique identifier of the trade.
     * @return trade The trade storage reference.
     */
    function _getPosition(uint256 tradeId) internal view returns (Trade storage trade) {
        trade = _getTrade(tradeId);
        if (trade.status == TradeStatus.ORDER) revert OrderNotExecuted(tradeId);
        if (trade.status == TradeStatus.CLOSED) revert TradeClosed(tradeId);
    }

    /**
     * @notice Fetches the Market that a Trade is associated with.
     */
    function _getMarket(Trade storage trade) internal view returns (Market storage market) {
        return markets[trade.indexId][trade.collateralToken];
    }

    /**
     * @notice Calculates maximum payout for a Trade.
     */
    function _getMaxPayout(Trade storage trade) internal view returns (uint256 maxPayout) {
        maxPayout = trade.collateralAmount.mul(maxPayoutThreshold);
        if (!trade.isLong) {
            uint256 maxShortPayout = trade.leveragedAmount + trade.collateralAmount;
            if (maxPayout > maxShortPayout) {
                maxPayout = maxShortPayout;
            }
        }
    }

    function _isValidTrade(
        Trade storage trade,
        bool validateCollateralAmount
    ) internal view returns (bool) {
        try
            pool.validateTrade(
                trade.trader,
                trade.indexId,
                trade.collateralToken,
                validateCollateralAmount ? trade.collateralAmount : type(uint256).max
            )
        {
            return true;
        } catch {
            return false;
        }
    }
}
