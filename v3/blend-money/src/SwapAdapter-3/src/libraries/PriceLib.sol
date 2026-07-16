// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.28;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IOracle} from "morpho-blue/src/interfaces/IOracle.sol";

/**
 * @title PriceLib
 * @author Variable Logic Labs, Corp (hello@blend.money)
 * @notice Library for price conversion and slippage calculation
 * @dev This library provides functions for converting between different token amounts
 *      and applying slippage to amounts. It is designed to be used with an oracle
 *      contract to get the current price of a token.
 */
library PriceLib {
    using Math for uint256;

    /**
     * @notice Thrown when decimal scaling exceeds uint256-safe powers of ten.
     */
    error InvalidDecimalScale();

    /**
     * @notice Thrown when amount scaling overflows uint256.
     */
    error NormalizationOverflow();

    /**
     * @dev Maximum decimal delta for safe scaling. 10^77 fits in uint256; 10^78 overflows.
     */
    uint256 private constant MAX_DECIMAL_DELTA = 77;

    /// @notice Scale constant matching oracle price scale
    uint256 internal constant PRICE_SCALE = 10 ** 36;

    /// @notice Applies slippage to an amount
    /// @param amount The amount to apply slippage to
    /// @param slippageBps The slippage in basis points (e.g., 50 = 0.5%)
    /// @return amountWithSlippage The amount with slippage applied
    function applySlippage(uint256 amount, uint256 slippageBps) internal pure returns (uint256) {
        return (amount * (10_000 - slippageBps)) / 10_000;
    }

    /// @notice Scale a single amount between two decimal precisions.
    /// @param amount Amount in its source smallest units
    /// @param from Source token decimals
    /// @param to Target token decimals
    /// @return Scaled amount in target decimals
    /// @custom:reverts InvalidDecimalScale, NormalizationOverflow
    function scale(uint256 amount, uint8 from, uint8 to) internal pure returns (uint256) {
        if (to > from) {
            uint8 delta = to - from;
            require(delta <= MAX_DECIMAL_DELTA, InvalidDecimalScale());
            uint256 factor = 10 ** uint256(delta);
            require(amount <= type(uint256).max / factor, NormalizationOverflow());
            return amount * factor;
        }
        if (to < from) {
            uint8 delta = from - to;
            require(delta <= MAX_DECIMAL_DELTA, InvalidDecimalScale());
            return amount / (10 ** uint256(delta));
        }
        return amount;
    }

    /// @notice Normalize two amounts to a common decimal scale for comparison.
    /// @param amount1 First amount in its token smallest units
    /// @param decimals1 First token decimals
    /// @param amount2 Second amount in its token smallest units
    /// @param decimals2 Second token decimals
    /// @return norm1 First amount in target scale
    /// @return norm2 Second amount in target scale
    /// @custom:reverts InvalidDecimalScale, NormalizationOverflow
    function normalize(uint256 amount1, uint8 decimals1, uint256 amount2, uint8 decimals2)
        internal
        pure
        returns (uint256 norm1, uint256 norm2)
    {
        uint8 target = decimals1 >= decimals2 ? decimals1 : decimals2;
        norm1 = scale(amount1, decimals1, target);
        norm2 = scale(amount2, decimals2, target);
    }

    /// @notice Convert quote token amount into base token amount
    /// @dev quoteAmount is in smallest units for quote token (for USDC that is six decimals)
    /// @param quoteAmount Amount of quote token in its smallest units
    /// @param marketOracle The oracle to get the price from
    /// @return baseAmount Equivalent amount of base token in its smallest units (for wBTC that is eight decimals)
    function quoteToBase(uint256 quoteAmount, IOracle marketOracle) external view returns (uint256 baseAmount) {
        uint256 priceScaled = marketOracle.price();
        baseAmount = quoteAmount.mulDiv(PRICE_SCALE, priceScaled);
    }

    /// @notice Convert base token amount into quote token amount
    /// @dev baseAmount is in smallest units for base token (for wBTC that is eight decimals)
    /// @param baseAmount Amount of base token in its smallest units
    /// @param marketOracle The oracle to get the price from
    /// @return quoteAmount Equivalent amount of quote token in its smallest units (for USDC that is six decimals)
    function baseToQuote(uint256 baseAmount, IOracle marketOracle) external view returns (uint256 quoteAmount) {
        uint256 priceScaled = marketOracle.price();
        quoteAmount = baseAmount.mulDiv(priceScaled, PRICE_SCALE);
    }

    /// @notice Checks if a leverage is greater than 1x
    /// @param leverage The leverage to check
    /// @return true if the leverage is greater than 1x, false otherwise
    function isLevered(uint256 leverage) external pure returns (bool) {
        return leverage > 1e18;
    }
}
