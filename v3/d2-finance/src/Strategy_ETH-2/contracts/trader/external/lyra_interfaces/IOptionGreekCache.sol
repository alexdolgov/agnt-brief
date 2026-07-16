//SPDX-License-Identifier: ISC
pragma solidity ^0.8.13;

import "./IOptionMarket.sol";

// For full documentation refer to @lyrafinance/protocol/contracts/interfaces/IOptionGreekCache.sol";
interface IOptionGreekCache {
    struct GreekCacheParameters {
        // Cap the number of strikes per board to avoid hitting gasLimit constraints
        uint256 maxStrikesPerBoard;
        // How much spot price can move since last update before deposits/withdrawals are blocked
        uint256 acceptableSpotPricePercentMove;
        // How much time has passed since last update before deposits/withdrawals are blocked
        uint256 staleUpdateDuration;
        // Length of the GWAV for the baseline volatility used to fire the vol circuit breaker
        uint256 varianceIvGWAVPeriod;
        // Length of the GWAV for the skew ratios used to fire the vol circuit breaker
        uint256 varianceSkewGWAVPeriod;
        // Length of the GWAV for the baseline used to determine the NAV of the pool
        uint256 optionValueIvGWAVPeriod;
        // Length of the GWAV for the skews used to determine the NAV of the pool
        uint256 optionValueSkewGWAVPeriod;
        // Minimum skew that will be fed into the GWAV calculation
        // Prevents near 0 values being used to heavily manipulate the GWAV
        uint256 gwavSkewFloor;
        // Maximum skew that will be fed into the GWAV calculation
        uint256 gwavSkewCap;
    }

    struct ForceCloseParameters {
        // Length of the GWAV for the baseline vol used in ForceClose() and liquidations
        uint256 ivGWAVPeriod;
        // Length of the GWAV for the skew ratio used in ForceClose() and liquidations
        uint256 skewGWAVPeriod;
        // When a user buys back an option using ForceClose() we increase the GWAV vol to penalise the trader
        uint256 shortVolShock;
        // Increase the penalty when within the trading cutoff
        uint256 shortPostCutoffVolShock;
        // When a user sells back an option to the AMM using ForceClose(), we decrease the GWAV to penalise the seller
        uint256 longVolShock;
        // Increase the penalty when within the trading cutoff
        uint256 longPostCutoffVolShock;
        // Same justification as shortPostCutoffVolShock
        uint256 liquidateVolShock;
        // Increase the penalty when within the trading cutoff
        uint256 liquidatePostCutoffVolShock;
        // Minimum price the AMM will sell back an option at for force closes (as a % of current spot)
        uint256 shortSpotMin;
        // Minimum price the AMM will sell back an option at for liquidations (as a % of current spot)
        uint256 liquidateSpotMin;
    }

    struct MinCollateralParameters {
        // Minimum collateral that must be posted for a short to be opened (denominated in quote)
        uint256 minStaticQuoteCollateral;
        // Minimum collateral that must be posted for a short to be opened (denominated in base)
        uint256 minStaticBaseCollateral;
        /* Shock Vol:
         * Vol used to compute the minimum collateral requirements for short positions.
         * This value is derived from the following chart, created by using the 4 values listed below.
         *
         *     vol
         *      |
         * volA |____
         *      |    \
         * volB |     \___
         *      |___________ time to expiry
         *         A   B
         */
        uint256 shockVolA;
        uint256 shockVolPointA;
        uint256 shockVolB;
        uint256 shockVolPointB;
        // Static percentage shock to the current spot price for calls
        uint256 callSpotPriceShock;
        // Static percentage shock to the current spot price for puts
        uint256 putSpotPriceShock;
    }

    ///////////////////
    // Cache storage //
    ///////////////////
    struct GlobalCache {
        uint256 minUpdatedAt;
        uint256 minUpdatedAtPrice;
        uint256 maxUpdatedAtPrice;
        uint256 maxSkewVariance;
        uint256 maxIvVariance;
        NetGreeks netGreeks;
    }

    struct OptionBoardCache {
        uint256 id;
        uint256[] strikes;
        uint256 expiry;
        uint256 iv;
        NetGreeks netGreeks;
        uint256 updatedAt;
        uint256 updatedAtPrice;
        uint256 maxSkewVariance;
        uint256 ivVariance;
    }

    struct StrikeCache {
        uint256 id;
        uint256 boardId;
        uint256 strikePrice;
        uint256 skew;
        StrikeGreeks greeks;
        int256 callExposure; // long - short
        int256 putExposure; // long - short
        uint256 skewVariance; // (GWAVSkew - skew)
    }

    // These are based on GWAVed iv
    struct StrikeGreeks {
        int256 callDelta;
        int256 putDelta;
        uint256 stdVega;
        uint256 callPrice;
        uint256 putPrice;
    }

