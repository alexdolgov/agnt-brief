// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import {
    ReferrerConfig,
    TraderReferralInfo,
    AuthorizationSignature,
    TraderReferralBindingSignature,
    RebateStats,
    DiscountStats,
    CollateralPriceConfig
} from "../libraries/ReferralStructs.sol";

/// @title Referral Manager Interface
/// @notice Interface for multi-collateral referral system management
interface IReferralManager {

    // ============ Events ============

    /// @notice Emitted when a new referrer is registered
    event ReferrerRegistered(address indexed referrer);

    /// @notice Emitted when referrer configuration is set/updated
    event ReferrerConfigSet(
        address indexed referrer,
        uint256 discountRate,
        uint256 rebateRate,
        uint256 discountValidityDuration,
        uint256 rebateValidityDuration,
        uint256 expiresAt
    );

    /// @notice Emitted when a trader activates a referrer
    event TraderReferrerSet(address indexed trader, address indexed referrer, uint256 activatedAt);

    /// @notice Enhanced rebate earned event with collateral token information
    event RebateEarned(
        address indexed referrer,
        address indexed trader,
        address indexed collateralToken,
        uint256 amount
    );



    /// @notice Emitted when global discount override is updated
    event GlobalDiscountOverrideUpdated(bool enabled);

    /// @notice Emitted when global rebate override is updated
    event GlobalRebateOverrideUpdated(bool enabled);

    /// @notice Emitted when collateral price configuration is updated
    event CollateralPriceConfigUpdated(
        address indexed collateralToken,
        uint256 usdPrice,
        uint256 decimals,
        bool isActive
    );

    // ============ Errors ============

    error ReferrerAlreadyRegistered();
    error ReferrerNotRegistered();
    error InvalidAuthSignature();
    error AuthSignatureExpired();
    error InvalidRates();
    error CannotReferSelf();
    error ReferrerConfigExpired();
    error DiscountPeriodExpired();
    error RebatePeriodExpired();
    error AlreadyHasReferrer();
    error InvalidAuthorizationSignature();
    error UnauthorizedTraderBinding();
    error UnsupportedCollateralToken();

    // ============ Core Functions ============

    /// @notice Sets referrer configuration with server authorization (auto-registers if not already registered)
    /// @param auth The authorization signature from server
    function setReferrerConfig(AuthorizationSignature calldata auth) external;

    /// @notice Sets referrer for a trader (admin only)
    /// @param trader The trader address
    /// @param referrer The referrer wallet address
    function setTraderReferrer(address trader, address referrer) external;

    /// @notice Set global discount override (operator only)
    /// @param enabled Whether to enable global discount override
    function setGlobalDiscountOverride(bool enabled) external;

    /// @notice Set global rebate override (operator only)
    /// @param enabled Whether to enable global rebate override
    function setGlobalRebateOverride(bool enabled) external;

    /// @notice Record rebate payment after actual transfer (called by Engine)
    /// @dev Updates stats and emits RebateEarned event
    /// @param trader The trader address
    /// @param referrer The referrer address
    /// @param rebateAmount The rebate amount in collateral tokens
    /// @param totalFeeAmount The total fee amount before rebate deduction
    /// @param collateralToken The collateral token address
    function recordRebatePayment(
        address trader,
        address referrer,
        uint256 rebateAmount,
        uint256 totalFeeAmount,
        address collateralToken
    ) external;

    /// @notice Record discount usage for a trader (called by Engine)
    /// @dev Updates discount stats for historical tracking
    /// @param trader The trader who received the discount
    /// @param collateralToken The collateral token address
    /// @param discountAmount The discount amount in collateral tokens
    function recordDiscountUsage(
        address trader,
        address collateralToken,
        uint256 discountAmount
    ) external;

    /// @notice Set USD price configuration for a collateral token (operator only)
    /// @param collateralToken The collateral token address
    /// @param usdPrice USD price per unit (in wei, e.g., 1e18 = $1.00)
    /// @param decimals Token decimals for price calculation
    /// @param isActive Whether this price config is active
    function setCollateralPriceConfig(
        address collateralToken,
        uint256 usdPrice,
        uint256 decimals,
        bool isActive
    ) external;

    /// @notice Get USD price configuration for a collateral token
    /// @param collateralToken The collateral token address
    /// @return config The price configuration
    function getCollateralPriceConfig(address collateralToken) external view returns (CollateralPriceConfig memory config);

    /// @notice Allows a trader to bind themselves to a referrer with server authorization
    /// @param auth The authorization signature for trader-referrer binding
    function bindToReferrer(TraderReferralBindingSignature calldata auth) external;

    /// @notice Processes referral for a trade with specific collateral token
    /// @param trader The trader address
    /// @param feeAmount The total fee amount
    /// @param collateralToken The collateral token used in this trade
    /// @return traderDiscount The discount amount for the trader
    /// @return referrerRebate The rebate amount for the referrer
    function processTradeReferral(
        address trader,
        uint256 feeAmount,
        address collateralToken
    ) external returns (uint256 traderDiscount, uint256 referrerRebate);

    // ============ View Functions ============

