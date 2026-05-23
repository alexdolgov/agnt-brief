// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library YieldPositionLib {
    struct YieldPosition {
        int256 baseAssetAmount;
        int256 quoteAssetAmount;
        int256 lastRate;
    }

    /// @notice Rebase the yield position based on the current rate
    /// @param self The yield position to rebase
    /// @param currentRate The current rate used for rebasing
    /// @return cumulativeYield The calculated cumulative yield
    function rebaseYieldPosition(
        YieldPosition storage self,
        int256 currentRate
    ) internal returns (int256 cumulativeYield) {
        // If this is the first rebase, initialize lastRate
        YieldPosition memory position = self;
        if (position.lastRate == 0) {
            self.lastRate = currentRate;
            return 0;
        }

        if (currentRate == position.lastRate) {
            return 0;
        }

        // Calculate cumulative yield
        cumulativeYield = calculateCumulativeYield(
            position.quoteAssetAmount,
            position.baseAssetAmount,
            currentRate,
            position.lastRate
        );

        // Update position
        self.quoteAssetAmount += cumulativeYield;
        self.lastRate = currentRate;
    }

    /// @notice Calculate the cumulative yield based on the current and last rates
    /// @param quoteAmount The quote asset amount
    /// @param baseAmount The base asset amount
    /// @param currentRate The current rate
    /// @param lastRate The last rate
    /// @return The calculated cumulative yield
    function calculateCumulativeYield(
        int256 quoteAmount,
        int256 baseAmount,
        int256 currentRate,
        int256 lastRate
    ) internal pure returns (int256) {
        // Calculate quote asset yield
        int256 quoteYieldFromQuote = 0;
        if (quoteAmount != 0) {
            quoteYieldFromQuote = (quoteAmount * currentRate) / lastRate - quoteAmount;
        }

        // Calculate base asset yield
        int256 quoteYieldFromBase = 0;
        if (baseAmount != 0) {
            quoteYieldFromBase = (baseAmount * currentRate) / lastRate - baseAmount;
        }

        return quoteYieldFromQuote + quoteYieldFromBase;
    }


}