    // These are based on GWAVed iv
    struct NetGreeks {
        int256 netDelta;
        int256 netStdVega;
        int256 netOptionValue;
    }

    ///////////////
    // In-memory //
    ///////////////
    struct TradePricing {
        uint256 optionPrice;
        int256 preTradeAmmNetStdVega;
        int256 postTradeAmmNetStdVega;
        int256 callDelta;
        uint256 volTraded;
        uint256 ivVariance;
        uint256 vega;
    }

    struct BoardGreeksView {
        NetGreeks boardGreeks;
        uint256 ivGWAV;
        StrikeGreeks[] strikeGreeks;
        uint256[] skewGWAVs;
    }

    function getPriceForForceClose(
        IOptionMarket.TradeParameters memory trade,
        IOptionMarket.Strike memory strike,
        uint256 expiry,
        uint256 newVol,
        bool isPostCutoff
    ) external view returns (uint256 optionPrice, uint256 forceCloseVol);

    function getMinCollateral(
        IOptionMarket.OptionType optionType,
        uint256 strikePrice,
        uint256 expiry,
        uint256 spotPrice,
        uint256 amount
    ) external view returns (uint256 minCollateral);

    function getShockVol(uint256 timeToMaturity) external view returns (uint256);

    function updateBoardCachedGreeks(uint256 boardId) external;

    function isGlobalCacheStale(uint256 spotPrice) external view returns (bool);

    function isBoardCacheStale(uint256 boardId) external view returns (bool);

    /////////////////////////////
    // External View functions //
    /////////////////////////////

    /// @notice Get the current cached global netDelta exposure.
    function getGlobalNetDelta() external view returns (int256);

    /// @notice Get the current global net option value
    function getGlobalOptionValue() external view returns (int256);

    /// @notice Returns the BoardGreeksView struct given a specific boardId
    function getBoardGreeksView(uint256 boardId) external view returns (BoardGreeksView memory);

    /// @notice Get StrikeCache given a specific strikeId
    function getStrikeCache(uint256 strikeId) external view returns (StrikeCache memory);

    /// @notice Get OptionBoardCache given a specific boardId
    function getOptionBoardCache(uint256 boardId) external view returns (OptionBoardCache memory);

    /// @notice Get the global cache
    function getGlobalCache() external view returns (GlobalCache memory);

    /// @notice Returns ivGWAV for a given boardId and GWAV time interval
    function getIvGWAV(uint256 boardId, uint256 secondsAgo) external view returns (uint256 ivGWAV);

    /// @notice Returns skewGWAV for a given strikeId and GWAV time interval
    function getSkewGWAV(uint256 strikeId, uint256 secondsAgo) external view returns (uint256 skewGWAV);

    /// @notice Get the GreekCacheParameters
    function getGreekCacheParams() external view returns (GreekCacheParameters memory);

    /// @notice Get the ForceCloseParamters
    function getForceCloseParams() external view returns (ForceCloseParameters memory);

    /// @notice Get the MinCollateralParamters
    function getMinCollatParams() external view returns (MinCollateralParameters memory);

    ////////////
    // Events //
    ////////////

    event GreekCacheParametersSet(GreekCacheParameters params);
    event ForceCloseParametersSet(ForceCloseParameters params);
    event MinCollateralParametersSet(MinCollateralParameters params);

    event StrikeCacheUpdated(StrikeCache strikeCache);
    event BoardCacheUpdated(OptionBoardCache boardCache);
    event GlobalCacheUpdated(GlobalCache globalCache);

    event BoardCacheRemoved(uint256 boardId);
    event StrikeCacheRemoved(uint256 strikeId);
    event BoardIvUpdated(uint256 boardId, uint256 newIv, uint256 globalMaxIvVariance);
    event StrikeSkewUpdated(uint256 strikeId, uint256 newSkew, uint256 globalMaxSkewVariance);

    ////////////
    // Errors //
    ////////////
    // Admin
    error InvalidGreekCacheParameters(address thrower, GreekCacheParameters greekCacheParams);
    error InvalidForceCloseParameters(address thrower, ForceCloseParameters forceCloseParams);
    error InvalidMinCollatParams(address thrower, MinCollateralParameters minCollatParams);

    // Board related
    error BoardStrikeLimitExceeded(
        address thrower, uint256 boardId, uint256 newStrikesLength, uint256 maxStrikesPerBoard
    );
    error InvalidBoardId(address thrower, uint256 boardId);
    error CannotUpdateExpiredBoard(address thrower, uint256 boardId, uint256 expiry, uint256 currentTimestamp);

    // Access
    error OnlyIOptionMarket(address thrower, address caller, address optionMarket);
    error OnlyIOptionMarketPricer(address thrower, address caller, address optionMarketPricer);
}
