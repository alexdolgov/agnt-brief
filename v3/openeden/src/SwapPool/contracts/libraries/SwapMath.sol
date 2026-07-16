// SPDX-License-Identifier: Business Source License 1.1
pragma solidity ^0.8.22;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

library SwapMath {
    uint256 internal constant SCALE = 1e70;

    /**
     * @dev Calculates and returns the ratio between two balances,
     * after normalizing them to the same decimal precision.
     */
    function computeImbalanceRatio(
        uint256 balanceA,
        uint256 balanceB,
        uint8 decimalsA,
        uint8 decimalsB
    ) internal pure returns (uint256) {
        // Normalize both balances to 18 decimals for ratio calculation
        uint256 normA = convertDecimals(balanceA, decimalsA, 18, false);
        uint256 normB = convertDecimals(balanceB, decimalsB, 18, false);

        if (normA == 0 && normB == 0) return SCALE;
        if (normA == 0 || normB == 0) return 0;

        uint256 small = normA < normB ? normA : normB;
        uint256 large = normA > normB ? normA : normB;

        return Math.mulDiv(small, SCALE, large);
    }

    /**
     * @dev Returns the ratio of SCALE divided by the given factor.
     */
    function computeScaledRatio(uint256 factor) internal pure returns (uint256) {
        if (factor == 0) return 0;
        return SCALE / factor;
    }

    /**
     * @dev Core decimal conversion logic with configurable error handling
     */
    function convertDecimals(
        uint256 amount,
        uint8 fromDecimals,
        uint8 toDecimals,
        bool strictMode
    ) internal pure returns (uint256) {
        if (amount == 0) return 0;
        if (fromDecimals == toDecimals) return amount;

        if (fromDecimals > toDecimals) {
            uint256 divisor = 10 ** (fromDecimals - toDecimals);
            uint256 remainder = amount % divisor;

            if (strictMode && remainder != 0) {
                revert("AMOUNT_NOT_CONVERTIBLE");
            }

            return amount / divisor;
        } else {
            uint256 multiplier = 10 ** (toDecimals - fromDecimals);

            if (amount > type(uint256).max / multiplier) {
                if (strictMode) revert("MATH_OVERFLOW");
                return 0; // Graceful failure for non-strict mode
            }

            return amount * multiplier;
        }
    }
}
