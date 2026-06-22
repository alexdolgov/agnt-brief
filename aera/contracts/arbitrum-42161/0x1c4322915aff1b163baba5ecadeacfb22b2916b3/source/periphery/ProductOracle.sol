// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.21;

import "@openzeppelin/Math.sol";

import "./dependencies/openzeppelin/SafeCast.sol";
import "./interfaces/IAeraV2Oracle.sol";

/// @title ProductOracle.
/// @notice Returns the product or quotient of two oracles. For example, if the p
/// oracle returns 1000 and the q oracle returns 10, the ProductOracle will return
/// 10000 (unless p or q are inverted).
contract ProductOracle is IAeraV2Oracle {
    using SafeCast for uint256;

    /// IMMUTABLES ///

    /// @notice The first oracle.
    /// @dev Oracle must return a positive value.
    IAeraV2Oracle public immutable pOracle;

    /// @notice The second oracle.
    /// @dev Oracle must return a positive value.
    IAeraV2Oracle public immutable qOracle;

    /// @notice Whether to invert first oracle price.
    bool public immutable invertP;

    /// @notice Whether to invert second oracle price.
    bool public immutable invertQ;

    /// @notice The scale factor to apply to the product.
    /// @dev The scale factor is used to adjust the number to 18 decimals in the product.
    int256 public immutable scaleFactor;

    /// @notice Whether to upscale the product to 18 decimals.
    /// @dev Used when the number of decimals in the result is less than 18.
    bool public immutable shouldUpscale;

    /// CONSTANTS ///

    /// @notice Decimals of price returned by this oracle.
    uint8 public constant decimals = 18;

    /// ERRORS ///

    /// @notice Thrown when the oracle price is invalid.
    error AeraPeriphery__InvalidPrice(address oracle, int256 price);
    /// @notice Thrown when either oracle address is zero.
    error AeraPeriphery__OracleIsZeroAddress();

    /// FUNCTIONS ///

    /// @param pOracle_ The first oracle.
    /// @param qOracle_ The second oracle.
    /// @param invertP_ Whether to invert the first oracle price.
    /// @param invertQ_ Whether to invert the second oracle price.
    constructor(
        address pOracle_,
        address qOracle_,
        bool invertP_,
        bool invertQ_
    ) {
        // Requirements: check that both oracles are present.
        if (pOracle_ == address(0) || qOracle_ == address(0)) {
            revert AeraPeriphery__OracleIsZeroAddress();
        }

        // Effects: set immutables.
        if (invertP_ && !invertQ_) {
            // Flip the oracles when only p is inverted.
            pOracle = IAeraV2Oracle(qOracle_);
            qOracle = IAeraV2Oracle(pOracle_);
            invertP = invertQ_;
            invertQ = invertP_;
        } else {
            pOracle = IAeraV2Oracle(pOracle_);
            qOracle = IAeraV2Oracle(qOracle_);
            invertP = invertP_;
            invertQ = invertQ_;
        }

        // Requirements: check that both oracles return positive prices.
        _getPrice(pOracle);
        _getPrice(qOracle);

        uint256 pDecimals = pOracle.decimals();
        uint256 qDecimals = qOracle.decimals();

        uint256 scaleDecimals;
        // Calculate the scale factor. First determine the number of decimals to scale by.
        if (invertP) {
            // We know both p and q are inverted
            // as inverting p and not inverting q is not allowed in the constructor.
            // Formula: 10 ^ (d + pd + qd) / (p * q)
            scaleDecimals = decimals + qDecimals + pDecimals;
        } else {
            if (invertQ) {
                // Formula: p * 10 ^ (d + qd - pd) / q
                scaleDecimals = decimals + qDecimals - pDecimals;
            } else {
                // When both p and q are not inverted,
                // we might need to upscale or downscale to 18 decimals
                // depending on the number of decimals in the p and q oracles.
                // Upscaling: p * q * 10 ^ (d - (pd + qd))
                // Downscaling: p * q / 10 ^ (pd + qd - d)
                uint256 pqDecimals = pDecimals + qDecimals;
                if (decimals > pqDecimals) {
                    shouldUpscale = true;
                    scaleDecimals = decimals - pqDecimals;
                } else {
                    scaleDecimals = pqDecimals - decimals;
                }
            }
        }
        // Effects: set the scale factor.
        scaleFactor = (10 ** scaleDecimals).toInt256();
    }

    /// @inheritdoc IAeraV2Oracle
    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        // Get the price from p oracle.
        (int256 pPrice, uint256 pUpdatedAt) = _getPrice(pOracle);
        // Get the price from q oracle.
        (int256 qPrice, uint256 qUpdatedAt) = _getPrice(qOracle);

        // Depending on invert flags, calculate the product.
        // Note: scaleFactor is calculated in the constructor
        // depending on the invert flags.
        if (invertP) {
            // We know both p and q are inverted
            // as inverting p and not inverting q is not allowed in the constructor.
            answer = scaleFactor / (pPrice * qPrice);
        } else {
            if (invertQ) {
                answer = pPrice * scaleFactor / qPrice;
            } else {
                answer = shouldUpscale
                    ? pPrice * qPrice * scaleFactor
                    : pPrice * qPrice / scaleFactor;
            }
        }
        roundId = 0;
        startedAt = 0;
        // Return oldest updatedAt.
        updatedAt = Math.min(pUpdatedAt, qUpdatedAt);
        answeredInRound = 0;
    }

    function _getPrice(IAeraV2Oracle oracle)
        internal
        view
        returns (int256 price, uint256 updatedAt)
    {
        (, price,, updatedAt,) = oracle.latestRoundData();

        if (price <= 0) {
            revert AeraPeriphery__InvalidPrice(address(oracle), price);
        }
    }
}
