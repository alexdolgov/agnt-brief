// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../libraries/YieldPositionLib.sol";

interface IMarket {

    struct TradeResult {
        int256 baseAmountFilled;
        int256 quoteAmountFilled;
        int256 realizedPnl;
        int256 feeAmount;
        int256 rebaseMargin;
        bool isReduce; 
        bool isClosed;  // position.baseAssetAmount == 0
    }

    struct LiquidationResult {
        int256 baseAmountTransferred;
        int256 quoteAmountTransferred;
        int256 liquidationFee;
    }

    struct AdlLiquidationStat {
        int256 baseAmountFilled;
        int256 quoteAmountFilled;
        int256 makerRealizedPnl;
        bool isMakerClosed;
    }


    function isMarketActive() external view returns (bool);
    function isPreExpiry() external view returns (bool);
    function collateralRatioInitial() external view returns (int256);
    function collateralRatioInitialPreExpiry() external view returns (int256);
    function collateralRatioMaintenance() external view returns (int256);
    function collateralRatioBasic() external view returns (int256);


    function trade(bytes32 subAccountId, int256 baseAmount, uint160 sqrtPriceLimitX96) external returns (TradeResult memory);
    function getPosition(bytes32 subAccountId) external view returns (YieldPositionLib.YieldPosition memory);
    function calculatePositionValue(YieldPositionLib.YieldPosition memory position, bool isTwap) external view returns (int256 assetValue, int256 liabilityValue);
    function calculateQuoteInMargin(YieldPositionLib.YieldPosition memory position) external view returns (int256 totalQuoteInMargin);

    function addLpShares(bytes32 subAccountId, int256 scaledAmount, uint256 lowerRate, uint256 upperRate) external;
    function removeLpShares(bytes32 subAccountId, uint256 percentage, uint160 sqrtPriceLimitX96) external returns (uint256 withdrawMarginAmount, uint256 feeMargin);
    function claimFee(bytes32 subAccountId) external returns (uint256);
    function updateAndQueryFee(bytes32 subAccountId) external returns (uint256);
    

    function earnInvest(address user, uint256 marginAmount) external returns (uint256, uint256);
    function earnRedeem(address user, uint256 ptAmount, uint160 sqrtPriceLimitX96) external returns (uint256, uint256);
    

    function liquidate(bytes32 subAccountId, int256 insuranceAmount) external;
    function liquidateLp(bytes32 subAccountId) external returns (uint256);
    function liquidateInsurance(bytes32[] calldata makers, bool adlFinish) external returns (AdlLiquidationStat[] memory);
    function getInsuranceYieldPosition() external view returns (YieldPositionLib.YieldPosition memory);
    function addInsuranceMargin(uint256 amount) external;
    

    function claimProtocolFee() external returns (uint256);
    function claimInsurance() external returns (int256);
    function claimKeeperFee() external returns (int256);
    function claimEarnFee() external returns (int256);
    function claimYield(bytes32 subAccountId) external returns (int256);

    function epochUpdateBegin(bool isExpired) external;
    function epochUpdateChangePrice(bool isExpired) external;
    function epochUpdateEnd(bool isExpired) external;
    function epochUpdateRemove(bool isExpired, bytes32 subAccountId) external;
    function epochUpdateAdd(bool isExpired, bytes32 subAccountId) external;
    function epochUpdateExpiryCheck(bytes32 subAccountId) external;
    function epochUpdateExpiryApply(bytes32 subAccountId) external returns (int256);
    function epochUpdateExpirySettleSpotUser(bytes32 subAccountId) external returns (int256);
} 