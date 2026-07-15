// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.30;

import "../../libraries/math/LogExpMath.sol";
import "../../libraries/math/PMath.sol";

import "../../StandardizedYield/BCIndex.sol";

import "../../libraries/Errors.sol";
import "../../libraries/MiniHelpers.sol";

/**
 * @notice Complete state of a FiraMarket, loaded into memory for gas-efficient operations
 * @param totalBt Total Bond Token reserves
 * @param totalFw Total Fira Wrapped token reserves
 * @param totalLp Total LP token supply
 * @param treasury Address receiving fees
 * @param scalarRoot Scaling parameter for the pricing curve
 * @param expiry Unix timestamp when the market expires
 * @param lnFeeRateRoot Natural log of fee rate root
 * @param reserveFeePercent Percentage of fees sent to reserve (base 100)
 * @param lastLnImpliedRate Last recorded ln(impliedRate) after a trade
 */
struct MarketState {
    int256 totalBt;
    int256 totalFw;
    int256 totalLp;
    address treasury;
    /// immutable variables ///
    int256 scalarRoot;
    uint256 expiry;
    /// fee data ///
    uint256 lnFeeRateRoot;
    uint256 reserveFeePercent; // base 100
    uint256 lastLnImpliedRate;
}

/**
 * @notice Pre-computed parameters for trade calculations
 * @dev These values are expensive to compute, so we calculate them once per trade
 * @param rateScalar Time-adjusted scalar for the pricing curve
 * @param totalAsset Total FW reserves converted to underlying asset units
 * @param rateAnchor Current anchor point for the exchange rate calculation
 * @param feeRate Time-adjusted fee multiplier
 */
struct MarketPreCompute {
    int256 rateScalar;
    int256 totalAsset;
    int256 rateAnchor;
    int256 feeRate;
}

/**
 * @title MarketMathCore
 * @notice Core mathematical library for FiraMarket AMM operations
 * @dev Implements an AMM with time-decaying implied interest rates.
 *      The pricing model uses logit functions to maintain exchange rates above 1.0,
 *      ensuring BT always trades at a discount to FW (reflecting the time value of money).
 */
