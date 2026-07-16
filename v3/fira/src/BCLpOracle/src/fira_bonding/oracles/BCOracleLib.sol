// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../interfaces/IPMarket.sol";
import "../libraries/math/PMath.sol";

/// @title BCOracleLib
/// @notice Library for computing TWAP rates for BT (Bond Token) and CT (Coupon Token) relative to assets
/// @dev This library can and should be integrated directly for optimal gas usage.
///      If direct integration is not preferred, use the BCLpOracle contract (pre-deployed version).
///      Handles edge cases where FW becomes insolvent with decreasing exchange rate.
library BCOracleLib {
    using PMath for uint256;
    using PMath for int256;

    /// @notice Returns the TWAP rate of BT per underlying asset, adjusted for FW solvency
    /// @dev Accounts for edge cases where underlying asset becomes insolvent with decreasing exchange rate.
    ///      If FW index < BC index (insolvency), scales down the rate proportionally.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/Asset rate scaled by 1e18
    function getBtToAssetRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = getFWandBCIndexCurrent(market);
        if (fwIndex >= bcIndex) {
            return getBtToAssetRateRaw(market, duration);
        } else {
            return (getBtToAssetRateRaw(market, duration) * fwIndex) / bcIndex;
        }
    }

    /// @notice Returns the TWAP rate of CT per underlying asset, adjusted for FW solvency
    /// @dev Accounts for edge cases where underlying asset becomes insolvent with decreasing exchange rate.
    ///      If FW index < BC index (insolvency), scales down the rate proportionally.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/Asset rate scaled by 1e18
    function getCtToAssetRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = getFWandBCIndexCurrent(market);
        if (fwIndex >= bcIndex) {
            return getCtToAssetRateRaw(market, duration);
        } else {
            return (getCtToAssetRateRaw(market, duration) * fwIndex) / bcIndex;
        }
    }

    /// @notice Returns the TWAP rate of BT per FW token, adjusted for FW solvency
    /// @dev Divides the asset rate by the appropriate index (FW or BC) based on solvency
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The BT/FW rate scaled by 1e18
    function getBtToFwRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = getFWandBCIndexCurrent(market);
        if (fwIndex >= bcIndex) {
            return getBtToAssetRateRaw(market, duration).divDown(fwIndex);
        } else {
            return getBtToAssetRateRaw(market, duration).divDown(bcIndex);
        }
    }

    /// @notice Returns the TWAP rate of CT per FW token, adjusted for FW solvency
    /// @dev Divides the asset rate by the appropriate index (FW or BC) based on solvency
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The CT/FW rate scaled by 1e18
    function getCtToFwRate(IPMarket market, uint32 duration) public view returns (uint256) {
        (uint256 fwIndex, uint256 bcIndex) = getFWandBCIndexCurrent(market);
        if (fwIndex >= bcIndex) {
            return getCtToAssetRateRaw(market, duration).divDown(fwIndex);
        } else {
            return getCtToAssetRateRaw(market, duration).divDown(bcIndex);
        }
    }

    /// @notice Returns the raw BT/Asset rate without FW solvency adjustment
    /// @dev Post-expiry, 1 BT = 1 Asset. Pre-expiry, uses TWAP implied rate to calculate discount.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The raw BT/Asset rate scaled by 1e18
    function getBtToAssetRateRaw(IPMarket market, uint32 duration) public view returns (uint256) {
        uint256 expiry = market.expiry();

        if (expiry <= block.timestamp) {
            return PMath.ONE;
        } else {
            uint256 lnImpliedRate = getMarketLnImpliedRate(market, duration);
            uint256 timeToExpiry = expiry - block.timestamp;
            uint256 assetToBtRate = MarketMathCore._getExchangeRateFromImpliedRate(lnImpliedRate, timeToExpiry).Uint();
            return PMath.ONE.divDown(assetToBtRate);
        }
    }

    /// @notice Returns the raw CT/Asset rate without FW solvency adjustment
    /// @dev CT value = 1 - BT value (since BT + CT = 1 asset)
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds
    /// @return The raw CT/Asset rate scaled by 1e18
    function getCtToAssetRateRaw(IPMarket market, uint32 duration) public view returns (uint256) {
        return PMath.ONE - getBtToAssetRateRaw(market, duration);
    }

    /// @notice Returns the current FW and BC indices for a market
    /// @dev BC index is max(fwIndex, bcIndexStored) unless caching is enabled and index was updated this block
    /// @param market The Fira market to query
    /// @return fwIndex The current FW exchange rate
    /// @return bcIndex The current BC index (used for BT+CT minting/redeeming)
    function getFWandBCIndexCurrent(IPMarket market) public view returns (uint256 fwIndex, uint256 bcIndex) {
        (IFiraWrappedStandardized FW,, IBCToken CT) = market.readTokens();

        fwIndex = FW.exchangeRate();
        uint256 bcIndexStored = CT.bcIndexStored();

        if (CT.doCacheIndexSameBlock() && CT.bcIndexLastUpdatedBlock() == block.number) {
            bcIndex = bcIndexStored;
        } else {
            bcIndex = PMath.max(fwIndex, bcIndexStored);
        }
    }

    /// @notice Returns the TWAP ln(impliedRate) for a market over a given duration
    /// @dev Queries the market's oracle for cumulative values and computes the average.
    ///      When duration is 0, returns the spot rate directly from market storage.
    /// @param market The Fira market to query
    /// @param duration The TWAP duration in seconds (0 for spot rate)
    /// @return The average ln(impliedRate) over the duration, or spot rate if duration is 0
    function getMarketLnImpliedRate(IPMarket market, uint32 duration) public view returns (uint256) {
        if (duration == 0) {
            (,, uint96 lastLnImpliedRate,,,) = market._storage();
            return uint256(lastLnImpliedRate);
        }

        uint32[] memory durations = new uint32[](2);
        durations[0] = duration;

        uint216[] memory lnImpliedRateCumulative = market.observe(durations);
        return (lnImpliedRateCumulative[1] - lnImpliedRateCumulative[0]) / duration;
    }
}
