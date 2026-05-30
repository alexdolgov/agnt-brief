// Sources flattened with hardhat v2.22.8 https://hardhat.org

// SPDX-License-Identifier: MIT

// File src/interfaces/IDelegatable.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity ^0.8.24;

interface IDelegatable {
    event DelegateAdded(address indexed delegator, address indexed delegate);
    event DelegateRemoved(address indexed delegator, address indexed delegate);

    error NullAddr();
    error DelegatedActionFailed();
    error IsContract(address a);
    error NoDelegate(address a);
    error NotDelegate(address trader, address caller);

    function setDelegate(address delegate) external;
    function removeDelegate() external;
    function delegatedAction(address trader, bytes calldata call_data) external returns (bytes memory);
    function _msgSender() external view returns (address);
}


// File src/abstract/Delegatable.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

abstract contract Delegatable is IDelegatable {
    mapping(address delegator => address) public delegations;
    address private senderOverride;

    function setDelegate(address delegate) external {
        if (tx.origin != msg.sender) {
            revert IsContract(msg.sender);
        }
        if (delegate == address(0)) {
            revert NullAddr();
        }

        delegations[msg.sender] = delegate;
        emit DelegateAdded(msg.sender, delegate);
    }

    function removeDelegate() external {
        if (delegations[msg.sender] == address(0)) {
            revert NoDelegate(msg.sender);
        }
        address delegate = delegations[msg.sender];

        delete delegations[msg.sender];
        emit DelegateRemoved(msg.sender, delegate);
    }

    function delegatedAction(address trader, bytes calldata call_data) external returns (bytes memory) {
        if (delegations[trader] != msg.sender) {
            revert NotDelegate(trader, msg.sender);
        }

        senderOverride = trader;
        (bool success, bytes memory result) = address(this).delegatecall(call_data);
        if (!success) {
            revert DelegatedActionFailed();
        }

        senderOverride = address(0);

        return result;
    }

    function _msgSender() public view returns (address) {
        if (senderOverride == address(0)) {
            return msg.sender;
        } else {
            return senderOverride;
        }
    }
}


// File src/interfaces/IOstiumPairsStorage.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumPairsStorage {
    struct Pair {
        bytes32 from;
        bytes32 to;
        bytes32 feed;
        uint64 tradeSizeRef;
        uint32 spreadP; // PRECISION_6 (%)
        uint32 maxLeverage;
        uint8 groupIndex;
        uint8 feeIndex;
        string oracle;
    }

    struct Group {
        bytes32 name;
        uint32 maxLeverage;
        uint16 minLeverage;
        uint16 maxCollateralP; // PRECISION_2 (% vault current balance)
    }

    struct Fee {
        bytes32 name;
        uint64 minLevPos; // PRECISION_6 USDC (collateral x leverage, useful for min fee)
        uint64 oracleFee; // PRECISION_6 Fixed USDC
        uint16 liqFeeP; // % liqFeeP*(100-LIQ_THRESHOLD_P) to LPs rewards
    }

    event PairAdded(uint16 index, bytes32 from, bytes32 to);
    event PairUpdated(uint16 indexed index);
    event PairRemoved(uint16 index, bytes32 from, bytes32 to);
    event GroupAdded(uint8 index, bytes32 name);
    event GroupUpdated(uint8 indexed index);
    event FeeAdded(uint8 index, bytes32 name);
    event FeeUpdated(uint8 indexed index);
    event PairMaxLeverageUpdated(uint16 indexed pairIndex, uint32 maxLeverage);

    error MaxReached();
    error WrongParams();
    error NotGov(address a);
    error NotManager(address a);
    error NotAuthorized(address a);
    error GroupNotListed(uint256 index);
    error FeeNotListed(uint256 index);
    error PairNotListed(uint256 index);
    error PairAlreadyListed(bytes32 from, bytes32 to);

    function isPairIndexListed(uint16 _pairIndex) external view returns (bool);
    function pairOracleFee(uint16 _pairIndex) external view returns (uint64);
    function pairFeed(uint16) external view returns (bytes32);
    function getFeedInfo(uint16 pairIndex) external view returns (bytes32, uint32, uint64, string memory);
    function oracle(uint16 pairIndex) external view returns (string memory);
    function pairSpreadP(uint16) external view returns (uint32);
    function pairMinLeverage(uint16) external view returns (uint16);
    function pairMaxLeverage(uint16) external view returns (uint32);
    function pairTradeSizeRef(uint16 _pairIndex) external view returns (uint64);
    function groupMaxCollateral(uint16) external view returns (uint256);
    function groupCollateral(uint16, bool) external view returns (uint256);
    function pairLiquidationFeeP(uint16 _pairIndex) external view returns (uint16);
    function pairMinLevPos(uint16) external view returns (uint64);
    function pairsCount() external view returns (uint16);
    function groupsCount() external view returns (uint8);
    function feesCount() external view returns (uint8);
    function pairsBackend(uint16 _index) external view returns (Pair memory, Group memory, Fee memory);
    function getAllPairsMaxLeverage() external view returns (uint32[] memory);
    function getPairsMaxLeverage(uint256 startId, uint256 finalId) external view returns (uint32[] memory);
    function pairs(uint16 pairIndex)
        external
        view
        returns (bytes32, bytes32, bytes32, uint64, uint32, uint32, uint8, uint8, string memory);
    function groups(uint8 groupIndex) external view returns (bytes32, uint32, uint16, uint16);
    function fees(uint8 feeIndex) external view returns (bytes32, uint64, uint64, uint16);
    // function groupsCollaterals(uint8 groupIndex) external view returns (uint256[2] memory);
    function isPairListed(bytes32 fromPair, bytes32 toPair) external view returns (bool);

    // onlyGov
    function addPair(Pair calldata _pair) external;
    function addPairs(Pair[] calldata _pairs) external;
    function updatePair(uint16 _pairIndex, Pair calldata _pair) external;
    function removePair(uint16 _pairIndex) external;
    function addGroup(Group calldata _group) external;
    function updateGroup(uint8 _id, Group calldata _group) external;
    function addFee(Fee calldata _fee) external;
    function updateFee(uint8 _id, Fee calldata _fee) external;

    // onlyManager
    function setPairMaxLeverage(uint16 pairIndex, uint256 maxLeverage) external;
    function setPairMaxLeverageArray(uint16[] calldata indices, uint256[] calldata values) external;

    // onlyCallbacks
    function updateGroupCollateral(uint16 _pairIndex, uint256 _amount, bool _long, bool _increase) external;
}


// File src/interfaces/IOstiumPriceUpKeep.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumPriceUpKeep {
    struct PriceUpKeepAnswer {
        uint256 orderId;
        int192 price;
        uint64 spreadP;
        int192 bid;
        int192 ask;
        uint64 tradeSizeRef;
    }

    enum OrderType {
        MARKET_OPEN,
        MARKET_CLOSE,
        LIMIT_OPEN,
        LIMIT_CLOSE
    }

    struct Order {
        uint32 timestamp;
        uint16 pairIndex;
        OrderType orderType;
        bool initiated;
    }

    event PriceRequested(uint256 indexed orderId, bytes32 feed, uint256 timestamp);
    event PriceReceived(uint256 indexed orderId, uint256 indexed pairIndex, int192 price, uint256 nativeFee);
    event PendingSlOrderUnregistered(uint256 indexed orderId);

    error WrongParams();
    error NotGov(address a);
    error NotRouter(address a);
    error NotContract(address a);
    error NotInitiated(uint256 a);
    error AlreadyInitiated(uint256 a);
    error InvalidPrice(uint256 orderId);

    function orders(uint256 orderId) external view returns (uint32, uint16, OrderType, bool);

    // only forwarder
    function performUpkeep(bytes calldata performData) external;

    // only price router
    function getPrice(uint256 orderId, uint16 pairIndex, OrderType orderType, uint256 timestamp) external;
}


// File src/interfaces/IOstiumPriceRouter.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumPriceRouter {
    error WrongParams();
    error WrongTimestamp();
    error NotGov(address a);
    error NotTrading(address a);

    event MaxTsValidityUpdated(uint32 value);

    function maxTsValidity() external returns (uint32);

    //only trading
    function getPrice(uint16, IOstiumPriceUpKeep.OrderType, uint256) external returns (uint256);

    // onluy gov
    function setMaxTsValidity(uint32 value) external;
}


// File src/interfaces/IOstiumVault.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumVault {
    struct LockedDeposit {
        address owner;
        uint256 shares;
        uint256 assetsDeposited;
        uint256 assetsDiscount;
        uint32 atTimestamp;
        uint32 lockDuration;
    }

    // Events
    event MaxDailyAccPnlDeltaPerTokenUpdated(uint256 value);
    event MaxAccOpenPnlDeltaPerTokenUpdated(uint256 value);
    event MaxSupplyIncreaseDailyPUpdated(uint256 value);
    event MaxDiscountPUpdated(uint256 value);
    event MaxDiscountThresholdPUpdated(uint256 value);

    event AddressParamUpdated(string name, address value);
    event WithdrawLockThresholdsPUpdated(uint16[2] value);
    event CurrentMaxSupplyUpdated(uint256 value);
    event DailyAccPnlDeltaReset();
    event ShareToAssetsPriceUpdated(uint256 value);
    event OpenPnlCallFailed();
    event WithdrawRequested(
        address indexed sender, address indexed owner, uint256 shares, uint16 currEpoch, uint16 indexed unlockEpoch
    );
    event WithdrawCanceled(
        address indexed sender, address indexed owner, uint256 shares, uint16 currEpoch, uint16 indexed unlockEpoch
    );
    event DepositLocked(address indexed sender, address indexed owner, uint256 depositId, LockedDeposit d);
    event DepositUnlocked(
        address indexed sender, address indexed receiver, address indexed owner, uint256 depositId, LockedDeposit d
    );
    event RewardDistributed(address indexed sender, uint256 assets, uint256 accRewardsPerToken);
    event AssetsSent(address indexed sender, address indexed receiver, uint256 assets);
    event AssetsReceived(address indexed sender, address indexed user, uint256 assets);
    event AccPnlPerTokenUsedUpdated(
        address indexed sender,
        uint256 indexed newEpoch,
        uint256 prevPositiveOpenPnl,
        uint256 newPositiveOpenPnl,
        uint256 newEpochPositiveOpenPnl,
        int256 newAccPnlPerTokenUsed
    );

    error NullPrice();
    error NullAmount();
    error NoDiscount();
    error WrongParams();
    error AboveBalance();
    error AboveMaxMint();
    error AboveMaxDeposit();
    error NotEnoughAssets();
    error NoActiveDiscount();
    error MaxDailyPnlReached();
    error WaitNextEpochStart();
    error AboveWithdrawAmount();
    error NotGov(address a);
    error NotOpenPnl(address a);
    error NotAllowed(address a);
    error NotCallbacks(address a);
    error DepositNotUnlocked(uint256 id);
    error PendingWithdrawal(address from, uint256 amount);
    error WrongLockDuration(uint256 duration, uint256 minLock, uint256 maxLock);

    function tvl() external view returns (uint256);
    function currentEpoch() external view returns (uint16);
    function currentEpochStart() external view returns (uint32);
    function currentEpochPositiveOpenPnl() external view returns (uint256);
    function availableAssets() external view returns (uint256);
    function marketCap() external view returns (uint256);
    function getLockedDeposit(uint256 depositId) external view returns (LockedDeposit memory);
    function distributeReward(uint256 assets) external;
    function currentBalance() external view returns (uint256);
    function maxAccPnlPerToken() external view returns (uint256);
    function collateralizationP() external view returns (uint256);
    function withdrawEpochsTimelock() external view returns (uint8);
    function lockDiscountP(uint256 collatP, uint32 lockDuration) external view returns (uint256);
    function totalSharesBeingWithdrawn(address owner) external view returns (uint256 shares);
    function tryUpdateCurrentMaxSupply() external;
    function makeWithdrawRequest(uint256 shares, address owner) external;
    function cancelWithdrawRequest(uint256 shares, address owner, uint16 unlockEpoch) external;
    function depositWithDiscountAndLock(uint256 assets, uint32 lockDuration, address receiver)
        external
        returns (uint256);
    function mintWithDiscountAndLock(uint256 shares, uint32 lockDuration, address receiver)
        external
        returns (uint256);
    function unlockDeposit(uint256 depositId, address receiver) external;

    // onlyGov
    function updateMaxAccOpenPnlDeltaPerToken(uint256 newValue) external;
    function updateMaxDailyAccPnlDeltaPerToken(uint256 newValue) external;
    function updateWithdrawLockThresholdsP(uint16[2] memory newValue) external;
    function updateMaxSupplyIncreaseDailyP(uint256 newValue) external;
    function updateMaxDiscountP(uint256 newValue) external;
    function updateMaxDiscountThresholdP(uint256 newValue) external;
    function tryResetDailyAccPnlDelta() external;
    function tryNewOpenPnlRequestOrEpoch() external;

    // onlyCallbacks
    function sendAssets(uint256 assets, address receiver) external;
    function receiveAssets(uint256 assets, address user) external;

    // onlyOpenPnl
    function updateAccPnlPerTokenUsed(uint256 prevPositiveOpenPnl, uint256 newPositiveOpenPnl)
        external
        returns (uint256);
}


