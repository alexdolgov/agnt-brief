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


// File src/OstiumPriceRouter.sol

// Original license: SPDX_License_Identifier: MIT
pragma solidity ^0.8.24;



contract OstiumPriceRouter is IOstiumPriceRouter {
    IOstiumRegistry public registry;

    uint32 MAX_TS_VALIDITY = 900; // 15 min

    uint256 currentOrderId;
    uint32 public maxTsValidity;

    constructor(IOstiumRegistry _registry, uint32 _maxTsValidity) {
        if (address(_registry) == address(0) || _maxTsValidity > MAX_TS_VALIDITY || _maxTsValidity == 0) {
            revert WrongParams();
        }

        registry = _registry;
        _setMaxTsValidity(_maxTsValidity);
    }

    modifier onlyGov() {
        _onlyGov();
        _;
    }

    function _onlyGov() private view {
        if (msg.sender != registry.gov()) {
            revert NotGov(msg.sender);
        }
    }

    modifier onlyTrading() {
        _onlyTrading();
        _;
    }

    function _onlyTrading() private view {
        if (msg.sender != registry.getContractAddress('trading')) {
            revert NotTrading(msg.sender);
        }
    }

    function setMaxTsValidity(uint32 value) external onlyGov {
        _setMaxTsValidity(value);
    }

    function _setMaxTsValidity(uint32 value) private {
        if (value > MAX_TS_VALIDITY || value == 0) {
            revert WrongParams();
        }

        maxTsValidity = value;
        emit MaxTsValidityUpdated(value);
    }

    function getPrice(uint16 pairIndex, IOstiumPriceUpKeep.OrderType orderType, uint256 timestamp)
        external
        onlyTrading
        returns (uint256)
    {
        if (block.timestamp - timestamp > maxTsValidity) {
            revert WrongTimestamp();
        }

        ++currentOrderId;
        string memory priceUpkeepType =
            IOstiumPairsStorage(registry.getContractAddress('pairsStorage')).oracle(pairIndex);
        IOstiumPriceUpKeep(
            payable(registry.getContractAddress(bytes32(abi.encodePacked(priceUpkeepType, 'PriceUpkeep'))))
        ).getPrice(currentOrderId, pairIndex, orderType, timestamp);

        return currentOrderId;
    }
}