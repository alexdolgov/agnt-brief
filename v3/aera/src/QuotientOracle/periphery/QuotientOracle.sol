// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.21;

import "@openzeppelin/Math.sol";
import "./dependencies/openzeppelin/SafeCast.sol";
import "./interfaces/IAeraV2Oracle.sol";

/// @title QuotientOracle.
/// @notice Returns the quotient of two oracles. For example, if the numerator oracle
/// returns 1000 and the denominator oracle returns 10, the QuotientOracle will return
/// 100.
contract QuotientOracle is IAeraV2Oracle {
    /// @notice The oracle to use as the numerator.
    /// @dev The numerator must return a non-negative value.
    IAeraV2Oracle public immutable numerator;

    /// @notice The oracle to use as the denominator.
    /// @dev The denominator must return a positive value.
    IAeraV2Oracle public immutable denominator;

    /// @notice Scalar to multiply the numerator by when calculating the oracle value.
    /// @dev This is equal to 10^(denominator.decimals() + decimals).
    uint256 public immutable numeratorScalar;

    /// @notice Scalar to multiply the denominator by when calculating the oracle value.
    /// @dev This is equal to 10^numerator.decimals().
    uint256 public immutable denominatorScalar;

    /// @notice Decimals of price returned by this oracle.
    uint8 public immutable decimals;

    /// ERRORS ///

    /// @notice Thrown when the denominator oracle returns a zero value. 
    error AeraPeriphery__DenominatorOracleHasZeroValue();
    /// @notice Thrown when the either oracle address is zero.
    error AeraPeriphery__OracleIsZeroAddress();

    /// FUNCTIONS ///

    /// @param _numerator The oracle to use as the numerator.
    /// @param _denominator The oracle to use as the denominator.
    /// @param _decimals Decimals of price returned by this oracle.
    constructor(address _numerator, address _denominator, uint8 _decimals) {
        if (_numerator == address(0) || _denominator == address(0)) {
            revert AeraPeriphery__OracleIsZeroAddress();
        }
        // Effects: set immutables.
        numerator = IAeraV2Oracle(_numerator);
        denominator = IAeraV2Oracle(_denominator);
        decimals = _decimals;
        numeratorScalar = 10 ** (denominator.decimals() + decimals);
        denominatorScalar = 10 ** numerator.decimals();
    }

    /// @inheritdoc IAeraV2Oracle
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        (, int256 num,, uint256 numUpdatedAt,) = numerator.latestRoundData();
        (, int256 den,, uint256 denUpdatedAt,) = denominator.latestRoundData();
        if (den == 0) {
            revert AeraPeriphery__DenominatorOracleHasZeroValue();
        }
        answer = SafeCast.toInt256(
            (SafeCast.toUint256(num) * numeratorScalar) / SafeCast.toUint256(den) / denominatorScalar
        );
        roundId = 0;
        startedAt = 0;
        updatedAt = Math.min(numUpdatedAt, denUpdatedAt);
        answeredInRound = 0;
    }
}
