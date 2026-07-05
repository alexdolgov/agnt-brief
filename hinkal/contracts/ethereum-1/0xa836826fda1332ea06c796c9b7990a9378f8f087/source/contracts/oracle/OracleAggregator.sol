// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "../interfaces/IOracleAggregator.sol";
import "../interfaces/IAggregatorV3Interface.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

/// @title ChainLink Oracle Aggregator
/// @notice Oracle contract to fetch price using chainlink oracles
contract OracleAggregator is AccessControlUpgradeable, IOracleAggregator {
    error NegativePrice(address feed);
    error InvalidOracleResults();
    error AssetNotRegistered();
    error ZeroAddress();

    event PriceFeedAdded(
        address indexed asset,
        address indexed priceFeed,
        bool indexed isETHFeed,
        bool isWeth
    );

    struct FeedConfig {
        IAggregatorV3Interface priceFeed;
        bool isETHFeed;
        bool isWeth;
    }

    bytes32 internal constant SETTER_ROLE = keccak256("SETTER_ROLE");

    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    /// @notice ETH USD Chainlink price feed
    IAggregatorV3Interface public immutable ethUsdPriceFeed;

    mapping(address => FeedConfig) public feedConfig;

    modifier ensureAssetRegistered(address asset) {
        if (address(feedConfig[asset].priceFeed) == address(0))
            revert AssetNotRegistered();
        _;
    }

    modifier ensureNonZeroAddress(address someone) {
        if (someone == address(0)) revert ZeroAddress();
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @notice Contract constructor
    /// @param _ethUsdPriceFeed ETH USD Chainlink price feed
    constructor(
        IAggregatorV3Interface _ethUsdPriceFeed
    ) ensureNonZeroAddress(address(_ethUsdPriceFeed)) {
        ethUsdPriceFeed = _ethUsdPriceFeed;
        _disableInitializers();
    }

    /// @notice Initializes the Oracle contract, setting approapriate roles
    function initialize() public initializer {
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /// @notice Adds a feed to the feedConfig mapping, so prices for this asset can be obtained
    /// @dev only SETTER_ROLE can call this function
    function addFeed(
        address _priceFeed,
        bool _isETHFeed,
        bool _isWeth,
        address _asset
    )
        external
        onlyRole(SETTER_ROLE)
        ensureNonZeroAddress(_priceFeed)
        ensureNonZeroAddress(_asset)
    {
        feedConfig[_asset] = FeedConfig({
            priceFeed: IAggregatorV3Interface(_priceFeed),
            isETHFeed: _isETHFeed,
            isWeth: _isWeth
        });

        emit PriceFeedAdded(_asset, _priceFeed, _isETHFeed, _isWeth);
    }

    /// @notice Fetches price of a given asset in terms of ETH
    /// @dev if the asset in the config is WETH the price returned is always 1 ETH
    /// @param _asset Address of the asset
    /// @return price Price of token in terms of ETH scaled by 1e18
    function getAssetETHPrice(
        address _asset
    ) public view virtual ensureAssetRegistered(_asset) returns (uint) {
        FeedConfig memory config = feedConfig[_asset];

        if (config.isWeth) {
            return 1e18;
        } else if (config.isETHFeed) {
            return getAssetPrice(config.priceFeed);
        } else {
            return
                (getAssetPrice(config.priceFeed) * 1e18) /
                getAssetPrice(ethUsdPriceFeed);
        }
    }

    /// @dev ethPriceFeed.latestRoundData should return price scaled by 18 decimals
    function getAssetPrice(
        IAggregatorV3Interface _priceFeed
    ) internal view returns (uint) {
        (, int answer, , uint updatedAt, ) = _priceFeed.latestRoundData();

        if (answer <= 0 || updatedAt == 0) revert InvalidOracleResults();

        uint8 decimals = _priceFeed.decimals();

        unchecked {
            //converts the answer to have 18 decimals
            return
                decimals > 18
                    ? uint256(answer) / 10 ** (decimals - 18)
                    : uint256(answer) * 10 ** (18 - decimals);
        }
    }
}
