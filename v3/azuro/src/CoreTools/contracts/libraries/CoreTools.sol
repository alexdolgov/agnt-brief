// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

import "./FixedMath.sol";

/// @title Specific tools for Azuro Cores
library CoreTools {
    using FixedMath for uint256;

    /**
     * @notice Get commission adjusted betting odds.
     * @param  odds pure betting odds
     * @param  margin bookmaker commission
     * @return newOdds commission adjusted betting odds
     */
    function marginAdjustedOdds(uint256 odds, uint256 margin)
        external
        pure
        returns (uint256 newOdds)
    {
        uint256 oppositeOdds = FixedMath.ONE.div(
            FixedMath.ONE - FixedMath.ONE.div(odds)
        );
        uint256 a = (margin + FixedMath.ONE)
            .mul(oppositeOdds - FixedMath.ONE)
            .div(odds - FixedMath.ONE);
        uint256 b = margin +
            (oppositeOdds - FixedMath.ONE).mul(margin).div(
                odds - FixedMath.ONE
            );

        newOdds =
            (FixedMath.sqrt(b.sqr() + 4 * a.mul(FixedMath.ONE - margin)) - b)
                .div(2 * a) +
            FixedMath.ONE;
    }
}