// File src/interfaces/TokenInterfaceV5.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface TokenInterfaceV5 {
    function burn(address, uint256) external;
    function mint(address, uint256) external;
    function transfer(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
    function balanceOf(address) external view returns (uint256);
    function hasRole(bytes32, address) external view returns (bool);
    function approve(address, uint256) external returns (bool);
    function allowance(address, address) external view returns (uint256);
}


// File src/interfaces/IOstiumTradingStorage.sol

// Original license: SPDX_License_Identifier: MIT




pragma solidity ^0.8.24;

interface IOstiumTradingStorage {
    enum LimitOrder {
        TP,
        SL,
        LIQ,
        OPEN
    }
    enum OpenOrderType {
        MARKET,
        LIMIT,
        STOP
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
        uint32 initialLeverage;
        uint32 tpLastUpdated;
        uint32 slLastUpdated;
        uint32 createdAt;
        bool beingMarketClosed;
    }

    struct OpenLimitOrder {
        uint256 collateral; // PRECISION_6
        uint192 targetPrice; // PRECISION_18
        uint192 tp; // PRECISION_18
        uint192 sl; // PRECISION_18
        address trader;
        uint32 leverage; // PRECISION_2
        uint32 createdAt;
        uint32 lastUpdated;
        uint16 pairIndex;
        OpenOrderType orderType;
        uint8 index;
        bool buy;
    }

    struct PendingMarketOrder {
        uint256 block;
        uint192 wantedPrice; // PRECISION_18
        uint32 slippageP; // PRECISION_2 (%)
        Trade trade;
    }

    struct PendingAutomationOrder {
        address trader;
        uint16 pairIndex;
        uint8 index;
        LimitOrder orderType;
    }

    event SupportedTokenAdded(address a);
    event TradingContractAdded(address a);
    event TradingContractRemoved(address a);
    event MaxTradesPerPairUpdated(uint256 value);
    event MaxPendingMarketOrdersUpdated(uint256 value);
    event MaxOpenInterestUpdated(uint16 indexed pairIndex, uint256 value);

    error NullAddr();
    error WrongParams();
    error NotEmptyIndex();
    error NotGov(address a);
    error NotTrading(address a);
    error NotManager(address a);
    error NotCallbacks(address a);
    error NotTradingOrCallbacks(address a);
    error NoOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index);

    function usdc() external view returns (address);
    function devFees() external view returns (uint256);
    function totalOpenTradesCount() external view returns (uint32);
    function maxTradesPerPair() external view returns (uint8);
    function maxPendingMarketOrders() external view returns (uint8);
    function openTrades(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (uint256, uint192, uint192, uint192, address, uint32, uint16, uint8, bool);
    function openTradesInfo(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (uint256, uint256, uint32, uint32, uint32, uint32, bool);
    function openTradesCount(address _trader, uint16 _pairIndex) external view returns (uint32);
    function openLimitOrderIds(address _trader, uint16 _pairIndex, uint8 _index) external view returns (uint256);
    function openLimitOrdersCount(address _trader, uint16 _pairIndex) external view returns (uint8);
    function orderTriggerBlock(
        address _trader,
        uint16 _pairIndex,
        uint8 _index,
        IOstiumTradingStorage.LimitOrder orderType
    ) external view returns (uint256);
    function pairLimitOrders(uint16 pairIndex, uint256 index)
        external
        view
        returns (
            uint256,
            uint192,
            uint192,
            uint192,
            address,
            uint32,
            uint32,
            uint32,
            uint16,
            OpenOrderType,
            uint8,
            bool
        );
    function reqID_pendingMarketOrder(uint256 _orderId)
        external
        view
        returns (uint256, uint192, uint32, Trade memory);
    function reqID_pendingAutomationOrder(uint256) external view returns (address, uint16, uint8, LimitOrder);
    function pendingOrderIdsCount(address _trader) external view returns (uint256);
    function pendingMarketOpenCount(address _trader, uint16 _pairIndex) external view returns (uint8);
    function pendingMarketCloseCount(address _trader, uint16 _pairIndex) external view returns (uint8);
    function pairTraders(uint16 _pairIndex, uint256 index) external view returns (address);
    function pairTradersId(address _trader, uint16 _pairIndex) external view returns (uint256);
    function openInterest(uint16 _pairIndex, uint256 _type) external view returns (uint256);
    function hasOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index) external view returns (bool);
    function getOpenTrade(address _trader, uint16 _pairIndex, uint8 _index) external view returns (Trade memory);
    function getOpenTradeInfo(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (TradeInfo memory);
    function firstEmptyTradeIndex(address _trader, uint16 _pairIndex) external view returns (uint8);
    function firstEmptyOpenLimitIndex(address _trader, uint16 _pairIndex) external view returns (uint8);
    function getPendingOrderIds(address) external view returns (uint256[] memory);
    function pairTradersArray(uint16 _pairIndex) external view returns (address[] memory);
    function getOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index)
        external
        view
        returns (OpenLimitOrder memory);
    function getOpenLimitOrderByIndex(uint16 _pairIndex, uint256 _index)
        external
        view
        returns (OpenLimitOrder memory);
    function getOpenLimitOrders(uint16 _pairIndex) external view returns (OpenLimitOrder[] memory);
    function totalOpenLimitOrders(uint16 pairIndex) external view returns (uint256);
    function getPairOpeningInterestInfo(uint16 _pairIndex) external view returns (uint256, uint256, uint256);

    // onlyGov
    function claimFees() external;
    function setMaxTradesPerPair(uint256 _maxTradesPerPair) external;
    function setMaxPendingMarketOrders(uint256 _maxPendingMarketOrders) external;
    function setMaxOpenInterest(uint16 _pairIndex, uint256 _newMaxOpenInterest) external;
    function setMaxOpenInterestArray(uint16[] calldata _pairIndex, uint256[] calldata _newMaxOpenInterest) external;

    // onlyTrading
    function storeTrade(Trade memory _trade, TradeInfo memory _tradeInfo) external;
    function unregisterTrade(address _trader, uint16 _pairIndex, uint8 _index) external;
    function storePendingMarketOrder(PendingMarketOrder calldata _order, uint256 _id, bool _open) external;
    function storeOpenLimitOrder(OpenLimitOrder calldata) external;
    function updateOpenLimitOrder(OpenLimitOrder calldata) external;
    function setTrigger(address _trader, uint16 _pairIndex, uint8 _index, IOstiumTradingStorage.LimitOrder _orderType)
        external;
    function storePendingAutomationOrder(PendingAutomationOrder calldata _automationOrder, uint256 _orderId) external;
    function updateSl(address _trader, uint16 _pairIndex, uint8 _index, uint256 _newSl) external;
    function updateTp(address _trader, uint16 _pairIndex, uint8 _index, uint256 _newTp) external;

    //only trading or callbacks
    function updateTrade(Trade calldata) external;
    function unregisterPendingMarketOrder(uint256 _id, bool _open) external;
    function unregisterOpenLimitOrder(address _trader, uint16 _pairIndex, uint8 _index) external;
    function transferUsdc(address _from, address _to, uint256 _amount) external;

    //only callbacks
    function unregisterTrigger(
        address _trader,
        uint16 _pairIndex,
        uint8 _index,
        IOstiumTradingStorage.LimitOrder _orderType
    ) external;
    function unregisterPendingAutomationOrder(uint256 _orderId) external;
    function handleOpeningFees(
        uint16 _pairIndex,
        uint256 latestPrice,
        uint256 _leveragedPositionSize,
        uint32 leverage,
        bool isBuy
    ) external returns (uint256, uint256);
    function handleOracleFees(uint16 _pairIndex, bool _fullFee) external returns (uint256);
}


// File src/interfaces/IOstiumTrading.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity ^0.8.24;

interface IOstiumTrading {
    enum AutomationOrderStatus {
        PENDING_TRIGGER,
        IN_TIMEOUT,
        NO_LIMIT,
        NO_TRADE,
        NO_SL,
        NO_TP,
        SUCCESS
    }

    event Done(bool done);
    event Paused(bool paused);
    event MaxAllowedCollateralUpdated(uint256 value);
    event MarketOrdersTimeoutUpdated(uint16 value);
    event TriggerTimeoutUpdated(uint16 value);
    event MarketOpenOrderInitiated(uint256 indexed orderId, address indexed trader, uint16 indexed pairIndex);
    event MarketCloseOrderInitiated(
        uint256 indexed orderId, uint256 indexed tradeId, address indexed trader, uint16 pairIndex
    );
    event OpenLimitPlaced(address indexed trader, uint16 indexed pairIndex, uint8 index);
    event OpenLimitUpdated(
        address indexed trader, uint16 indexed pairIndex, uint8 index, uint192 newPrice, uint192 newTp, uint192 newSl
    );
    event OpenLimitCanceled(address indexed trader, uint16 indexed pairIndex, uint8 index);
    event TpUpdated(
        uint256 indexed tradeId, address indexed trader, uint16 indexed pairIndex, uint8 index, uint192 newTp
    );
    event SlUpdated(
        uint256 indexed tradeId, address indexed trader, uint16 indexed pairIndex, uint8 index, uint192 newSl
    );
    event AutomationOpenOrderInitiated(
        uint256 indexed orderId, address indexed trader, uint16 indexed pairIndex, uint8 index
    );
    event AutomationCloseOrderInitiated(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint16 pairIndex,
        IOstiumTradingStorage.LimitOrder
    );
    event MarketOpenTimeoutExecuted(uint256 indexed orderId, IOstiumTradingStorage.PendingMarketOrder order);
    event MarketCloseTimeoutExecuted(
        uint256 indexed orderId, uint256 indexed tradeId, IOstiumTradingStorage.PendingMarketOrder order
    );
    event MarketCloseFailed(uint256 indexed tradeId, address indexed trader, uint16 indexed pairIndex);
    event TopUpCollateralExecuted(
        uint256 indexed tradeId,
        address indexed trader,
        uint16 indexed pairIndex,
        uint256 topUpAmount,
        uint32 newLeverage
    );

    error IsDone();
    error WrongTP();
    error WrongSL();
    error IsPaused();
    error WrongParams();
    error BelowMinLevPos();
    error ExposureLimits();
    error NotGov(address a);
    error NotManager(address a);
    error NotTradesUpKeep(address a);
    error AboveMaxAllowedCollateral();
    error PairNotListed(uint16 index);
    error WaitTimeout(uint256 orderId);
    error WrongLeverage(uint32 leverage);
    error NoTradeToTimeoutFound(uint256 orderId);
    error NotOpenMarketTimeoutOrder(uint256 orderId);
    error NotCloseMarketTimeoutOrder(uint256 orderId);
    error NotYourOrder(uint256 orderId, address trader);
    error MaxPendingMarketOrdersReached(address trader);
    error MaxTradesPerPairReached(address trader, uint16 pairIndex);
    error NoTradeFound(address trader, uint16 pairIndex, uint8 index);
    error NoLimitFound(address trader, uint16 pairIndex, uint8 index);
    error AlreadyMarketClosed(address trader, uint16 pairIndex, uint8 index);
    error TriggerPending(address sender, uint16 pairIndex, uint8 index);

