// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ChainlinkAdapter} from "./ChainlinkAdapter.sol";
import {UniswapV3TwapAdapter} from "./UniswapV3TwapAdapter.sol";
import {CurveAdapter} from "./CurveAdapter.sol";

/// @title OracleAggregator
/// @author BTCD Labs
/// @notice Aggregates prices from heterogeneous oracle sources using weighted averages.
///
/// @dev Each asset can have up to MAX_ORACLES price sources configured. Each source
///      specifies its type, weight (BPS summing to 10000), and type-specific parameters.
///
///      Supported oracle types:
///        - Chainlink AggregatorV3 — per-feed staleness thresholds
///        - Uniswap V3 TWAP — configurable window, decimal handling, price inversion
///        - Curve CryptoSwap EMA — `price_oracle()` for TwoCrypto/TriCrypto pools
///        - Curve StableSwap NG spot — `get_dy(1 unit)` for StableSwap pools
///
///      OracleSource struct fields are multiplexed by type:
///        Chainlink:     feed=aggregator, maxStaleness=seconds
///        UniswapV3:     feed=pool, twapWindow=seconds, base/quoteDecimals, invertPrice
///        CurveCrypto:   feed=pool, baseDecimals=price_oracle index (packed as uint8)
///        CurveStable:   feed=pool, baseDecimals=fromIndex, quoteDecimals=toIndex,
///                        maxStaleness=fromDecimals (packed), twapWindow=toDecimals (packed)
library OracleAggregator {

    /// @notice Oracle type discriminant.
    enum OracleType {
        Chainlink, // 0
        UniswapV3TWAP, // 1
        CurveCryptoEMA, // 2 — TwoCrypto / TriCrypto price_oracle()
        CurveStableSpot // 3 — StableSwap NG get_dy(1 unit)
    }

    /// @notice Configuration for a single oracle source.
    /// @dev Fields are multiplexed by OracleType — see library NatSpec for mapping.
    struct OracleSource {
        uint32 maxStaleness;
        uint32 twapWindow;
        uint16 weight;
        uint8 baseDecimals;
        uint8 quoteDecimals;
        address feed;
        OracleType oracleType;
        bool invertPrice;
    }

    error NoOracles();
    error WeightsNotNormalized(uint256 totalWeight);
    error ZeroPrice(address feed);
    error PriceOutOfBounds(address feed, uint256 price);
    error InvalidOracleSource();

    uint256 internal constant WAD = 1e18;
    uint256 internal constant BPS = 10_000;
    uint256 internal constant MAX_ORACLES = 8;

    /// @dev Sanity bound: no single oracle price should exceed 1e30 WAD (~$1 trillion).
    ///      Prevents corrupted/misconfigured feeds from causing overflow in weighted sum.
    uint256 internal constant MAX_PRICE_WAD = 1e30;

    /// @notice Compute weighted-average price from an array of oracle sources.
    /// @param sources The configured oracle sources.
    /// @return priceWad The aggregated price in WAD (18 decimals).
    function aggregate(OracleSource[] storage sources) internal view returns (uint256 priceWad) {
        uint256 len = sources.length;
        if (len == 0) revert NoOracles();

        uint256 weightedSum;
        uint256 totalWeight;

        for (uint256 i; i < len; ++i) {
            OracleSource storage src = sources[i];
            uint256 p = _readSource(src);
            if (p == 0) revert ZeroPrice(src.feed);
            if (p > MAX_PRICE_WAD) revert PriceOutOfBounds(src.feed, p);

            weightedSum += p * uint256(src.weight);
            totalWeight += uint256(src.weight);
        }

        if (totalWeight != BPS) revert WeightsNotNormalized(totalWeight);

        priceWad = weightedSum / BPS;
    }

    /// @dev Route to the correct adapter based on oracle type.
    function _readSource(OracleSource storage src) private view returns (uint256) {
        OracleType t = src.oracleType;

        if (t == OracleType.Chainlink) {
            (uint256 price,) = ChainlinkAdapter.readFeed(src.feed, src.maxStaleness);
            return price;
        } else if (t == OracleType.UniswapV3TWAP) {
            return UniswapV3TwapAdapter.readTwap(
                src.feed, src.twapWindow, src.baseDecimals, src.quoteDecimals, src.invertPrice
            );
        } else if (t == OracleType.CurveCryptoEMA) {
            // baseDecimals is repurposed as the price_oracle index
            return CurveAdapter.readCryptoOracle(src.feed, uint256(src.baseDecimals));
        } else if (t == OracleType.CurveStableSpot) {
            // Repurposed fields for StableSwap:
            //   baseDecimals  = fromIndex (coin index, 0-255 fits int128)
            //   quoteDecimals = toIndex
            //   maxStaleness  = fromDecimals (packed as uint32, only low 8 bits used)
            //   twapWindow    = toDecimals (packed as uint32, only low 8 bits used)
            return CurveAdapter.readStableSwapSpot(
                src.feed,
                int128(int8(int256(uint256(src.baseDecimals)))),
                int128(int8(int256(uint256(src.quoteDecimals)))),
                uint8(src.maxStaleness),
                uint8(src.twapWindow)
            );
        } else {
            revert InvalidOracleSource();
        }
    }

    /// @notice Validate an array of oracle source configs.
    function validateSources(OracleSource[] calldata sources) internal pure {
        uint256 len = sources.length;
        if (len == 0 || len > MAX_ORACLES) revert InvalidOracleSource();

        uint256 totalWeight;
        for (uint256 i; i < len; ++i) {
            OracleSource calldata src = sources[i];
            if (src.feed == address(0)) revert InvalidOracleSource();
            if (src.weight == 0) revert InvalidOracleSource();

            OracleType t = src.oracleType;
            if (t == OracleType.Chainlink) {
                if (src.maxStaleness == 0) revert InvalidOracleSource();
            } else if (t == OracleType.UniswapV3TWAP) {
                if (src.twapWindow < UniswapV3TwapAdapter.MIN_TWAP_WINDOW) revert InvalidOracleSource();
            } else if (t == OracleType.CurveCryptoEMA) {
                if (src.baseDecimals > 3) revert InvalidOracleSource();
            } else if (t == OracleType.CurveStableSpot) {
                if (src.baseDecimals > 3 || src.quoteDecimals > 3) revert InvalidOracleSource();
                if (src.maxStaleness > 18 || src.twapWindow > 18) revert InvalidOracleSource();
            }

            totalWeight += uint256(src.weight);
        }

        if (totalWeight != BPS) revert WeightsNotNormalized(totalWeight);
    }
}
