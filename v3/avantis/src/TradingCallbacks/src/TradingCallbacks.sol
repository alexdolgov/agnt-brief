// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "./interfaces/ITradingStorage.sol";
import "./interfaces/IPairInfos.sol";
import "./interfaces/ICallbacks.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {PositionMath} from "./library/PositionMath.sol";

contract TradingCallbacks is Initializable, ICallbacks {
    using PositionMath for uint;

    uint private constant _PRECISION = 1e10;
    uint private constant _WITHDRAW_THRESHOLD_P = 80;
    uint private constant _MAX_EXEC_REWARD = 10e6;

    ITradingStorage public storageT;
    IPairInfos public pairInfos;

    uint public liqFeeP;
    uint public liqTotalFeeP;
    uint public override vaultFeeP;

    modifier onlyPriceAggregator() {
        require(msg.sender == address(storageT.priceAggregator()), "A_O");
        _;
    }

    constructor() {
        _disableInitializers();
    }

   /**
     * @dev Initializes proxy
     * @param _storageT Address of the Trading Storage contract.
     * @param _pairInfos Address of the PairInfos contract.
     */
    function initialize(address _storageT, address _pairInfos) external initializer {
        storageT = ITradingStorage(_storageT);
        pairInfos = IPairInfos(_pairInfos);
        vaultFeeP = 20;
        liqFeeP = 5;
        liqTotalFeeP = 10;
    }

    /**
     * @dev Updates the fees for liquidation, total liquidation, and the vault.
     * Can only be called by the governance address.
     * @param _liqFeeP Executor Reward for Liquidation
     * @param _liqTotalFeeP Total liquidation fee percentage inlcuding LP percentage
     * @param _vaultFeeP New vault fee percentage of Total Fees
     */
    function setFeeP(uint _liqFeeP, uint _liqTotalFeeP, uint _vaultFeeP) external{
        require(msg.sender == storageT.gov(), "G_O");
        liqFeeP = _liqFeeP;
        liqTotalFeeP = _liqTotalFeeP;
        vaultFeeP = _vaultFeeP;
    }

    /**
     * @dev Callback function for updating a trader's margin.(Deposit/Withdraw)
     * @param orderId orderId.
     * @param price price.
     * @param isPnl Bool indicating if IsPnl based Order.
     */
    function updateMarginCallback(
        uint orderId, uint price, bool isPnl
    ) external override onlyPriceAggregator {
        IPriceAggregator aggregator = storageT.priceAggregator();
        IPriceAggregator.PendingMarginUpdate memory o = aggregator.pendingMarginUpdateOrders(orderId);
        ITradingStorage.Trade memory _trade = storageT.openTrades(o.trader, o.pairIndex, o.index);
        

        if (o._type == ITradingStorage.updateType.DEPOSIT) {
            //Route USDC to Vault Mananger
            storageT.transferUSDC(_trade.trader, address(storageT), o.amount);
            storageT.vaultManager().receiveUSDCFromTrader(_trade.trader, o.amount);
        } else {
            require(price > 0, "ZERO_PRICE");
            {
                int profitP = aggregator.pairsStorage().currentPercentProfit(_trade.openPrice, price, _trade.buy, _trade.leverage, _trade.pairIndex);
                int pnl = (int(_trade.initialPosToken) * profitP) / int(_PRECISION) / 100;
                if (pnl < 0) {
                    pnl = (pnl * int(aggregator.pairsStorage().lossProtectionMultiplier(_trade.pairIndex, o.tier))) / 100;
                }
                require((int(_trade.initialPosToken) + pnl) > (int(_trade.initialPosToken) * int(100 - _WITHDRAW_THRESHOLD_P)) / 100, 
                            "W_T_B");
                require(profitP < aggregator.pairsStorage().maxProfitP(_trade.pairIndex), "P_T_B");
            }
            storageT.vaultManager().sendUSDCToTrader(_trade.trader, o.amount);
        }


        // Margin Fees can be zero in case of very low utilization/Last update time being close
        if (o.marginFees != 0){
            storageT.vaultManager().allocateRewards(o.marginFees, false);
        }

        pairInfos.storeTradeInitialAccFees(_trade.trader, _trade.pairIndex, _trade.index, _trade.buy);

        aggregator.unregisterPendingMarginUpdateOrder(orderId);
    }

    /**
     * @dev Callback function for opening a trade on the market.
     * @param orderId orderId.
     * @param price price.
     * @param spreadP spreadP.
     * @param isPnl Is a Pnl Based Fee Type Order
     */
    function openTradeMarketCallback(uint orderId, uint price, uint spreadP, bool isPnl) external override onlyPriceAggregator {
        ITradingStorage.PendingMarketOrder memory o = storageT.reqIDpendingMarketOrder(orderId);
        if (o.block == 0) {
            return;
        }
        ITradingStorage.Trade memory t = o.trade;
        IPriceAggregator aggregator = storageT.priceAggregator();
        IPairStorage pairsStored = aggregator.pairsStorage();

        // crypto only
        if (pairsStored.isDynamicSpreadEnabled(t.pairIndex))
        {
            (uint priceAfterImpact) = pairInfos.getTradePriceImpact(
                price,
                t.pairIndex,
                t.buy,
                t.positionSizeUSDC.mul(t.leverage),
                isPnl
            );

            t.openPrice = priceAfterImpact;
        } else {
            t.openPrice = _marketExecutionPrice(price, spreadP, t.buy);
        }

        uint maxSlippage = (o.wantedPrice * o.slippageP) / 100 / _PRECISION;

        if (
            price == 0 ||
            (t.buy ? t.openPrice > o.wantedPrice + maxSlippage : t.openPrice < o.wantedPrice - maxSlippage) ||
            (t.tp > 0 && (t.buy ? t.openPrice >= t.tp : t.openPrice <= t.tp)) ||
            (t.sl > 0 && (t.buy ? t.openPrice <= t.sl : t.openPrice >= t.sl))
        ) {
            revert("HIGH_SLIPPAGE");
        }
        else if(!storageT.withinExposureLimits(t.trader, t.pairIndex, t.positionSizeUSDC.mul(t.leverage), t.buy)){
            revert("EXPOSURE_LIMITS_BREACHED");
        } else {
            ITradingStorage.Trade memory finalTrade = _registerTrade(t, isPnl);

            emit MarketExecuted(
                orderId,
                finalTrade,
                true,
                finalTrade.openPrice,
                finalTrade.initialPosToken,
                0,
                0,
                isPnl
            );
        }

        storageT.unregisterPendingMarketOrder(orderId, true);
    }

    /**
     * @dev Callback function for closing a trade on the market.
     * @param orderId orderId.
     * @param price price.
     * @param isPnl Bool indicating if IsPnl based Order.
     */
    function closeTradeMarketCallback(uint orderId, uint price, bool isPnl) external override onlyPriceAggregator {
        ITradingStorage.PendingMarketOrder memory o = storageT.reqIDpendingMarketOrder(orderId);
        ITradingStorage.Trade memory t = storageT.openTrades(o.trade.trader, o.trade.pairIndex, o.trade.index);
        ICallbacks.Values memory values;

        // Check to avoid spamming
        if (price != 0 && t.leverage > 0) {
            ITradingStorage.TradeInfo memory i = storageT.openTradesInfo(t.trader, t.pairIndex, t.index);
            IPriceAggregator aggregator = storageT.priceAggregator();

            values.profitP = aggregator.pairsStorage().currentPercentProfit(t.openPrice, price, t.buy, t.leverage, t.pairIndex);
            
            values.pnl = (int(o.trade.initialPosToken) * values.profitP) / int(_PRECISION) / 100;
            values.levPosToken = ((values.pnl < 0) && (values.pnl * -1) >= int(o.trade.initialPosToken)) ? 0 : uint(int(o.trade.initialPosToken.mul(t.leverage)) + values.pnl);

            uint usdcSentToTrader = _unregisterTrade(
                t,
                values.profitP,
                o.trade.initialPosToken,
                0,
                (values.levPosToken * aggregator.pairsStorage().pairCloseFeeP(t.pairIndex)) / 100 / _PRECISION,
                isPnl
            );

            emit MarketExecuted(
                orderId,
                t,
                false,
                price,
                o.trade.initialPosToken,
                values.profitP,
                usdcSentToTrader,
                isPnl
            );
        }
        else {
            emit MarketOpenCanceled(orderId, t.trader, t.pairIndex);
        }
        storageT.unregisterPendingMarketOrder(orderId, false);
    }

    /**
     * @dev Callback function for executing limit open orders.
     * @param orderId orderId.
     * @param price price.
     * @param spreadP spreadP.
     * @param isPnl Bool indicating if IsPnl based Order.
     */
    function executeLimitOpenOrderCallback(uint orderId, uint price, uint spreadP, bool isPnl) external override onlyPriceAggregator {
        ITradingStorage.PendingLimitOrder memory n = storageT.reqIDpendingLimitOrder(orderId);
        IExecute executor = storageT.priceAggregator().executions();

        if (price != 0 && storageT.hasOpenLimitOrder(n.trader, n.pairIndex, n.index)) {
            ITradingStorage.OpenLimitOrder memory o = storageT.getOpenLimitOrder(n.trader, n.pairIndex, n.index);

            IPriceAggregator aggregator = storageT.priceAggregator();
            //IPairStorage pairsStored = aggregator.pairsStorage();

            if ((executor.openLimitOrderTypes(n.trader, n.pairIndex, n.index) == IExecute.OpenLimitOrderType.REVERSAL
                    ? (o.buy ? price >= o.price : price <= o.price)
                    : (o.buy ? price <= o.price : price >= o.price))
                && storageT.withinExposureLimits(o.trader, o.pairIndex, o.positionSize.mul(o.leverage), o.buy))
            {

                uint priceBeforeImpact = price;

                if (IPairStorage(aggregator.pairsStorage()).isDynamicSpreadEnabled(o.pairIndex)) 
                {
                    // crypto only
                    (uint priceAfterImpact) = pairInfos.getTradePriceImpact(
                        price,
                        o.pairIndex,
                        o.buy,
                        o.positionSize.mul(o.leverage),
                        isPnl
                    );

                    price = priceAfterImpact;
                } else {
                    price = _marketExecutionPrice(price, spreadP, o.buy);
                }

                if(!(o.buy ? price  > o.price + (o.price * o.slippageP) / 100 / _PRECISION : price < o.price - (o.price * o.slippageP) / 100 / _PRECISION)) {
                    ITradingStorage.Trade memory finalTrade = _registerTrade(
                    ITradingStorage.Trade(
                        o.trader,
                        o.pairIndex,
                        0,
                        0,
                        o.positionSize,
                        price,
                        o.buy,
                        o.leverage,
                        o.tp,
                        o.sl,
                        0
                        ),
                        isPnl
                    );

                    storageT.unregisterOpenLimitOrder(o.trader, o.pairIndex, o.index);

                    //Non mathcing with def to avoid more vars
                    emit LimitExecuted(
                        orderId,
                        n.index,
                        finalTrade,
                        ITradingStorage.LimitOrder.OPEN,
                        finalTrade.openPrice,
                        finalTrade.initialPosToken,
                        int(o.price),
                        priceBeforeImpact,
                        isPnl
                    );
                }
            }
        }

        executor.unregisterTrigger(IExecute.TriggeredLimitId(n.trader, n.pairIndex, n.index, n.orderType));
        storageT.unregisterPendingLimitOrder(orderId);
    }

    /**
     * @dev Callback function for executing limit close orders(TP/SL/LIQ)
     * @param orderId orderId.
     * @param price price.
     * @param isPnl Bool indicating if IsPnl based Order.
     */
    function executeLimitCloseOrderCallback(uint orderId, uint price, bool isPnl) external override onlyPriceAggregator {
        ITradingStorage.PendingLimitOrder memory o = storageT.reqIDpendingLimitOrder(orderId);
        ITradingStorage.Trade memory t = storageT.openTrades(o.trader, o.pairIndex, o.index);

        IPriceAggregator aggregator = storageT.priceAggregator();
        ICallbacks.Values memory values;
        
        if (price != 0 && t.leverage > 0) {
            ITradingStorage.TradeInfo memory i = storageT.openTradesInfo(t.trader, t.pairIndex, t.index);
            
            values.price = aggregator.pairsStorage().guaranteedSlEnabled(t.pairIndex)
                ? o.orderType == ITradingStorage.LimitOrder.TP ? t.tp : o.orderType == ITradingStorage.LimitOrder.SL
                    ? (t.buy && t.sl > t.openPrice) || (!t.buy && t.sl < t.openPrice)
                        ? price
                        : t.sl
                    : price
                : price;

            values.profitP = aggregator.pairsStorage().currentPercentProfit(t.openPrice, values.price, t.buy, t.leverage, t.pairIndex);
            uint usdcSentToTrader;

            if (o.orderType == ITradingStorage.LimitOrder.LIQ) {
                uint liqPrice = pairInfos.getTradeLiquidationPrice(
                    t.trader,
                    t.pairIndex,
                    t.index,
                    t.openPrice,
                    t.buy,
                    t.initialPosToken,
                    t.leverage
                );
                values.reward = (t.buy ? price <= liqPrice : price >= liqPrice) ? (t.initialPosToken * liqFeeP) / 100 : 0;
            } else {
                values.reward = (o.orderType == ITradingStorage.LimitOrder.TP &&
                    t.tp > 0 &&
                    (t.buy ? price >= t.tp : price <= t.tp)) ||
                    (o.orderType == ITradingStorage.LimitOrder.SL &&
                        t.sl > 0 &&
                        (t.buy ? price <= t.sl : price >= t.sl))
                    ? (t.initialPosToken * aggregator.pairsStorage().pairLimitOrderFeeP(t.pairIndex)) /
                        100 /
                        _PRECISION
                    : 0;
            }

            if (o.orderType == ITradingStorage.LimitOrder.LIQ && values.reward > 0) {
                usdcSentToTrader = _unregisterTrade(
                    t,
                    values.profitP,
                    t.initialPosToken,
                    values.reward,
                    (values.reward * (liqTotalFeeP - liqFeeP)) / liqFeeP,
                    isPnl
                );

                aggregator.executions().distributeReward(
                    IExecute.TriggeredLimitId(o.trader, o.pairIndex, o.index, o.orderType),
                    values.reward
                );

                emit LimitExecuted(
                    orderId,
                    price,
                    t,
                    o.orderType,
                    values.price,
                    t.initialPosToken,
                    values.profitP,
                    usdcSentToTrader,
                    isPnl
                );
            }

            if (o.orderType != ITradingStorage.LimitOrder.LIQ && values.reward > 0) {
                
                values.reward = values.reward > _MAX_EXEC_REWARD  ? _MAX_EXEC_REWARD : values.reward;
                values.pnl = (int(t.initialPosToken) * values.profitP) / int(_PRECISION) / 100;
                values.levPosToken = ((values.pnl < 0) && (values.pnl * -1) >= int(t.initialPosToken)) ? 0 :  uint(int(t.initialPosToken.mul(t.leverage)) + values.pnl) * aggregator.pairsStorage().pairCloseFeeP(t.pairIndex)/100/_PRECISION;

                usdcSentToTrader = _unregisterTrade(
                    t,
                    values.profitP,
                    t.initialPosToken,
                    values.reward,
                    values.levPosToken,
                    isPnl
                );

                aggregator.executions().distributeReward(
                    IExecute.TriggeredLimitId(o.trader, o.pairIndex, o.index, o.orderType),
                    values.reward
                );
                emit LimitExecuted(
                    orderId,
                    price,// Index can be fetched from t. Need price for efficiency analysis of bots
                    t,
                    o.orderType,
                    values.price,
                    t.initialPosToken,
                    values.profitP,
                    usdcSentToTrader,
                    isPnl
                );
            }
        }

        aggregator.executions().unregisterTrigger(IExecute.TriggeredLimitId(o.trader, o.pairIndex, o.index, o.orderType));
        storageT.unregisterPendingLimitOrder(orderId);
    }

    /** 
     * @notice Updates stop loss order based on aggregator's callback
     * @param orderId orderId.
     * @param price price.
     * @param isPnl Bool indicating if IsPnl based Order.
     */
    function updateSlCallback(uint orderId, uint price, bool isPnl) external override onlyPriceAggregator {
        IPriceAggregator aggregator = storageT.priceAggregator();
        IPriceAggregator.PendingSl memory o = aggregator.pendingSlOrders(orderId);

        ITradingStorage.Trade memory t = storageT.openTrades(o.trader, o.pairIndex, o.index);
        if (
            price != 0 &&
            t.buy == o.buy &&
            t.openPrice == o.openPrice &&
            (t.buy ? o.newSl <= price : o.newSl >= price)
        ) {
            storageT.updateSl(o.trader, o.pairIndex, o.index, o.newSl);
            emit SlUpdated(orderId, o.trader, o.pairIndex, o.index, o.newSl);
        }

        aggregator.unregisterPendingSlOrder(orderId);
    }

    /** 
     * @notice Transfers funds from the vault to the trader
     * @param _trader Address of the trader
     * @param _amount Amount to be transferred
     */
    function transferFromVault(address _trader, uint _amount) external override {
        require(_amount > 0 && msg.sender == address(storageT.priceAggregator().executions()), "E_O");
        storageT.vaultManager().sendUSDCToTrader(_trader, _amount);
    }
    
    /** 
     * @notice Registers a new trade(Market/Limit)
     * @param _trade Trade information to be registered
     * @return Updated trade information
     * @param isPnl Bool indicating if IsPnl based Order.
     */
    function _registerTrade(ITradingStorage.Trade memory _trade, bool isPnl) private returns (ITradingStorage.Trade memory) {

        IPairStorage pairsStored = storageT.priceAggregator().pairsStorage();

        _trade.timestamp = block.timestamp;
        _trade.positionSizeUSDC -= isPnl 
                                    ? 0 
                                    : storageT.handleDevGovFees(
                                      _trade.trader,
                                      _trade.pairIndex,
                                      _trade.positionSizeUSDC.mul(_trade.leverage),
                                      true,
                                      true,
                                      _trade.buy
                                    );

        storageT.vaultManager().reserveBalance(_trade.positionSizeUSDC.mul(_trade.leverage));
        storageT.vaultManager().receiveUSDCFromTrader(_trade.trader, _trade.positionSizeUSDC);

        _trade.initialPosToken = _trade.positionSizeUSDC;
        _trade.positionSizeUSDC = block.timestamp;

        _trade.index = storageT.firstEmptyTradeIndex(_trade.trader, _trade.pairIndex);
        _trade.tp = pairsStored.correctTp(_trade.openPrice, _trade.leverage, _trade.tp, _trade.buy, _trade.pairIndex);
        _trade.sl = pairsStored.correctSl(_trade.openPrice, _trade.leverage, _trade.sl, _trade.buy, _trade.pairIndex);

        pairInfos.storeTradeInitialAccFees(_trade.trader, _trade.pairIndex, _trade.index, _trade.buy);

        pairsStored.updateGroupOI(_trade.pairIndex, _trade.initialPosToken.mul(_trade.leverage), _trade.buy, true);

        storageT.storeTrade(
            _trade,
            ITradingStorage.TradeInfo(
                _trade.initialPosToken.mul(_trade.leverage),
                block.number,
                block.number,
                false,
                pairInfos.lossProtectionTier(_trade, isPnl)
            ),
            isPnl
        );

        return (_trade);
    }

    /** 
     * @notice Unregisters an existing trade. Called during Partial order close as well.
     * @param _trade Trade information
     * @param _percentProfit Percentage profit of the trade
     * @param _collateral Current USDC position
     * @param _feeAmountToken Fee in token for the executor
     * @param _lpFeeToken Fee in token for the liquidity provider
     * @param _isPnl Bool indicating if IsPnl based Order.
     * @return usdcSentToTrader Amount of USDC sent to the trader
     */
    function _unregisterTrade(
        ITradingStorage.Trade memory _trade,
        int _percentProfit,
        uint _collateral,
        uint _feeAmountToken, // executor reward
        uint _lpFeeToken,
        bool _isPnl
    ) private returns (uint usdcSentToTrader) {
        //Scoping Local Variables to avoid stack too deep
        uint totalFees;
        {
            (uint feeAfterRebate, uint referrerRebate) = storageT.applyReferralAndPnlFee(
                _trade.trader,
                _lpFeeToken,
                _collateral.mul(_trade.leverage), 
                _isPnl,
                _trade.pairIndex,
                _percentProfit,
                _collateral
            );

            int pnl;
            (usdcSentToTrader, pnl, totalFees) = pairInfos.getTradeValue(
                _trade,
                _collateral,
                _percentProfit,
                feeAfterRebate + _feeAmountToken
            );

            uint vaultAllocation = ((feeAfterRebate - referrerRebate) * (100 - vaultFeeP)) / 100;
            uint govFees = (feeAfterRebate - referrerRebate - vaultAllocation) / 2;
            storageT.incrementClosingFees(
                feeAfterRebate - referrerRebate - vaultAllocation - govFees,
                govFees
            );

            storageT.vaultManager().sendUSDCToTrader(address(storageT), feeAfterRebate - referrerRebate - vaultAllocation);

            if (usdcSentToTrader > 0) storageT.vaultManager().sendUSDCToTrader(_trade.trader, usdcSentToTrader);
            if (pnl < 0) {
                storageT.vaultManager().allocateRewards(uint(-pnl), true);
            } else {
                storageT.vaultManager().decrementPnlRewards(uint(pnl));
            }
            if (totalFees > (_feeAmountToken + (feeAfterRebate - vaultAllocation))) {
                storageT.vaultManager().allocateRewards(totalFees - _feeAmountToken - (feeAfterRebate - vaultAllocation), false);
            }
            if (referrerRebate > 0) storageT.vaultManager().sendReferrerRebateToStorage(referrerRebate);
        }

        storageT.vaultManager().releaseBalance(_collateral.mul(_trade.leverage));

        if (_trade.initialPosToken == _collateral){
            storageT.unregisterTrade(_trade.trader, _trade.pairIndex, _trade.index);
            pairInfos.resetTradeInitialAccess(_trade.trader, _trade.pairIndex, _trade.index);
            _collateral = _trade.initialPosToken;
        }
        else {
            storageT.registerPartialTrade(_trade.trader, _trade.pairIndex, _trade.index, _collateral);
        }

        storageT.priceAggregator().pairsStorage().updateGroupOI(
            _trade.pairIndex,
            _collateral.mul(_trade.leverage),
            _trade.buy,
            false
        );

        return usdcSentToTrader;
    }

    function _marketExecutionPrice(uint _price, uint _spreadP, bool _long) private pure returns (uint) {
        uint priceDiff = (_price * _spreadP) / 100 / _PRECISION;
        return _long ? _price + priceDiff : _price - priceDiff;
    }
}