    function isDone() external view returns (bool);
    function isPaused() external view returns (bool);
    function maxAllowedCollateral() external view returns (uint256);
    function marketOrdersTimeout() external view returns (uint16);
    function triggerTimeout() external view returns (uint16);

    function openTrade(
        IOstiumTradingStorage.Trade calldata t,
        IOstiumTradingStorage.OpenOrderType orderType,
        uint256 slippageP
    ) external;
    function closeTradeMarket(uint16 pairIndex, uint8 index) external;
    function updateOpenLimitOrder(uint16 pairIndex, uint8 index, uint192 price, uint192 tp, uint192 sl) external;
    function cancelOpenLimitOrder(uint16 pairIndex, uint8 index) external;
    function updateTp(uint16 pairIndex, uint8 index, uint192 newTp) external;
    function updateSl(uint16 pairIndex, uint8 index, uint192 newSl) external;
    function topUpCollateral(uint16 pairIndex, uint8 index, uint256 topUpAmount) external;
    function openTradeMarketTimeout(uint256 _order) external;
    function closeTradeMarketTimeout(uint256 _order, bool retry) external;
    function checkNoPendingTrigger(
        address trader,
        uint16 pairIndex,
        uint8 index,
        IOstiumTradingStorage.LimitOrder orderType
    ) external view returns (bool);
    function checkNoPendingTriggers(address trader, uint16 pairIndex, uint8 index) external view returns (bool);

    // only tradesUpKeep
    function executeAutomationOrder(
        IOstiumTradingStorage.LimitOrder orderType,
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 priceTimestamp
    ) external returns (AutomationOrderStatus);

    //only gov
    function done() external;
    function setTriggerTimeout(uint256 value) external;
    function setMarketOrdersTimeout(uint256 value) external;
    function setMaxAllowedCollateral(uint256 value) external;

    // only manager
    function pause() external;
}


// File src/interfaces/IOstiumTradingCallbacks.sol

// Original license: SPDX_License_Identifier: MIT

pragma solidity ^0.8.24;

interface IOstiumTradingCallbacks {
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

    event MarketOpenExecuted(
        uint256 indexed orderId, IOstiumTradingStorage.Trade t, uint256 priceImpactP, uint256 tradeNotional
    );
    event MarketCloseExecuted(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        uint256 price,
        uint256 priceImpactP,
        int256 percentProfit,
        uint256 usdcSentToTrader
    );
    event LimitOpenExecuted(
        uint256 indexed orderId,
        uint256 limitIndex,
        IOstiumTradingStorage.Trade t,
        uint256 priceImpactP,
        uint256 tradeNotional
    );
    event LimitCloseExecuted(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        IOstiumTradingStorage.LimitOrder orderType,
        uint256 price,
        uint256 priceImpactP,
        int256 percentProfit,
        uint256 usdcSentToTrader
    );
    event MarketOpenCanceled(
        uint256 indexed orderId, address indexed trader, uint256 indexed pairIndex, CancelReason cancelReason
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
        uint256 indexed orderId, address indexed trader, uint256 indexed pairIndex, CancelReason cancelReason
    );
    event AutomationCloseOrderCanceled(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint256 pairIndex,
        IOstiumTradingStorage.LimitOrder orderType,
        CancelReason cancelReason
    );
    event Done(bool done);
    event Paused(bool paused);
    event MaxSlPUpdated(uint256 value);
    event TradeSizeRefUpdated(uint256 value);
    event DevFeeCharged(uint256 indexed tradeId, address indexed trader, uint256 amount);
    event OracleFeeCharged(uint256 indexed tradeId, address indexed trader, uint256 amount);
    event VaultOpeningFeeCharged(uint256 indexed tradeId, address indexed trader, uint256 amount);
    event VaultLiqFeeCharged(uint256 indexed orderId, uint256 indexed tradeId, address indexed trader, uint256 amount);

    error IsDone();
    error IsPaused();
    error WrongParams();
    error NotGov(address a);
    error NotManager(address a);
    error NotTrading(address a);
    error NotPriceUpKeep(address a);

    function isDone() external view returns (bool);
    function isPaused() external view returns (bool);
    function maxSl_P() external view returns (uint8);
    function getTradePriceImpact(
        IOstiumPriceUpKeep.PriceUpKeepAnswer calldata a,
        bool isOpen,
        bool isLong,
        uint256 tradeSize
    ) external view returns (uint256, uint256);

    // only priceUpKeep
    function openTradeMarketCallback(IOstiumPriceUpKeep.PriceUpKeepAnswer calldata) external;
    function closeTradeMarketCallback(IOstiumPriceUpKeep.PriceUpKeepAnswer calldata) external;
    function executeAutomationOpenOrderCallback(IOstiumPriceUpKeep.PriceUpKeepAnswer calldata) external;
    function executeAutomationCloseOrderCallback(IOstiumPriceUpKeep.PriceUpKeepAnswer calldata) external;

    // only gov
    function done() external;
    function setVaultMaxAllowance() external;
    function setMaxSl_P(uint256 _maxSl_P) external;
    function unsetVaultMaxAllowance(address _oldVault) external;

    // only manager
    function pause() external;
}


// File src/interfaces/external/IArbSys.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity >=0.6.10 <0.9.0;

/**
 * @title Precompiled contract that exists in every Arbitrum chain at address(100), 0x0000000000000000000000000000000000000064. Exposes a variety of system-level functionality.
 */
interface IArbSys {
    /**
     * @notice Get internal version number identifying an ArbOS build
     * @return version number as int
     */
    function arbOSVersion() external pure returns (uint256);

    function arbChainID() external view returns (uint256);

    /**
     * @notice Get Arbitrum block number (distinct from L1 block number; Arbitrum genesis block has block number 0)
     * @return block number as int
     */
    function arbBlockNumber() external view returns (uint256);

    /**
     * @notice Send given amount of Eth to dest from sender.
     * This is a convenience function, which is equivalent to calling sendTxToL1 with empty calldataForL1.
     * @param destination recipient address on L1
     * @return unique identifier for this L2-to-L1 transaction.
     */
    function withdrawEth(address destination) external payable returns (uint256);

    /**
     * @notice Send a transaction to L1
     * @param destination recipient address on L1
     * @param calldataForL1 (optional) calldata for L1 contract call
     * @return a unique identifier for this L2-to-L1 transaction.
     */
    function sendTxToL1(address destination, bytes calldata calldataForL1) external payable returns (uint256);

    /**
     * @notice get the number of transactions issued by the given external account or the account sequence number of the given contract
     * @param account target account
     * @return the number of transactions issued by the given external account or the account sequence number of the given contract
     */
    function getTransactionCount(address account) external view returns (uint256);

    /**
     * @notice get the value of target L2 storage slot
     * This function is only callable from address 0 to prevent contracts from being able to call it
     * @param account target account
     * @param index target index of storage slot
     * @return stotage value for the given account at the given index
     */
    function getStorageAt(address account, uint256 index) external view returns (uint256);

    /**
     * @notice check if current call is coming from l1
     * @return true if the caller of this was called directly from L1
     */
    function isTopLevelCall() external view returns (bool);

    /**
     * @notice check if the caller (of this caller of this) is an aliased L1 contract address
     * @return true iff the caller's address is an alias for an L1 contract address
     */
    function wasMyCallersAddressAliased() external view returns (bool);

    /**
     * @notice return the address of the caller (of this caller of this), without applying L1 contract address aliasing
     * @return address of the caller's caller, without applying L1 contract address aliasing
     */
    function myCallersAddressWithoutAliasing() external view returns (address);

    /**
     * @notice map L1 sender contract address to its L2 alias
     * @param sender sender address
     * @param dest destination address
     * @return aliased sender address
     */
    function mapL1SenderContractAddressToL2Alias(address sender, address dest) external pure returns (address);

    /**
     * @notice get the caller's amount of available storage gas
     * @return amount of storage gas available to the caller
     */
    function getStorageGasAvailable() external view returns (uint256);

    event L2ToL1Transaction(
        address caller,
        address indexed destination,
        uint256 indexed uniqueId,
        uint256 indexed batchNumber,
        uint256 indexInBatch,
        uint256 arbBlockNum,
        uint256 ethBlockNum,
        uint256 timestamp,
        uint256 callvalue,
        bytes data
    );
}


// File src/lib/ChainUtils.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

library ChainUtils {
    uint256 public constant ARBITRUM_MAINNET = 42161;
    uint256 public constant ARBITRUM_GOERLI = 421613;
    uint256 public constant ARBITRUM_SEPOLIA = 421614;
    IArbSys public constant ARB_SYS = IArbSys(address(100));

    function getBlockNumber() internal view returns (uint256) {
        if (block.chainid == ARBITRUM_MAINNET || block.chainid == ARBITRUM_GOERLI || block.chainid == ARBITRUM_SEPOLIA)
        {
            return ARB_SYS.arbBlockNumber();
        }

        return block.number;
    }
}


// File @openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (proxy/utils/Initializable.sol)

pragma solidity ^0.8.20;

/**
 * @dev This is a base contract to aid in writing upgradeable contracts, or any kind of contract that will be deployed
 * behind a proxy. Since proxied contracts do not make use of a constructor, it's common to move constructor logic to an
 * external initializer function, usually called `initialize`. It then becomes necessary to protect this initializer
 * function so it can only be called once. The {initializer} modifier provided by this contract will have this effect.
 *
 * The initialization functions use a version number. Once a version number is used, it is consumed and cannot be
 * reused. This mechanism prevents re-execution of each "step" but allows the creation of new initialization steps in
 * case an upgrade adds a module that needs to be initialized.
 *
 * For example:
 *
 * [.hljs-theme-light.nopadding]
 * ```solidity
 * contract MyToken is ERC20Upgradeable {
 *     function initialize() initializer public {
 *         __ERC20_init("MyToken", "MTK");
 *     }
 * }
 *
 * contract MyTokenV2 is MyToken, ERC20PermitUpgradeable {
 *     function initializeV2() reinitializer(2) public {
 *         __ERC20Permit_init("MyToken");
 *     }
 * }
 * ```
 *
 * TIP: To avoid leaving the proxy in an uninitialized state, the initializer function should be called as early as
 * possible by providing the encoded function call as the `_data` argument to {ERC1967Proxy-constructor}.
 *
 * CAUTION: When used with inheritance, manual care must be taken to not invoke a parent initializer twice, or to ensure
 * that all initializers are idempotent. This is not verified automatically as constructors are by Solidity.
 *
 * [CAUTION]
 * ====
 * Avoid leaving a contract uninitialized.
 *
 * An uninitialized contract can be taken over by an attacker. This applies to both a proxy and its implementation
 * contract, which may impact the proxy. To prevent the implementation contract from being used, you should invoke
 * the {_disableInitializers} function in the constructor to automatically lock it when it is deployed:
 *
 * [.hljs-theme-light.nopadding]
 * ```
 * /// @custom:oz-upgrades-unsafe-allow constructor
 * constructor() {
 *     _disableInitializers();
 * }
 * ```
 * ====
 */
