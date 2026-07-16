pragma solidity 0.8.13;

// SPDX-License-Identifier: MIT
import "./interfaces/ITradingStorage.sol";
import "./interfaces/IPairInfos.sol";
import "./interfaces/IExecute.sol";
import "./interfaces/ICallbacks.sol";
import "./interfaces/IPriceAggregator.sol";
import "./Delegatable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {PositionMath} from "./library/PositionMath.sol";


contract Trading is PausableUpgradeable, Delegatable {
    using PositionMath for uint;

    uint private constant _PRECISION = 1e10;
    uint private constant _MAX_SL_P = 80; // -80% PNL
    uint public constant _MAX_SLIPPAGE = 800000000000;

    ITradingStorage public storageT;
    IPairInfos public pairInfos;

    uint public limitOrdersTimelock;
    address public operator;

    mapping(address => bool) public isOperator;
    IPriceAggregator aggregator;
    // Events
    event NumberUpdated(string name, uint value);

    event MarketOrderInitiated(
        address indexed trader, 
        uint pairIndex, 
        bool open, 
        uint orderId, 
        uint timestamp,
        bool isBuy,
        bool isPnl,
        uint initialPosToken,
        uint leverage
    );

    event LimitOrderInitiated(
        address indexed trader, 
        uint pairIndex, 
        uint orderId, 
        uint timestamp
    );

    event OpenLimitPlaced(
        address indexed trader, 
        uint pairIndex, 
        uint index, 
        bool isBuy,
        uint openPrice,
        uint executionFee,
        IExecute.OpenLimitOrderType orderType,
        uint slippageP,
        uint collateral,
        uint leverage
    );

    event OpenLimitUpdated(
        address indexed trader,
        uint pairIndex,
        uint index,
        uint newPrice,
        uint newTp,
        uint newSl,
        uint timestamp
    );

    event OpenLimitCanceled(
        address indexed trader, 
        uint pairIndex, 
        uint index, 
        uint timestamp,
        uint collateral
    );

    event TpUpdated(
        address indexed trader, 
        uint pairIndex, 
        uint index, 
        uint newTp, 
        uint timestamp
    );

    event SlUpdated(
        address indexed trader, 
        uint pairIndex, 
        uint index, 
        uint newSl, 
        uint timestamp
    );

    event SlUpdateInitiated(
        address indexed trader,
        uint pairIndex,
        uint index,
        uint newSl,
        uint orderId,
        uint timestamp
    );

    event MarginUpdated(
        address indexed trader,
        uint pairIndex,
        uint index,
        ITradingStorage.updateType _type,
        ITradingStorage.Trade newTrade,
        uint marginFees,
        uint lossProtectionTier,
        uint timestamp
    );

    event OperatorUpdated(
        address operator,
        bool isOperator
    );

    event AggregatorUpdated(
        address aggregator
    );
    // Modifiers
    modifier onlyGov() {
        require(msg.sender == storageT.gov(), "GOV_ONLY");
        _;
    }

    modifier onlyOperator() {
        require(isOperator[msg.sender], "ONLY_OPERATOR");
        _;
    }

    constructor() {
        _disableInitializers();
    }
    /**
     * @notice Initializes the proxy
     * @param _storageT The address of the storage contract
     * @param _pairInfos The address of the pair information contract
     */
    function initialize(address _storageT, address _pairInfos) external initializer {
        storageT = ITradingStorage(_storageT);
        pairInfos = IPairInfos(_pairInfos);
        limitOrdersTimelock = 2;
        __Pausable_init();
    }

    /**
     * @notice Pauses the contract
     */
    function pause() external onlyGov {
        _pause();
    }

    /**
     * @notice Unpauses the contract
     */
    function unpause() external onlyGov {
        _unpause();
    }

    function updateOperator(address _operator, bool _isOperator) external onlyGov{
        isOperator[_operator] = _isOperator;
        emit OperatorUpdated(_operator, _isOperator);
    }

    function setMarketExecFeeReciever(address _reciever) external onlyGov{
        require(_reciever != address(0), "ZERO_ADDRESS");
        operator = _reciever;
    }

    function setAggregator(address _aggregator) external onlyGov{
        aggregator = IPriceAggregator(_aggregator);
        emit AggregatorUpdated(_aggregator);
    }
    /**
     * @notice Updates(Deposit/Withdraw) the margin for an open trade
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the trade
     * @param _type Withdraw or Deposit
     * @param _amount The Collateral by which to update the margin
     * @param priceUpdateData Pyth price update
     * @param _priceSourcing Price sourcing (PYTH_CORE or PYTH_LAZER)
    */
    function updateMargin(
        uint _pairIndex,
        uint _index,
        ITradingStorage.updateType _type,
        uint _amount,
        bytes[] calldata priceUpdateData,
        IPriceAggregator.PriceSourcing _priceSourcing
    ) external payable whenNotPaused returns(uint orderId){
        return _updateMargin(_pairIndex, _index, _type, _amount, priceUpdateData, _priceSourcing);
    }

    /**
     * @notice Updates(Deposit/Withdraw) the margin for an open trade
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the trade
     * @param _type Withdraw or Deposit
     * @param _amount The Collateral by which to update the margin
     * @param priceUpdateData Pyth price update
    */
    function updateMargin(
        uint _pairIndex,
        uint _index,
        ITradingStorage.updateType _type,
        uint _amount,
        bytes[] calldata priceUpdateData
    ) external payable whenNotPaused returns(uint orderId){
        return _updateMargin(_pairIndex, _index, _type, _amount, priceUpdateData, IPriceAggregator.PriceSourcing.PYTH_CORE);
    }

    /**
     * @notice Opens a new Market/Limit trade
     * @param t The details of the trade to open
     * @param _type Market or Limit or Stop Limit
     * @param _slippageP The slippage percentage
     */
    function openTrade(
        ITradingStorage.Trade calldata t,
        IExecute.OpenLimitOrderType _type,
        uint _slippageP
    ) external payable whenNotPaused returns(uint orderId) {

        IPairStorage pairsStored = aggregator.pairsStorage();

        require(storageT.pendingOrderIdsCount(__msgSender()) < storageT.maxPendingMarketOrders(), "MAX_PENDING_ORDERS");
        
        require(
            storageT.openTradesCount(__msgSender(), t.pairIndex) +
                storageT.pendingMarketOpenCount(__msgSender(), t.pairIndex) +
                storageT.openLimitOrdersCount(__msgSender(), t.pairIndex) <
                storageT.maxTradesPerPair(),
            "MAX_TRADES_PER_PAIR"
        );

        require(t.positionSizeUSDC.mul(t.leverage) >= pairsStored.pairMinLevPosUSDC(t.pairIndex), "BELOW_MIN_POS");


        require(t.tp == 0 || (t.buy ? t.tp > t.openPrice : t.tp < t.openPrice), "WRONG_TP");
        require(t.sl == 0 || (t.buy ? t.sl < t.openPrice : t.sl > t.openPrice), "WRONG_SL");
        require(_slippageP < _MAX_SLIPPAGE, "INVALID_SLIPPAGE");

        if (_type != IExecute.OpenLimitOrderType.MARKET && _type != IExecute.OpenLimitOrderType.MARKET_PNL ) {

            require(
                t.leverage > 0 &&
                    t.leverage >= pairsStored.pairMinLeverage(t.pairIndex, false) &&
                    t.leverage <= pairsStored.pairMaxLeverage(t.pairIndex, false),
                "LEVERAGE_INCORRECT"
            );

            storageT.transferUSDC(__msgSender(), address(storageT), t.positionSizeUSDC);
            uint index = storageT.firstEmptyOpenLimitIndex(__msgSender(), t.pairIndex);

            storageT.storeOpenLimitOrder(
                ITradingStorage.OpenLimitOrder(
                    __msgSender(),
                    t.pairIndex,
                    index,
                    t.positionSizeUSDC,
                    t.buy,
                    t.leverage,
                    t.tp,
                    t.sl,
                    t.openPrice,
                    _slippageP,
                    block.number,
                    0
                )
            );

            aggregator.executions().setOpenLimitOrderType(__msgSender(), t.pairIndex, index, _type);

            emit OpenLimitPlaced(__msgSender(), t.pairIndex, index, t.buy, t.openPrice, 0, _type, _slippageP, t.positionSizeUSDC, t.leverage);
        } else {

            require(
                t.leverage > 0 &&
                    t.leverage >= pairsStored.pairMinLeverage(t.pairIndex,  _type == IExecute.OpenLimitOrderType.MARKET_PNL) &&
                    t.leverage <= pairsStored.pairMaxLeverage(t.pairIndex,  _type == IExecute.OpenLimitOrderType.MARKET_PNL),
                "LEVERAGE_INCORRECT"
            );

            if(_type == IExecute.OpenLimitOrderType.MARKET_PNL) require(pairsStored.isPnlOrderTypeAllowed(t.pairIndex), "PNL_ORDER_NOT_ALLOWED");

            storageT.transferUSDC(__msgSender(), address(storageT), t.positionSizeUSDC);

            orderId = _type == IExecute.OpenLimitOrderType.MARKET ? 
                        aggregator.getPrice(t.pairIndex, IPriceAggregator.OrderType.MARKET_OPEN) :
                        aggregator.getPrice(t.pairIndex, IPriceAggregator.OrderType.MARKET_OPEN_PNL);


            storageT.storePendingMarketOrder(
                ITradingStorage.PendingMarketOrder(
                    ITradingStorage.Trade(
                        __msgSender(),
                        t.pairIndex,
                        0,
                        0,
                        t.positionSizeUSDC,
                        0,
                        t.buy,
                        t.leverage,
                        t.tp,
                        t.sl,
                        0
                    ),
                    0,
                    t.openPrice,
                    _slippageP
                ),
                orderId,
                true
            );

            emit MarketOrderInitiated(
                __msgSender(), 
                t.pairIndex, 
                true, 
                orderId, 
                block.timestamp, 
                t.buy, 
                _type == IExecute.OpenLimitOrderType.MARKET_PNL ? true : false,
                t.positionSizeUSDC,
                t.leverage);
        }

        (bool sent, ) = payable(operator).call{value: msg.value}("");
        require(sent, "EXECUTION_FEE_NOT_SENT");
    }

    /**
     * @notice Closes a trade using market execution
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the trade
     * @param _amount The amount of collateral being closed
     */
    function closeTradeMarket(
        uint _pairIndex,
        uint _index,
        uint _amount // Collateral being closed
    ) external payable whenNotPaused returns(uint orderId){

        IPairStorage pairsStored = aggregator.pairsStorage();
        (bool sent, ) = payable(operator).call{value: msg.value}("");
        require(sent, "EXECUTION_FEE_NOT_SENT");

        ITradingStorage.Trade memory t = storageT.openTrades(__msgSender(), _pairIndex, _index);
        bool beingMarketClosed = storageT.openTradesInfo(__msgSender(), _pairIndex, _index).beingMarketClosed;

        require(_amount <= t.initialPosToken, "INV_AMOUNT");
        require(storageT.pendingOrderIdsCount(__msgSender()) < storageT.maxPendingMarketOrders(), "MAX_PENDING_ORDERS");
        require(!beingMarketClosed, "ALREADY_BEING_CLOSED");
        require(t.leverage > 0, "NO_TRADE");
        require(block.timestamp - t.timestamp >= pairsStored.openCloseThreshold(_pairIndex, _amount.mul(t.leverage)), "EARLY_CLOSE");

        bool isPnl = aggregator.pairsStorage().getPosType(__msgSender(), _pairIndex, _index);

        orderId = isPnl 
                  ? aggregator.getPrice(_pairIndex, IPriceAggregator.OrderType.MARKET_CLOSE_PNL)
                  : aggregator.getPrice(_pairIndex, IPriceAggregator.OrderType.MARKET_CLOSE);

        storageT.storePendingMarketOrder(
            ITradingStorage.PendingMarketOrder(
                ITradingStorage.Trade(__msgSender(), _pairIndex, _index, _amount, 0, 0, false, 0, 0, 0, 0),
                0,
                0,
                0
            ),
            orderId,
            false
        );
        
        emit MarketOrderInitiated(
            __msgSender(), 
            _pairIndex, 
            false, 
            orderId, 
            block.timestamp, 
            t.buy,
            isPnl,
            t.initialPosToken,
            t.leverage);
    }


    /**
     * @notice Operator intiated method to close pending market orders
     * @param orderId The array of orderIDs
     * @param priceUpdateData Pyth price update calldata
     * @param _priceSourcing Price sourcing (PYTH_CORE or PYTH_LAZER)
     */
    function executeMarketOrders(uint[] calldata orderId, bytes[] calldata priceUpdateData, IPriceAggregator.PriceSourcing _priceSourcing) external payable onlyOperator{

        for(uint i = 0; i< orderId.length; i++){
            aggregator.fulfill{value: msg.value}(orderId[i], priceUpdateData, _priceSourcing, 0);
        }
    }
    /** 
     * @notice Operator initiated method to close pending market orders
     * @param orderId The array of orderIDs
     * @param priceUpdateData Pyth price update calldata
     * @param _priceSourcing Price sourcing (PYTH_CORE or PYTH_LAZER)
     * @param spreadP The spread percentage
     */
    function executeMarketOrders(
        uint[] calldata orderId, 
        bytes[] calldata priceUpdateData, 
        IPriceAggregator.PriceSourcing _priceSourcing,
        int spreadP
        ) external payable onlyOperator{
        
        for(uint i = 0; i< orderId.length; i++){
            aggregator.fulfill{value: msg.value}(orderId[i], priceUpdateData, _priceSourcing, spreadP);
        }
    }

    /**
     * @notice Updates an open limit order
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the order
     * @param _price The price level to set (_PRECISION)
     * @param _tp The take-profit price
     * @param _sl The stop-loss price
     */
    function updateOpenLimitOrder(
        uint _pairIndex,
        uint _index,
        uint _price, 
        uint _slippageP,
        uint _tp,
        uint _sl
    ) external whenNotPaused {
        ITradingStorage.OpenLimitOrder memory o = storageT.getOpenLimitOrder(__msgSender(), _pairIndex, _index);
        require(block.number - o.block >= limitOrdersTimelock, "LIMIT_TIMELOCK");

        require(_tp == 0 || (o.buy ? _price < _tp : _price > _tp), "WRONG_TP");
        require(_sl == 0 || (o.buy ? _price > _sl : _price < _sl), "WRONG_SL");
        require(_slippageP < _MAX_SLIPPAGE, "INVALID_SLIPPAGE");

        o.price = _price;
        o.slippageP = _slippageP;
        o.tp = _tp;
        o.sl = _sl;

        storageT.updateOpenLimitOrder(o);

        emit OpenLimitUpdated(__msgSender(), _pairIndex, _index, _price, _tp, _sl, block.timestamp);
    }

    /**
     * @notice Cancels an open limit order
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the order
     */
    function cancelOpenLimitOrder(uint _pairIndex, uint _index) external whenNotPaused {
        ITradingStorage.OpenLimitOrder memory o = storageT.getOpenLimitOrder(__msgSender(), _pairIndex, _index);
        require(block.number - o.block >= limitOrdersTimelock, "LIMIT_TIMELOCK");

        storageT.transferUSDC(address(storageT), __msgSender(), o.positionSize + o.executionFee);
        storageT.unregisterOpenLimitOrder(__msgSender(), _pairIndex, _index);

        emit OpenLimitCanceled(__msgSender(), _pairIndex, _index, block.timestamp, o.positionSize);
    }

    /**
     * @notice Updates the take-profit and stop-loss for a open Trade
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the order
     * @param _newSl The new stop-loss price
     * @param _newTP The new take-profit price
     * @param priceUpdateData Pyth price update data
     */
    function updateTpAndSl(
        uint _pairIndex,
        uint _index,
        uint _newSl,
        uint _newTP,
        bytes[] calldata priceUpdateData,
        IPriceAggregator.PriceSourcing _priceSourcing
    ) external payable whenNotPaused {
        _updateTp(_pairIndex, _index, _newTP);
        if(priceUpdateData.length != 0) _updateSl(_pairIndex, _index, _newSl, priceUpdateData, _priceSourcing);
    }

    /**
     * @notice Updates the take-profit and stop-loss for a open Trade
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the order
     * @param _newSl The new stop-loss price
     * @param _newTP The new take-profit price
     * @param priceUpdateData Pyth price update data
     */
    function updateTpAndSl(
        uint _pairIndex,
        uint _index,
        uint _newSl,
        uint _newTP,
        bytes[] calldata priceUpdateData
    ) external payable whenNotPaused {
        _updateTp(_pairIndex, _index, _newTP);
        if(priceUpdateData.length != 0) _updateSl(_pairIndex, _index, _newSl, priceUpdateData, IPriceAggregator.PriceSourcing.PYTH_CORE);
    }

    /**
     * @notice Updates the stop-loss for a open Trade
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the order
     * @param _newSl The new stop-loss price
     * @param priceUpdateData Pyth price update data
     */
    function updateSl(
        uint256 _pairIndex, 
        uint256 _index, 
        uint256 _newSl, 
        bytes[] calldata priceUpdateData)
        external
        payable
        whenNotPaused
    {
        if (priceUpdateData.length != 0) _updateSl(_pairIndex, _index, _newSl, priceUpdateData, IPriceAggregator.PriceSourcing.PYTH_CORE);
    }

    /**
     * @notice Updates the stop-loss for a open Trade
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the order
     * @param _newSl The new stop-loss price
     * @param priceUpdateData Pyth price update data
     * @param _priceSourcing Price sourcing (PYTH_CORE or PYTH_LAZER)
     */
    function updateSl(
        uint256 _pairIndex, 
        uint256 _index, 
        uint256 _newSl, 
        bytes[] calldata priceUpdateData,
        IPriceAggregator.PriceSourcing _priceSourcing)
        external
        payable
        whenNotPaused
    {
        if (priceUpdateData.length != 0) _updateSl(_pairIndex, _index, _newSl, priceUpdateData, _priceSourcing);
    }
    /**
     * @notice Executes a limit order (either open or close). Callable by Operators
     * @param _orderType The type of limit order (OPEN, CLOSE, TP, SL, LIQ)
     * @param _trader The address of the trader
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the order
     * @param priceUpdateData Pyth price update data
     * @param _priceSourcing Price sourcing (PYTH_CORE or PYTH_LAZER)
     * @param spreadP The spread percentage
     */
    function executeLimitOrder(
        ITradingStorage.LimitOrder _orderType,
        address _trader,
        uint _pairIndex,
        uint _index,
        bytes[] calldata priceUpdateData,
        IPriceAggregator.PriceSourcing _priceSourcing,
        int spreadP
    ) external payable whenNotPaused onlyOperator { 

        _executeLimitOrder(_orderType, _trader, _pairIndex, _index, priceUpdateData, _priceSourcing, spreadP);
    }

    /**
     * @notice Executes a limit order (either open or close). Callable by Operators
     * @param _orderType The type of limit order (OPEN, CLOSE, TP, SL, LIQ)
     * @param _trader The address of the trader
     * @param _pairIndex The index of the trading pair
     * @param _index The index of the order
     * @param priceUpdateData Pyth price update data
     * @param _priceSourcing Price sourcing (PYTH_CORE or PYTH_LAZER)
     */
    function executeLimitOrder(
        ITradingStorage.LimitOrder _orderType,
        address _trader,
        uint _pairIndex,
        uint _index,
        bytes[] calldata priceUpdateData,
        IPriceAggregator.PriceSourcing _priceSourcing
    ) external payable whenNotPaused onlyOperator { 

        _executeLimitOrder(_orderType, _trader, _pairIndex, _index, priceUpdateData, _priceSourcing, 0);
    }
    
    /**
     * @notice FallBack method in case unregister is not working directly
     */
    function cancelPendingMarketOrder(uint256 _id) external onlyOperator{
        storageT.forceUnregisterPendingMarketOrder(_id);
    }
    
    /** 
     * @notice Internal function to update Take Profit value.
     * @param _pairIndex The index of the trading pair.
     * @param _index The index of the trade.
     * @param _newTp New Take Profit value.
     */
    function _updateTp(uint _pairIndex, uint _index, uint _newTp) internal {
        uint leverage = storageT.openTrades(__msgSender(), _pairIndex, _index).leverage;
        uint tpLastUpdated = storageT.openTradesInfo(__msgSender(), _pairIndex, _index).tpLastUpdated;

        require(leverage > 0, "NO_TRADE");
        require(block.number - tpLastUpdated >= limitOrdersTimelock, "LIMIT_TIMELOCK");
        require(_newTp < uint(type(int256).max), "INCORRECT_TP");

        uint correctedTP = storageT.updateTp(__msgSender(), _pairIndex, _index, _newTp);

        emit TpUpdated(__msgSender(), _pairIndex, _index, correctedTP, block.timestamp);
    }

    /** 
     * @notice Internal function to update Stop Loss value.
     * @param _pairIndex The index of the trading pair.
     * @param _index The index of the trade.
     * @param _newSl New Stop Loss value.
     * @param priceUpdateData Pyth price data.
     * @param _priceSourcing Price sourcing (PYTH_CORE or PYTH_LAZER)
     */
    function _updateSl(uint _pairIndex, uint _index, uint _newSl, bytes[] calldata priceUpdateData, IPriceAggregator.PriceSourcing _priceSourcing) internal {
        ITradingStorage.Trade memory t = storageT.openTrades(__msgSender(), _pairIndex, _index);
        uint slLastUpdated = storageT.openTradesInfo(__msgSender(), _pairIndex, _index).slLastUpdated;

        require(t.leverage > 0, "NO_TRADE");
        require(_newSl < uint(type(int256).max), "INCORRECT_SL");

        uint maxSlDist = ((t.openPrice * _MAX_SL_P) / 100).div(t.leverage);
        require(
            _newSl == 0 || (t.buy ? _newSl >= t.openPrice - maxSlDist : _newSl <= t.openPrice + maxSlDist),
            "SL_TOO_BIG"
        );

        require(block.number - slLastUpdated >= limitOrdersTimelock, "LIMIT_TIMELOCK");


        if (_newSl == 0 || !aggregator.pairsStorage().guaranteedSlEnabled(_pairIndex)) {
            storageT.updateSl(__msgSender(), _pairIndex, _index, _newSl);
            emit SlUpdated(__msgSender(), _pairIndex, _index, _newSl, block.timestamp);
        } else {
            
            uint orderId = aggregator.getPrice(_pairIndex, IPriceAggregator.OrderType.UPDATE_SL);
            aggregator.storePendingSlOrder(
                orderId,
                IPriceAggregator.PendingSl(__msgSender(), _pairIndex, _index, t.openPrice, t.buy, _newSl)
            );

            emit SlUpdateInitiated(__msgSender(), _pairIndex, _index, _newSl, orderId, block.timestamp);

            aggregator.fulfill{value: msg.value}(orderId, priceUpdateData, _priceSourcing, 0);
        }
    }

    function _updateMargin(
        uint _pairIndex, 
        uint _index, 
        ITradingStorage.updateType _type,
        uint _amount, 
        bytes[] calldata priceUpdateData,
        IPriceAggregator.PriceSourcing _priceSourcing
    ) internal returns(uint orderId) {
       ITradingStorage.Trade memory t = storageT.openTrades(__msgSender(), _pairIndex, _index);
        ITradingStorage.TradeInfo memory i = storageT.openTradesInfo(__msgSender(), _pairIndex, _index);

        require(!i.beingMarketClosed, "ALREADY_BEING_CLOSED");
        require(t.leverage > 0, "NO_TRADE");

        uint marginFees = pairInfos.getTradeRolloverFee(
            t.trader,
            t.pairIndex,
            t.index,
            t.buy,
            t.initialPosToken,
            t.leverage
        );

        orderId = aggregator.getPrice(_pairIndex, IPriceAggregator.OrderType.UPDATE_MARGIN);
        aggregator.storePendingMarginUpdateOrder(
            orderId,
            IPriceAggregator.PendingMarginUpdate(__msgSender(), _pairIndex, _index, _type, _amount, i.lossProtection, marginFees, t.leverage)
        );

        (t.leverage, t.initialPosToken) = _calculateNewLeverage(
            i.openInterestUSDC,
            t.initialPosToken,
            _type,
            _amount,
            marginFees
        );

        bool isPnl = aggregator.pairsStorage().getPosType(__msgSender(), _pairIndex, _index);

        if(isPnl && (_type == ITradingStorage.updateType.WITHDRAW)) revert("NOT_ALLOWED");
        
        require(
            t.leverage > 0 &&
                t.leverage >= aggregator.pairsStorage().pairMinLeverage(t.pairIndex, isPnl) &&
                t.leverage <= aggregator.pairsStorage().pairMaxLeverage(t.pairIndex, isPnl),
            "LEVERAGE_INCORRECT"
        );

        emit MarginUpdated(
            __msgSender(), 
            _pairIndex, 
            _index, 
            _type, 
            t, 
            marginFees, 
            i.lossProtection, 
            block.timestamp
        );
            
        storageT.updateTrade(t);
        aggregator.fulfill{value: msg.value}(orderId, priceUpdateData, _priceSourcing, 0);

        _updateTp(_pairIndex, _index, t.tp);
    }

    function _executeLimitOrder(        
        ITradingStorage.LimitOrder _orderType,
        address _trader,
        uint _pairIndex,
        uint _index,
        bytes[] calldata priceUpdateData,
        IPriceAggregator.PriceSourcing _priceSourcing,
        int spreadP
    ) internal {
        
        // Use scoped block to release stack variables early
        {
            if (_orderType == ITradingStorage.LimitOrder.OPEN) {
                ITradingStorage.OpenLimitOrder memory o = storageT.getOpenLimitOrder(_trader, _pairIndex, _index);

                require(
                        o.leverage >= aggregator.pairsStorage().pairMinLeverage(_pairIndex, false) &&
                        o.leverage <= aggregator.pairsStorage().pairMaxLeverage(_pairIndex, false),
                    "LEVERAGE_INCORRECT"
                );

            } else {
                ITradingStorage.Trade memory t = storageT.openTrades(_trader, _pairIndex, _index);

                require(t.leverage > 0, "NO_TRADE");
                require(_orderType != ITradingStorage.LimitOrder.SL || t.sl > 0, "NO_SL");

                if (_orderType == ITradingStorage.LimitOrder.LIQ) {
                    uint liqPrice =  pairInfos.getTradeLiquidationPrice(
                                        t.trader,
                                        t.pairIndex,
                                        t.index,
                                        t.openPrice,
                                        t.buy,
                                        t.initialPosToken,
                                        t.leverage
                                    );
                    require(t.sl == 0 || (t.buy ? liqPrice > t.sl : liqPrice < t.sl), "HAS_SL");
                } else if (_orderType == ITradingStorage.LimitOrder.TP) {
                    require(block.timestamp - t.timestamp >= aggregator.pairsStorage().openCloseThreshold(t.pairIndex, t.initialPosToken.mul(t.leverage)), "EARLY_CLOSE");
                }
            }
        }

        IExecute executor = aggregator.executions();

        // Determine order type before creating struct
        IPriceAggregator.OrderType orderType;
        {
            bool isPnl = aggregator.pairsStorage().getPosType(_trader, _pairIndex, _index);
            orderType = _orderType == ITradingStorage.LimitOrder.OPEN
                ? IPriceAggregator.OrderType.LIMIT_OPEN
                : isPnl 
                    ? IPriceAggregator.OrderType.LIMIT_CLOSE_PNL 
                    : IPriceAggregator.OrderType.LIMIT_CLOSE;
        }

        uint orderId = aggregator.getPrice(_pairIndex, orderType);

        storageT.storePendingLimitOrder(
            ITradingStorage.PendingLimitOrder(_trader, _pairIndex, _index, _orderType),
            orderId
        );

        executor.storeFirstToTrigger(
            IExecute.TriggeredLimitId(_trader, _pairIndex, _index, _orderType), 
            __msgSender()
        );
        emit LimitOrderInitiated(_trader, _pairIndex, orderId, block.timestamp);

        aggregator.fulfill{value: msg.value}(orderId, priceUpdateData, _priceSourcing, spreadP);
    }
    /** 
     * @notice Internal function to calculate new leverage.
     * @param _openInterestUSDC The total open interest in USDC.
     * @param _currentCollateral The current collateral amount.
     * @param _type The type of update (DEPOSIT/WITHDRAW).
     * @param _newAmount The new amount to be deposited/withdrawn.
     * @param _fees Margin Fees
     */
    function _calculateNewLeverage(
        uint _openInterestUSDC,
        uint _currentCollateral,
        ITradingStorage.updateType _type,
        uint _newAmount,
        uint _fees
    ) internal pure returns (uint newLeverage, uint newAmount) {
        if (_type == ITradingStorage.updateType.DEPOSIT) {
            newAmount = _currentCollateral + _newAmount - _fees;
            newLeverage = (_openInterestUSDC * _PRECISION) / (newAmount);
        } else if (_type == ITradingStorage.updateType.WITHDRAW) {
            newAmount = _currentCollateral - _newAmount - _fees;
            newLeverage = (_openInterestUSDC * _PRECISION) / (newAmount);
        }
    }

}
