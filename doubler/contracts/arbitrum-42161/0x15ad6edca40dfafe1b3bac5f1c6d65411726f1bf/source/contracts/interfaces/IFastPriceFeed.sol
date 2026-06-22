// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.20;

/// @title Fast Price Feed Interface
/// @notice Provides interface for the fast price feed functionality, allowing for efficient price updates and access.
interface IFastPriceFeed {
    error E_PriceLimits();
    error E_ZeroAddr();
    error E_AssetSupported();
    error E_AssetExist();
    error E_PlanExist();
    error E_Switch();
    error E_PlanNotExist();
    error E_TimeLimit();
    error E_PriceRange();
    error E_InitOracle();
    error E_TwapInterval();

    /// @dev Enum representing the various types of price feed plans.
    enum Plan {
        DEX, // Decentralized Exchange
        CHAINLINK // Chainlink Oracle
    }

    struct PriceFeed {
        Plan plan;
        address oracleAddr;
        uint32 timeLimit; // dex: twapIntervals, other: ttl
        uint256 priceMin; // Minimum price
        uint256 priceMax; // Maximum price
    }

    event SetAssetTimeLimit(address asset, uint256 oldTimeLimit, uint256 newTimeLimit);
    event SetPriceLimit(address indexed asset, Plan plan, uint256 priceMin, uint256 priceMax);
    event SetPriceFee(
        address indexed asset,
        Plan plan,
        address oracleAddr,
        uint256 timeLimit,
        uint256 priceMin,
        uint256 priceMax
    );

    function getPrice(address _asset) external view returns (uint256 price);

    function getAssetPlan(address _asset) external view returns (Plan);

    function getPriceFeeds(address _asset, Plan _plan) external view returns (PriceFeed memory);
}