abstract contract Initializable {
    /**
     * @dev Storage of the initializable contract.
     *
     * It's implemented on a custom ERC-7201 namespace to reduce the risk of storage collisions
     * when using with upgradeable contracts.
     *
     * @custom:storage-location erc7201:openzeppelin.storage.Initializable
     */
    struct InitializableStorage {
        /**
         * @dev Indicates that the contract has been initialized.
         */
        uint64 _initialized;
        /**
         * @dev Indicates that the contract is in the process of being initialized.
         */
        bool _initializing;
    }

    // keccak256(abi.encode(uint256(keccak256("openzeppelin.storage.Initializable")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant INITIALIZABLE_STORAGE = 0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00;

    /**
     * @dev The contract is already initialized.
     */
    error InvalidInitialization();

    /**
     * @dev The contract is not initializing.
     */
    error NotInitializing();

    /**
     * @dev Triggered when the contract has been initialized or reinitialized.
     */
    event Initialized(uint64 version);

    /**
     * @dev A modifier that defines a protected initializer function that can be invoked at most once. In its scope,
     * `onlyInitializing` functions can be used to initialize parent contracts.
     *
     * Similar to `reinitializer(1)`, except that in the context of a constructor an `initializer` may be invoked any
     * number of times. This behavior in the constructor can be useful during testing and is not expected to be used in
     * production.
     *
     * Emits an {Initialized} event.
     */
    modifier initializer() {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        // Cache values to avoid duplicated sloads
        bool isTopLevelCall = !$._initializing;
        uint64 initialized = $._initialized;

        // Allowed calls:
        // - initialSetup: the contract is not in the initializing state and no previous version was
        //                 initialized
        // - construction: the contract is initialized at version 1 (no reininitialization) and the
        //                 current contract is just being deployed
        bool initialSetup = initialized == 0 && isTopLevelCall;
        bool construction = initialized == 1 && address(this).code.length == 0;

        if (!initialSetup && !construction) {
            revert InvalidInitialization();
        }
        $._initialized = 1;
        if (isTopLevelCall) {
            $._initializing = true;
        }
        _;
        if (isTopLevelCall) {
            $._initializing = false;
            emit Initialized(1);
        }
    }

    /**
     * @dev A modifier that defines a protected reinitializer function that can be invoked at most once, and only if the
     * contract hasn't been initialized to a greater version before. In its scope, `onlyInitializing` functions can be
     * used to initialize parent contracts.
     *
     * A reinitializer may be used after the original initialization step. This is essential to configure modules that
     * are added through upgrades and that require initialization.
     *
     * When `version` is 1, this modifier is similar to `initializer`, except that functions marked with `reinitializer`
     * cannot be nested. If one is invoked in the context of another, execution will revert.
     *
     * Note that versions can jump in increments greater than 1; this implies that if multiple reinitializers coexist in
     * a contract, executing them in the right order is up to the developer or operator.
     *
     * WARNING: Setting the version to 2**64 - 1 will prevent any future reinitialization.
     *
     * Emits an {Initialized} event.
     */
    modifier reinitializer(uint64 version) {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing || $._initialized >= version) {
            revert InvalidInitialization();
        }
        $._initialized = version;
        $._initializing = true;
        _;
        $._initializing = false;
        emit Initialized(version);
    }

    /**
     * @dev Modifier to protect an initialization function so that it can only be invoked by functions with the
     * {initializer} and {reinitializer} modifiers, directly or indirectly.
     */
    modifier onlyInitializing() {
        _checkInitializing();
        _;
    }

    /**
     * @dev Reverts if the contract is not in an initializing state. See {onlyInitializing}.
     */
    function _checkInitializing() internal view virtual {
        if (!_isInitializing()) {
            revert NotInitializing();
        }
    }

    /**
     * @dev Locks the contract, preventing any future reinitialization. This cannot be part of an initializer call.
     * Calling this in the constructor of a contract will prevent that contract from being initialized or reinitialized
     * to any version. It is recommended to use this to lock implementation contracts that are designed to be called
     * through proxies.
     *
     * Emits an {Initialized} event the first time it is successfully executed.
     */
    function _disableInitializers() internal virtual {
        // solhint-disable-next-line var-name-mixedcase
        InitializableStorage storage $ = _getInitializableStorage();

        if ($._initializing) {
            revert InvalidInitialization();
        }
        if ($._initialized != type(uint64).max) {
            $._initialized = type(uint64).max;
            emit Initialized(type(uint64).max);
        }
    }

    /**
     * @dev Returns the highest version that has been initialized. See {reinitializer}.
     */
    function _getInitializedVersion() internal view returns (uint64) {
        return _getInitializableStorage()._initialized;
    }

    /**
     * @dev Returns `true` if the contract is currently initializing. See {onlyInitializing}.
     */
    function _isInitializing() internal view returns (bool) {
        return _getInitializableStorage()._initializing;
    }

    /**
     * @dev Returns a pointer to the storage namespace.
     */
    // solhint-disable-next-line var-name-mixedcase
    function _getInitializableStorage() private pure returns (InitializableStorage storage $) {
        assembly {
            $.slot := INITIALIZABLE_STORAGE
        }
    }
}


// File @openzeppelin/contracts/utils/math/SafeCast.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SafeCast.sol)
// This file was procedurally generated from scripts/generate/templates/SafeCast.js.

pragma solidity ^0.8.20;

