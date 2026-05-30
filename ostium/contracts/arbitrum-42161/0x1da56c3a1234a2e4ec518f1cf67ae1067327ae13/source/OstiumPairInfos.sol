// Sources flattened with hardhat v2.22.8 https://hardhat.org

// SPDX-License-Identifier: MIT

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


// File @openzeppelin/contracts/utils/math/Math.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/Math.sol)

pragma solidity ^0.8.20;

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Muldiv operation overflow.
     */
    error MathOverflowedMulDiv();

    enum Rounding {
        Floor, // Toward negative infinity
        Ceil, // Toward positive infinity
        Trunc, // Toward zero
        Expand // Away from zero
    }

    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            return (true, a - b);
        }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
            // benefit is lost if 'b' is also tested.
            // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
            if (a == 0) return (true, 0);
            uint256 c = a * b;
            if (c / a != b) return (false, 0);
            return (true, c);
        }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a / b);
        }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            return (true, a % b);
        }
    }

    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow.
        return (a & b) + (a ^ b) / 2;
    }

    /**
     * @dev Returns the ceiling of the division of two numbers.
     *
     * This differs from standard division with `/` in that it rounds towards infinity instead
     * of rounding towards zero.
     */
    function ceilDiv(uint256 a, uint256 b) internal pure returns (uint256) {
        if (b == 0) {
            // Guarantee the same behavior as in a regular Solidity division.
            return a / b;
        }

        // (a + b - 1) / b can overflow on addition, so we distribute.
        return a == 0 ? 0 : (a - 1) / b + 1;
    }

    /**
     * @notice Calculates floor(x * y / denominator) with full precision. Throws if result overflows a uint256 or
     * denominator == 0.
     * @dev Original credit to Remco Bloemen under MIT license (https://xn--2-umb.com/21/muldiv) with further edits by
     * Uniswap Labs also under MIT license.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {
        unchecked {
            // 512-bit multiply [prod1 prod0] = x * y. Compute the product mod 2^256 and mod 2^256 - 1, then use
            // use the Chinese Remainder Theorem to reconstruct the 512 bit result. The result is stored in two 256
            // variables such that product = prod1 * 2^256 + prod0.
            uint256 prod0 = x * y; // Least significant 256 bits of the product
            uint256 prod1; // Most significant 256 bits of the product
            assembly {
                let mm := mulmod(x, y, not(0))
                prod1 := sub(sub(mm, prod0), lt(mm, prod0))
            }

            // Handle non-overflow cases, 256 by 256 division.
            if (prod1 == 0) {
                // Solidity will revert if denominator == 0, unlike the div opcode on its own.
                // The surrounding unchecked block does not change this fact.
                // See https://docs.soliditylang.org/en/latest/control-structures.html#checked-or-unchecked-arithmetic.
                return prod0 / denominator;
            }

            // Make sure the result is less than 2^256. Also prevents denominator == 0.
            if (denominator <= prod1) {
                revert MathOverflowedMulDiv();
            }

            ///////////////////////////////////////////////
            // 512 by 256 division.
            ///////////////////////////////////////////////

            // Make division exact by subtracting the remainder from [prod1 prod0].
            uint256 remainder;
            assembly {
                // Compute remainder using mulmod.
                remainder := mulmod(x, y, denominator)

                // Subtract 256 bit number from 512 bit number.
                prod1 := sub(prod1, gt(remainder, prod0))
                prod0 := sub(prod0, remainder)
            }

            // Factor powers of two out of denominator and compute largest power of two divisor of denominator.
            // Always >= 1. See https://cs.stackexchange.com/q/138556/92363.

            uint256 twos = denominator & (0 - denominator);
            assembly {
                // Divide denominator by twos.
                denominator := div(denominator, twos)

                // Divide [prod1 prod0] by twos.
                prod0 := div(prod0, twos)

                // Flip twos such that it is 2^256 / twos. If twos is zero, then it becomes one.
                twos := add(div(sub(0, twos), twos), 1)
            }

            // Shift in bits from prod1 into prod0.
            prod0 |= prod1 * twos;

            // Invert denominator mod 2^256. Now that denominator is an odd number, it has an inverse modulo 2^256 such
            // that denominator * inv = 1 mod 2^256. Compute the inverse by starting with a seed that is correct for
            // four bits. That is, denominator * inv = 1 mod 2^4.
            uint256 inverse = (3 * denominator) ^ 2;

            // Use the Newton-Raphson iteration to improve the precision. Thanks to Hensel's lifting lemma, this also
            // works in modular arithmetic, doubling the correct bits in each step.
            inverse *= 2 - denominator * inverse; // inverse mod 2^8
            inverse *= 2 - denominator * inverse; // inverse mod 2^16
            inverse *= 2 - denominator * inverse; // inverse mod 2^32
            inverse *= 2 - denominator * inverse; // inverse mod 2^64
            inverse *= 2 - denominator * inverse; // inverse mod 2^128
            inverse *= 2 - denominator * inverse; // inverse mod 2^256

            // Because the division is now exact we can divide by multiplying with the modular inverse of denominator.
            // This will give us the correct result modulo 2^256. Since the preconditions guarantee that the outcome is
            // less than 2^256, this is the final result. We don't need to compute the high bits of the result and prod1
            // is no longer required.
            result = prod0 * inverse;
            return result;
        }
    }

    /**
     * @notice Calculates x * y / denominator with full precision, following the selected rounding direction.
     */
    function mulDiv(uint256 x, uint256 y, uint256 denominator, Rounding rounding) internal pure returns (uint256) {
        uint256 result = mulDiv(x, y, denominator);
        if (unsignedRoundsUp(rounding) && mulmod(x, y, denominator) > 0) {
            result += 1;
        }
        return result;
    }

    /**
     * @dev Returns the square root of a number. If the number is not a perfect square, the value is rounded
     * towards zero.
     *
     * Inspired by Henry S. Warren, Jr.'s "Hacker's Delight" (Chapter 11).
     */
    function sqrt(uint256 a) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        // For our first guess, we get the biggest power of 2 which is smaller than the square root of the target.
        //
        // We know that the "msb" (most significant bit) of our target number `a` is a power of 2 such that we have
        // `msb(a) <= a < 2*msb(a)`. This value can be written `msb(a)=2**k` with `k=log2(a)`.
        //
        // This can be rewritten `2**log2(a) <= a < 2**(log2(a) + 1)`
        // → `sqrt(2**k) <= sqrt(a) < sqrt(2**(k+1))`
        // → `2**(k/2) <= sqrt(a) < 2**((k+1)/2) <= 2**(k/2 + 1)`
        //
        // Consequently, `2**(log2(a) / 2)` is a good first approximation of `sqrt(a)` with at least 1 correct bit.
        uint256 result = 1 << (log2(a) >> 1);

        // At this point `result` is an estimation with one bit of precision. We know the true value is a uint128,
        // since it is the square root of a uint256. Newton's method converges quadratically (precision doubles at
        // every iteration). We thus need at most 7 iteration to turn our partial result with one bit of precision
        // into the expected uint128 result.
        unchecked {
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            result = (result + a / result) >> 1;
            return min(result, a / result);
        }
    }

    /**
     * @notice Calculates sqrt(a), following the selected rounding direction.
     */
    function sqrt(uint256 a, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = sqrt(a);
            return result + (unsignedRoundsUp(rounding) && result * result < a ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 2 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log2(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 128;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 64;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 32;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 16;
            }
            if (value >> 8 > 0) {
                value >>= 8;
                result += 8;
            }
            if (value >> 4 > 0) {
                value >>= 4;
                result += 4;
            }
            if (value >> 2 > 0) {
                value >>= 2;
                result += 2;
            }
            if (value >> 1 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 2, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log2(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log2(value);
            return result + (unsignedRoundsUp(rounding) && 1 << result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 10 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     */
    function log10(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >= 10 ** 64) {
                value /= 10 ** 64;
                result += 64;
            }
            if (value >= 10 ** 32) {
                value /= 10 ** 32;
                result += 32;
            }
            if (value >= 10 ** 16) {
                value /= 10 ** 16;
                result += 16;
            }
            if (value >= 10 ** 8) {
                value /= 10 ** 8;
                result += 8;
            }
            if (value >= 10 ** 4) {
                value /= 10 ** 4;
                result += 4;
            }
            if (value >= 10 ** 2) {
                value /= 10 ** 2;
                result += 2;
            }
            if (value >= 10 ** 1) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 10, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log10(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log10(value);
            return result + (unsignedRoundsUp(rounding) && 10 ** result < value ? 1 : 0);
        }
    }

    /**
     * @dev Return the log in base 256 of a positive value rounded towards zero.
     * Returns 0 if given 0.
     *
     * Adding one to the result gives the number of pairs of hex symbols needed to represent `value` as a hex string.
     */
    function log256(uint256 value) internal pure returns (uint256) {
        uint256 result = 0;
        unchecked {
            if (value >> 128 > 0) {
                value >>= 128;
                result += 16;
            }
            if (value >> 64 > 0) {
                value >>= 64;
                result += 8;
            }
            if (value >> 32 > 0) {
                value >>= 32;
                result += 4;
            }
            if (value >> 16 > 0) {
                value >>= 16;
                result += 2;
            }
            if (value >> 8 > 0) {
                result += 1;
            }
        }
        return result;
    }

    /**
     * @dev Return the log in base 256, following the selected rounding direction, of a positive value.
     * Returns 0 if given 0.
     */
    function log256(uint256 value, Rounding rounding) internal pure returns (uint256) {
        unchecked {
            uint256 result = log256(value);
            return result + (unsignedRoundsUp(rounding) && 1 << (result << 3) < value ? 1 : 0);
        }
    }

    /**
     * @dev Returns whether a provided rounding mode is considered rounding up for unsigned integers.
     */
    function unsignedRoundsUp(Rounding rounding) internal pure returns (bool) {
        return uint8(rounding) % 2 == 1;
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


// File @openzeppelin/contracts/utils/math/SignedMath.sol@v5.0.2

// Original license: SPDX_License_Identifier: MIT
// OpenZeppelin Contracts (last updated v5.0.0) (utils/math/SignedMath.sol)

pragma solidity ^0.8.20;

/**
 * @dev Standard signed math utilities missing in the Solidity language.
 */
library SignedMath {
    /**
     * @dev Returns the largest of two signed numbers.
     */
    function max(int256 a, int256 b) internal pure returns (int256) {
        return a > b ? a : b;
    }

    /**
     * @dev Returns the smallest of two signed numbers.
     */
    function min(int256 a, int256 b) internal pure returns (int256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two signed numbers without overflow.
     * The result is rounded towards zero.
     */
    function average(int256 a, int256 b) internal pure returns (int256) {
        // Formula from the book "Hacker's Delight"
        int256 x = (a & b) + ((a ^ b) >> 1);
        return x + (int256(uint256(x) >> 255) & (a ^ b));
    }

    /**
     * @dev Returns the absolute unsigned value of a signed value.
     */
    function abs(int256 n) internal pure returns (uint256) {
        unchecked {
            // must be unchecked in order to support `n = type(int256).min`
            return uint256(n >= 0 ? n : -n);
        }
    }
}


// File src/interfaces/IOstiumOpenPnl.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;

interface IOstiumOpenPnl {
    event AccTotalPnlUpdated(uint16 indexed pairIndex, int256 accTotalPnl, int256 accClosedPnl, int256 accNetOiUnits);
    event RequestsStartUpdated(uint256 value);
    event RequestsEveryUpdated(uint256 value);
    event RequestsCountUpdated(uint256 value);
    event NewEpochForced(uint256 indexed newEpoch);
    event NextEpochValueRequested(uint256 indexed currEpoch, uint256 indexed requestId, int256 value);
    event NewEpoch(
        uint256 indexed newEpoch,
        uint256 indexed requestId,
        int256[] epochValues,
        int256 epochAverageValue,
        uint256 newEpochPositiveOpenPnl
    );

    error TooEarly();
    error WrongParams();
    error NotCallbacks(address a);
    error NotRegistryOwner(address a);

    function forceNewEpoch() external;
    function newOpenPnlRequestOrEpoch() external;
    function updateRequestsStart(uint256 newValue) external;
    function updateRequestsEvery(uint256 newValue) external;
    function updateRequestsCount(uint256 newValue) external;
    function updateRequestsInfoBatch(uint256 newRequestsStart, uint256 newRequestsEvery, uint256 newRequestsCount)
        external;
    function updateAccTotalPnl(int256, uint256, uint256, uint256, uint16, bool, bool) external;

    function getOpenPnl() external view returns (int256);
    function lastTradePrice(uint16) external view returns (int256);
    function nextEpochValuesRequestCount() external view returns (uint8);
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


// File src/OstiumPairInfos.sol

// Original license: SPDX_License_Identifier: MIT








pragma solidity ^0.8.24;

contract OstiumPairInfos is IOstiumPairInfos, Initializable {
    using SafeCast for uint256;
    using SafeCast for int256;
    using SafeCast for uint32;
    using SignedMath for int256;
    using SignedMath for int64;
    using Math for uint256;

    IOstiumRegistry public registry;
    address public manager;

    uint64 constant PRECISION_18 = 1e18; // 18 decimals
    uint64 constant MAX_FUNDING_FEE = 95129375951; // 1000% annum, PRECISION_18
    uint64 constant MAX_ROLLOVER_FEE = 28538812785; // 300% annum, PRECISION_18
    uint64 constant MAX_FUNDING_VELOCITY = 3472222222222; // 100% per day, PRECISION_18

    uint32 constant PRECISION_6 = 1e6; // 6 decimals
    uint32 constant PRECISION_4 = 1e4;
    uint32 constant MAX_FEEP = 10000000; // 10%, PRECISION_6,
    uint32 constant MAX_ROLLOVER_VOLATILITY = 10000000; // 10%, PRECISION_6

    uint16 constant MIN_FUNDING_SLOPE = 100; // PRECISION_2
    uint16 constant MAX_FUNDING_SLOPE = 1000; // PRECISION_2
    uint16 constant MAX_ROLLOVER_FEE_SLOPE = 1000; // PRECISION_2
    uint16 constant MAX_USAGE_THRESHOLDP = 10000; // 100%, PRECISION_2
    uint16 constant MAX_MAKER_LEVERAGE = 10000; // PRECISION_2

    uint8 constant PRECISION_2 = 1e2; // 2 decimals
    uint8 constant MIN_LIQ_THRESHOLD_P = 90;
    uint8 constant MAX_LIQ_THRESHOLD_P = 100;

    uint8 public liqThresholdP;
    uint8 public maxNegativePnlOnOpenP; // (%)

    mapping(uint16 pairIndex => PairOpeningFees) public pairOpeningFees;
    mapping(uint16 pairIndex => PairFundingFees) public pairFundingFees;
    mapping(uint16 pairIndex => PairRolloverFees) public pairRolloverFees;
    mapping(address trader => mapping(uint16 pairIndex => mapping(uint8 tradeIndex => TradeInitialAccFees))) public
        tradeInitialAccFees;

    constructor() {
        _disableInitializers();
    }

    function initialize(
        IOstiumRegistry _registry,
        address _manager,
        uint256 _liqThresholdP,
        uint256 _maxNegativePnlOnOpenP
    ) external initializer {
        if (address(_registry) == address(0) || _manager == address(0)) {
            revert WrongParams();
        }

        registry = _registry;
        _setManager(_manager);
        _setLiqThresholdP(_liqThresholdP);
        _setMaxNegativePnlOnOpenP(_maxNegativePnlOnOpenP);
    }

    // Modifiers
    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() internal view {
        if (msg.sender != registry.gov()) revert NotGov(msg.sender);
    }

    modifier onlyManager() {
        _onlyManager();
        _;
    }

    function _onlyManager() internal view {
        if (msg.sender != manager) revert NotManager(msg.sender);
    }

    modifier onlyCallbacks() {
        _onlyCallbacks();
        _;
    }

    function _onlyCallbacks() internal view {
        if (msg.sender != registry.getContractAddress('callbacks')) revert NotCallbacks(msg.sender);
    }

    function setManager(address _manager) external onlyGov {
        _setManager(_manager);
    }

    function _setManager(address _manager) private {
        if (_manager == address(0)) {
            revert WrongParams();
        }
        manager = _manager;

        emit ManagerUpdated(_manager);
    }

    function setLiqThresholdP(uint256 value) external onlyGov {
        _setLiqThresholdP(value);
    }

    function _setLiqThresholdP(uint256 value) private {
        if (value < MIN_LIQ_THRESHOLD_P || value > MAX_LIQ_THRESHOLD_P) revert WrongParams();
        liqThresholdP = value.toUint8();

        emit LiqThresholdPUpdated(value);
    }

    function setMaxNegativePnlOnOpenP(uint256 value) external onlyGov {
        _setMaxNegativePnlOnOpenP(value);
    }

    function _setMaxNegativePnlOnOpenP(uint256 value) private {
        if (value == 0 || value >= liqThresholdP) revert WrongParams();
        maxNegativePnlOnOpenP = value.toUint8();

        emit MaxNegativePnlOnOpenPUpdated(value);
    }

    function setPairOpeningFees(uint16 pairIndex, PairOpeningFees calldata value) public onlyGov {
        if (
            value.makerFeeP > MAX_FEEP || value.takerFeeP > MAX_FEEP || value.usageFeeP > MAX_FEEP
                || value.utilizationThresholdP >= MAX_USAGE_THRESHOLDP || value.makerMaxLeverage > MAX_MAKER_LEVERAGE
                || value.vaultFeePercent > 100
        ) {
            revert WrongParams();
        }
        pairOpeningFees[pairIndex] = value;

        emit PairOpeningFeesUpdated(pairIndex, value);
    }

    function setPairOpeningFeesArray(uint16[] calldata indices, PairOpeningFees[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setPairOpeningFees(indices[i], values[i]);
        }
    }

    function setPairOpeningVaultFeePercent(uint16 pairIndex, uint8 value) public onlyGov {
        if (value > 100) {
            revert WrongParams();
        }
        pairOpeningFees[pairIndex].vaultFeePercent = value;

        emit VaultFeePercentUpdated(pairIndex, value);
    }

    function setPairOpeningVaultFeePercentArray(uint16[] calldata indices, uint8[] calldata values) public onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setPairOpeningVaultFeePercent(indices[i], values[i]);
        }
    }

    function setRolloverFeePerBlock(uint16 pairIndex, uint256 volatility) public onlyManager {
        if (volatility >= pairRolloverFees[pairIndex].maxRolloverVolatility) revert WrongParams();

        storeAccRolloverFees(pairIndex);

        uint256 maxRolloverFeePerBlock = pairRolloverFees[pairIndex].maxRolloverFeePerBlock;
        uint256 maxRolloverVolatility = pairRolloverFees[pairIndex].maxRolloverVolatility;
        uint16 rolloverFeeSlope = pairRolloverFees[pairIndex].rolloverFeeSlope;

        uint256 numerator =
            maxRolloverVolatility * rolloverFeeSlope / PRECISION_2 * (rolloverFeeSlope - PRECISION_2) / PRECISION_2;
        uint256 denominator = (maxRolloverVolatility * rolloverFeeSlope / PRECISION_2) - volatility;
        int256 tmp = ((numerator * PRECISION_6 / denominator) + PRECISION_6).toInt256()
            - (rolloverFeeSlope * PRECISION_4).toInt256();
        if (tmp >= 0) {
            pairRolloverFees[pairIndex].rolloverFeePerBlock =
                ((maxRolloverFeePerBlock * tmp.toUint256()) / PRECISION_6).toUint64();
        }
        emit RolloverFeePerBlockUpdated(pairIndex, pairRolloverFees[pairIndex].rolloverFeePerBlock, volatility);
    }

    function setRolloverFeePerBlockArray(uint16[] calldata indices, uint256[] calldata values) external onlyManager {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setRolloverFeePerBlock(indices[i], values[i]);
        }
    }

    function setPairFundingFees(uint16 pairIndex, PairFundingFees calldata value) public onlyGov {
        if (
            value.maxFundingFeePerBlock < pairFundingFees[pairIndex].lastFundingRate.abs()
                || value.maxFundingFeePerBlock > MAX_FUNDING_FEE || value.maxFundingFeeVelocity > MAX_FUNDING_VELOCITY
                || value.fundingFeeSlope < MIN_FUNDING_SLOPE || value.fundingFeeSlope > MAX_FUNDING_SLOPE
        ) revert WrongParams();
        PairFundingFees storage p = pairFundingFees[pairIndex];
        p.maxFundingFeePerBlock = value.maxFundingFeePerBlock;
        p.maxFundingFeeVelocity = value.maxFundingFeeVelocity;
        p.fundingFeeSlope = value.fundingFeeSlope;

        emit PairFundingFeesUpdated(pairIndex, value);
    }

    function setPairFundingFeesArray(uint16[] calldata indices, PairFundingFees[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setPairFundingFees(indices[i], values[i]);
        }
    }

    function setMaxFundingFeeVelocity(uint16 pairIndex, uint256 value) public onlyGov {
        if (value > MAX_FUNDING_VELOCITY) revert WrongParams();

        storeAccFundingFees(pairIndex);
        _setVelocity(pairIndex);

        pairFundingFees[pairIndex].maxFundingFeeVelocity = value.toUint64();

        emit MaxFundingFeeVelocityUpdated(pairIndex, value);
    }

    function setMaxFundingFeeVelocityArray(uint16[] calldata indices, uint256[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setMaxFundingFeeVelocity(indices[i], values[i]);
        }
    }

    function setFundingFeeSlope(uint16 pairIndex, uint256 value) public onlyGov {
        if (value < MIN_FUNDING_SLOPE || value > MAX_FUNDING_SLOPE) revert WrongParams();

        storeAccFundingFees(pairIndex);
        _setVelocity(pairIndex);

        pairFundingFees[pairIndex].fundingFeeSlope = value.toUint16();

        emit FundingFeeSlopeUpdated(pairIndex, value);
    }

    function setFundingFeeSlopeArray(uint16[] calldata indices, uint256[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setFundingFeeSlope(indices[i], values[i]);
        }
    }

    function setPairRolloverFees(uint16 pairIndex, PairRolloverFees calldata value) public onlyGov {
        if (
            value.maxRolloverVolatility > MAX_ROLLOVER_VOLATILITY || value.maxRolloverFeePerBlock > MAX_ROLLOVER_FEE
                || value.maxRolloverFeePerBlock == 0 || value.rolloverFeeSlope <= PRECISION_2
                || value.rolloverFeeSlope > MAX_ROLLOVER_FEE_SLOPE
        ) {
            revert WrongParams();
        }
        PairRolloverFees storage p = pairRolloverFees[pairIndex];
        p.maxRolloverVolatility = value.maxRolloverVolatility;
        p.maxRolloverFeePerBlock = value.maxRolloverFeePerBlock;
        p.rolloverFeeSlope = value.rolloverFeeSlope;

        emit PairRolloverFeesUpdated(pairIndex, value);
    }

    function setPairRolloverFeesArray(uint16[] calldata indices, PairRolloverFees[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setPairRolloverFees(indices[i], values[i]);
        }
    }

    function setMaxRolloverFeePerBlock(uint16 pairIndex, uint256 value) public onlyGov {
        if (value > MAX_ROLLOVER_FEE || value == 0) revert WrongParams();

        storeAccRolloverFees(pairIndex);

        pairRolloverFees[pairIndex].maxRolloverFeePerBlock = value.toUint64();

        emit MaxRolloverFeePerBlockUpdated(pairIndex, value);
    }

    function setMaxRolloverFeePerBlockArray(uint16[] calldata indices, uint256[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setMaxRolloverFeePerBlock(indices[i], values[i]);
        }
    }

    function setMaxRolloverVolatility(uint16 pairIndex, uint256 value) public onlyGov {
        if (value > MAX_ROLLOVER_VOLATILITY) revert WrongParams();

        storeAccRolloverFees(pairIndex);

        pairRolloverFees[pairIndex].maxRolloverVolatility = value.toUint32();

        emit MaxRolloverVolatilityUpdated(pairIndex, value);
    }

    function setMaxRolloverVolatilityArray(uint16[] calldata indices, uint256[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setMaxRolloverVolatility(indices[i], values[i]);
        }
    }

    function setRolloverFeeSlope(uint16 pairIndex, uint256 value) public onlyGov {
        if (value > MAX_ROLLOVER_FEE_SLOPE || value <= PRECISION_2) revert WrongParams();

        storeAccRolloverFees(pairIndex);

        pairRolloverFees[pairIndex].rolloverFeeSlope = value.toUint16();

        emit MaxRolloverFeeSlopeUpdated(pairIndex, value);
    }

    function setRolloverFeeSlopeArray(uint16[] calldata indices, uint256[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setRolloverFeeSlope(indices[i], values[i]);
        }
    }

    function setMaxFundingFeePerBlock(uint16 pairIndex, uint256 value) public onlyGov {
        if (value < pairFundingFees[pairIndex].lastFundingRate.abs() || value > MAX_FUNDING_FEE) revert WrongParams();

        storeAccFundingFees(pairIndex);

        pairFundingFees[pairIndex].maxFundingFeePerBlock = value.toUint64();

        emit MaxFundingFeePerBlockUpdated(pairIndex, value);
    }

    function setMaxFundingFeePerBlockArray(uint16[] calldata indices, uint256[] calldata values) external onlyGov {
        if (indices.length != values.length) revert WrongParams();

        for (uint256 i = 0; i < indices.length; i++) {
            setMaxFundingFeePerBlock(indices[i], values[i]);
        }
    }

    function storeTradeInitialAccFees(uint256 tradeId, address trader, uint16 pairIndex, uint8 index, bool long)
        external
        onlyCallbacks
    {
        storeAccFundingFees(pairIndex);

        TradeInitialAccFees storage t = tradeInitialAccFees[trader][pairIndex][index];

        t.rollover = getPendingAccRolloverFees(pairIndex);

        t.funding = long ? pairFundingFees[pairIndex].accPerOiLong : pairFundingFees[pairIndex].accPerOiShort;

        t.openedAfterUpdate = true;

        emit TradeInitialAccFeesStored(tradeId, trader, pairIndex, index, t.rollover, t.funding);
    }

    function getOpeningFee(
        uint16 pairIndex,
        int256 leveragedPositionSize,
        uint32 leverage,
        int256 oiDelta,
        uint256 oiCap,
        uint256 usageOi
    ) external view returns (uint256 devFee, uint256 vaultFee) {
        (uint256 baseFee, uint256 takerAmount, uint256 makerAmount) =
            _getBaseOpeningFee(pairIndex, leveragedPositionSize, leverage, oiDelta);

        uint256 totalFee = baseFee + _getUtilizationOpeningFee(pairIndex, takerAmount, usageOi + makerAmount, oiCap);

        vaultFee = totalFee * pairOpeningFees[pairIndex].vaultFeePercent / PRECISION_2;
        devFee = totalFee - vaultFee;
    }

    function _getBaseOpeningFee(uint16 pairIndex, int256 tradeSize, uint32 leverage, int256 oiDelta)
        private
        view
        returns (uint256, uint256, uint256)
    {
        uint256 makerAmount;
        uint256 takerAmount;

        if (oiDelta * tradeSize < 0 && leverage <= pairOpeningFees[pairIndex].makerMaxLeverage) {
            if (oiDelta * (oiDelta + tradeSize) >= 0) {
                makerAmount = tradeSize.abs();
            } else {
                makerAmount = oiDelta.abs();
                takerAmount = (oiDelta + tradeSize).abs();
            }
        } else {
            takerAmount = tradeSize.abs();
        }

        uint256 baseFee = (
            pairOpeningFees[pairIndex].makerFeeP * makerAmount + pairOpeningFees[pairIndex].takerFeeP * takerAmount
        ) / PRECISION_6 / 100;
        return (baseFee, takerAmount, makerAmount);
    }

    function _getUtilizationOpeningFee(uint16 pairIndex, uint256 takerAmount, uint256 usageOi, uint256 oiCap)
        private
        view
        returns (uint256)
    {
        uint256 utilizationFee;
        uint256 usageAmount = usageOi + takerAmount;
        uint256 thresholdOi = pairOpeningFees[pairIndex].utilizationThresholdP * oiCap / 100 / PRECISION_2;

        if (usageOi > thresholdOi) {
            utilizationFee = takerAmount * pairOpeningFees[pairIndex].usageFeeP
                * (usageOi + takerAmount / 2 - thresholdOi)
                / (100 * oiCap * (PRECISION_6 - pairOpeningFees[pairIndex].utilizationThresholdP * uint32(PRECISION_2)));
        } else if (usageAmount > thresholdOi) {
            utilizationFee = (usageAmount - thresholdOi) * pairOpeningFees[pairIndex].usageFeeP
                * (usageOi + takerAmount - thresholdOi)
                / (200 * oiCap * (PRECISION_6 - pairOpeningFees[pairIndex].utilizationThresholdP * uint32(PRECISION_2)));
        }

        return utilizationFee;
    }

    function storeAccRolloverFees(uint16 pairIndex) private {
        PairRolloverFees storage r = pairRolloverFees[pairIndex];

        r.accPerOi = getPendingAccRolloverFees(pairIndex);
        r.lastUpdateBlock = ChainUtils.getBlockNumber().toUint32();

        emit AccRolloverFeesStored(pairIndex, r.accPerOi);
    }

    function getPendingAccRolloverFees(uint16 pairIndex) public view returns (uint256) {
        PairRolloverFees storage r = pairRolloverFees[pairIndex];

        return r.accPerOi
            + (ChainUtils.getBlockNumber() - r.lastUpdateBlock) * pairRolloverFees[pairIndex].rolloverFeePerBlock;
    }

    function storeAccFundingFees(uint16 pairIndex) private {
        PairFundingFees storage f = pairFundingFees[pairIndex];

        (int256 accPerOiLong, int256 accPerOiShort, int64 lastFundingRate) = getPendingAccFundingFees(pairIndex);
        (f.accPerOiLong, f.accPerOiShort, f.lastFundingRate) = (accPerOiLong, accPerOiShort, lastFundingRate);
        f.lastUpdateBlock = ChainUtils.getBlockNumber().toUint32();

        emit AccFundingFeesStored(pairIndex, accPerOiLong, accPerOiShort, lastFundingRate, f.lastVelocity);
    }

    function getPendingAccFundingFees(uint16 pairIndex)
        public
        view
        returns (int256 valueLong, int256 valueShort, int64 fr)
    {
        PairFundingFees memory f = pairFundingFees[pairIndex];
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));

        valueLong = f.accPerOiLong;
        valueShort = f.accPerOiShort;
        uint256 absLastFundingRate = f.lastFundingRate.abs();
        uint256 absLastVelocity = f.lastVelocity.abs();

        int256 openInterestLong = storageT.openInterest(pairIndex, 0).toInt256();
        int256 openInterestShort = storageT.openInterest(pairIndex, 1).toInt256();

        uint256 numBlocksToCharge = ChainUtils.getBlockNumber() - f.lastUpdateBlock;
        int256 newFundingRate = f.lastFundingRate + f.lastVelocity * numBlocksToCharge.toInt256();

        uint256 absNewFundingRate = newFundingRate.abs();

        int256 accumulated_funding_rate_change;
        bool longsPay;

        if (absNewFundingRate > f.maxFundingFeePerBlock) {
            uint256 numBlocksToLimit = (f.maxFundingFeePerBlock - absLastFundingRate) / absLastVelocity;
            if (newFundingRate * f.lastFundingRate < 0) {
                numBlocksToCharge -= 2 * absLastFundingRate / absLastVelocity;
            }
            accumulated_funding_rate_change = (
                (absLastFundingRate + (numBlocksToLimit.ceilDiv(2)) * absLastVelocity) * numBlocksToLimit
                    + ((numBlocksToCharge - numBlocksToLimit) * f.maxFundingFeePerBlock)
            ).toInt256();
            (longsPay, fr) = newFundingRate > 0
                ? (true, int64(f.maxFundingFeePerBlock))
                : (false, int64(f.maxFundingFeePerBlock) * -1);
        } else {
            uint256 fundingRateToUse = absNewFundingRate > absLastFundingRate ? absLastFundingRate : absNewFundingRate;
            if (f.lastFundingRate * newFundingRate < 0) {
                numBlocksToCharge -= 2 * fundingRateToUse / absLastVelocity;
            }
            longsPay = (newFundingRate + f.lastFundingRate >= 0) ? true : false;

            accumulated_funding_rate_change =
                ((fundingRateToUse + (numBlocksToCharge.ceilDiv(2) * absLastVelocity)) * numBlocksToCharge).toInt256();

            fr = newFundingRate.toInt64();
        }

        if (longsPay) {
            valueLong += openInterestLong > 0 ? accumulated_funding_rate_change : int256(0);
            if (openInterestShort != 0) {
                valueShort -= accumulated_funding_rate_change * openInterestLong / openInterestShort;
            }
        } else {
            valueShort += openInterestShort > 0 ? accumulated_funding_rate_change : int256(0);
            if (openInterestLong != 0) {
                valueLong -= accumulated_funding_rate_change * openInterestShort / openInterestLong;
            }
        }
    }

    function getVelocity(uint16 pairIndex) public view returns (int64 velocity) {
        IOstiumTradingStorage storageT = IOstiumTradingStorage(registry.getContractAddress('tradingStorage'));
        PairFundingFees storage f = pairFundingFees[pairIndex];

        int256 price = IOstiumOpenPnl(registry.getContractAddress('openPnl')).lastTradePrice(pairIndex);

        int256 oiCap = storageT.openInterest(pairIndex, 2).toInt256();
        int256 openInterestLong = storageT.openInterest(pairIndex, 0).toInt256() * price / int64(PRECISION_18) / 1e12;
        int256 openInterestShort = storageT.openInterest(pairIndex, 1).toInt256() * price / int64(PRECISION_18) / 1e12;

        int256 openInterestMax = openInterestLong > openInterestShort ? openInterestLong : openInterestShort;
        oiCap = openInterestMax > oiCap ? openInterestMax : oiCap;

        int256 openInterestDelta = openInterestLong - openInterestShort;
        int64 maxFundingFeeVelocity = int64(f.maxFundingFeeVelocity);
        int16 fundingSlope = int16(f.fundingFeeSlope);

        int256 numerator =
            (oiCap * fundingSlope / int8(PRECISION_2)) * (fundingSlope - int8(PRECISION_2)) / int8(PRECISION_2);
        int256 denominator = fundingSlope * oiCap / int8(PRECISION_2) - openInterestDelta.abs().toInt256();

        if (denominator != 0) {
            velocity = (
                maxFundingFeeVelocity
                    * (
                        numerator * int32(PRECISION_6) / denominator - fundingSlope * int32(PRECISION_4)
                            + int32(PRECISION_6)
                    ) / int32(PRECISION_6)
            ).toInt64();
            if (openInterestDelta < 0) {
                velocity = -velocity;
            }
        } else {
            velocity = pairFundingFees[pairIndex].lastVelocity;
        }
    }

    function setVelocity(uint16 pairIndex) external onlyCallbacks {
        _setVelocity(pairIndex);
    }

    function _setVelocity(uint16 pairIndex) private {
        PairFundingFees storage f = pairFundingFees[pairIndex];

        int64 lastVelocity = getVelocity(pairIndex);
        f.lastVelocity = lastVelocity;

        emit LastVelocityUpdated(pairIndex, lastVelocity);
    }

    function getTradeRolloverFee(address trader, uint16 pairIndex, uint8 index, uint256 collateral, uint32 leverage)
        public
        view
        returns (uint256)
    {
        TradeInitialAccFees memory t = tradeInitialAccFees[trader][pairIndex][index];

        if (!t.openedAfterUpdate) {
            return 0;
        }

        return getTradeRolloverFeePure(t.rollover, getPendingAccRolloverFees(pairIndex), collateral, leverage);
    }

    function getTradeRolloverFeePure(
        uint256 accRolloverFeesPerCollateral,
        uint256 endAccRolloverFeesPerCollateral,
        uint256 collateral,
        uint32 leverage
    ) public pure returns (uint256) {
        return ((endAccRolloverFeesPerCollateral - accRolloverFeesPerCollateral) * collateral * leverage) / PRECISION_18
            / PRECISION_2;
    }

    function getTradeFundingFee(
        address trader,
        uint16 pairIndex,
        uint8 index,
        bool long,
        uint256 collateral,
        uint32 leverage
    ) public view returns (int256) {
        TradeInitialAccFees memory t = tradeInitialAccFees[trader][pairIndex][index];

        if (!t.openedAfterUpdate) {
            return 0;
        }

        (int256 pendingLong, int256 pendingShort,) = getPendingAccFundingFees(pairIndex);

        return getTradeFundingFeePure(t.funding, long ? pendingLong : pendingShort, collateral, leverage);
    }

    function getTradeFundingFeePure(
        int256 accFundingFeesPerOi,
        int256 endAccFundingFeesPerOi,
        uint256 collateral,
        uint32 leverage
    ) public pure returns (int256) {
        return ((endAccFundingFeesPerOi - accFundingFeesPerOi) * (collateral * leverage).toInt256())
            / int64(PRECISION_18) / int8(PRECISION_2);
    }

    function getTradeLiquidationPrice(
        address trader,
        uint16 pairIndex,
        uint8 index,
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage
    ) external view returns (uint256) {
        return getTradeLiquidationPricePure(
            openPrice,
            long,
            collateral,
            leverage,
            getTradeRolloverFee(trader, pairIndex, index, collateral, leverage),
            getTradeFundingFee(trader, pairIndex, index, long, collateral, leverage)
        );
    }

    function getTradeLiquidationPricePure(
        uint256 openPrice,
        bool long,
        uint256 collateral,
        uint32 leverage,
        uint256 rolloverFee,
        int256 fundingFee
    ) public view returns (uint256) {
        int256 liqPriceDistance = (
            openPrice.toInt256()
                * (((collateral * liqThresholdP) / 100).toInt256() - rolloverFee.toInt256() - fundingFee)
        ) / collateral.toInt256() * int8(PRECISION_2) / int32(leverage);
        int256 liqPrice = long ? openPrice.toInt256() - liqPriceDistance : openPrice.toInt256() + liqPriceDistance;

        return liqPrice > 0 ? uint256(liqPrice) : 0;
    }

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
    ) external onlyCallbacks returns (uint256 amount) {
        storeAccFundingFees(pairIndex);

        uint256 r = getTradeRolloverFee(trader, pairIndex, index, collateral, leverage);
        int256 f = getTradeFundingFee(trader, pairIndex, index, long, collateral, leverage);

        amount = getTradeValuePure(collateral, percentProfit, r, f);

        emit FeesCharged(orderId, tradeId, trader, r, f);
    }

    function getTradeValuePure(uint256 collateral, int256 percentProfit, uint256 rolloverFee, int256 fundingFee)
        public
        view
        returns (uint256)
    {
        int256 signedCollateral = collateral.toInt256();
        int256 value = signedCollateral + (signedCollateral * percentProfit) / int32(PRECISION_6) / 100
            - int256(rolloverFee) - fundingFee;

        if (value <= (signedCollateral * int8(100 - liqThresholdP)) / 100) {
            return 0;
        }

        return value > 0 ? value.toUint256() : 0;
    }

    function getRolloverFeePerBlock(uint16 pairIndex) external view returns (uint256) {
        return pairRolloverFees[pairIndex].rolloverFeePerBlock;
    }

    function getAccRolloverFees(uint16 pairIndex) external view returns (uint256) {
        return pairRolloverFees[pairIndex].accPerOi;
    }

    function getAccRolloverFeesUpdateBlock(uint16 pairIndex) external view returns (uint256) {
        return pairRolloverFees[pairIndex].lastUpdateBlock;
    }

    function getAccFundingFeesLong(uint16 pairIndex) external view returns (int256) {
        return pairFundingFees[pairIndex].accPerOiLong;
    }

    function getAccFundingFeesShort(uint16 pairIndex) external view returns (int256) {
        return pairFundingFees[pairIndex].accPerOiShort;
    }

    function getAccFundingFeesUpdateBlock(uint16 pairIndex) external view returns (uint256) {
        return pairFundingFees[pairIndex].lastUpdateBlock;
    }

    function getTradeInitialAccRolloverFeesPerCollateral(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (uint256)
    {
        return tradeInitialAccFees[trader][pairIndex][index].rollover;
    }

    function getTradeInitialAccFundingFeesPerOi(address trader, uint16 pairIndex, uint8 index)
        external
        view
        returns (int256)
    {
        return tradeInitialAccFees[trader][pairIndex][index].funding;
    }

    function getTradeOpenedAfterUpdate(address trader, uint16 pairIndex, uint8 index) external view returns (bool) {
        return tradeInitialAccFees[trader][pairIndex][index].openedAfterUpdate;
    }
}