library MarketMathCore {
    using PMath for uint256;
    using PMath for int256;
    using LogExpMath for int256;
    using BCIndexLib for BCIndex;

    /// @dev Minimum LP tokens locked forever to prevent rounding exploits
    int256 internal constant MINIMUM_LIQUIDITY = 10 ** 3;

    /// @dev Base for percentage calculations (100 = 100%)
    int256 internal constant PERCENTAGE_DECIMALS = 100;

    /// @dev Seconds in a day
    uint256 internal constant DAY = 86400;

    /// @dev Annualized time period for implied rate calculations (365 days)
    uint256 internal constant IMPLIED_RATE_TIME = 365 * DAY;

    /// @dev Maximum proportion of BT in the pool (96%) to prevent extreme prices
    int256 internal constant MAX_MARKET_PROPORTION = (1e18 * 96) / 100;

    /* ///////////////////////////////////////////////////////////////
                UINT FUNCTIONS TO PROXY TO CORE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Adds liquidity to the market, receiving LP tokens in return
     * @dev Wrapper around addLiquidityCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param fwDesired Maximum FW tokens to deposit
     * @param btDesired Maximum BT tokens to deposit
     * @param blockTime Current block timestamp
     * @return lpToReserve LP tokens locked as minimum liquidity (only on first deposit)
     * @return lpToAccount LP tokens minted to the depositor
     * @return fwUsed Actual FW tokens used
     * @return btUsed Actual BT tokens used
     */
    function addLiquidity(MarketState memory market, uint256 fwDesired, uint256 btDesired, uint256 blockTime)
        internal
        pure
        returns (uint256 lpToReserve, uint256 lpToAccount, uint256 fwUsed, uint256 btUsed)
    {
        (int256 _lpToReserve, int256 _lpToAccount, int256 _fwUsed, int256 _btUsed) =
            addLiquidityCore(market, fwDesired.Int(), btDesired.Int(), blockTime);

        lpToReserve = _lpToReserve.Uint();
        lpToAccount = _lpToAccount.Uint();
        fwUsed = _fwUsed.Uint();
        btUsed = _btUsed.Uint();
    }

    /**
     * @notice Removes liquidity from the market by burning LP tokens
     * @dev Wrapper around removeLiquidityCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param lpToRemove Amount of LP tokens to burn
     * @return netFwToAccount FW tokens returned to the withdrawer
     * @return netBtToAccount BT tokens returned to the withdrawer
     */
    function removeLiquidity(MarketState memory market, uint256 lpToRemove)
        internal
        pure
        returns (uint256 netFwToAccount, uint256 netBtToAccount)
    {
        (int256 _fwToAccount, int256 _btToAccount) = removeLiquidityCore(market, lpToRemove.Int());

        netFwToAccount = _fwToAccount.Uint();
        netBtToAccount = _btToAccount.Uint();
    }

    /**
     * @notice Swaps an exact amount of BT for FW
     * @dev Wrapper around executeTradeCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param exactBtToMarket Exact amount of BT to sell
     * @param blockTime Current block timestamp
     * @return netFwToAccount FW tokens received by the swapper
     * @return netFwFee Total fee charged in FW
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function swapExactBtForFw(MarketState memory market, BCIndex index, uint256 exactBtToMarket, uint256 blockTime)
        internal
        pure
        returns (uint256 netFwToAccount, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwToAccount, int256 _netFwFee, int256 _netFwToReserve) =
            executeTradeCore(market, index, exactBtToMarket.neg(), blockTime);

        netFwToAccount = _netFwToAccount.Uint();
        netFwFee = _netFwFee.Uint();
        netFwToReserve = _netFwToReserve.Uint();
    }

    /**
     * @notice Swaps FW for an exact amount of BT
     * @dev Wrapper around executeTradeCore that handles uint256 conversions
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param exactbtToAccount Exact amount of BT to receive
     * @param blockTime Current block timestamp
     * @return netFwToMarket FW tokens paid by the swapper
     * @return netFwFee Total fee charged in FW
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function swapFwForExactBt(MarketState memory market, BCIndex index, uint256 exactbtToAccount, uint256 blockTime)
        internal
        pure
        returns (uint256 netFwToMarket, uint256 netFwFee, uint256 netFwToReserve)
    {
        (int256 _netFwToAccount, int256 _netFwFee, int256 _netFwToReserve) =
            executeTradeCore(market, index, exactbtToAccount.Int(), blockTime);

        netFwToMarket = _netFwToAccount.neg().Uint();
        netFwFee = _netFwFee.Uint();
        netFwToReserve = _netFwToReserve.Uint();
    }

    /* ///////////////////////////////////////////////////////////////
                    CORE FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /**
     * @notice Core logic for adding liquidity to the market
     * @dev On first deposit, mints sqrt(fw * bt) LP tokens and locks MINIMUM_LIQUIDITY.
     *      On subsequent deposits, mints LP proportional to the limiting token.
     * @param market The current market state (will be modified)
     * @param FwDesired Maximum FW tokens to deposit
     * @param btDesired Maximum BT tokens to deposit
     * @param blockTime Current block timestamp
     * @return lpToReserve LP tokens to lock as minimum liquidity
     * @return lpToAccount LP tokens to mint to depositor
     * @return FwUsed Actual FW tokens used
     * @return btUsed Actual BT tokens used
     */
    function addLiquidityCore(MarketState memory market, int256 FwDesired, int256 btDesired, uint256 blockTime)
        internal
        pure
        returns (int256 lpToReserve, int256 lpToAccount, int256 FwUsed, int256 btUsed)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (FwDesired == 0 || btDesired == 0) revert Errors.MarketZeroAmountsInput();
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        if (market.totalLp == 0) {
            lpToAccount = PMath.sqrt((FwDesired * btDesired).Uint()).Int() - MINIMUM_LIQUIDITY;
            lpToReserve = MINIMUM_LIQUIDITY;
            FwUsed = FwDesired;
            btUsed = btDesired;
        } else {
            int256 netLpBybt = (btDesired * market.totalLp) / market.totalBt;
            int256 netLpByFw = (FwDesired * market.totalLp) / market.totalFw;
            if (netLpBybt < netLpByFw) {
                lpToAccount = netLpBybt;
                btUsed = btDesired;
                FwUsed = (market.totalFw * lpToAccount).rawDivUp(market.totalLp);
            } else {
                lpToAccount = netLpByFw;
                FwUsed = FwDesired;
                btUsed = (market.totalBt * lpToAccount).rawDivUp(market.totalLp);
            }
        }

        if (lpToAccount <= 0 || FwUsed <= 0 || btUsed <= 0) revert Errors.MarketZeroAmountsOutput();

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.totalFw += FwUsed;
        market.totalBt += btUsed;
        market.totalLp += lpToAccount + lpToReserve;
    }

    /**
     * @notice Core logic for removing liquidity from the market
     * @dev Returns proportional share of both BT and FW reserves
     * @param market The current market state (will be modified)
     * @param lpToRemove Amount of LP tokens to burn
     * @return netFwToAccount FW tokens to return
     * @return netbtToAccount BT tokens to return
     */
    function removeLiquidityCore(MarketState memory market, int256 lpToRemove)
        internal
        pure
        returns (int256 netFwToAccount, int256 netbtToAccount)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (lpToRemove == 0) revert Errors.MarketZeroAmountsInput();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        netFwToAccount = (lpToRemove * market.totalFw) / market.totalLp;
        netbtToAccount = (lpToRemove * market.totalBt) / market.totalLp;

        if (netFwToAccount == 0 && netbtToAccount == 0) revert Errors.MarketZeroAmountsOutput();

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.totalLp = market.totalLp.subNoNeg(lpToRemove);
        market.totalBt = market.totalBt.subNoNeg(netbtToAccount);
        market.totalFw = market.totalFw.subNoNeg(netFwToAccount);
    }

    /**
     * @notice Core logic for executing a BT/FW swap
     * @dev Positive netbtToAccount = buying BT (selling FW), negative = selling BT (buying FW)
     * @param market The current market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param netbtToAccount Net BT flow to swapper (positive = receiving, negative = paying)
     * @param blockTime Current block timestamp
     * @return netFwToAccount Net FW flow to swapper (positive = receiving, negative = paying)
     * @return netFwFee Total fee in FW terms
     * @return netFwToReserve Portion of fee sent to reserve
     */
    function executeTradeCore(MarketState memory market, BCIndex index, int256 netbtToAccount, uint256 blockTime)
        internal
        pure
        returns (int256 netFwToAccount, int256 netFwFee, int256 netFwToReserve)
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();
        if (market.totalBt <= netbtToAccount) {
            revert Errors.MarketInsufficientBtForTrade(market.totalBt, netbtToAccount);
        }

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        MarketPreCompute memory comp = getMarketPreCompute(market, index, blockTime);

        (netFwToAccount, netFwFee, netFwToReserve) = calcTrade(market, comp, index, netbtToAccount);

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        _setNewMarketStateTrade(market, comp, index, netbtToAccount, netFwToAccount, netFwToReserve, blockTime);
    }

    /**
     * @notice Pre-computes expensive parameters needed for trade calculations
     * @dev Calculates rate scalar, total asset value, rate anchor, and fee rate
     * @param market The current market state
     * @param index Current BC index for FW/asset conversion
     * @param blockTime Current block timestamp
     * @return res Pre-computed values for trade math
     */
    function getMarketPreCompute(MarketState memory market, BCIndex index, uint256 blockTime)
        internal
        pure
        returns (MarketPreCompute memory res)
    {
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        uint256 timeToExpiry = market.expiry - blockTime;

        res.rateScalar = _getRateScalar(market, timeToExpiry);
        res.totalAsset = index.fwToAsset(market.totalFw);

        if (market.totalBt == 0 || res.totalAsset == 0) {
            revert Errors.MarketZeroTotalBtOrTotalAsset(market.totalBt, res.totalAsset);
        }

        res.rateAnchor =
            _getRateAnchor(market.totalBt, market.lastLnImpliedRate, res.totalAsset, res.rateScalar, timeToExpiry);
        res.feeRate = _getExchangeRateFromImpliedRate(market.lnFeeRateRoot, timeToExpiry);
    }

    /**
     * @notice Calculates the FW amounts for a given BT trade
     * @dev Applies the exchange rate formula and fee calculations
     * @param market The current market state
     * @param comp Pre-computed market parameters
     * @param index Current BC index for FW/asset conversion
     * @param netBtToAccount Net BT flow to swapper
     * @return netFwToAccount Net FW flow to swapper
     * @return netFwFee Total fee in FW
     * @return netFwToReserve Fee portion for reserve
     */
    function calcTrade(MarketState memory market, MarketPreCompute memory comp, BCIndex index, int256 netBtToAccount)
        internal
        pure
        returns (int256 netFwToAccount, int256 netFwFee, int256 netFwToReserve)
    {
        int256 preFeeExchangeRate =
            _getExchangeRate(market.totalBt, comp.totalAsset, comp.rateScalar, comp.rateAnchor, netBtToAccount);

        int256 preFeeAssetToAccount = netBtToAccount.divDown(preFeeExchangeRate).neg();
        int256 fee = comp.feeRate;

        if (netBtToAccount > 0) {
            int256 postFeeExchangeRate = preFeeExchangeRate.divDown(fee);
            if (postFeeExchangeRate < PMath.IONE) {
                revert Errors.MarketExchangeRateBelowOne(postFeeExchangeRate);
            }

            fee = preFeeAssetToAccount.mulDown(PMath.IONE - fee);
        } else {
            fee = ((preFeeAssetToAccount * (PMath.IONE - fee)) / fee).neg();
        }

        int256 netAssetToReserve = (fee * market.reserveFeePercent.Int()) / PERCENTAGE_DECIMALS;
        int256 netAssetToAccount = preFeeAssetToAccount - fee;

        netFwToAccount =
            netAssetToAccount < 0 ? index.assetToFwUp(netAssetToAccount) : index.assetToFw(netAssetToAccount);
        netFwFee = index.assetToFw(fee);
        netFwToReserve = index.assetToFw(netAssetToReserve);
    }

    /**
     * @notice Updates market state after a trade
     * @dev Adjusts reserves and recalculates the implied rate
     * @param market The current market state (will be modified)
     * @param comp Pre-computed market parameters
     * @param index Current BC index for FW/asset conversion
     * @param netbtToAccount Net BT flow to swapper
     * @param netFwToAccount Net FW flow to swapper
     * @param netFwToReserve FW fee portion sent to reserve
     * @param blockTime Current block timestamp
     */
    function _setNewMarketStateTrade(
        MarketState memory market,
        MarketPreCompute memory comp,
        BCIndex index,
        int256 netbtToAccount,
        int256 netFwToAccount,
        int256 netFwToReserve,
        uint256 blockTime
    ) internal pure {
        uint256 timeToExpiry = market.expiry - blockTime;

        market.totalBt = market.totalBt.subNoNeg(netbtToAccount);
        market.totalFw = market.totalFw.subNoNeg(netFwToAccount + netFwToReserve);

        market.lastLnImpliedRate = _getLnImpliedRate(
            market.totalBt, index.fwToAsset(market.totalFw), comp.rateScalar, comp.rateAnchor, timeToExpiry
        );

        if (market.lastLnImpliedRate == 0) revert Errors.MarketZeroLnImpliedRate();
    }

    /**
     * @notice Calculates the rate anchor from the last implied rate
     * @dev The anchor is adjusted so that the current proportion yields the last implied rate
     * @param totalbt Total BT reserves
     * @param lastLnImpliedRate Last recorded natural log of the implied rate
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param timeToExpiry Seconds until expiry
     * @return rateAnchor The calculated rate anchor
     */
    function _getRateAnchor(
        int256 totalbt,
        uint256 lastLnImpliedRate,
        int256 totalAsset,
        int256 rateScalar,
        uint256 timeToExpiry
    ) internal pure returns (int256 rateAnchor) {
        int256 newExchangeRate = _getExchangeRateFromImpliedRate(lastLnImpliedRate, timeToExpiry);

        if (newExchangeRate < PMath.IONE) revert Errors.MarketExchangeRateBelowOne(newExchangeRate);

        {
            int256 proportion = totalbt.divDown(totalbt + totalAsset);

            int256 lnProportion = _logProportion(proportion);

            rateAnchor = newExchangeRate - lnProportion.divDown(rateScalar);
        }
    }

    /**
     * @notice Calculates the natural log of the implied interest rate
     * @dev Derived from the current exchange rate and time to expiry
     * @param totalbt Total BT reserves
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param rateAnchor Current rate anchor
     * @param timeToExpiry Seconds until expiry
     * @return lnImpliedRate The natural log of the annualized implied rate
     */
    function _getLnImpliedRate(
        int256 totalbt,
        int256 totalAsset,
        int256 rateScalar,
        int256 rateAnchor,
        uint256 timeToExpiry
    ) internal pure returns (uint256 lnImpliedRate) {
        // This will check for exchange rates < PMath.IONE
        int256 exchangeRate = _getExchangeRate(totalbt, totalAsset, rateScalar, rateAnchor, 0);

        // exchangeRate >= 1 so its ln >= 0
        uint256 lnRate = exchangeRate.ln().Uint();

        lnImpliedRate = (lnRate * IMPLIED_RATE_TIME) / timeToExpiry;
    }

    /**
     * @notice Converts an implied rate to an exchange rate given time to expiry
     * @dev Uses the formula E = e^(rt) where r is the implied rate and t is time
     * @param lnImpliedRate Natural log of the annualized implied rate
     * @param timeToExpiry Seconds until expiry
     * @return exchangeRate The exchange rate (BT per FW, scaled by 1e18)
     */
    function _getExchangeRateFromImpliedRate(uint256 lnImpliedRate, uint256 timeToExpiry)
        internal
        pure
        returns (int256 exchangeRate)
    {
        uint256 rt = (lnImpliedRate * timeToExpiry) / IMPLIED_RATE_TIME;

        exchangeRate = LogExpMath.exp(rt.Int());
    }

    /**
     * @notice Calculates the exchange rate for a given trade
     * @dev Uses logit function: exchangeRate = ln(proportion / (1 - proportion)) / rateScalar + rateAnchor
     * @param totalbt Total BT reserves
     * @param totalAsset Total FW reserves in asset terms
     * @param rateScalar Time-adjusted scaling parameter
     * @param rateAnchor Current rate anchor
     * @param netbtToAccount Net BT being traded (for post-trade rate calculation)
     * @return exchangeRate The exchange rate (always >= 1e18)
     */
    function _getExchangeRate(
        int256 totalbt,
        int256 totalAsset,
        int256 rateScalar,
        int256 rateAnchor,
        int256 netbtToAccount
    ) internal pure returns (int256 exchangeRate) {
        int256 numerator = totalbt.subNoNeg(netbtToAccount);

        int256 proportion = (numerator.divDown(totalbt + totalAsset));

        if (proportion > MAX_MARKET_PROPORTION) {
            revert Errors.MarketProportionTooHigh(proportion, MAX_MARKET_PROPORTION);
        }

        int256 lnProportion = _logProportion(proportion);

        exchangeRate = lnProportion.divDown(rateScalar) + rateAnchor;

        if (exchangeRate < PMath.IONE) revert Errors.MarketExchangeRateBelowOne(exchangeRate);
    }

    /**
     * @notice Calculates the logit of a proportion: ln(p / (1-p))
     * @dev Used in the pricing curve formula
     * @param proportion The proportion value (must be < 1e18)
     * @return res The logit value
     */
    function _logProportion(int256 proportion) internal pure returns (int256 res) {
        if (proportion == PMath.IONE) revert Errors.MarketProportionMustNotEqualOne();

        int256 logitP = proportion.divDown(PMath.IONE - proportion);

        res = logitP.ln();
    }

    /**
     * @notice Calculates the time-adjusted rate scalar
     * @dev Scales inversely with time to expiry, making prices more sensitive near expiry
     * @param market The market state containing scalarRoot
     * @param timeToExpiry Seconds until expiry
     * @return rateScalar The adjusted rate scalar
     */
    function _getRateScalar(MarketState memory market, uint256 timeToExpiry) internal pure returns (int256 rateScalar) {
        rateScalar = (market.scalarRoot * IMPLIED_RATE_TIME.Int()) / timeToExpiry.Int();
        if (rateScalar <= 0) revert Errors.MarketRateScalarBelowZero(rateScalar);
    }

    /**
     * @notice Sets the initial implied rate when the market is first initialized
     * @dev Called only once when the first LP deposits liquidity
     * @param market The market state (will be modified)
     * @param index Current BC index for FW/asset conversion
     * @param initialAnchor The configured initial anchor value
     * @param blockTime Current block timestamp
     */
    function setInitialLnImpliedRate(MarketState memory market, BCIndex index, int256 initialAnchor, uint256 blockTime)
        internal
        pure
    {
        /// ------------------------------------------------------------
        /// CHECKS
        /// ------------------------------------------------------------
        if (MiniHelpers.isExpired(market.expiry, blockTime)) revert Errors.MarketExpired();

        /// ------------------------------------------------------------
        /// MATH
        /// ------------------------------------------------------------
        int256 totalAsset = index.fwToAsset(market.totalFw);
        uint256 timeToExpiry = market.expiry - blockTime;
        int256 rateScalar = _getRateScalar(market, timeToExpiry);

        /// ------------------------------------------------------------
        /// WRITE
        /// ------------------------------------------------------------
        market.lastLnImpliedRate =
            _getLnImpliedRate(market.totalBt, totalAsset, rateScalar, initialAnchor, timeToExpiry);
    }
}
