// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "./BCOracleLib.sol";

/// @title LpOracleLib
/// @notice Library for computing TWAP rates for LP tokens relative to assets and FW
/// @dev Calculates LP token value by simulating a hypothetical trade to rebalance the pool,
///      then computing the total asset value. Accounts for FW insolvency edge cases.
library LpOracleLib {
    using BCOracleLib for IPMarket;
    using PMath for uint256;
    using PMath for int256;
    using MarketMathCore for MarketState;

    /// @notice Returns the approximated TWAP rate of LP per underlying asset, adjusted for FW solvency
    /// @dev Calculates LP value by simulating a hypothetical rebalancing trade at the oracle rate.
    ///      If FW index < BC index (insolvency), scales down the rate proportionally.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/Asset rate scaled by 1e18
    function getLpToAssetRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = market.getFWandBCIndexCurrent();
        uint256 lpToAssetRateRaw = _getLpToAssetRateRaw(market, duration, bcIndex);
        if (fwIndex >= bcIndex) {
            return lpToAssetRateRaw;
        } else {
            return (lpToAssetRateRaw * fwIndex) / bcIndex;
        }
    }

    /// @notice Returns the approximated TWAP rate of LP per FW token, adjusted for FW solvency
    /// @dev Calculates LP value and divides by the appropriate index (FW or BC) based on solvency
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The LP/FW rate scaled by 1e18
    function getLpToFwRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = market.getFWandBCIndexCurrent();
        uint256 lpToAssetRateRaw = _getLpToAssetRateRaw(market, duration, bcIndex);
        if (fwIndex >= bcIndex) {
            return lpToAssetRateRaw.divDown(fwIndex);
        } else {
            return lpToAssetRateRaw.divDown(bcIndex);
        }
    }

    /// @notice Calculates the raw LP/Asset rate without FW solvency adjustment
    /// @dev Post-expiry: LP value = totalBt + fwToAsset(totalFw) / totalLp
    ///      Pre-expiry: Simulates a hypothetical trade to calculate total asset value at oracle rate
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @param bcIndex The current BC index for asset conversion
    /// @return lpToAssetRateRaw The raw LP/Asset rate scaled by 1e18
    function _getLpToAssetRateRaw(IPMarket market, uint32 duration, uint256 bcIndex)
        public
        view
        returns (uint256 lpToAssetRateRaw)
    {
        MarketState memory state = market.readState(address(0));

        int256 totalHypotheticalAsset;
        if (state.expiry <= block.timestamp) {
            // 1 BT = 1 Asset post-expiry
            totalHypotheticalAsset = state.totalBt + BCIndexLib.fwToAsset(BCIndex.wrap(bcIndex), state.totalFw);
        } else {
            MarketPreCompute memory comp = state.getMarketPreCompute(BCIndex.wrap(bcIndex), block.timestamp);

            (int256 rateOracle, int256 rateHypTrade) = _getBtRatesRaw(market, state, duration);
            int256 cParam = LogExpMath.exp(comp.rateScalar.mulDown((rateOracle - comp.rateAnchor)));

            int256 tradeSize =
                (cParam.mulDown(comp.totalAsset) - state.totalBt).divDown(PMath.IONE + cParam.divDown(rateHypTrade));

            totalHypotheticalAsset =
                comp.totalAsset - tradeSize.divDown(rateHypTrade) + (state.totalBt + tradeSize).divDown(rateOracle);
        }

        lpToAssetRateRaw = totalHypotheticalAsset.divDown(state.totalLp).Uint();
    }

    /// @notice Calculates the oracle and hypothetical trade BT rates
    /// @dev The hypothetical trade rate is the average of the oracle rate and the last trade rate,
    ///      used for simulating the rebalancing trade impact.
    /// @param market The Fira market to query
    /// @param state The current market state
    /// @param duration The TWAP duration in seconds
    /// @return rateOracle The BT exchange rate from the oracle TWAP
    /// @return rateHypTrade The hypothetical trade rate (average of oracle and last trade)
    function _getBtRatesRaw(IPMarket market, MarketState memory state, uint32 duration)
        public
        view
        returns (int256 rateOracle, int256 rateHypTrade)
    {
        uint256 lnImpliedRate = market.getMarketLnImpliedRate(duration);
        uint256 timeToExpiry = state.expiry - block.timestamp;
        rateOracle = MarketMathCore._getExchangeRateFromImpliedRate(lnImpliedRate, timeToExpiry);

        int256 rateLastTrade = MarketMathCore._getExchangeRateFromImpliedRate(state.lastLnImpliedRate, timeToExpiry);
        rateHypTrade = (rateLastTrade + rateOracle) / 2;
    }
}
