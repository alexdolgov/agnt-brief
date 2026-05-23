// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

import { YieldPositionLib } from "../libraries/YieldPositionLib.sol";
interface IMarketStorage {
    enum MarketType {
        Perp,
        Spot
    }

    enum MarketStatus {
        Active,
        Paused,
        Expired,
        Updating
    }

    enum EpochUpdateStatus {
        Begin,
        Remove,
        ChangePrice,
        Expiry,
        ExpiryApply,
        Add,
        End
    }

    enum LpStatus {
        Active,
        Inactive,
        Updating
    }
    // Structs
    struct YieldPosition {
        int256 baseAssetAmount;
        int256 quoteAssetAmount;
        int256 lastRate;
    }

    struct LiquidityPosition {
        int24 lowerTick;
        int24 upperTick;
        uint256 lowerRate;
        uint256 upperRate;
        int256 reserveQuoteAmount;
        int256 reserveBaseAmount;
        LpStatus state;
        uint128 pendingLiquidity;
        uint128 pendingFeesOwed;
    }


    struct MarketStats {
        uint256 numberOfActiveUsers;
        uint256 numberOfActiveLps;
        MarketStatus status;
        YieldPositionLib.YieldPosition netPosition;
        int256 netQuoteAmountRealized;
        int256 totalMarginAmount;
        int256 totalQuoteAssetAmount;
        int256 totalReserveBaseAmount;
        int256 totalReserveQuoteAmount;
        int256 totalLiquidationFee;
        int256 totalKeeperFee;
    }

    struct EarnPosition {
        int256 marginBalance;
        YieldPositionLib.YieldPosition yieldPosition;
        uint256 protocolFee;
        int256 netQuoteAmountRealized;
    }

    struct EpochUpdate {
        uint256 lpAccountsProcessed;
        uint256 userAccountsProcessed;
        uint256 impliedRate;
        EpochUpdateStatus status;
        uint256 epochUpdateEndTs;   
        int256 lpBaseAmount;
        int256 lpQuoteAmount;
        int256 totalSlossQuoteQuota;
        int256 slossBaseAmountFilled;
        int256 slossQuoteAmountFilled;
        uint160 epochPriceGapX64;
    }

    struct ExpireUpdate {
        int256 expireTotalDebt;
        int256 expireTotalMargin;
        int256 expireTotalPosQuoteAmount;
        int256 expireTotalDebtCovered;
    }

    struct LpFullPosition {
        bytes32 subAccountId;
        int24 lowerTick;
        int24 upperTick;
        int256 reserveQuoteAmount;
        int256 reserveBaseAmount;
        LpStatus state;
        uint128 liquidity;
        uint256 feeGrowthInside0LastX128;
        uint256 feeGrowthInside1LastX128;
        uint128 tokensOwed0;
        uint128 tokensOwed1;
    }


    // // Added function declarations
    // /**
    //  * @notice Get basic market information
    //  * @return _factory Factory contract address
    //  * @return _market Market contract address
    //  * @return _pool Pool contract address
    //  * @return _tickSpacing Tick spacing
    //  * @return _activeRatioCoef Active ratio coefficient
    //  * @return _marketName Market name
    //  * @return _marketType Market type
    //  */
    // function getBasicInfo() external view returns (
    //     address _factory,
    //     address _market,
    //     address _pool,
    //     int24 _tickSpacing,
    //     uint256 _activeRatioCoef,
    //     bytes32 _marketName,
    //     MarketType _marketType
    // );

    

    // /**
    //  * @notice Get trading parameters
    //  * @return _minOrderSize Minimum order size
    //  * @return _orderStepSize Order step size
    //  * @return _minLpAmount Minimum liquidity provider amount
    //  * @return _oracle Oracle address
    //  * @return _expireTs Expiration timestamp
    //  * @return _pToken P token address
    //  * @return _baseToken Base token address
    //  * @return _quoteToken Quote token address
    //  * @return _keeperFee Keeper fee
    //  */
    // function getTradeParams() external view returns (
    //     uint256 _minOrderSize,
    //     uint256 _orderStepSize,
    //     uint256 _minLpAmount,
    //     address _oracle,
    //     uint256 _expireTs,
    //     address _pToken,
    //     address _baseToken,
    //     address _quoteToken,
    //     int256 _keeperFee
    // );

    

    // /**
    //  * @notice Get price configuration
    //  * @return _maxAllowedRate Maximum allowed rate
    //  * @return _minAllowedRate Minimum allowed rate
    //  * @return _maxAllowedSqrtPriceX96 Maximum allowed sqrt price X96
    //  * @return _minAllowedSqrtPriceX96 Minimum allowed sqrt price X96
    //  */
    // function getPriceConfig() external view returns (
    //     uint256 _maxAllowedRate,
    //     uint256 _minAllowedRate,
    //     uint160 _maxAllowedSqrtPriceX96,
    //     uint160 _minAllowedSqrtPriceX96,
    //     uint256 _boundPercentage,
    //     uint32 _boundTwapDuration
    // );

    function epochUpdate() external view returns (
        uint256 lpAccountsProcessed,
        uint256 userAccountsProcessed,
        uint256 impliedRate,
        EpochUpdateStatus status,
        uint256 epochUpdateEndTs,
        int256 lpBaseAmount,
        int256 lpQuoteAmount,
        int256 totalSlossQuoteQuota,
        int256 slossBaseAmountFilled,
        int256 slossQuoteAmountFilled,
        uint160 epochPriceGapX64
    );

    function expireUpdate() external view returns (
        int256 expireTotalDebt,
        int256 expireTotalMargin,
        int256 expireTotalPosQuoteAmount,
        int256 expireTotalDebtCovered
    );

    function earnPosition() external view returns (
        int256 marginBalance,
        YieldPositionLib.YieldPosition memory yieldPosition,
        uint256 protocolFee,
        int256 netQuoteAmountRealized
    );

    function stats() external view returns (
        uint256 numberOfActiveUsers,
        uint256 numberOfActiveLps,
        MarketStatus status,
        YieldPositionLib.YieldPosition memory netPosition,
        int256 netQuoteAmountRealized,
        int256 totalMarginAmount,
        int256 totalQuoteAssetAmount,
        int256 totalReserveBaseAmount,
        int256 totalReserveQuoteAmount,
        int256 totalLiquidationFee,
        int256 totalKeeperFee
    );

    function insuranceYieldPosition() external view returns (
        int256 baseAssetAmount,
        int256 quoteAssetAmount,
        int256 lastRate
    );

    function socialLossYieldPosition() external view returns (
        int256 baseAssetAmount,
        int256 quoteAssetAmount,
        int256 lastRate
    );

    function yieldPosition(bytes32 key) external view returns (
        int256 baseAssetAmount,
        int256 quoteAssetAmount,
        int256 lastRate
    );

    function liquidityPositions(bytes32 key) external view returns (
        int24 lowerTick,
        int24 upperTick,
        uint256 lowerRate,
        uint256 upperRate,
        int256 reserveQuoteAmount,
        int256 reserveBaseAmount,
        LpStatus state,
        uint128 pendingLiquidity,
        uint128 pendingFeesOwed
    );

}
