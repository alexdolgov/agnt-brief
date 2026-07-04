// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {AggregatorV3Interface} from "../interfaces/AggregatorV3Interface.sol";

/// @title ChainlinkAdapter
/// @author BTCD Labs
/// @notice Library for reading Chainlink AggregatorV3 feeds with per-feed
///         staleness thresholds and answer validation.
///
/// @dev Different Chainlink feeds have very different heartbeat intervals:
///        - BTC/USD  ~1 hour
///        - WBTC/BTC ~24 hours
///        - USDC/USD ~24 hours
///      This library requires the caller to supply the max staleness per read,
///      so a single contract can safely consume feeds with heterogeneous heartbeats.
///
///      All prices are returned in WAD (1e18) as raw feed values scaled up.
///      The caller is responsible for interpretation (e.g., BTC/USD → USD value).
library ChainlinkAdapter {

    error ChainlinkStale(address feed, uint256 updatedAt, uint256 maxAge);
    error ChainlinkBadAnswer(address feed, int256 answer);
    error ChainlinkBadRound(address feed, uint80 roundId, uint80 answeredInRound);
    
    uint256 internal constant WAD = 1e18;

    /// @notice Read a Chainlink feed, validate it, and return the answer in WAD.
    /// @param feed       The AggregatorV3 address.
    /// @param maxStaleness Maximum seconds since last update before reverting.
    /// @return priceWad  The feed answer scaled to 18 decimals.
    /// @return updatedAt The timestamp of the last update (for downstream freshness checks).
    function readFeed(address feed, uint32 maxStaleness) internal view returns (uint256 priceWad, uint256 updatedAt) {
        AggregatorV3Interface agg = AggregatorV3Interface(feed);
        (uint80 roundId, int256 answer,, uint256 updatedAt_, uint80 answeredInRound) = agg.latestRoundData();

        // Validate round completeness
        if (answeredInRound < roundId) {
            revert ChainlinkBadRound(feed, roundId, answeredInRound);
        }

        // Validate positive answer
        if (answer <= 0) {
            revert ChainlinkBadAnswer(feed, answer);
        }

        // Validate freshness
        if (updatedAt_ == 0 || block.timestamp > updatedAt_ + uint256(maxStaleness)) {
            revert ChainlinkStale(feed, updatedAt_, maxStaleness);
        }

        updatedAt = updatedAt_;
        priceWad = scaleToWad(uint256(answer), agg.decimals());
    }

    /// @notice Scale a value from `decimals` precision to WAD (18 decimals).
    /// @dev Safe for decimals in [0, 18]. Decimals > 18 are truncated via division.
    function scaleToWad(uint256 value, uint8 decimals) internal pure returns (uint256) {
        if (decimals == 18) return value;
        if (decimals < 18) return value * (10 ** (18 - decimals));
        return value / (10 ** (decimals - 18));
    }
}
