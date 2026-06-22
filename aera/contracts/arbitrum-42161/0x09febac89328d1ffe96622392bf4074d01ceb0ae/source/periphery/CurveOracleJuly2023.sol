// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {ICurveFiPool} from "./dependencies/curvefi/ICurveFiPoolJuly2023.sol";
import {SafeCast} from "./dependencies/openzeppelin/SafeCast.sol";
import {IAeraV2Oracle} from "./interfaces/IAeraV2Oracle.sol";

/// @title CurveOracleJuly2023
/// @notice Used to calculate price of tokens in a CurveStableSwapNG as of July 2023.
/// @dev CurveStableSwapNG pools have been updated to handle multiple assets and
/// have a `price_oracle` function which returns the price of the pool asset with regard to the coin at index 0.
/// This oracle contract uses updated `price_oracle` function with provided numerator and denominator asset indexes.
/// Currently, the oracle expects numerator asset index or denominator asset index to be 0. If the numerator asset index is 0,
/// the price is inverted.
contract CurveOracleJuly2023 is IAeraV2Oracle {
    using SafeCast for uint256;

    /// CONSTANTS ///

    /// @notice Decimals of price returned by this oracle.
    uint8 public constant decimals = 18; // solhint-disable-line const-name-snakecase

    /// @notice Scale to invert price. Note: Curve returns price with 18 decimals.
    uint256 internal constant INVERTED_PRICE_SCALE = 1e36;

    /// IMMUTABLES ///

    /// @notice The address of underlying Curve pool.
    ICurveFiPool public immutable pool;
    /// @notice Index of a priced asset in a Curve Stableswap pool
    uint256 public immutable poolAssetIndex;
    /// @notice Curve pool oracle gives prices with regard to the coin at index 0.
    /// If the numerator asset is at index 0, the price is inverted.
    bool public immutable invertPrice;

    /// ERRORS ///

    error AeraPeriphery__CurvePoolIsZeroAddress();
    error AeraPeriphery__InvalidCurvePool();
    error AeraPeriphery__InvalidNumeratorAssetIndex();
    error AeraPeriphery__InvalidDenominatorAssetIndex();
    error AeraPeriphery__SameAssetIndexes();
    error AeraPeriphery__InvalidAssetIndexes();

    /// FUNCTIONS ///

    /// @notice Initialize the oracle contract.
    /// @param pool_ The address of the underlying Curve pool.
    /// @param numeratorAssetIndex Index of the numerator asset in the Curve pool.
    /// @param denominatorAssetIndex Index of the denominator asset in the Curve pool.
    /// @param numeratorAsset Address of the numerator asset.
    /// @param denominatorAsset Address of the denominator asset.
    constructor(
        address pool_,
        uint256 numeratorAssetIndex,
        uint256 denominatorAssetIndex,
        address numeratorAsset,
        address denominatorAsset
    ) {
        // Requirements: check Curve pool integrity.
        if (pool_ == address(0)) {
            revert AeraPeriphery__CurvePoolIsZeroAddress();
        }
        if (pool_.code.length == 0) {
            revert AeraPeriphery__InvalidCurvePool();
        }

        // Requirements: check that indexes are different.
        if (numeratorAssetIndex == denominatorAssetIndex) {
            revert AeraPeriphery__SameAssetIndexes();
        }

        // Requirements: check that one of the indexes is 0.
        if (numeratorAssetIndex != 0 && denominatorAssetIndex != 0) {
            revert AeraPeriphery__InvalidAssetIndexes();
        }

        // Effects: set pool and oracle decimals.
        pool = ICurveFiPool(pool_);

        // Requirements: check that numerator asset is correct.
        if (numeratorAsset != pool.coins(numeratorAssetIndex)) {
            revert AeraPeriphery__InvalidNumeratorAssetIndex();
        }

        // Requirements: check that denominator asset is correct.
        if (denominatorAsset != pool.coins(denominatorAssetIndex)) {
            revert AeraPeriphery__InvalidDenominatorAssetIndex();
        }

        // Effects: set pool asset index and price inversion.
        if (numeratorAssetIndex == 0) {
            // Index is shifted down by 1 in Curve Pool, because
            // prices are given with regard to the coin at index 0.
            poolAssetIndex = denominatorAssetIndex - 1;
            invertPrice = true;
        } else {
            // Index is shifted down by 1 in Curve Pool, because
            // prices are given with regard to the coin at index 0.
            poolAssetIndex = numeratorAssetIndex - 1;
        }

        // Requirements: check that price_oracle works.
        try pool.price_oracle(poolAssetIndex) returns (uint256) {}
        catch {
            revert AeraPeriphery__InvalidCurvePool();
        }
    }

    /// @inheritdoc IAeraV2Oracle
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        uint256 price = pool.price_oracle(poolAssetIndex);

        if (invertPrice) {
            answer = (INVERTED_PRICE_SCALE / price).toInt256();
        } else {
            answer = price.toInt256();
        }

        roundId = 0;
        startedAt = 0;
        // Price is always interpolated against latest block timestamp.
        // However, ma_last_time registers the latest pool action.
        // Note: Curve packs ma_last_time_p & ma_last_time_D.
        // ma_last_time has a distinction for p and D because p is _not_ updated if
        // users remove_liquidity, but D is.
        uint256 lastTimestampPacked = pool.ma_last_time();
        updatedAt = uint128(lastTimestampPacked); // extract ma_last_time_p
        answeredInRound = 0;
    }

    /// @notice Returns the name of the oracle.
    function name() external view returns (string memory) {
        return string.concat("CURVE ", pool.name(), " AERA ORACLE");
    }
}
