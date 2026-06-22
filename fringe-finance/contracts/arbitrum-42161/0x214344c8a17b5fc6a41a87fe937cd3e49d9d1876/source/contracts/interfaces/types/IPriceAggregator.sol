// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {LinkTokenInterface} from "@chainlink/contracts/src/v0.8/interfaces/LinkTokenInterface.sol";

import "./ITradingStorage.sol";
import "../IChainlinkFeed.sol";
import "../ILiquidityPool.sol";

/**
 * @dev Contains the types for the GNSPriceAggregator facet
 */
interface IPriceAggregator {
    struct PriceAggregatorStorage {
        // slot 1
        IChainlinkFeed linkUsdPriceFeed; // 160 bits
        uint24 twapInterval; // 24 bits
        uint8 minAnswers; // 8 bits
        // slot 2, 3, 4, 5, 6, 7, 8
        bytes32[2] jobIds; // 2 slots
        address[] oracles;
        mapping(uint8 => LiquidityPoolInfo) collateralGnsLiquidityPools;
        mapping(uint8 => IChainlinkFeed) collateralUsdPriceFeed;
        mapping(bytes32 => Order) orders;
        mapping(address => mapping(uint32 => OrderAnswer[])) orderAnswers;
        // Chainlink Client (slots 9, 10, 11)
        LinkTokenInterface linkErc677; // 160 bits
        uint8 limitJobCount; // max value 255
        uint88 limitJobIndex; // max value 3e26 runs
        uint256 requestCount; // 256 bits
        mapping(bytes32 => address) pendingRequests;
        uint256[39] __gap;
    }

    struct LiquidityPoolInfo {
        ILiquidityPool pool; // 160 bits
        bool isGnsToken0InLp; // 8 bits
        PoolType poolType; // 8 bits
        uint80 __placeholder; // 80 bits
    }

    struct Order {
        address user; // 160 bits
        uint32 index; // 32 bits
        ITradingStorage.PendingOrderType orderType; // 8 bits
        uint16 pairIndex; // 16 bits
        bool isLookback; // 8 bits
        uint32 __placeholder; // 32 bits
    }

    struct OrderAnswer {
        uint64 open;
        uint64 high;
        uint64 low;
        uint64 ts;
    }

    struct LiquidityPoolInput {
        ILiquidityPool pool;
        PoolType poolType;
    }

    enum PoolType {
        UNISWAP_V3,
        ALGEBRA_v1_9
    }
}
