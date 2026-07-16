// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./FixedMath.sol";
import "./SafeCast.sol";

/// @title Specific tools for Azuro Cores
library CoreTools {
    using FixedMath for uint256;
    using SafeCast for uint256;

    /**
     * @notice Get commission adjusted betting odds.
     * @param  odds pure betting odds
     * @param  margin bookmaker commission
     * @return newOdds commission adjusted betting odds
     */
    function marginAdjustedOdds(uint256 odds, uint256 margin)
        internal
        pure
        returns (uint64)
    {
        uint256 oppositeOdds = FixedMath.ONE.div(
            FixedMath.ONE - FixedMath.ONE.div(odds)
        );
        uint256 a = ((margin + FixedMath.ONE) *
            (oppositeOdds - FixedMath.ONE)) / (odds - FixedMath.ONE);
        uint256 b = margin +
            ((oppositeOdds - FixedMath.ONE) * margin) /
            (odds - FixedMath.ONE);

        return
            ((FixedMath.sqrt(b.sqr() + 4 * a.mul(FixedMath.ONE - margin)) - b)
                .div(2 * a) + FixedMath.ONE).toUint64();
    }
}
