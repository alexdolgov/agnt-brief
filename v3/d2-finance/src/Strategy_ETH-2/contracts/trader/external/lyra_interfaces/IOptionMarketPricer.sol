//SPDX-License-Identifier: ISC
pragma solidity ^0.8.13;

import "./IOptionMarket.sol";
import "./IOptionGreekCache.sol";

// For full documentation refer to @lyrafinance/protocol/contracts/OptionMarketPricer.sol";
interface IOptionMarketPricer {
    struct PricingParameters {
        // Percentage of option price that is charged as a fee
        uint256 optionPriceFeeCoefficient;
        // Refer to: getTimeWeightedFee()
        uint256 optionPriceFee1xPoint;
        uint256 optionPriceFee2xPoint;
        // Percentage of spot price that is charged as a fee per option
        uint256 spotPriceFeeCoefficient;
        // Refer to: getTimeWeightedFee()
        uint256 spotPriceFee1xPoint;
        uint256 spotPriceFee2xPoint;
        // Refer to: getVegaUtilFee()
        uint256 vegaFeeCoefficient;
        // The amount of options traded to move baseIv for the board up or down 1 point (depending on trade direction)
        uint256 standardSize;
        // The relative move of skew for a given strike based on standard sizes traded
        uint256 skewAdjustmentFactor;
    }

    struct TradeLimitParameters {
        // Delta cutoff past which no options can be traded (optionD > minD && optionD < 1 - minD) - using call delta
        int256 minDelta;
        // Delta cutoff at which ForceClose can be called (optionD < minD || optionD > 1 - minD) - using call delta
        int256 minForceCloseDelta;
        // Time when trading closes. Only ForceClose can be called after this
        uint256 tradingCutoff;
        // Lowest baseIv for a board that can be traded for regular option opens/closes
        uint256 minBaseIV;
        // Maximal baseIv for a board that can be traded for regular option opens/closes
        uint256 maxBaseIV;
        // Lowest skew for a strike that can be traded for regular option opens/closes
        uint256 minSkew;
        // Maximal skew for a strike that can be traded for regular option opens/closes
        uint256 maxSkew;
        // Minimal vol traded for regular option opens/closes (baseIv * skew)
        uint256 minVol;
        // Maximal vol traded for regular option opens/closes (baseIv * skew)
        uint256 maxVol;
        // Absolute lowest skew that ForceClose can go to
        uint256 absMinSkew;
        // Absolute highest skew that ForceClose can go to
        uint256 absMaxSkew;
        // Cap the skew the abs max/min skews - only relevant to liquidations
        bool capSkewsToAbs;
    }

    struct VarianceFeeParameters {
        uint256 defaultVarianceFeeCoefficient;
        uint256 forceCloseVarianceFeeCoefficient;
        // coefficient that allows the skew component of the fee to be scaled up
        uint256 skewAdjustmentCoefficient;
        // measures the difference of the skew to a reference skew
        uint256 referenceSkew;
        // constant to ensure small vega terms have a fee
        uint256 minimumStaticSkewAdjustment;
        // coefficient that allows the vega component of the fee to be scaled up
        uint256 vegaCoefficient;
        // constant to ensure small vega terms have a fee
        uint256 minimumStaticVega;
        // coefficient that allows the ivVariance component of the fee to be scaled up
        uint256 ivVarianceCoefficient;
        // constant to ensure small variance terms have a fee
        uint256 minimumStaticIvVariance;
    }

    ///////////////
    // In-memory //
    ///////////////
    struct TradeResult {
        uint256 amount;
        uint256 premium;
        uint256 optionPriceFee;
        uint256 spotPriceFee;
        VegaUtilFeeComponents vegaUtilFee;
        VarianceFeeComponents varianceFee;
        uint256 totalFee;
        uint256 totalCost;
        uint256 volTraded;
        uint256 newBaseIv;
        uint256 newSkew;
    }

    struct VegaUtilFeeComponents {
        int256 preTradeAmmNetStdVega;
        int256 postTradeAmmNetStdVega;
        uint256 vegaUtil;
        uint256 volTraded;
        uint256 NAV;
        uint256 vegaUtilFee;
    }

    struct VarianceFeeComponents {
        uint256 varianceFeeCoefficient;
        uint256 vega;
        uint256 vegaCoefficient;
        uint256 skew;
        uint256 skewCoefficient;
        uint256 ivVariance;
        uint256 ivVarianceCoefficient;
        uint256 varianceFee;
    }

    struct VolComponents {
        uint256 vol;
        uint256 baseIv;
        uint256 skew;
    }

    ///////////////
    // Variables //
    ///////////////

    function pricingParams() external view returns (PricingParameters memory);

    function tradeLimitParams() external view returns (TradeLimitParameters memory);

    function varianceFeeParams() external view returns (VarianceFeeParameters memory);

    function ivImpactForTrade(IOptionMarket.TradeParameters memory trade, uint256 boardBaseIv, uint256 strikeSkew)
        external
        view
        returns (uint256 newBaseIv, uint256 newSkew);

    function getTradeResult(
        IOptionMarket.TradeParameters memory trade,
        IOptionGreekCache.TradePricing memory pricing,
        uint256 newBaseIv,
        uint256 newSkew
    ) external view returns (TradeResult memory tradeResult);

    function getTimeWeightedFee(uint256 expiry, uint256 pointA, uint256 pointB, uint256 coefficient)
        external
        view
        returns (uint256 timeWeightedFee);

    function getVegaUtilFee(IOptionMarket.TradeParameters memory trade, IOptionGreekCache.TradePricing memory pricing)
        external
        view
        returns (VegaUtilFeeComponents memory vegaUtilFeeComponents);

    function getVarianceFee(
        IOptionMarket.TradeParameters memory trade,
        IOptionGreekCache.TradePricing memory pricing,
        uint256 skew
    ) external view returns (VarianceFeeComponents memory varianceFeeComponents);

    /////////////////////////////
    // External View functions //
    /////////////////////////////

    function getPricingParams() external view returns (PricingParameters memory pricingParameters);

    function getTradeLimitParams() external view returns (TradeLimitParameters memory tradeLimitParameters);

    function getVarianceFeeParams() external view returns (VarianceFeeParameters memory varianceFeeParameters);

    ////////////
    // Events //
    ////////////

    event PricingParametersSet(PricingParameters pricingParams);
    event TradeLimitParametersSet(TradeLimitParameters tradeLimitParams);
    event VarianceFeeParametersSet(VarianceFeeParameters varianceFeeParams);

    ////////////
    // Errors //
    ////////////
    // Admin
    error InvalidTradeLimitParameters(address thrower, TradeLimitParameters tradeLimitParams);
    error InvalidPricingParameters(address thrower, PricingParameters pricingParams);

    // Trade limitations
    error TradingCutoffReached(address thrower, uint256 tradingCutoff, uint256 boardExpiry, uint256 currentTime);
    error ForceCloseSkewOutOfRange(address thrower, bool isBuy, uint256 newSkew, uint256 minSkew, uint256 maxSkew);
    error VolSkewOrBaseIvOutsideOfTradingBounds(
        address thrower, bool isBuy, VolComponents currentVol, VolComponents newVol, VolComponents tradeBounds
    );
    error TradeDeltaOutOfRange(address thrower, int256 strikeCallDelta, int256 minDelta, int256 maxDelta);
    error ForceCloseDeltaOutOfRange(address thrower, int256 strikeCallDelta, int256 minDelta, int256 maxDelta);

    // Access
    error OnlyOptionMarket(address thrower, address caller, address optionMarket);
}
