// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

/*
 * @dev from https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol
 */
interface ChainlinkAggregatorV3Interface {
    function decimals() external view returns (uint8);

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
}

interface IPriceFeedFetcher {
    function fetchPrice(address _token) external returns (uint256);
}

interface IPriceFeed is IPriceFeedFetcher {
    // Enums ----------------------------------------------------------------------------------------------------------

    enum ProviderType {
        Chainlink,
        API3,
        Pyth
    }

    // Structs --------------------------------------------------------------------------------------------------------

    struct OracleRecordV2 {
        address oracleAddress;
        ProviderType providerType;
        uint256 timeoutSeconds;
        uint256 decimals;
        bool isEthIndexed;
        bytes32 priceFeedId; // For Pyth oracles; bytes32(0) for Chainlink/API3
    }

    /// @dev Deprecated, but retained for upgradeability
    struct OracleRecord {
        address chainLinkOracle;
        uint256 maxDeviationBetweenRounds;
        bool exists;
        bool isFeedWorking;
        bool isEthIndexed;
    }

    /// @dev Deprecated, but retained for upgradeability
    struct PriceRecord {
        uint256 scaledPrice;
        uint256 timestamp;
    }

    /// @dev Deprecated, but retained for upgradeability
    struct FeedResponse {
        uint80 roundId;
        int256 answer;
        uint256 timestamp;
        bool success;
        uint8 decimals;
    }

    // Custom Errors --------------------------------------------------------------------------------------------------

    error PriceFeed__ExistingOracleRequired();
    error PriceFeed__InvalidDecimalsError();
    error PriceFeed__InvalidOracleResponseError(address token);
    error PriceFeed__TimelockOnlyError();
    error PriceFeed__UnknownAssetError();
    error PriceFeed__FallbackPriceDeviationError(
        uint256 maxDeviationPercentX18,
        uint256 primaryPrice,
        uint256 fallbackPrice
    );
    error PriceFeed__PythFeedIdRequired();

    // Events ---------------------------------------------------------------------------------------------------------

    event NewOracleRegistered(address token, address oracleAddress, bool isEthIndexed, bool isFallback);

    // Functions ------------------------------------------------------------------------------------------------------

    function setOracle(
        address _token,
        address _oracle,
        ProviderType _type,
        uint256 _timeoutSeconds,
        bool _isEthIndexed,
        bool _isFallback,
        bytes32 _priceFeedId // Required for Pyth; use bytes32(0) for Chainlink/API3
    ) external;
}