/**
 * @dev Wrappers over Solidity's uintXX/intXX casting operators with added overflow
 * checks.
 *
 * Downcasting from uint256/int256 in Solidity does not revert on overflow. This can
 * easily result in undesired exploitation or bugs, since developers usually
 * assume that overflows raise errors. `SafeCast` restores this intuition by
 * reverting the transaction when such an operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeCast {
    /**
     * @dev Value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedUintDowncast(uint8 bits, uint256 value);

    /**
     * @dev An int value doesn't fit in an uint of `bits` size.
     */
    error SafeCastOverflowedIntToUint(int256 value);

    /**
     * @dev Value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedIntDowncast(uint8 bits, int256 value);

    /**
     * @dev An uint value doesn't fit in an int of `bits` size.
     */
    error SafeCastOverflowedUintToInt(uint256 value);

    /**
     * @dev Returns the downcasted uint248 from uint256, reverting on
     * overflow (when the input is greater than largest uint248).
     *
     * Counterpart to Solidity's `uint248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toUint248(uint256 value) internal pure returns (uint248) {
        if (value > type(uint248).max) {
            revert SafeCastOverflowedUintDowncast(248, value);
        }
        return uint248(value);
    }

    /**
     * @dev Returns the downcasted uint240 from uint256, reverting on
     * overflow (when the input is greater than largest uint240).
     *
     * Counterpart to Solidity's `uint240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toUint240(uint256 value) internal pure returns (uint240) {
        if (value > type(uint240).max) {
            revert SafeCastOverflowedUintDowncast(240, value);
        }
        return uint240(value);
    }

    /**
     * @dev Returns the downcasted uint232 from uint256, reverting on
     * overflow (when the input is greater than largest uint232).
     *
     * Counterpart to Solidity's `uint232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toUint232(uint256 value) internal pure returns (uint232) {
        if (value > type(uint232).max) {
            revert SafeCastOverflowedUintDowncast(232, value);
        }
        return uint232(value);
    }

    /**
     * @dev Returns the downcasted uint224 from uint256, reverting on
     * overflow (when the input is greater than largest uint224).
     *
     * Counterpart to Solidity's `uint224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toUint224(uint256 value) internal pure returns (uint224) {
        if (value > type(uint224).max) {
            revert SafeCastOverflowedUintDowncast(224, value);
        }
        return uint224(value);
    }

    /**
     * @dev Returns the downcasted uint216 from uint256, reverting on
     * overflow (when the input is greater than largest uint216).
     *
     * Counterpart to Solidity's `uint216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toUint216(uint256 value) internal pure returns (uint216) {
        if (value > type(uint216).max) {
            revert SafeCastOverflowedUintDowncast(216, value);
        }
        return uint216(value);
    }

    /**
     * @dev Returns the downcasted uint208 from uint256, reverting on
     * overflow (when the input is greater than largest uint208).
     *
     * Counterpart to Solidity's `uint208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toUint208(uint256 value) internal pure returns (uint208) {
        if (value > type(uint208).max) {
            revert SafeCastOverflowedUintDowncast(208, value);
        }
        return uint208(value);
    }

    /**
     * @dev Returns the downcasted uint200 from uint256, reverting on
     * overflow (when the input is greater than largest uint200).
     *
     * Counterpart to Solidity's `uint200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toUint200(uint256 value) internal pure returns (uint200) {
        if (value > type(uint200).max) {
            revert SafeCastOverflowedUintDowncast(200, value);
        }
        return uint200(value);
    }

    /**
     * @dev Returns the downcasted uint192 from uint256, reverting on
     * overflow (when the input is greater than largest uint192).
     *
     * Counterpart to Solidity's `uint192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toUint192(uint256 value) internal pure returns (uint192) {
        if (value > type(uint192).max) {
            revert SafeCastOverflowedUintDowncast(192, value);
        }
        return uint192(value);
    }

    /**
     * @dev Returns the downcasted uint184 from uint256, reverting on
     * overflow (when the input is greater than largest uint184).
     *
     * Counterpart to Solidity's `uint184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toUint184(uint256 value) internal pure returns (uint184) {
        if (value > type(uint184).max) {
            revert SafeCastOverflowedUintDowncast(184, value);
        }
        return uint184(value);
    }

    /**
     * @dev Returns the downcasted uint176 from uint256, reverting on
     * overflow (when the input is greater than largest uint176).
     *
     * Counterpart to Solidity's `uint176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toUint176(uint256 value) internal pure returns (uint176) {
        if (value > type(uint176).max) {
            revert SafeCastOverflowedUintDowncast(176, value);
        }
        return uint176(value);
    }

    /**
     * @dev Returns the downcasted uint168 from uint256, reverting on
     * overflow (when the input is greater than largest uint168).
     *
     * Counterpart to Solidity's `uint168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toUint168(uint256 value) internal pure returns (uint168) {
        if (value > type(uint168).max) {
            revert SafeCastOverflowedUintDowncast(168, value);
        }
        return uint168(value);
    }

    /**
     * @dev Returns the downcasted uint160 from uint256, reverting on
     * overflow (when the input is greater than largest uint160).
     *
     * Counterpart to Solidity's `uint160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toUint160(uint256 value) internal pure returns (uint160) {
        if (value > type(uint160).max) {
            revert SafeCastOverflowedUintDowncast(160, value);
        }
        return uint160(value);
    }

    /**
     * @dev Returns the downcasted uint152 from uint256, reverting on
     * overflow (when the input is greater than largest uint152).
     *
     * Counterpart to Solidity's `uint152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toUint152(uint256 value) internal pure returns (uint152) {
        if (value > type(uint152).max) {
            revert SafeCastOverflowedUintDowncast(152, value);
        }
        return uint152(value);
    }

    /**
     * @dev Returns the downcasted uint144 from uint256, reverting on
     * overflow (when the input is greater than largest uint144).
     *
     * Counterpart to Solidity's `uint144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toUint144(uint256 value) internal pure returns (uint144) {
        if (value > type(uint144).max) {
            revert SafeCastOverflowedUintDowncast(144, value);
        }
        return uint144(value);
    }

    /**
     * @dev Returns the downcasted uint136 from uint256, reverting on
     * overflow (when the input is greater than largest uint136).
     *
     * Counterpart to Solidity's `uint136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toUint136(uint256 value) internal pure returns (uint136) {
        if (value > type(uint136).max) {
            revert SafeCastOverflowedUintDowncast(136, value);
        }
        return uint136(value);
    }

    /**
     * @dev Returns the downcasted uint128 from uint256, reverting on
     * overflow (when the input is greater than largest uint128).
     *
     * Counterpart to Solidity's `uint128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toUint128(uint256 value) internal pure returns (uint128) {
        if (value > type(uint128).max) {
            revert SafeCastOverflowedUintDowncast(128, value);
        }
        return uint128(value);
    }

    /**
     * @dev Returns the downcasted uint120 from uint256, reverting on
     * overflow (when the input is greater than largest uint120).
     *
     * Counterpart to Solidity's `uint120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toUint120(uint256 value) internal pure returns (uint120) {
        if (value > type(uint120).max) {
            revert SafeCastOverflowedUintDowncast(120, value);
        }
        return uint120(value);
    }

    /**
     * @dev Returns the downcasted uint112 from uint256, reverting on
     * overflow (when the input is greater than largest uint112).
     *
     * Counterpart to Solidity's `uint112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toUint112(uint256 value) internal pure returns (uint112) {
        if (value > type(uint112).max) {
            revert SafeCastOverflowedUintDowncast(112, value);
        }
        return uint112(value);
    }

    /**
     * @dev Returns the downcasted uint104 from uint256, reverting on
     * overflow (when the input is greater than largest uint104).
     *
     * Counterpart to Solidity's `uint104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toUint104(uint256 value) internal pure returns (uint104) {
        if (value > type(uint104).max) {
            revert SafeCastOverflowedUintDowncast(104, value);
        }
        return uint104(value);
    }

    /**
     * @dev Returns the downcasted uint96 from uint256, reverting on
     * overflow (when the input is greater than largest uint96).
     *
     * Counterpart to Solidity's `uint96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toUint96(uint256 value) internal pure returns (uint96) {
        if (value > type(uint96).max) {
            revert SafeCastOverflowedUintDowncast(96, value);
        }
        return uint96(value);
    }

    /**
     * @dev Returns the downcasted uint88 from uint256, reverting on
     * overflow (when the input is greater than largest uint88).
     *
     * Counterpart to Solidity's `uint88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toUint88(uint256 value) internal pure returns (uint88) {
        if (value > type(uint88).max) {
            revert SafeCastOverflowedUintDowncast(88, value);
        }
        return uint88(value);
    }

    /**
     * @dev Returns the downcasted uint80 from uint256, reverting on
     * overflow (when the input is greater than largest uint80).
     *
     * Counterpart to Solidity's `uint80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toUint80(uint256 value) internal pure returns (uint80) {
        if (value > type(uint80).max) {
            revert SafeCastOverflowedUintDowncast(80, value);
        }
        return uint80(value);
    }

    /**
     * @dev Returns the downcasted uint72 from uint256, reverting on
     * overflow (when the input is greater than largest uint72).
     *
     * Counterpart to Solidity's `uint72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toUint72(uint256 value) internal pure returns (uint72) {
        if (value > type(uint72).max) {
            revert SafeCastOverflowedUintDowncast(72, value);
        }
        return uint72(value);
    }

    /**
     * @dev Returns the downcasted uint64 from uint256, reverting on
     * overflow (when the input is greater than largest uint64).
     *
     * Counterpart to Solidity's `uint64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toUint64(uint256 value) internal pure returns (uint64) {
        if (value > type(uint64).max) {
            revert SafeCastOverflowedUintDowncast(64, value);
        }
        return uint64(value);
    }

    /**
     * @dev Returns the downcasted uint56 from uint256, reverting on
     * overflow (when the input is greater than largest uint56).
     *
     * Counterpart to Solidity's `uint56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toUint56(uint256 value) internal pure returns (uint56) {
        if (value > type(uint56).max) {
            revert SafeCastOverflowedUintDowncast(56, value);
        }
        return uint56(value);
    }

    /**
     * @dev Returns the downcasted uint48 from uint256, reverting on
     * overflow (when the input is greater than largest uint48).
     *
     * Counterpart to Solidity's `uint48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toUint48(uint256 value) internal pure returns (uint48) {
        if (value > type(uint48).max) {
            revert SafeCastOverflowedUintDowncast(48, value);
        }
        return uint48(value);
    }

    /**
     * @dev Returns the downcasted uint40 from uint256, reverting on
     * overflow (when the input is greater than largest uint40).
     *
     * Counterpart to Solidity's `uint40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toUint40(uint256 value) internal pure returns (uint40) {
        if (value > type(uint40).max) {
            revert SafeCastOverflowedUintDowncast(40, value);
        }
        return uint40(value);
    }

    /**
     * @dev Returns the downcasted uint32 from uint256, reverting on
     * overflow (when the input is greater than largest uint32).
     *
     * Counterpart to Solidity's `uint32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toUint32(uint256 value) internal pure returns (uint32) {
        if (value > type(uint32).max) {
            revert SafeCastOverflowedUintDowncast(32, value);
        }
        return uint32(value);
    }

    /**
     * @dev Returns the downcasted uint24 from uint256, reverting on
     * overflow (when the input is greater than largest uint24).
     *
     * Counterpart to Solidity's `uint24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toUint24(uint256 value) internal pure returns (uint24) {
        if (value > type(uint24).max) {
            revert SafeCastOverflowedUintDowncast(24, value);
        }
        return uint24(value);
    }

    /**
     * @dev Returns the downcasted uint16 from uint256, reverting on
     * overflow (when the input is greater than largest uint16).
     *
     * Counterpart to Solidity's `uint16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toUint16(uint256 value) internal pure returns (uint16) {
        if (value > type(uint16).max) {
            revert SafeCastOverflowedUintDowncast(16, value);
        }
        return uint16(value);
    }

    /**
     * @dev Returns the downcasted uint8 from uint256, reverting on
     * overflow (when the input is greater than largest uint8).
     *
     * Counterpart to Solidity's `uint8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toUint8(uint256 value) internal pure returns (uint8) {
        if (value > type(uint8).max) {
            revert SafeCastOverflowedUintDowncast(8, value);
        }
        return uint8(value);
    }

    /**
     * @dev Converts a signed int256 into an unsigned uint256.
     *
     * Requirements:
     *
     * - input must be greater than or equal to 0.
     */
    function toUint256(int256 value) internal pure returns (uint256) {
        if (value < 0) {
            revert SafeCastOverflowedIntToUint(value);
        }
        return uint256(value);
    }

    /**
     * @dev Returns the downcasted int248 from int256, reverting on
     * overflow (when the input is less than smallest int248 or
     * greater than largest int248).
     *
     * Counterpart to Solidity's `int248` operator.
     *
     * Requirements:
     *
     * - input must fit into 248 bits
     */
    function toInt248(int256 value) internal pure returns (int248 downcasted) {
        downcasted = int248(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(248, value);
        }
    }

    /**
     * @dev Returns the downcasted int240 from int256, reverting on
     * overflow (when the input is less than smallest int240 or
     * greater than largest int240).
     *
     * Counterpart to Solidity's `int240` operator.
     *
     * Requirements:
     *
     * - input must fit into 240 bits
     */
    function toInt240(int256 value) internal pure returns (int240 downcasted) {
        downcasted = int240(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(240, value);
        }
    }

    /**
     * @dev Returns the downcasted int232 from int256, reverting on
     * overflow (when the input is less than smallest int232 or
     * greater than largest int232).
     *
     * Counterpart to Solidity's `int232` operator.
     *
     * Requirements:
     *
     * - input must fit into 232 bits
     */
    function toInt232(int256 value) internal pure returns (int232 downcasted) {
        downcasted = int232(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(232, value);
        }
    }

    /**
     * @dev Returns the downcasted int224 from int256, reverting on
     * overflow (when the input is less than smallest int224 or
     * greater than largest int224).
     *
     * Counterpart to Solidity's `int224` operator.
     *
     * Requirements:
     *
     * - input must fit into 224 bits
     */
    function toInt224(int256 value) internal pure returns (int224 downcasted) {
        downcasted = int224(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(224, value);
        }
    }

    /**
     * @dev Returns the downcasted int216 from int256, reverting on
     * overflow (when the input is less than smallest int216 or
     * greater than largest int216).
     *
     * Counterpart to Solidity's `int216` operator.
     *
     * Requirements:
     *
     * - input must fit into 216 bits
     */
    function toInt216(int256 value) internal pure returns (int216 downcasted) {
        downcasted = int216(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(216, value);
        }
    }

    /**
     * @dev Returns the downcasted int208 from int256, reverting on
     * overflow (when the input is less than smallest int208 or
     * greater than largest int208).
     *
     * Counterpart to Solidity's `int208` operator.
     *
     * Requirements:
     *
     * - input must fit into 208 bits
     */
    function toInt208(int256 value) internal pure returns (int208 downcasted) {
        downcasted = int208(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(208, value);
        }
    }

    /**
     * @dev Returns the downcasted int200 from int256, reverting on
     * overflow (when the input is less than smallest int200 or
     * greater than largest int200).
     *
     * Counterpart to Solidity's `int200` operator.
     *
     * Requirements:
     *
     * - input must fit into 200 bits
     */
    function toInt200(int256 value) internal pure returns (int200 downcasted) {
        downcasted = int200(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(200, value);
        }
    }

    /**
     * @dev Returns the downcasted int192 from int256, reverting on
     * overflow (when the input is less than smallest int192 or
     * greater than largest int192).
     *
     * Counterpart to Solidity's `int192` operator.
     *
     * Requirements:
     *
     * - input must fit into 192 bits
     */
    function toInt192(int256 value) internal pure returns (int192 downcasted) {
        downcasted = int192(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(192, value);
        }
    }

    /**
     * @dev Returns the downcasted int184 from int256, reverting on
     * overflow (when the input is less than smallest int184 or
     * greater than largest int184).
     *
     * Counterpart to Solidity's `int184` operator.
     *
     * Requirements:
     *
     * - input must fit into 184 bits
     */
    function toInt184(int256 value) internal pure returns (int184 downcasted) {
        downcasted = int184(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(184, value);
        }
    }

    /**
     * @dev Returns the downcasted int176 from int256, reverting on
     * overflow (when the input is less than smallest int176 or
     * greater than largest int176).
     *
     * Counterpart to Solidity's `int176` operator.
     *
     * Requirements:
     *
     * - input must fit into 176 bits
     */
    function toInt176(int256 value) internal pure returns (int176 downcasted) {
        downcasted = int176(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(176, value);
        }
    }

    /**
     * @dev Returns the downcasted int168 from int256, reverting on
     * overflow (when the input is less than smallest int168 or
     * greater than largest int168).
     *
     * Counterpart to Solidity's `int168` operator.
     *
     * Requirements:
     *
     * - input must fit into 168 bits
     */
    function toInt168(int256 value) internal pure returns (int168 downcasted) {
        downcasted = int168(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(168, value);
        }
    }

    /**
     * @dev Returns the downcasted int160 from int256, reverting on
     * overflow (when the input is less than smallest int160 or
     * greater than largest int160).
     *
     * Counterpart to Solidity's `int160` operator.
     *
     * Requirements:
     *
     * - input must fit into 160 bits
     */
    function toInt160(int256 value) internal pure returns (int160 downcasted) {
        downcasted = int160(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(160, value);
        }
    }

    /**
     * @dev Returns the downcasted int152 from int256, reverting on
     * overflow (when the input is less than smallest int152 or
     * greater than largest int152).
     *
     * Counterpart to Solidity's `int152` operator.
     *
     * Requirements:
     *
     * - input must fit into 152 bits
     */
    function toInt152(int256 value) internal pure returns (int152 downcasted) {
        downcasted = int152(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(152, value);
        }
    }

    /**
     * @dev Returns the downcasted int144 from int256, reverting on
     * overflow (when the input is less than smallest int144 or
     * greater than largest int144).
     *
     * Counterpart to Solidity's `int144` operator.
     *
     * Requirements:
     *
     * - input must fit into 144 bits
     */
    function toInt144(int256 value) internal pure returns (int144 downcasted) {
        downcasted = int144(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(144, value);
        }
    }

    /**
     * @dev Returns the downcasted int136 from int256, reverting on
     * overflow (when the input is less than smallest int136 or
     * greater than largest int136).
     *
     * Counterpart to Solidity's `int136` operator.
     *
     * Requirements:
     *
     * - input must fit into 136 bits
     */
    function toInt136(int256 value) internal pure returns (int136 downcasted) {
        downcasted = int136(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(136, value);
        }
    }

    /**
     * @dev Returns the downcasted int128 from int256, reverting on
     * overflow (when the input is less than smallest int128 or
     * greater than largest int128).
     *
     * Counterpart to Solidity's `int128` operator.
     *
     * Requirements:
     *
     * - input must fit into 128 bits
     */
    function toInt128(int256 value) internal pure returns (int128 downcasted) {
        downcasted = int128(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(128, value);
        }
    }

    /**
     * @dev Returns the downcasted int120 from int256, reverting on
     * overflow (when the input is less than smallest int120 or
     * greater than largest int120).
     *
     * Counterpart to Solidity's `int120` operator.
     *
     * Requirements:
     *
     * - input must fit into 120 bits
     */
    function toInt120(int256 value) internal pure returns (int120 downcasted) {
        downcasted = int120(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(120, value);
        }
    }

    /**
     * @dev Returns the downcasted int112 from int256, reverting on
     * overflow (when the input is less than smallest int112 or
     * greater than largest int112).
     *
     * Counterpart to Solidity's `int112` operator.
     *
     * Requirements:
     *
     * - input must fit into 112 bits
     */
    function toInt112(int256 value) internal pure returns (int112 downcasted) {
        downcasted = int112(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(112, value);
        }
    }

    /**
     * @dev Returns the downcasted int104 from int256, reverting on
     * overflow (when the input is less than smallest int104 or
     * greater than largest int104).
     *
     * Counterpart to Solidity's `int104` operator.
     *
     * Requirements:
     *
     * - input must fit into 104 bits
     */
    function toInt104(int256 value) internal pure returns (int104 downcasted) {
        downcasted = int104(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(104, value);
        }
    }

    /**
     * @dev Returns the downcasted int96 from int256, reverting on
     * overflow (when the input is less than smallest int96 or
     * greater than largest int96).
     *
     * Counterpart to Solidity's `int96` operator.
     *
     * Requirements:
     *
     * - input must fit into 96 bits
     */
    function toInt96(int256 value) internal pure returns (int96 downcasted) {
        downcasted = int96(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(96, value);
        }
    }

    /**
     * @dev Returns the downcasted int88 from int256, reverting on
     * overflow (when the input is less than smallest int88 or
     * greater than largest int88).
     *
     * Counterpart to Solidity's `int88` operator.
     *
     * Requirements:
     *
     * - input must fit into 88 bits
     */
    function toInt88(int256 value) internal pure returns (int88 downcasted) {
        downcasted = int88(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(88, value);
        }
    }

    /**
     * @dev Returns the downcasted int80 from int256, reverting on
     * overflow (when the input is less than smallest int80 or
     * greater than largest int80).
     *
     * Counterpart to Solidity's `int80` operator.
     *
     * Requirements:
     *
     * - input must fit into 80 bits
     */
    function toInt80(int256 value) internal pure returns (int80 downcasted) {
        downcasted = int80(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(80, value);
        }
    }

    /**
     * @dev Returns the downcasted int72 from int256, reverting on
     * overflow (when the input is less than smallest int72 or
     * greater than largest int72).
     *
     * Counterpart to Solidity's `int72` operator.
     *
     * Requirements:
     *
     * - input must fit into 72 bits
     */
    function toInt72(int256 value) internal pure returns (int72 downcasted) {
        downcasted = int72(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(72, value);
        }
    }

    /**
     * @dev Returns the downcasted int64 from int256, reverting on
     * overflow (when the input is less than smallest int64 or
     * greater than largest int64).
     *
     * Counterpart to Solidity's `int64` operator.
     *
     * Requirements:
     *
     * - input must fit into 64 bits
     */
    function toInt64(int256 value) internal pure returns (int64 downcasted) {
        downcasted = int64(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(64, value);
        }
    }

    /**
     * @dev Returns the downcasted int56 from int256, reverting on
     * overflow (when the input is less than smallest int56 or
     * greater than largest int56).
     *
     * Counterpart to Solidity's `int56` operator.
     *
     * Requirements:
     *
     * - input must fit into 56 bits
     */
    function toInt56(int256 value) internal pure returns (int56 downcasted) {
        downcasted = int56(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(56, value);
        }
    }

    /**
     * @dev Returns the downcasted int48 from int256, reverting on
     * overflow (when the input is less than smallest int48 or
     * greater than largest int48).
     *
     * Counterpart to Solidity's `int48` operator.
     *
     * Requirements:
     *
     * - input must fit into 48 bits
     */
    function toInt48(int256 value) internal pure returns (int48 downcasted) {
        downcasted = int48(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(48, value);
        }
    }

    /**
     * @dev Returns the downcasted int40 from int256, reverting on
     * overflow (when the input is less than smallest int40 or
     * greater than largest int40).
     *
     * Counterpart to Solidity's `int40` operator.
     *
     * Requirements:
     *
     * - input must fit into 40 bits
     */
    function toInt40(int256 value) internal pure returns (int40 downcasted) {
        downcasted = int40(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(40, value);
        }
    }

    /**
     * @dev Returns the downcasted int32 from int256, reverting on
     * overflow (when the input is less than smallest int32 or
     * greater than largest int32).
     *
     * Counterpart to Solidity's `int32` operator.
     *
     * Requirements:
     *
     * - input must fit into 32 bits
     */
    function toInt32(int256 value) internal pure returns (int32 downcasted) {
        downcasted = int32(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(32, value);
        }
    }

    /**
     * @dev Returns the downcasted int24 from int256, reverting on
     * overflow (when the input is less than smallest int24 or
     * greater than largest int24).
     *
     * Counterpart to Solidity's `int24` operator.
     *
     * Requirements:
     *
     * - input must fit into 24 bits
     */
    function toInt24(int256 value) internal pure returns (int24 downcasted) {
        downcasted = int24(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(24, value);
        }
    }

    /**
     * @dev Returns the downcasted int16 from int256, reverting on
     * overflow (when the input is less than smallest int16 or
     * greater than largest int16).
     *
     * Counterpart to Solidity's `int16` operator.
     *
     * Requirements:
     *
     * - input must fit into 16 bits
     */
    function toInt16(int256 value) internal pure returns (int16 downcasted) {
        downcasted = int16(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(16, value);
        }
    }

    /**
     * @dev Returns the downcasted int8 from int256, reverting on
     * overflow (when the input is less than smallest int8 or
     * greater than largest int8).
     *
     * Counterpart to Solidity's `int8` operator.
     *
     * Requirements:
     *
     * - input must fit into 8 bits
     */
    function toInt8(int256 value) internal pure returns (int8 downcasted) {
        downcasted = int8(value);
        if (downcasted != value) {
            revert SafeCastOverflowedIntDowncast(8, value);
        }
    }

    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        // Note: Unsafe cast below is okay because `type(int256).max` is guaranteed to be positive
        if (value > uint256(type(int256).max)) {
            revert SafeCastOverflowedUintToInt(value);
        }
        return int256(value);
    }
}


