// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import './FixedPointMathLib.sol';

/**
 * @title TimeValue library
 * @author Atlendis Labs
 * @dev Contains the utilitaries methods associated to time computation in the Atlendis Protocol
 */
library TimeValue {
    using FixedPointMathLib for uint256;
    uint256 internal constant SECONDS_PER_YEAR = 365 days;

    /**
     * @dev Compute the discount factor given a rate and a time delta with respect to the time at which the bonds have been emitted
     *      Exact computation is defined as 1 / (1 + rate)^deltaTime
     *      The approximation uses up to the first order of the Taylor series, i.e. 1 / (1 + deltaTime * rate)
     * @param rate Rate
     * @param timeDelta Time difference since the the time at which the bonds have been emitted
     * @param denominator The denominator value
     * @return discountFactor The discount factor
     */
    function getDiscountFactor(
        uint256 rate,
        uint256 timeDelta,
        uint256 denominator
    ) internal pure returns (uint256 discountFactor) {
        uint256 timeInYears = (timeDelta * denominator).div(SECONDS_PER_YEAR * denominator, denominator);
        /// TODO: #92 Higher order Taylor series
        return
            denominator.div(
                denominator + rate.mul(timeInYears, denominator), //+
                // (rate.mul(rate, denominator).mul(timeInYears.mul(timeInYears - 1, denominator), denominator)) /
                // 2 +
                // (rate.mul(rate, denominator).mul(rate, denominator)).mul(
                //     timeInYears.mul(timeInYears - 1, denominator).mul(timeInYears - 2, denominator),
                //     denominator
                // ) /
                // 6,
                denominator
            );
    }
}
