// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import { IFeeEstimation } from "./interfaces/IFeeEstimation.sol";
import { Order, Side } from "./libraries/OrderStructs.sol";
import { CalculatorHelper } from "./libraries/CalculatorHelper.sol";
import { DecimalConversionLib } from "./libraries/DecimalConversionLib.sol";
import { UserTierManager } from "./mixins/UserTierManager.sol";
import { ReferralManager } from "./mixins/ReferralManager.sol";
import { Fees } from "./mixins/Fees.sol";
import { TraderReferralInfo, ReferrerConfig, CollateralPriceConfig } from "./libraries/ReferralStructs.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title CTF Exchange Fee Manager
/// @notice Unified fee manager supporting multiple collateral tokens and shared referrals
/// @author OLAB
contract CTFExchangeFeeManager is IFeeEstimation, UserTierManager, ReferralManager, Fees {

    // ============ Errors ============

    error InvalidCollateralToken();
    error CollateralNotConfigured();
    error NoDefaultCollateralSet();
    error GlobalMinFeeExceedsMaximum();
    error FeeRateExceedsMaximum();
    error InvalidDiscount();

    // ============ Structs ============

    struct FeeRateSettings {
        uint256 makerFeeRateBps;
        uint256 takerFeeRateBps;
        bool enabled;
        uint256 minFeeAmount;
    }

    struct CollateralConfig {
        uint8 decimals;
        uint256 globalDefaultMinFee;
    }

    // ============ Storage ============

    /// @notice Fee settings per token ID (shared across all collateral tokens)
    mapping(uint256 => FeeRateSettings) public feeRateSettings;

    /// @notice Collateral tokens configuration
    mapping(address => CollateralConfig) public collateralConfigs;

    /// @notice Default collateral token
    address public defaultCollateralToken;

    // ============ Events ============


    event FeeRateSettingsChanged(
        uint256 indexed tokenId,
        uint256 makerFeeRateBps,
        uint256 takerFeeRateBps,
        bool enabled,
        uint256 minFeeAmount
    );

    // ============ Constructor ============

    constructor(address _defaultCollateralToken) {
        if (_defaultCollateralToken != address(0)) {
            // Auto-detect decimals for default collateral
            uint8 decimals;
            try IERC20Metadata(_defaultCollateralToken).decimals() returns (uint8 _decimals) {
                decimals = _decimals;
            } catch {
                decimals = 18; // Default fallback
            }

            collateralConfigs[_defaultCollateralToken] = CollateralConfig({
                decimals: decimals,
                globalDefaultMinFee: 0
            });

            defaultCollateralToken = _defaultCollateralToken;
        }
    }

    // ============ Admin Functions ============

    /// @notice Set collateral token configuration directly (simplified management)
    /// @param collateralToken The collateral token address
    /// @param decimals Token decimals
    /// @param globalDefaultMinFee Global default minimum fee for this token
    function setCollateralConfig(address collateralToken, uint8 decimals, uint256 globalDefaultMinFee) external onlyOperator {
        if (collateralToken == address(0)) revert InvalidCollateralToken();

        collateralConfigs[collateralToken] = CollateralConfig({
            decimals: decimals,
            globalDefaultMinFee: globalDefaultMinFee
        });
    }

    /// @notice Set the default collateral token (simplified)
    /// @param newDefaultCollateral The new default collateral token address
    function setDefaultCollateralToken(address newDefaultCollateral) external onlyOperator {
        if (newDefaultCollateral == address(0)) revert InvalidCollateralToken();

        CollateralConfig memory config = collateralConfigs[newDefaultCollateral];
        if (config.decimals == 0) revert CollateralNotConfigured();

        defaultCollateralToken = newDefaultCollateral;
    }

    /// @notice Update global default minimum fee for default collateral
    /// @param newGlobalDefaultMinFee New global default minimum fee amount
    function updateGlobalDefaultMinFee(uint256 newGlobalDefaultMinFee) external onlyOperator {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();

        CollateralConfig memory config = collateralConfigs[defaultCollateralToken];
        uint256 maxAllowedMinFee = 10 * (10 ** config.decimals);
        if (newGlobalDefaultMinFee > maxAllowedMinFee) revert GlobalMinFeeExceedsMaximum();

        collateralConfigs[defaultCollateralToken].globalDefaultMinFee = newGlobalDefaultMinFee;
    }

    /// @notice Get global default minimum fee for default collateral
    /// @return The current global default minimum fee amount
    function getGlobalDefaultMinFee() external view returns (uint256) {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();
        return collateralConfigs[defaultCollateralToken].globalDefaultMinFee;
    }

    /// @notice Update fee rate settings for a token (shared across all collaterals)
    /// @dev Restricted to operator role
    function updateFeeRateSettings(
        uint256 tokenId,
        uint256 makerFeeRateBps,
        uint256 takerFeeRateBps,
        bool enabled,
        uint256 minFeeAmount
    ) external onlyOperator {
        uint256 maxFeeRate = getMaxFeeRate();
        if (makerFeeRateBps > maxFeeRate || takerFeeRateBps > maxFeeRate) revert FeeRateExceedsMaximum();

        feeRateSettings[tokenId] = FeeRateSettings({
            makerFeeRateBps: makerFeeRateBps,
            takerFeeRateBps: takerFeeRateBps,
            enabled: enabled,
            minFeeAmount: minFeeAmount
        });
        emit FeeRateSettingsChanged(tokenId, makerFeeRateBps, takerFeeRateBps, enabled, minFeeAmount);
    }

    // ============ Fee Estimation Functions ============

    /// @notice Estimate order fee with specific collateral token
    /// @param user The user address
    /// @param order The order to estimate fee for
    /// @param collateralToken The collateral token to use for calculations
    /// @return estimate The fee estimate
    function estimateFee(
        address user,
        Order calldata order,
        address collateralToken
    ) external view returns (FeeEstimate memory estimate) {
        return this.estimateFeeWithAmount(user, order, order.makerAmount, collateralToken);
    }

    /// @notice Estimate order fee with fill amount and collateral token
    /// @param user The user address
    /// @param order The order to estimate fee for
    /// @param fillAmount The fill amount
    /// @param collateralToken The collateral token to use for calculations
    /// @return estimate The fee estimate
    function estimateFeeWithAmount(
        address user,
        Order calldata order,
        uint256 fillAmount,
        address collateralToken
    ) external view returns (FeeEstimate memory estimate) {
        uint256 takingAmount = CalculatorHelper.calculateTakingAmount(fillAmount, order.makerAmount, order.takerAmount);
        // Use the fee rate from order directly (caller should have set it correctly)
        uint256 feeRateBps = order.feeRateBps;

        // Calculate base fee
        if (order.takerAmount == 0) {
            // Market order: use worst-case price (0.5) for conservative estimate
            estimate.baseFee = (fillAmount * feeRateBps) / (4 * 10000);
        } else {
            // Limit order: use curved fee formula
            uint256 outcomeTokens = order.side == Side.BUY ? takingAmount : fillAmount;
            estimate.baseFee = CalculatorHelper._calculateBaseFee(
                feeRateBps,
                outcomeTokens,
                fillAmount,
                takingAmount,
                order.side
            );
        }
        estimate.feeRateBps = feeRateBps;

        // Get discount info for transparency
        estimate.userDiscountBps = this.getUserDiscountBps(user);
        estimate.referralDiscountBps = _getReferralDiscountBps(user);

        // Get minimum fee amount
        estimate.minFeeAmount = _getMinFeeAmount(order.tokenId, collateralToken);

        // ✅ FIX: Use computeFees to ensure consistency with actual trading
        // This ensures rebate calculation is based on discounted amount (before minFee)
        (uint256 finalFee, uint256 rebate,) = this.computeFees(
            user,
            estimate.baseFee,
            estimate.minFeeAmount,
            0  // No admin discount in fee estimation
        );

        estimate.totalFee = finalFee;
        estimate.referrerRebateAmount = rebate;
        estimate.minFeeApplied = (finalFee > estimate.baseFee * (10000 - estimate.userDiscountBps) * (10000 - estimate.referralDiscountBps) / 100000000);

        // Calculate discount amounts for transparency
        estimate.userDiscountAmount = estimate.baseFee * estimate.userDiscountBps / 10000;
        estimate.referralDiscountAmount = (estimate.baseFee - estimate.userDiscountAmount) * estimate.referralDiscountBps / 10000;

        // Calculate platform net revenue
        estimate.platformRevenue = estimate.totalFee - estimate.referrerRebateAmount;

        // Calculate price
        if (order.takerAmount == 0) {
            // Market order: price is unknown at estimation time
            estimate.price = 0;
        } else {
            estimate.price = CalculatorHelper._calculatePrice(fillAmount, takingAmount, order.side);
        }

        return estimate;
    }

    /// @inheritdoc IFeeEstimation
    function estimateOrderFee(address user, Order calldata order, bool isTaker)
        external
        view
        override
        returns (FeeEstimate memory estimate)
    {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();
        if (isTaker) {
            // Check if maker has zero fee rate for special case handling
            (uint256 makerFeeRateBps,, bool enabled,) = _getFeeRateSettingsWithCollateral(order.tokenId);
            bool makerHasZeroFeeRate = enabled && makerFeeRateBps == 0;
            return _estimateTakerFeeWithCollateral(user, order, order.makerAmount, defaultCollateralToken, makerHasZeroFeeRate);
        } else {
            return _estimateMakerFeeWithCollateral(user, order, order.makerAmount, defaultCollateralToken);
        }
    }

    /// @inheritdoc IFeeEstimation
    function estimateOrderFeeWithFillAmount(address user, Order calldata order, uint256 fillAmount, bool isTaker)
        external
        view
        override
        returns (FeeEstimate memory estimate)
    {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();
        if (isTaker) {
            // Check if maker has zero fee rate for special case handling
            (uint256 makerFeeRateBps,, bool enabled,) = _getFeeRateSettingsWithCollateral(order.tokenId);
            bool makerHasZeroFeeRate = enabled && makerFeeRateBps == 0;
            return _estimateTakerFeeWithCollateral(user, order, fillAmount, defaultCollateralToken, makerHasZeroFeeRate);
        } else {
            return _estimateMakerFeeWithCollateral(user, order, fillAmount, defaultCollateralToken);
        }
    }


    // ============ Internal Functions ============

    /// @notice Internal function to add collateral token support
    /// @param collateralToken The collateral token address
    /// @param globalDefaultMinFee Initial global default minimum fee

    /// @notice Get collateral token precision multiplier for calculations
    /// @param collateralToken The collateral token address
    /// @return precision multiplier (10^decimals)
    function _getCollateralPrecision(address collateralToken) internal view returns (uint256) {
        CollateralConfig memory config = collateralConfigs[collateralToken];
        // If no config exists, default to 18 decimals
        uint8 decimals = config.decimals == 0 ? 18 : config.decimals;
        return 10 ** decimals;
    }

    /// @notice Get minimum fee amount for a token and collateral combination
    /// @param tokenId The token ID
    /// @param collateralToken The collateral token address
    /// @return minFee The minimum fee amount
    function _getMinFeeAmount(uint256 tokenId, address collateralToken) internal view returns (uint256) {
        FeeRateSettings memory settings = feeRateSettings[tokenId];
        CollateralConfig memory collateralConfig = collateralConfigs[collateralToken];

        // Use token-specific min fee if set and enabled, otherwise use global default
        if (settings.enabled && settings.minFeeAmount > 0) {
            return settings.minFeeAmount;
        }
        return collateralConfig.globalDefaultMinFee;
    }


    /// @notice Get fee rate for order (unchanged from original)
    function _getFeeRateForOrder(Order calldata order) internal view returns (uint256 feeRateBps) {
        FeeRateSettings memory settings = feeRateSettings[order.tokenId];

        if (settings.enabled) {
            return settings.takerFeeRateBps; // Default to taker rate for estimation
        } else {
            return order.feeRateBps;
        }
    }

    // ============ View Functions ============


    /// @notice Get collateral token configuration (simplified)
    /// @param collateralToken The collateral token address
    /// @return config The collateral configuration
    function getCollateralConfig(address collateralToken) external view returns (CollateralConfig memory config) {
        return collateralConfigs[collateralToken];
    }

    /// @notice Get global default minimum fee for a specific collateral token
    /// @param collateralToken The collateral token address
    /// @return The global default minimum fee for this collateral
    function getCollateralGlobalMinFee(address collateralToken) external view returns (uint256) {
        return collateralConfigs[collateralToken].globalDefaultMinFee;
    }

    // ============ ReferralManager Implementation ============


    // ============ Internal Helper Functions ============

    /// @notice Get referral discount rate for a user
    /// @param user The user address
    /// @return discountBps The discount rate in basis points
    function _getReferralDiscountBps(address user) internal view returns (uint256 discountBps) {
        TraderReferralInfo storage traderInfo = traderReferrals[user];

        // Return 0 if trader has no referral setup
        if (traderInfo.referrer == address(0)) {
            return 0;
        }

        ReferrerConfig storage config = referrerConfigs[traderInfo.referrer];

        // Check validity conditions
        if (!config.isActive ||
            config.expiresAt <= block.timestamp ||
            !isDiscountValid(user)) {
            return 0;
        }

        return config.discountRate;
    }

    /// @notice Apply all discounts to fee amount
    /// @param user User address
    /// @param amount Original fee amount
    /// @return discountedAmount Fee amount after all discounts
    function _applyAllDiscounts(address user, uint256 amount) internal view returns (uint256 discountedAmount) {
        discountedAmount = amount;

        // Apply user tier discount
        uint256 userDiscountBps = this.getUserDiscountBps(user);
        if (userDiscountBps > 0) {
            if (userDiscountBps > 10000) revert InvalidDiscount();
            discountedAmount = discountedAmount * (10000 - userDiscountBps) / 10000;
        }

        // Apply referral discount
        uint256 refDiscountBps = _getReferralDiscountBps(user);
        if (refDiscountBps > 0) {
            if (refDiscountBps > 10000) revert InvalidDiscount();
            discountedAmount = discountedAmount * (10000 - refDiscountBps) / 10000;
        }
    }

    /// @notice Calculate referrer rebate amount for a user's fee
    /// @param user The user address
    /// @param finalFeeAmount The final fee amount after all discounts
    /// @return rebateAmount The rebate amount to be paid to referrer
    function _calculateReferrerRebate(address user, uint256 finalFeeAmount) internal view returns (uint256 rebateAmount) {
        TraderReferralInfo storage traderInfo = traderReferrals[user];

        // Return 0 if trader has no referral setup
        if (traderInfo.referrer == address(0)) {
            return 0;
        }

        ReferrerConfig storage config = referrerConfigs[traderInfo.referrer];

        // Check validity conditions for rebate
        if (!config.isActive ||
            config.expiresAt <= block.timestamp ||
            !isRebateValid(traderInfo.referrer, user)) {
            return 0;
        }

        return (finalFeeAmount * config.rebateRate) / 10000;
    }

    // ============ Additional Inherited Functions ============

    /// @inheritdoc IFeeEstimation
    function estimateMatchingFees(
        address takerUser,
        Order calldata takerOrder,
        Order[] calldata makerOrders,
        uint256 takerFillAmount,
        uint256[] calldata makerFillAmounts
    ) external view override returns (FeeEstimate memory takerFee, FeeEstimate[] memory makerFees) {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();
        return _estimateMatchingFeesWithCollateral(takerUser, takerOrder, makerOrders, takerFillAmount, makerFillAmounts, defaultCollateralToken);
    }

    /// @inheritdoc IFeeEstimation
    function estimateMakerFee(
        address makerUser,
        Order calldata makerOrder,
        uint256 fillAmount
    ) external view override returns (FeeEstimate memory estimate) {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();
        return _estimateMakerFeeWithCollateral(makerUser, makerOrder, fillAmount, defaultCollateralToken);
    }

    /// @inheritdoc IFeeEstimation
    function estimateTakerFee(
        address takerUser,
        Order calldata takerOrder,
        uint256 fillAmount
    ) external view override returns (FeeEstimate memory estimate) {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();
        // Check if maker has zero fee rate for special case handling
        (uint256 makerFeeRateBps,, bool enabled,) = _getFeeRateSettingsWithCollateral(takerOrder.tokenId);
        bool makerHasZeroFeeRate = enabled && makerFeeRateBps == 0;
        return _estimateTakerFeeWithCollateral(takerUser, takerOrder, fillAmount, defaultCollateralToken, makerHasZeroFeeRate);
    }

    /// @inheritdoc IFeeEstimation
    function getFeeRateSettings(uint256 tokenId)
        external view override returns (
            uint256 makerFeeRateBps,
            uint256 takerFeeRateBps,
            bool enabled,
            uint256 minFeeAmount
        )
    {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();
        return _getFeeRateSettingsWithCollateral(tokenId);
    }

    /// @inheritdoc IFeeEstimation
    function getUserDiscountInfo(address user)
        external view override returns (
            uint256 userTierDiscountBps,
            uint256 referralDiscountBps
        )
    {
        userTierDiscountBps = this.getUserDiscountBps(user);
        referralDiscountBps = _getReferralDiscountBps(user);
    }

    /// @inheritdoc IFeeEstimation
    function estimateMinimumFee(uint256 tokenId, uint256 feeAmount)
        external view override returns (uint256 finalFee, bool minFeeApplied)
    {
        if (defaultCollateralToken == address(0)) revert NoDefaultCollateralSet();
        uint256 minFee = _getMinFeeAmount(tokenId, defaultCollateralToken);
        if (feeAmount < minFee) {
            return (minFee, true);
        }
        return (feeAmount, false);
    }

    /// @inheritdoc IFeeEstimation
    function computeFees(
        address user,
        uint256 baseFee,
        uint256 minFee,
        uint256 adminDiscountBps
    ) external view override returns (uint256 finalFee, uint256 rebate, address referrer) {
        // Step 1: Apply admin discount first (if provided)
        uint256 feeAfterAdmin = baseFee;
        if (adminDiscountBps > 0) {
            if (adminDiscountBps > 10000) revert InvalidDiscount();
            feeAfterAdmin = baseFee * (10000 - adminDiscountBps) / 10000;
        }

        // Step 2: Apply tier + referral discounts
        uint256 discounted = _applyAllDiscounts(user, feeAfterAdmin);

        // Step 3: Apply minimum fee protection
        finalFee = discounted < minFee ? minFee : discounted;

        // Calculate rebate on discounted amount (before minFee, after all discounts)
        rebate = _calculateReferrerRebate(user, discounted);

        // Get referrer if rebate exists
        if (rebate > 0) {
            referrer = traderReferrals[user].referrer;
        }
    }

    // ============ Internal Implementation Functions ============

    function _estimateMatchingFeesWithCollateral(
        address takerUser,
        Order calldata takerOrder,
        Order[] calldata makerOrders,
        uint256 takerFillAmount,
        uint256[] calldata makerFillAmounts,
        address collateralToken
    ) internal view returns (FeeEstimate memory takerFee, FeeEstimate[] memory makerFees) {
        // Get fee rate settings for taker and maker
        (uint256 makerFeeRateBps,, bool enabled,) = _getFeeRateSettingsWithCollateral(takerOrder.tokenId);
        bool makerHasZeroFeeRate = enabled && makerFeeRateBps == 0;

        // Estimate taker fee using taker-specific logic with maker fee context
        takerFee = _estimateTakerFeeWithCollateral(takerUser, takerOrder, takerFillAmount, collateralToken, makerHasZeroFeeRate);

        // Estimate maker fees using maker-specific logic
        makerFees = new FeeEstimate[](makerOrders.length);
        for (uint256 i = 0; i < makerOrders.length; i++) {
            makerFees[i] = _estimateMakerFeeWithCollateral(makerOrders[i].maker, makerOrders[i], makerFillAmounts[i], collateralToken);
        }
    }

    function _estimateMakerFeeWithCollateral(
        address makerUser,
        Order calldata makerOrder,
        uint256 fillAmount,
        address collateralToken
    ) internal view returns (FeeEstimate memory estimate) {
        // In collateral-only fee model: check if maker receives collateral
        uint256 takingAmount = CalculatorHelper.calculateTakingAmount(fillAmount, makerOrder.makerAmount, makerOrder.takerAmount);
        // Derive asset IDs: BUY orders have (makerAssetId=0, takerAssetId=tokenId), SELL orders have (makerAssetId=tokenId, takerAssetId=0)
        uint256 takerAssetId = makerOrder.side == Side.BUY ? makerOrder.tokenId : 0;

        if (takerAssetId == 0) {
            // Maker receives collateral token - use maker fee rate
            // Create a modified order with maker fee rate
            Order memory modifiedOrder = makerOrder;
            (uint256 makerFeeRateBps,, bool enabled,) = _getFeeRateSettingsWithCollateral(makerOrder.tokenId);
            if (enabled) {
                modifiedOrder.feeRateBps = makerFeeRateBps;
            }

            // Special case: if maker fee rate is 0, return zero fee (fee transferred to taker)
            if (modifiedOrder.feeRateBps == 0) {
                estimate.baseFee = 0;
                estimate.totalFee = 0;
                estimate.platformRevenue = 0;
                estimate.userDiscountBps = 0;
                estimate.userDiscountAmount = 0;
                estimate.referralDiscountBps = 0;
                estimate.referralDiscountAmount = 0;
                estimate.referrerRebateAmount = 0;
                estimate.minFeeAmount = 0;
                estimate.minFeeApplied = false;
                estimate.feeRateBps = 0;
                estimate.price = CalculatorHelper._calculatePrice(fillAmount, takingAmount, makerOrder.side);
                return estimate;
            }

            return this.estimateFeeWithAmount(makerUser, modifiedOrder, fillAmount, collateralToken);
        } else {
            // Maker receives conditional tokens - no fee
            estimate.baseFee = 0;
            estimate.totalFee = 0;
            estimate.platformRevenue = 0;
            estimate.userDiscountBps = 0;
            estimate.userDiscountAmount = 0;
            estimate.referralDiscountBps = 0;
            estimate.referralDiscountAmount = 0;
            estimate.referrerRebateAmount = 0;
            estimate.minFeeAmount = 0;
            estimate.minFeeApplied = false;
            estimate.feeRateBps = 0;
            estimate.price = CalculatorHelper._calculatePrice(fillAmount, takingAmount, makerOrder.side);
        }
    }

    function _estimateTakerFeeWithCollateral(
        address takerUser,
        Order calldata takerOrder,
        uint256 fillAmount,
        address collateralToken,
        bool makerHasZeroFeeRate
    ) internal view returns (FeeEstimate memory estimate) {
        // Derive asset IDs: BUY orders have (makerAssetId=0, takerAssetId=tokenId), SELL orders have (makerAssetId=tokenId, takerAssetId=0)
        uint256 takerAssetId = takerOrder.side == Side.BUY ? takerOrder.tokenId : 0;

        if (takerAssetId == 0) {
            // Taker receives collateral token - use taker fee rate
            // Create a modified order with taker fee rate
            Order memory modifiedOrder = takerOrder;
            (,uint256 takerFeeRateBps, bool enabled,) = _getFeeRateSettingsWithCollateral(takerOrder.tokenId);
            if (enabled) {
                modifiedOrder.feeRateBps = takerFeeRateBps;
            }

            return this.estimateFeeWithAmount(takerUser, modifiedOrder, fillAmount, collateralToken);
        } else if (makerHasZeroFeeRate) {
            // Special case: Taker receives outcome token BUT maker fee rate is 0
            // In this case, taker still pays fee (charged from taker's collateral)
            // This matches Trading.sol line 181-200 logic
            Order memory modifiedOrder = takerOrder;
            (,uint256 takerFeeRateBps, bool enabled,) = _getFeeRateSettingsWithCollateral(takerOrder.tokenId);
            if (enabled) {
                modifiedOrder.feeRateBps = takerFeeRateBps;
            }

            return this.estimateFeeWithAmount(takerUser, modifiedOrder, fillAmount, collateralToken);
        } else {
            // Taker receives conditional tokens and maker has non-zero fee - no base fee
            // However, minFee still applies (matches Trading.sol behavior)
            // Use same pattern as above: call estimateFeeWithAmount with feeRateBps = 0
            Order memory modifiedOrder = takerOrder;
            modifiedOrder.feeRateBps = 0;  // No base fee, but minFee will still be applied

            return this.estimateFeeWithAmount(takerUser, modifiedOrder, fillAmount, collateralToken);
        }
    }

    function _getFeeRateSettingsWithCollateral(uint256 tokenId)
        internal view returns (
            uint256 makerFeeRateBps,
            uint256 takerFeeRateBps,
            bool enabled,
            uint256 minFeeAmount
        )
    {
        FeeRateSettings memory settings = feeRateSettings[tokenId];
        makerFeeRateBps = settings.makerFeeRateBps;
        takerFeeRateBps = settings.takerFeeRateBps;
        enabled = settings.enabled;
        // Return stored minFeeAmount regardless of enabled status for getFeeRateSettings interface
        minFeeAmount = settings.minFeeAmount;
    }

    // ============ Decimal Conversion Override ============

    /// @notice Convert token amount to USD value (scaled by 1e6)
    /// @dev Uses DecimalConversionLib to reduce contract size
    /// @param collateralToken The collateral token address
    /// @param amount Token amount
    /// @return usdValue USD value (scaled by 1e6)
    function _convertToUsd(address collateralToken, uint256 amount)
        internal
        view
        override
        returns (uint256 usdValue)
    {
        CollateralConfig memory config = collateralConfigs[collateralToken];
        return DecimalConversionLib.convertToUsd(collateralToken, amount, config.decimals);
    }

    /// @notice Convert USD value (scaled by 1e6) to token amount
    /// @dev Uses DecimalConversionLib to reduce contract size
    /// @param collateralToken The collateral token address
    /// @param usdValue USD value (scaled by 1e6)
    /// @return amount Token amount
    function _convertFromUsd(address collateralToken, uint256 usdValue)
        internal
        view
        override
        returns (uint256 amount)
    {
        CollateralConfig memory config = collateralConfigs[collateralToken];
        return DecimalConversionLib.convertFromUsd(collateralToken, usdValue, config.decimals);
    }

}