// File src/interfaces/IOstiumPairInfos.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumPairInfos {
    struct PairOpeningFees {
        uint32 makerFeeP; // PRECISION_6 (%)
        uint32 takerFeeP; // PRECISION_6 (%)
        uint32 usageFeeP; // PRECISION_6 (%)
        uint16 utilizationThresholdP; // PRECISION_2 (%)
        uint16 makerMaxLeverage; // PRECISION_2
        uint8 vaultFeePercent;
    }

    struct PairFundingFees {
        int256 accPerOiLong; // PRECISION_18 (but USDC)
        int256 accPerOiShort; // PRECISION_18 (but USDC)
        int64 lastFundingRate; // PRECISION_18
        int64 lastVelocity; // PRECISION_18
        uint64 maxFundingFeePerBlock; // PRECISION_18
        uint64 maxFundingFeeVelocity; // PRECISION_18
        uint32 lastUpdateBlock;
        uint16 fundingFeeSlope; // PRECISION_2
    }

    struct PairRolloverFees {
        uint256 accPerOi; // PRECISION_18 (but USDC)
        uint64 rolloverFeePerBlock; // PRECISION_18
        uint64 maxRolloverFeePerBlock; // PRECISISON_18
        uint32 maxRolloverVolatility; // PRECISION_6
        uint32 lastUpdateBlock;
        uint16 rolloverFeeSlope; // PRECISION_2
    }

    struct TradeInitialAccFees {
        uint256 rollover; // PRECISION_6 (USDC)
        int256 funding; // PRECISION_6 (USDC)
        bool openedAfterUpdate;
    }

    event ManagerUpdated(address value);
    event LiqThresholdPUpdated(uint256 value);
    event MaxNegativePnlOnOpenPUpdated(uint256 value);
    event VaultFeePercentUpdated(uint16 indexed pairIndex, uint8 value);
    event PairOpeningFeesUpdated(uint16 indexed pairIndex, PairOpeningFees value);
    event PairRolloverFeesUpdated(uint16 indexed pairIndex, PairRolloverFees value);
    event PairFundingFeesUpdated(uint16 indexed pairIndex, PairFundingFees value);
    event RolloverFeePerBlockUpdated(uint16 indexed pairIndex, uint256 value, uint256 volatility);
    event MaxFundingFeeVelocityUpdated(uint16 indexed pairIndex, uint256 value);
    event MaxFundingFeePerBlockUpdated(uint16 indexed pairIndex, uint256 value);
    event FundingFeeSlopeUpdated(uint16 indexed pairIndex, uint256 value);
    event TradeInitialAccFeesStored(
        uint256 indexed tradeId,
        address indexed trader,
        uint16 indexed pairIndex,
        uint8 index,
        uint256 rollover,
        int256 funding
    );
    event AccFundingFeesStored(
        uint16 indexed pairIndex, int256 valueLong, int256 valueShort, int64 lastFundingRate, int64 velocity
    );
    event AccRolloverFeesStored(uint16 indexed pairIndex, uint256 value);
    event MaxRolloverFeePerBlockUpdated(uint16 indexed pairIndex, uint256 value);
    event MaxRolloverVolatilityUpdated(uint16 indexed pairIndex, uint256 value);
    event MaxRolloverFeeSlopeUpdated(uint16 indexed pairIndex, uint256 value);
    event FeesCharged(
        uint256 indexed orderId,
        uint256 indexed tradeId,
        address indexed trader,
        uint256 rolloverFees,
        int256 fundingFees
    );
    event LastVelocityUpdated(uint16 indexed pairIndex, int64 value);

    error WrongParams();
    error NotGov(address a);
    error NotManager(address a);
    error NotCallbacks(address a);

    function pairOpeningFees(uint16 pairIndex) external returns (uint32, uint32, uint32, uint16, uint16, uint8);
    function pairFundingFees(uint16 pairIndex)
        external
        returns (int256, int256, int64, int64, uint64, uint64, uint32, uint16);
    function pairRolloverFees(uint16 pairIndex) external returns (uint256, uint64, uint64, uint32, uint32, uint16);
    function tradeInitialAccFees(address trader, uint16 pairIndex, uint8 tradeIndex)
        external
        returns (uint256, int256, bool);
    function maxNegativePnlOnOpenP() external view returns (uint8);
    function getTradeLiquidationPrice(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage
    ) external view returns (uint256);
    function getTradeValue(
        uint256 orderId,
        uint256 tradeId,
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage,
        int256 percentProfit
    ) external returns (uint256);
    function manager() external view returns (address);
    function liqThresholdP() external view returns (uint8);
    function getOpeningFee(
        uint16 pairIndex,
        int256 leveragedPositionSize,
        uint32 leverage,
        int256 oiDelta,
        uint256 oiCap,
        uint256 usageOi
    ) external view returns (uint256, uint256);
    function getVelocity(uint16 pairIndex) external view returns (int64 velocity);
    function getPendingAccRolloverFees(uint16 pairIndex) external view returns (uint256);
    function getPendingAccFundingFees(uint16 pairIndex)
        external
        view
        returns (int256 valueLong, int256 valueShort, int64 fr);
    function getTradeRolloverFee(address trader, uint16 pairIndex, uint8 index, uint256 collateral, uint32 leverage)
        external
        view
        returns (uint256);
    function getTradeRolloverFeePure(
        uint256 accRolloverFeesPerCollateral,
        uint256 endAccRolloverFeesPerCollateral,
        uint256 collateral,
        uint32 leverage
    ) external pure returns (uint256);
    function getTradeFundingFee(
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage
    ) external view returns (int256);
    function getTradeFundingFeePure(
        int256 accFundingFeesPerOi,
        int256 endAccFundingFeesPerOi,
        uint256 collateral,
        uint32 leverage
    ) external pure returns (int256);
    function getTradeLiquidationPricePure(
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage,
        uint256 rolloverFee,
        int256 fundingFee
    ) external view returns (uint256);
    function getTradeValuePure(uint256 collateral, int256 percentProfit, uint256 rolloverFee, int256 fundingFee)
        external
        view
        returns (uint256);
    function getRolloverFeePerBlock(uint16 pairIndex) external view returns (uint256);
    function getAccRolloverFees(uint16 pairIndex) external view returns (uint256);
    function getAccRolloverFeesUpdateBlock(uint16 pairIndex) external view returns (uint256);
    function getAccFundingFeesLong(uint16 pairIndex) external view returns (int256);
    function getAccFundingFeesShort(uint16 pairIndex) external view returns (int256);
    function getAccFundingFeesUpdateBlock(uint16 pairIndex) external view returns (uint256);
    function getTradeInitialAccRolloverFeesPerCollateral(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (uint256);
    function getTradeInitialAccFundingFeesPerOi(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (int256);
    function getTradeOpenedAfterUpdate(address trader, uint16 pairIndex, uint8 index) external view returns (bool);

    // only manager
    function setRolloverFeePerBlock(uint16 pairIndex, uint256 volatility) external;
    function setRolloverFeePerBlockArray(uint16[] memory indices, uint256[] memory values) external;

    // only gov
    function setVelocity(uint16 pairIndex) external;
    function setManager(address _manager) external;
    function setLiqThresholdP(uint256 value) external;
    function setMaxNegativePnlOnOpenP(uint256 value) external;
    function setPairOpeningFees(uint16 pairIndex, PairOpeningFees memory value) external;
    function setPairOpeningFeesArray(uint16[] memory indices, PairOpeningFees[] memory values) external;
    function setPairOpeningVaultFeePercent(uint16 pairIndex, uint8 value) external;
    function setPairOpeningVaultFeePercentArray(uint16[] calldata pairIndex, uint8[] calldata value) external;
    function setPairFundingFees(uint16 pairIndex, PairFundingFees memory value) external;
    function setPairFundingFeesArray(uint16[] memory indices, PairFundingFees[] memory values) external;
    function setMaxFundingFeeVelocity(uint16 pairIndex, uint256 value) external;
    function setMaxFundingFeeVelocityArray(uint16[] memory indices, uint256[] memory values) external;
    function setFundingFeeSlope(uint16 pairIndex, uint256 value) external;
    function setFundingFeeSlopeArray(uint16[] memory indices, uint256[] memory values) external;
    function setPairRolloverFees(uint16 pairIndex, PairRolloverFees memory value) external;
    function setPairRolloverFeesArray(uint16[] memory indices, PairRolloverFees[] memory values) external;
    function setMaxRolloverFeePerBlock(uint16 pairIndex, uint256 value) external;
    function setMaxRolloverFeePerBlockArray(uint16[] memory indices, uint256[] memory values) external;
    function setMaxRolloverVolatility(uint16 pairIndex, uint256 value) external;
    function setMaxRolloverVolatilityArray(uint16[] memory indices, uint256[] memory values) external;
    function setRolloverFeeSlope(uint16 pairIndex, uint256 value) external;
    function setRolloverFeeSlopeArray(uint16[] memory indices, uint256[] memory values) external;
    function setMaxFundingFeePerBlock(uint16 pairIndex, uint256 value) external;

    // only callbacks
    function storeTradeInitialAccFees(uint256 tradeId, address trader, uint16 pairIndex, uint8 index, bool long)
        external;
}


// File src/interfaces/IOstiumRegistry.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumRegistry {
    event DevUpdated(address a);
    event GovUpdated(address a);
    event ManagerUpdated(address a);
    event ContractRegistered(bytes32 name, address contractAddress);
    event ContractUpdated(bytes32 name, address contractAddress);
    event ContractUnregistered(bytes32 name, address contractAddress);

    error NullAddr();
    error WrongParams();
    error NotFound(bytes32 name);
    error HasAlreadyRole(address a);
    error NotGov(address a);
    error AlreadyRegistered(bytes32 name);
    error NotContract(address contractAddress);

    function gov() external view returns (address);
    function manager() external view returns (address);
    function dev() external view returns (address);
    function getContractAddress(bytes32) external view returns (address);
    function setGov(address) external;
    function setDev(address) external;
    function unregisterContract(bytes32) external;
    function unregisterContracts(bytes32[] memory) external;
    function registerContract(bytes32, address) external;
    function registerContracts(bytes32[] memory, address[] memory) external;
    function updateContract(bytes32 name, address contractAddress) external;
    function updateContracts(bytes32[] memory names, address[] memory contractAddresses) external;
}


