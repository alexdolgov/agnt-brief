// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDomfiPairsStorage {
    struct Pair {
        bytes32 from;
        bytes32 to;
        bytes32 feed;
        uint32 maxLeverage;
        uint8 groupIndex;
        uint8 feeIndex;
        string priceFeed;
    }

    struct Group {
        bytes32 name;
        uint32 maxLeverage;
        uint16 minLeverage;
        uint16 maxCollateralP; // PRECISION_2 (% vault current balance)
    }

    struct Fee {
        uint64 minLevPos; // PRECISION_6 USDC (collateral x leverage, useful for min fee)
        bytes32 name;
        uint256 oracleFee; // PRECISION_6 USDC
    }

    enum CollateralDirection {
        LONG,
        SHORT
    }

    event PairAdded(uint16 index, bytes32 from, bytes32 to);
    event PairUpdated(uint16 indexed index);
    event PairRemoved(uint16 index, bytes32 from, bytes32 to);
    event GroupAdded(uint8 index, bytes32 name);
    event GroupUpdated(uint8 indexed index);
    event FeeAdded(uint8 index, bytes32 name);
    event FeeUpdated(uint8 indexed index);
    event PairMaxLeverageUpdated(uint16 indexed pairIndex, uint32 newMaxLeverage);
    event GroupCollateralUpdated(
        uint8 groupIndex, uint256 collateral, uint256 newAmount, bool long, bool increase
    );

    error MaxReached();
    error WrongParams();
    error PairNotEmpty();
    error NotGov(address caller);
    error NotManager(address caller);
    error NotAuthorized(address caller);
    error GroupNotListed(uint256 index);
    error FeeNotListed(uint256 index);
    error PairNotListed(uint256 index);
    error PairAlreadyListed(bytes32 from, bytes32 to);

    function isPairIndexListed(uint16 pairIndex) external view returns (bool);
    function pairFeed(uint16 pairIndex) external view returns (bytes32);
    function getFeedInfo(uint16 pairIndex) external view returns (bytes32, string memory);
    function pairMinLeverage(uint16 pairIndex) external view returns (uint16);
    function pairMaxLeverage(uint16 pairIndex) external view returns (uint32);
    function groupMaxCollateral(uint16 pairIndex) external view returns (uint256);
    function groupCollateral(uint16 pairIndex, bool long) external view returns (uint256);
    function pairOracleFee(uint16 pairIndex) external view returns (uint256);
    function pairMinLevPos(uint16 pairIndex) external view returns (uint64);
    function pairsCount() external view returns (uint16);
    function groupsCount() external view returns (uint8);
    function feesCount() external view returns (uint8);
    function pairsBackend(uint16 index)
        external
        view
        returns (Pair memory, Group memory, Fee memory);
    function getAllPairsMaxLeverage() external view returns (uint32[] memory);
    function getPairsMaxLeverage(uint256 startId, uint256 finalId)
        external
        view
        returns (uint32[] memory);
    function pairs(uint16 pairIndex)
        external
        view
        returns (bytes32, bytes32, bytes32, uint32, uint8, uint8, string memory);
    function groups(uint8 groupIndex) external view returns (bytes32, uint32, uint16, uint16);
    function fees(uint8 feeIndex) external view returns (uint64, bytes32, uint256);
    function isPairListed(bytes32 fromPair, bytes32 toPair) external view returns (bool);
    function pairHasNativeOracleFeed(uint16 pairIndex) external view returns (bool);

    // onlyGov
    function addPair(Pair calldata newPair) external;
    function addPairs(Pair[] calldata newPairs) external;
    function updatePair(uint16 pairIndex, Pair calldata newPair) external;
    function removePair(uint16 pairIndex) external;
    function addGroup(Group calldata newGroup) external;
    function updateGroup(uint8 id, Group calldata newGroup) external;
    function addFee(Fee calldata newFee) external;
    function updateFee(uint8 id, Fee calldata newFee) external;

    // onlyManager
    function setPairMaxLeverage(uint16 pairIndex, uint32 newMaxLeverage) external;
    function setPairMaxLeverageArray(uint16[] calldata indices, uint32[] calldata newValues)
        external;

    // onlyCallbacks
    function updateGroupCollateral(uint16 pairIndex, uint256 newAmount, bool long, bool increase)
        external;
}