    /// @notice Gets referrer configuration
    /// @param referrer The referrer address
    /// @return config The referrer configuration
    function getReferrerConfig(address referrer) external view returns (ReferrerConfig memory config);

    /// @notice Gets trader referral information
    /// @param trader The trader address
    /// @return info The trader referral information
    function getTraderReferralInfo(address trader) external view returns (TraderReferralInfo memory info);


    /// @notice Gets USD-based rebate statistics for a referrer (across all collaterals)
    /// @param referrer The referrer address
    /// @return stats The rebate statistics in USD
    function getRebateStats(address referrer)
        external view returns (RebateStats memory stats);


    /// @notice Checks if an address is registered as a referrer
    /// @param referrer The referrer address
    /// @return isRegistered Whether the address is a registered referrer
    function isRegisteredReferrer(address referrer) external view returns (bool isRegistered);

    /// @notice Calculates referral discount and rebate for a fee amount with specific collateral
    /// @param trader The trader address
    /// @param feeAmount The fee amount
    /// @param collateralToken The collateral token used
    /// @return traderDiscount The discount amount for the trader
    /// @return referrerRebate The rebate amount for the referrer
    function calculateReferralRewards(address trader, uint256 feeAmount, address collateralToken)
        external view returns (uint256 traderDiscount, uint256 referrerRebate);

    /// @notice Checks if a referrer config is currently valid
    /// @param referrer The referrer address
    /// @return isValid Whether the config is valid and not expired
    function isReferrerConfigValid(address referrer) external view returns (bool isValid);

    /// @notice Checks if discount is valid for a trader
    /// @param trader The trader address
    /// @return isValid Whether discount is still valid for this trader
    function isDiscountValid(address trader) external view returns (bool isValid);

    /// @notice Checks if rebate is valid for a referrer based on trader activation
    /// @param referrer The referrer address
    /// @param trader The trader address
    /// @return isValid Whether rebate is still valid for this referrer-trader pair
    function isRebateValid(address referrer, address trader) external view returns (bool isValid);


    /// @notice Gets remaining monthly rebate allowance for a referrer (USD-based)
    /// @param referrer The referrer address
    /// @return remainingAllowance Remaining rebate allowance for current month in USD
    function getRemainingMonthlyRebateAllowance(address referrer)
        external view returns (uint256 remainingAllowance);

    // ============ UI Support Functions ============

    /// @notice Gets comprehensive referrer dashboard data in one call
    /// @param referrer The referrer address
    /// @return config The referrer configuration
    /// @return isActive Whether the referrer is currently active
    function getReferrerDashboard(address referrer)
        external view returns (
            ReferrerConfig memory config,
            bool isActive
        );

    /// @notice Gets trader's referral status and potential benefits
    /// @param trader The trader address
    /// @return info The trader referral information
    /// @return isDiscountActive Whether the trader currently has active discount
    /// @return remainingDiscountTime Time remaining for discount validity (0 if unlimited)
    function getTraderReferralStatus(address trader)
        external view returns (
            TraderReferralInfo memory info,
            bool isDiscountActive,
            uint256 remainingDiscountTime
        );

    /// @notice Batch query for multiple traders' referral status
    /// @param traders Array of trader addresses to query
    /// @return referrers Array of referrer addresses (address(0) if no referrer)
    /// @return discountsActive Array of discount validity status
    function batchGetTradersReferralInfo(address[] calldata traders)
        external view returns (
            address[] memory referrers,
            bool[] memory discountsActive
        );

    /// @notice Gets USD-based discount statistics for a trader (across all collaterals)
    /// @param trader The trader address
    /// @return stats The discount statistics in USD
    function getDiscountStats(address trader)
        external view returns (DiscountStats memory stats);



    /// @notice Gets comprehensive discount information for a trader
    /// @param trader The trader address
    /// @return referralInfo Basic referral information
    /// @return stats USD-based discount statistics
    function getTraderDiscountInfo(address trader)
        external view returns (
            TraderReferralInfo memory referralInfo,
            DiscountStats memory stats
        );

    /// @notice Get referrer's monthly rebate limit and current usage
    /// @param referrer The referrer address
    /// @return monthlyRebateLimit Monthly limit in USD (scaled by 1e6)
    /// @return currentMonthStart Timestamp of current month start
    /// @return currentMonthUsdRebates Total USD rebates paid this month
    function getReferrerMonthlyLimit(address referrer)
        external view returns (
            uint256 monthlyRebateLimit,
            uint256 currentMonthStart,
            uint256 currentMonthUsdRebates
        );

    /// @notice Convert token amount to USD value
    /// @param collateralToken The collateral token address
    /// @param amount Token amount
    /// @return usdValue USD value (scaled by 1e6)
    function convertToUsd(address collateralToken, uint256 amount)
        external view returns (uint256 usdValue);

    /// @notice Convert USD value to token amount
    /// @param collateralToken The collateral token address
    /// @param usdValue USD value (scaled by 1e6)
    /// @return amount Token amount
    function convertFromUsd(address collateralToken, uint256 usdValue)
        external view returns (uint256 amount);
}