// File src/OstiumTrading.sol

// Original license: SPDX_License_Identifier: MIT









pragma solidity ^0.8.24;

contract OstiumTrading is IOstiumTrading, Delegatable, Initializable {
    using SafeCast for uint256;

    // Contracts (constant)
    IOstiumRegistry public registry;

    // Params (constant)
    uint64 constant PRECISION_18 = 1e18;
    uint32 constant PRECISION_6 = 1e6;

    // Params (adjustable)
    uint256 public maxAllowedCollateral; // PRECISION_6
    uint16 public marketOrdersTimeout; // block (eg. 30)
    uint16 public triggerTimeout; // block (eg. 30)

    // State
    bool public isPaused; // Prevent opening new trades
    bool public isDone; // Prevent any interaction with the contract

    constructor() {
        _disableInitializers();
    }

    function initialize(
        IOstiumRegistry _registry,
        uint256 _maxAllowedCollateral,
        uint16 _marketOrdersTimeout,
        uint16 _triggerTimeout
    ) external initializer {
        if (address(_registry) == address(0)) {
            revert WrongParams();
        }

        registry = _registry;
        _setTriggerTimeout(_triggerTimeout);
        _setMaxAllowedCollateral(_maxAllowedCollateral);
        _setMarketOrdersTimeout(_marketOrdersTimeout);
    }

    // Modifiers
    modifier onlyGov() {
        isGov();
        _;
    }

    modifier onlyManager() {
        isManager();
        _;
    }

    modifier notDone() {
        isNotDone();
        _;
    }

    modifier onlyTradesUpKeep() {
        _onlyTradesUpKeep();
        _;
    }

    modifier notPaused() {
        isNotPaused();
        _;
    }

    modifier pairIndexListed(uint16 pairIndex) {
        isPairIndexListed(pairIndex);
        _;
    }

    function isPairIndexListed(uint16 pairIndex) private view {
        if (!IOstiumPairsStorage(registry.getContractAddress('pairsStorage')).isPairIndexListed(pairIndex)) {
            revert PairNotListed(pairIndex);
        }
    }

    function isNotPaused() private view {
        if (isPaused) revert IsPaused();
    }

    function isGov() private view {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
    }

    function isManager() private view {
        if (msg.sender != registry.manager()) {
            revert NotManager(msg.sender);
        }
    }

    function isNotDone() private view {
        if (isDone) {
            revert IsDone();
        }
    }

    function _onlyTradesUpKeep() private view {
        if (msg.sender != address(registry.getContractAddress(bytes32('tradesUpKeep')))) {
            revert NotTradesUpKeep(msg.sender);
        }
    }

    function setMaxAllowedCollateral(uint256 value) external onlyGov {
        _setMaxAllowedCollateral(value);
    }

    function _setMaxAllowedCollateral(uint256 value) private {
        if (value == 0) {
            revert WrongParams();
        }
        maxAllowedCollateral = value;

        emit MaxAllowedCollateralUpdated(value);
    }

    function setMarketOrdersTimeout(uint256 value) external onlyGov {
        _setMarketOrdersTimeout(value);
    }

    function _setMarketOrdersTimeout(uint256 value) private {
        if (value == 0 || value > type(uint16).max) {
            revert WrongParams();
        }
        marketOrdersTimeout = value.toUint16();

        emit MarketOrdersTimeoutUpdated(marketOrdersTimeout);
    }

    function setTriggerTimeout(uint256 value) external onlyGov {
        _setTriggerTimeout(value);
    }

    function _setTriggerTimeout(uint256 value) private {
        if (value == 0 || value > type(uint16).max) {
            revert WrongParams();
        }
        triggerTimeout = value.toUint16();
        emit TriggerTimeoutUpdated(triggerTimeout);
    }

    function pause() external onlyManager {
        isPaused = !isPaused;

        emit Paused(isPaused);
    }

    function done() external onlyGov {
        isDone = !isDone;

        emit Done(isDone);
    }

    function openTrade(
        IOstiumTradingStorage.Trade calldata t,
        IOstiumTradingStorage.OpenOrderType orderType,
        uint256 slippageP // for market orders only
    ) external notDone notPaused pairIndexListed(t.pairIndex) {
        address sender = _msgSender();
        if (slippageP >= 10000) {
            revert WrongParams();
        }

        IOstiumPairsStorage pairsStored = IOstiumPairsStorage(registry.getContractAddress('pairsStorage'));
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        if (
            storageT.openTradesCount(sender, t.pairIndex) + storageT.pendingMarketOpenCount(sender, t.pairIndex)
                + storageT.openLimitOrdersCount(sender, t.pairIndex) >= storageT.maxTradesPerPair()
        ) revert MaxTradesPerPairReached(sender, t.pairIndex);

        if (storageT.pendingOrderIdsCount(sender) >= storageT.maxPendingMarketOrders()) {
            revert MaxPendingMarketOrdersReached(sender);
        }

        if (
            t.leverage == 0 || t.leverage < pairsStored.pairMinLeverage(t.pairIndex)
                || t.leverage > pairsStored.pairMaxLeverage(t.pairIndex)
        ) revert WrongLeverage(t.leverage);

        if (t.collateral > maxAllowedCollateral) {
            revert AboveMaxAllowedCollateral();
        }

        if (t.collateral * t.leverage / 100 < pairsStored.pairMinLevPos(t.pairIndex)) {
            revert BelowMinLevPos();
        }

        if (t.tp != 0 && (t.buy ? t.tp <= t.openPrice : t.tp >= t.openPrice)) {
            revert WrongTP();
        }

        if (t.sl != 0 && (t.buy ? t.sl >= t.openPrice : t.sl <= t.openPrice)) {
            revert WrongSL();
        }

        storageT.transferUsdc(sender, address(storageT), t.collateral);

        if (orderType != IOstiumTradingStorage.OpenOrderType.MARKET) {
            uint8 index = storageT.firstEmptyOpenLimitIndex(sender, t.pairIndex);

            uint32 b = ChainUtils.getBlockNumber().toUint32();
            storageT.storeOpenLimitOrder(
                IOstiumTradingStorage.OpenLimitOrder(
                    t.collateral,
                    t.openPrice,
                    t.tp,
                    t.sl,
                    sender,
                    t.leverage,
                    b,
                    b,
                    t.pairIndex,
                    orderType,
                    index,
                    t.buy
                )
            );

            emit OpenLimitPlaced(sender, t.pairIndex, index);
        } else {
            uint256 orderId = IOstiumPriceRouter(registry.getContractAddress('priceRouter')).getPrice(
                t.pairIndex, IOstiumPriceUpKeep.OrderType.MARKET_OPEN, block.timestamp
            );

            storageT.storePendingMarketOrder(
                IOstiumTradingStorage.PendingMarketOrder(
                    0,
                    t.openPrice,
                    slippageP.toUint32(),
                    IOstiumTradingStorage.Trade(t.collateral, 0, t.tp, t.sl, sender, t.leverage, t.pairIndex, 0, t.buy)
                ),
                orderId,
                true
            );

            emit MarketOpenOrderInitiated(orderId, sender, t.pairIndex);
        }
    }

    function closeTradeMarket(uint16 pairIndex, uint8 index) external notDone {
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        address sender = _msgSender();

        IOstiumTradingStorage.Trade memory t = storageT.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }

        if (storageT.pendingOrderIdsCount(sender) >= storageT.maxPendingMarketOrders()) {
            revert MaxPendingMarketOrdersReached(sender);
        }

        if (!checkNoPendingTriggers(sender, pairIndex, index)) {
            revert TriggerPending(sender, pairIndex, index);
        }

        IOstiumTradingStorage.TradeInfo memory i = storageT.getOpenTradeInfo(sender, pairIndex, index);

        if (i.beingMarketClosed) {
            revert AlreadyMarketClosed(sender, t.pairIndex, t.index);
        }

        uint256 orderId = IOstiumPriceRouter(registry.getContractAddress('priceRouter')).getPrice(
            pairIndex, IOstiumPriceUpKeep.OrderType.MARKET_CLOSE, block.timestamp
        );

        storageT.storePendingMarketOrder(
            IOstiumTradingStorage.PendingMarketOrder(
                0, 0, 0, IOstiumTradingStorage.Trade(0, 0, 0, 0, sender, 0, pairIndex, index, false)
            ),
            orderId,
            false
        );

        emit MarketCloseOrderInitiated(orderId, i.tradeId, sender, pairIndex);
    }

    function updateOpenLimitOrder(uint16 pairIndex, uint8 index, uint192 price, uint192 tp, uint192 sl)
        external
        notDone
    {
        address sender = _msgSender();
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        if (!storageT.hasOpenLimitOrder(sender, pairIndex, index)) {
            revert NoLimitFound(sender, pairIndex, index);
        }

        IOstiumTradingStorage.OpenLimitOrder memory o = storageT.getOpenLimitOrder(sender, pairIndex, index);

        if (tp != 0 && (o.buy ? tp <= price : tp >= price)) {
            revert WrongTP();
        }

        if (sl != 0 && (o.buy ? sl >= price : sl <= price)) {
            revert WrongSL();
        }

        if (!checkNoPendingTrigger(sender, pairIndex, index, IOstiumTradingStorage.LimitOrder.OPEN)) {
            revert TriggerPending(sender, pairIndex, index);
        }

        o.targetPrice = price;
        o.tp = tp;
        o.sl = sl;

        storageT.updateOpenLimitOrder(o);

        emit OpenLimitUpdated(sender, pairIndex, index, price, tp, sl);
    }

    function cancelOpenLimitOrder(uint16 pairIndex, uint8 index) external notDone {
        address sender = _msgSender();
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        if (!storageT.hasOpenLimitOrder(sender, pairIndex, index)) {
            revert NoLimitFound(sender, pairIndex, index);
        }

        if (!checkNoPendingTrigger(sender, pairIndex, index, IOstiumTradingStorage.LimitOrder.OPEN)) {
            revert TriggerPending(sender, pairIndex, index);
        }

        IOstiumTradingStorage.OpenLimitOrder memory o = storageT.getOpenLimitOrder(sender, pairIndex, index);

        storageT.unregisterOpenLimitOrder(sender, pairIndex, index);
        storageT.transferUsdc(address(storageT), sender, o.collateral);

        emit OpenLimitCanceled(sender, pairIndex, index);
    }

    function updateTp(uint16 pairIndex, uint8 index, uint192 newTp) external notDone {
        address sender = _msgSender();
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        if (!checkNoPendingTrigger(sender, pairIndex, index, IOstiumTradingStorage.LimitOrder.TP)) {
            revert TriggerPending(sender, pairIndex, index);
        }

        IOstiumTradingStorage.Trade memory t = storageT.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }

        storageT.updateTp(sender, pairIndex, index, newTp);

        emit TpUpdated(storageT.getOpenTradeInfo(sender, pairIndex, index).tradeId, sender, pairIndex, index, newTp);
    }

    function updateSl(uint16 pairIndex, uint8 index, uint192 newSl) external notDone {
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        address sender = _msgSender();
        if (!checkNoPendingTrigger(sender, pairIndex, index, IOstiumTradingStorage.LimitOrder.SL)) {
            revert TriggerPending(sender, pairIndex, index);
        }

        IOstiumTradingStorage.Trade memory t = storageT.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }

        uint8 maxSL_P = IOstiumTradingCallbacks(registry.getContractAddress('callbacks')).maxSl_P();
        uint256 maxSlDist = t.openPrice * maxSL_P / t.leverage;

        if (newSl != 0 && (t.buy ? newSl < t.openPrice - maxSlDist : newSl > t.openPrice + maxSlDist)) revert WrongSL();

        storageT.updateSl(sender, pairIndex, index, newSl);

        emit SlUpdated(storageT.getOpenTradeInfo(sender, pairIndex, index).tradeId, sender, pairIndex, index, newSl);
    }

    function topUpCollateral(uint16 pairIndex, uint8 index, uint256 topUpAmount) external notDone {
        address sender = _msgSender();
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));
        IOstiumPairsStorage pairsStorage = IOstiumPairsStorage(registry.getContractAddress('pairsStorage'));

        IOstiumTradingStorage.Trade memory t = storageT.getOpenTrade(sender, pairIndex, index);

        if (t.leverage == 0) {
            revert NoTradeFound(sender, pairIndex, index);
        }
        if (!checkNoPendingTriggers(t.trader, t.pairIndex, t.index)) {
            revert TriggerPending(t.trader, t.pairIndex, t.index);
        }
        if (pairsStorage.groupCollateral(pairIndex, t.buy) + topUpAmount > pairsStorage.groupMaxCollateral(pairIndex)) {
            revert ExposureLimits();
        }
        uint256 tradeSize = t.collateral * t.leverage / 100;
        t.collateral += topUpAmount;

        if (t.collateral > maxAllowedCollateral) {
            revert AboveMaxAllowedCollateral();
        }

        t.leverage = (tradeSize * PRECISION_6 / t.collateral / 1e4).toUint32();

        if (t.leverage < pairsStorage.pairMinLeverage(t.pairIndex)) {
            revert WrongLeverage(t.leverage);
        }

        storageT.transferUsdc(sender, address(storageT), topUpAmount);

        storageT.updateTrade(t);
        pairsStorage.updateGroupCollateral(t.pairIndex, topUpAmount, t.buy, true);

        emit TopUpCollateralExecuted(
            storageT.getOpenTradeInfo(sender, pairIndex, index).tradeId, sender, pairIndex, topUpAmount, t.leverage
        );
    }

    function executeAutomationOrder(
        IOstiumTradingStorage.LimitOrder orderType,
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 priceTimestamp
    ) external onlyTradesUpKeep notDone returns (IOstiumTrading.AutomationOrderStatus) {
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        IOstiumTradingStorage.Trade memory t;

        if (orderType == IOstiumTradingStorage.LimitOrder.OPEN) {
            if (!storageT.hasOpenLimitOrder(trader, pairIndex, index)) {
                return IOstiumTrading.AutomationOrderStatus.NO_LIMIT;
            }
            isNotPaused();
        } else {
            t = storageT.getOpenTrade(trader, pairIndex, index);

            if (t.leverage == 0) return IOstiumTrading.AutomationOrderStatus.NO_TRADE;

            if (orderType == IOstiumTradingStorage.LimitOrder.SL && t.sl == 0) {
                return IOstiumTrading.AutomationOrderStatus.NO_SL;
            }
            if (orderType == IOstiumTradingStorage.LimitOrder.TP && t.tp == 0) {
                return IOstiumTrading.AutomationOrderStatus.NO_TP;
            }
        }

        if (!checkNoPendingTrigger(trader, pairIndex, index, orderType)) {
            return IOstiumTrading.AutomationOrderStatus.PENDING_TRIGGER;
        }

        uint256 orderId = IOstiumPriceRouter(registry.getContractAddress('priceRouter')).getPrice(
            pairIndex,
            orderType == IOstiumTradingStorage.LimitOrder.OPEN
                ? IOstiumPriceUpKeep.OrderType.LIMIT_OPEN
                : IOstiumPriceUpKeep.OrderType.LIMIT_CLOSE,
            priceTimestamp
        );
        storageT.storePendingAutomationOrder(
            IOstiumTradingStorage.PendingAutomationOrder(trader, pairIndex, index, orderType), orderId
        );
        storageT.setTrigger(trader, pairIndex, index, orderType);

        if (orderType == IOstiumTradingStorage.LimitOrder.OPEN) {
            emit AutomationOpenOrderInitiated(orderId, trader, pairIndex, index);
        } else {
            emit AutomationCloseOrderInitiated(
                orderId, storageT.getOpenTradeInfo(trader, pairIndex, index).tradeId, trader, pairIndex, orderType
            );
        }

        return IOstiumTrading.AutomationOrderStatus.SUCCESS;
    }

    function openTradeMarketTimeout(uint256 _order) external notDone {
        address sender = _msgSender();
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        (uint256 _block, uint192 wantedPrice, uint32 slippageP, IOstiumTradingStorage.Trade memory trade) =
            storageT.reqID_pendingMarketOrder(_order);

        if (trade.trader == address(0)) {
            revert NoTradeToTimeoutFound(_order);
        }

        if (trade.trader != sender) {
            revert NotYourOrder(_order, trade.trader);
        }

        if (trade.leverage == 0) {
            revert NotOpenMarketTimeoutOrder(_order);
        }

        if (_block != 0 && ChainUtils.getBlockNumber() < _block + marketOrdersTimeout) {
            revert WaitTimeout(_order);
        }

        storageT.unregisterPendingMarketOrder(_order, true);
        storageT.transferUsdc(address(storageT), sender, trade.collateral);

        emit MarketOpenTimeoutExecuted(
            _order,
            IOstiumTradingStorage.PendingMarketOrder({
                block: _block,
                wantedPrice: wantedPrice,
                slippageP: slippageP,
                trade: trade
            })
        );
    }

    function closeTradeMarketTimeout(uint256 _order, bool retry) external notDone {
        address sender = _msgSender();
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        (uint256 _block, uint192 wantedPrice, uint32 slippageP, IOstiumTradingStorage.Trade memory trade) =
            storageT.reqID_pendingMarketOrder(_order);

        if (trade.trader == address(0)) {
            revert NoTradeToTimeoutFound(_order);
        }

        if (trade.trader != sender) {
            revert NotYourOrder(_order, trade.trader);
        }

        if (trade.leverage > 0) {
            revert NotCloseMarketTimeoutOrder(_order);
        }

        if (_block == 0 || ChainUtils.getBlockNumber() < _block + marketOrdersTimeout) {
            revert WaitTimeout(_order);
        }

        storageT.unregisterPendingMarketOrder(_order, false);

        if (retry) {
            (bool success,) = address(this).delegatecall(
                abi.encodeWithSignature('closeTradeMarket(uint16,uint8)', trade.pairIndex, trade.index)
            );
            if (!success) {
                emit MarketCloseFailed(
                    storageT.getOpenTradeInfo(sender, trade.pairIndex, trade.index).tradeId, sender, trade.pairIndex
                );
            }
        }

        emit MarketCloseTimeoutExecuted(
            _order,
            storageT.getOpenTradeInfo(sender, trade.pairIndex, trade.index).tradeId,
            IOstiumTradingStorage.PendingMarketOrder({
                trade: trade,
                block: _block,
                wantedPrice: wantedPrice,
                slippageP: slippageP
            })
        );
    }

    function checkNoPendingTrigger(
        address trader,
        uint16 pairIndex,
        uint8 index,
        IOstiumTradingStorage.LimitOrder orderType
    ) public view returns (bool) {
        uint256 triggerBlock = IOstiumTradingStorage(registry.getContractAddress('tradingStorage')).orderTriggerBlock(
            trader, pairIndex, index, orderType
        );

        if (triggerBlock == 0 || (triggerBlock > 0 && ChainUtils.getBlockNumber() - triggerBlock >= triggerTimeout)) {
            return true;
        }
        return false;
    }

    function checkNoPendingTriggers(address trader, uint16 pairIndex, uint8 index) public view returns (bool) {
        return checkNoPendingTrigger(trader, pairIndex, index, IOstiumTradingStorage.LimitOrder.TP)
            && checkNoPendingTrigger(trader, pairIndex, index, IOstiumTradingStorage.LimitOrder.SL)
            && checkNoPendingTrigger(trader, pairIndex, index, IOstiumTradingStorage.LimitOrder.LIQ);
    }
}