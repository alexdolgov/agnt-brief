// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import { ECDSA } from "openzeppelin-contracts/utils/cryptography/ECDSA.sol";
import { SignerManager } from "./SignerManager.sol";
import { IReferralManager } from "../interfaces/IReferralManager.sol";
import {
    ReferrerConfig,
    TraderReferralInfo,
    AuthorizationSignature,
    TraderReferralBindingSignature,
    RebateStats,
    DiscountStats,
    CollateralPriceConfig
} from "../libraries/ReferralStructs.sol";

/// @title ReferralManager
/// @notice Manages multi-collateral referral system with detailed tracking
abstract contract ReferralManager is SignerManager, IReferralManager {
    using ECDSA for bytes32;

    // ============ Constants ============

    uint256 private constant BPS_DIVISOR = 10_000;

    bytes32 public constant REFERRER_CONFIG_TYPEHASH = keccak256(
        "ReferrerConfig(address referrer,uint256 discountRate,uint256 rebateRate,uint256 discountValidityDuration,uint256 rebateValidityDuration,uint256 expiresAt,uint256 monthlyRebateLimit,uint256 deadline)"
    );

    bytes32 public constant TRADER_REFERRAL_BINDING_TYPEHASH = keccak256(
        "TraderReferralBinding(address trader,address referrer,uint256 deadline)"
    );

    // ============ Storage ============

    /// @notice Mapping from referrer address to their configuration
    mapping(address => ReferrerConfig) public referrerConfigs;

    /// @notice Mapping from trader address to their referral information
    mapping(address => TraderReferralInfo) public traderReferrals;


    /// @notice USD-based rebate statistics per referrer (across all collaterals)
    mapping(address => RebateStats) public rebateStats;

    /// @notice USD-based discount statistics per trader (across all collaterals)
    mapping(address => DiscountStats) public discountStats;



    /// @notice Collateral token USD price configurations
    mapping(address => CollateralPriceConfig) public collateralPriceConfigs;

    /// @notice Set of registered referrers (to track one-time registration)
    mapping(address => bool) public registeredReferrers;

    /// @notice Used signatures to prevent replay attacks
    mapping(bytes32 => bool) public usedSignatures;


    /// @notice Global override for discount validity (operator-controlled)
    bool public globalDiscountOverride = false;

    /// @notice Global override for rebate validity (operator-controlled)
    bool public globalRebateOverride = false;

    // ============ Abstract Functions ============

    // ============ Constructor ============

    constructor() {
        // Authorization signer will be set by admin
    }

    // ============ External Functions ============

    /// @inheritdoc IReferralManager
    function setReferrerConfig(AuthorizationSignature calldata auth) external {
        // Auto-register if not already registered
        if (!registeredReferrers[msg.sender]) {
            registeredReferrers[msg.sender] = true;
            emit ReferrerRegistered(msg.sender);
        }

        _setReferrerConfig(auth, true);
    }

    /// @notice Internal function to set referrer configuration
    /// @param auth Authorization signature
    /// @param skipRegistrationCheck Whether to skip registration requirement check
    function _setReferrerConfig(AuthorizationSignature calldata auth, bool skipRegistrationCheck) internal {
        // Verify caller is registered referrer (unless skipping check)
        if (!skipRegistrationCheck && !registeredReferrers[msg.sender]) {
            revert ReferrerNotRegistered();
        }

        // Verify signature hasn't been used
        bytes32 signatureHash = keccak256(auth.signature);
        if (usedSignatures[signatureHash]) revert InvalidAuthorizationSignature();

        // Verify signature hasn't expired
        if (block.timestamp > auth.deadline) revert AuthSignatureExpired();

        // Verify rates are valid
        if (auth.discountRate > BPS_DIVISOR || auth.rebateRate > BPS_DIVISOR) {
            revert InvalidRates();
        }

        // Verify config expiration is in the future
        if (auth.expiresAt <= block.timestamp) revert ReferrerConfigExpired();

        // Verify authorization signature
        bytes32 structHash = keccak256(abi.encode(
            REFERRER_CONFIG_TYPEHASH,
            auth.referrer,
            auth.discountRate,
            auth.rebateRate,
            auth.discountValidityDuration,
            auth.rebateValidityDuration,
            auth.expiresAt,
            auth.monthlyRebateLimit,
            auth.deadline
        ));

        bytes32 hash = _hashReferralTypedDataV4(structHash);
        address signer = hash.recover(auth.signature);

        if (!_isAuthorizedSigner(signer)) revert InvalidAuthorizationSignature();

        // Mark signature as used
        usedSignatures[signatureHash] = true;

        // Set referrer configuration
        referrerConfigs[msg.sender] = ReferrerConfig({
            isActive: true,
            discountRate: auth.discountRate,
            rebateRate: auth.rebateRate,
            discountValidityDuration: auth.discountValidityDuration,
            rebateValidityDuration: auth.rebateValidityDuration,
            expiresAt: auth.expiresAt,
            monthlyRebateLimit: auth.monthlyRebateLimit,
            totalVolume: referrerConfigs[msg.sender].totalVolume, // Preserve existing volume
            totalReferrals: referrerConfigs[msg.sender].totalReferrals, // Preserve existing referrals
            currentMonthUsdRebates: referrerConfigs[msg.sender].currentMonthUsdRebates, // Preserve existing monthly rebates
            currentMonthStart: referrerConfigs[msg.sender].currentMonthStart // Preserve existing month start
        });

        emit ReferrerConfigSet(
            msg.sender,
            auth.discountRate,
            auth.rebateRate,
            auth.discountValidityDuration,
            auth.rebateValidityDuration,
            auth.expiresAt
        );
    }

    /// @inheritdoc IReferralManager
    function setTraderReferrer(address trader, address referrer) external onlyOperatorAdmin {
        _setTraderReferrer(trader, referrer);
    }

    /// @inheritdoc IReferralManager
    function setGlobalDiscountOverride(bool enabled) external onlyOperator {
        globalDiscountOverride = enabled;
        emit GlobalDiscountOverrideUpdated(enabled);
    }

    /// @inheritdoc IReferralManager
    function setGlobalRebateOverride(bool enabled) external onlyOperator {
        globalRebateOverride = enabled;
        emit GlobalRebateOverrideUpdated(enabled);
    }

    /// @inheritdoc IReferralManager
    function recordRebatePayment(
        address trader,
        address referrer,
        uint256 rebateAmount,
        uint256 totalFeeAmount,
        address collateralToken
    ) external onlyOperator {
        // Record the rebate transaction (will emit RebateEarned)
        _recordRebateTransaction(referrer, trader, collateralToken, rebateAmount);

        // Update referrer's total volume with the total fee amount
        ReferrerConfig storage config = referrerConfigs[referrer];
        config.totalVolume += totalFeeAmount;
    }

    /// @inheritdoc IReferralManager
    function recordDiscountUsage(
        address trader,
        address collateralToken,
        uint256 discountAmount
    ) external onlyOperator {
        _recordDiscountTransaction(trader, collateralToken, discountAmount);
    }

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
    ) external onlyOperator {
        require(collateralToken != address(0), "Invalid collateral token");

        collateralPriceConfigs[collateralToken] = CollateralPriceConfig({
            collateralToken: collateralToken,
            usdPrice: usdPrice,
            decimals: decimals,
            isActive: isActive
        });

        emit CollateralPriceConfigUpdated(collateralToken, usdPrice, decimals, isActive);
    }

    /// @notice Get USD price configuration for a collateral token
    /// @param collateralToken The collateral token address
    /// @return config The price configuration
    function getCollateralPriceConfig(address collateralToken) external view returns (CollateralPriceConfig memory config) {
        return collateralPriceConfigs[collateralToken];
    }

    /// @notice Convert token amount to USD value
    /// @param collateralToken The collateral token address
    /// @param amount Token amount
    /// @return usdValue USD value (in wei)
    function _convertToUsd(address collateralToken, uint256 amount) internal view virtual returns (uint256 usdValue) {
        CollateralPriceConfig storage priceConfig = collateralPriceConfigs[collateralToken];

        // If no price config or inactive, default to 1:1 (like USDC)
        if (!priceConfig.isActive || priceConfig.usdPrice == 0) {
            return amount; // Default 1:1 conversion
        }

        // Convert: (amount * usdPrice) / (10^decimals)
        // This handles different token decimals correctly
        usdValue = (amount * priceConfig.usdPrice) / (10 ** priceConfig.decimals);
    }

    /// @notice Convert USD value to token amount (inverse of _convertToUsd)
    /// @param collateralToken The collateral token address
    /// @param usdValue USD value (in wei)
    /// @return amount Token amount
    function _convertFromUsd(address collateralToken, uint256 usdValue) internal view virtual returns (uint256 amount) {
        CollateralPriceConfig storage priceConfig = collateralPriceConfigs[collateralToken];

        // If no price config or inactive, default to 1:1 (like USDC)
        if (!priceConfig.isActive || priceConfig.usdPrice == 0) {
            return usdValue; // Default 1:1 conversion
        }

        // Convert: (usdValue * 10^decimals) / usdPrice
        // This is the inverse of _convertToUsd
        amount = (usdValue * (10 ** priceConfig.decimals)) / priceConfig.usdPrice;
    }


    /// @inheritdoc IReferralManager
    function bindToReferrer(TraderReferralBindingSignature calldata auth) external {
        // Verify caller is the trader to be bound
        if (msg.sender != auth.trader) revert UnauthorizedTraderBinding();

        // Verify signature hasn't been used
        bytes32 signatureHash = keccak256(auth.signature);
        if (usedSignatures[signatureHash]) revert InvalidAuthorizationSignature();

        // Verify signature hasn't expired
        if (block.timestamp > auth.deadline) revert AuthSignatureExpired();

        // Verify authorization signature
        bytes32 structHash = keccak256(abi.encode(
            TRADER_REFERRAL_BINDING_TYPEHASH,
            auth.trader,
            auth.referrer,
            auth.deadline
        ));

        bytes32 hash = _hashReferralTypedDataV4(structHash);
        address signer = hash.recover(auth.signature);

        if (!_isAuthorizedSigner(signer)) revert InvalidAuthorizationSignature();

        // Mark signature as used
        usedSignatures[signatureHash] = true;

        // Set trader referrer
        _setTraderReferrer(auth.trader, auth.referrer);
    }

    /// @notice Internal function to set trader referrer
    /// @param trader The trader address
    /// @param referrer The referrer address
    function _setTraderReferrer(address trader, address referrer) internal {
        if (trader == address(0) || referrer == address(0)) revert InvalidRates();
        if (trader == referrer) revert CannotReferSelf();
        if (!registeredReferrers[referrer]) revert ReferrerNotRegistered();
        if (traderReferrals[trader].referrer != address(0)) revert AlreadyHasReferrer();

        ReferrerConfig storage config = referrerConfigs[referrer];
        if (!config.isActive || config.expiresAt <= block.timestamp) {
            revert ReferrerConfigExpired();
        }

        // Set trader referral info
        traderReferrals[trader] = TraderReferralInfo({
            referrer: referrer,
            activatedAt: block.timestamp
        });

        // Update referrer statistics
        config.totalReferrals++;

        emit TraderReferrerSet(trader, referrer, block.timestamp);
    }

    /// @inheritdoc IReferralManager
    function processTradeReferral(
        address trader,
        uint256 feeAmount,
        address collateralToken
    ) external returns (uint256 traderDiscount, uint256 referrerRebate) {
        (traderDiscount, referrerRebate) = _processTradeReferralWithCollateral(trader, feeAmount, collateralToken);

        return (traderDiscount, referrerRebate);
    }

    // ============ Internal Functions ============

    /// @notice Internal function to process trade referral with collateral tracking
    function _processTradeReferralWithCollateral(
        address trader,
        uint256 finalFeeAmount,
        address collateralToken
    ) internal returns (uint256 traderDiscount, uint256 referrerRebate) {
        // Reuse calculateReferralRewards for consistent calculation logic
        (traderDiscount, referrerRebate) = this.calculateReferralRewards(trader, finalFeeAmount, collateralToken);

        // If no rewards calculated, return early
        if (traderDiscount == 0 && referrerRebate == 0) {
            return (0, 0);
        }

        TraderReferralInfo storage traderInfo = traderReferrals[trader];
        ReferrerConfig storage config = referrerConfigs[traderInfo.referrer];

        // Record discount transaction if any
        if (traderDiscount > 0) {
            _recordDiscountTransaction(trader, collateralToken, traderDiscount);
        }

        // Record rebate transaction if any
        if (referrerRebate > 0) {
            _recordRebateTransaction(traderInfo.referrer, trader, collateralToken, referrerRebate);
        }

        // Update overall statistics
        config.totalVolume += finalFeeAmount;

        return (traderDiscount, referrerRebate);
    }

    /// @notice Record a discount transaction
    function _recordDiscountTransaction(
        address trader,
        address collateralToken,
        uint256 discountAmount
    ) internal {
        // Update trader's USD-based discount stats (across all collaterals)
        uint256 discountUsdValue = _convertToUsd(collateralToken, discountAmount);
        discountStats[trader].totalDiscountReceivedUsd += discountUsdValue;
    }

    /// @notice Record a rebate transaction
    function _recordRebateTransaction(
        address referrer,
        address trader,
        address collateralToken,
        uint256 rebateAmount
    ) internal {
        // Update referrer's USD-based rebate stats (across all collaterals)
        uint256 rebateUsdValue = _convertToUsd(collateralToken, rebateAmount);
        rebateStats[referrer].totalRebatesReceivedUsd += rebateUsdValue;

        // Update global monthly USD rebates for the referrer (for limit checking)
        _updateGlobalMonthlyUsdRebates(referrer, rebateUsdValue);

        // Emit event with current rebate amount only (original token amount)
        emit RebateEarned(referrer, trader, collateralToken, rebateAmount);
    }


    /// @notice Update global monthly USD rebate statistics for a referrer (across all collaterals)
    function _updateGlobalMonthlyUsdRebates(address referrer, uint256 usdRebateAmount) internal {
        ReferrerConfig storage config = referrerConfigs[referrer];
        uint256 currentMonth = block.timestamp / 30 days;
        uint256 lastMonth = config.currentMonthStart / 30 days;

        // Reset monthly stats if we've moved to a new month
        if (currentMonth > lastMonth) {
            config.currentMonthUsdRebates = 0;
            config.currentMonthStart = block.timestamp;
        }

        // Update total USD rebates for current month
        config.currentMonthUsdRebates += usdRebateAmount;
    }

    /// @notice Hash typed data according to EIP-712
    /// @param structHash The struct hash to sign
    /// @return The hash ready for signature
    function _hashReferralTypedDataV4(bytes32 structHash) internal view returns (bytes32) {
        bytes32 domainHash = keccak256(abi.encode(
            keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
            keccak256("ReferralManager"),
            keccak256("1"),
            block.chainid,
            address(this)
        ));
        return keccak256(abi.encodePacked("\x19\x01", domainHash, structHash));
    }

    // ============ View Functions ============

    /// @inheritdoc IReferralManager
    function getReferrerConfig(address referrer) external view returns (ReferrerConfig memory config) {
        return referrerConfigs[referrer];
    }

    /// @inheritdoc IReferralManager
    function getTraderReferralInfo(address trader) external view returns (TraderReferralInfo memory info) {
        return traderReferrals[trader];
    }


    /// @inheritdoc IReferralManager
    function getRebateStats(address referrer)
        external view returns (RebateStats memory stats) {
        return rebateStats[referrer];
    }


    /// @inheritdoc IReferralManager
    function isRegisteredReferrer(address referrer) external view returns (bool isRegistered) {
        return registeredReferrers[referrer];
    }

    /// @inheritdoc IReferralManager
    function calculateReferralRewards(address trader, uint256 feeAmount, address collateralToken)
        external view returns (uint256 traderDiscount, uint256 referrerRebate) {
        TraderReferralInfo storage traderInfo = traderReferrals[trader];

        // Return 0 if trader has no referral setup
        if (traderInfo.referrer == address(0)) {
            return (0, 0);
        }

        ReferrerConfig storage config = referrerConfigs[traderInfo.referrer];

        // Check validity conditions for discount
        if (!config.isActive ||
            config.expiresAt <= block.timestamp ||
            !isDiscountValid(trader)) {
            traderDiscount = 0;
        } else {
            traderDiscount = (feeAmount * config.discountRate) / BPS_DIVISOR;
        }

        // Calculate rebate based on final fee (after discount)
        uint256 finalFeeAmount = feeAmount - traderDiscount;

        // Check validity conditions for rebate
        if (!config.isActive ||
            config.expiresAt <= block.timestamp ||
            !isRebateValid(traderInfo.referrer, trader)) {
            referrerRebate = 0;
        } else {
            referrerRebate = (finalFeeAmount * config.rebateRate) / BPS_DIVISOR;

            // Check monthly rebate limit for estimation (convert to USD for comparison)
            if (referrerRebate > 0 && config.monthlyRebateLimit > 0) {
                uint256 remainingMonthlyAllowanceUsd = this.getRemainingMonthlyRebateAllowance(traderInfo.referrer);

                // Convert rebate amount to USD for comparison with USD limit
                uint256 rebateUsdValue = _convertToUsd(collateralToken, referrerRebate);

                // If rebate in USD exceeds remaining allowance, cap it
                if (rebateUsdValue > remainingMonthlyAllowanceUsd) {
                    // Convert remaining USD allowance back to token amount
                    // This is approximate reverse conversion: remainingUsd * 10^decimals / usdPrice
                    CollateralPriceConfig storage priceConfig = collateralPriceConfigs[collateralToken];
                    if (priceConfig.isActive && priceConfig.usdPrice > 0) {
                        referrerRebate = (remainingMonthlyAllowanceUsd * (10 ** priceConfig.decimals)) / priceConfig.usdPrice;
                    } else {
                        // Default 1:1 conversion for tokens like USDC
                        referrerRebate = remainingMonthlyAllowanceUsd;
                    }
                }
            }
        }

        return (traderDiscount, referrerRebate);
    }

    /// @inheritdoc IReferralManager
    function isReferrerConfigValid(address referrer) external view returns (bool isValid) {
        ReferrerConfig storage config = referrerConfigs[referrer];
        return config.isActive && config.expiresAt > block.timestamp;
    }

    /// @inheritdoc IReferralManager
    function isDiscountValid(address trader) public view returns (bool isValid) {
        TraderReferralInfo storage traderInfo = traderReferrals[trader];
        if (traderInfo.referrer == address(0)) return false;

        ReferrerConfig storage config = referrerConfigs[traderInfo.referrer];

        // Global override: if enabled, all bound traders enjoy permanent discount
        if (globalDiscountOverride) {
            return true;
        }

        // Check for permanent validity (avoid overflow)
        if (config.discountValidityDuration == 0 || config.discountValidityDuration == type(uint256).max) {
            return true;
        }

        // Time-based validity check
        return block.timestamp <= traderInfo.activatedAt + config.discountValidityDuration;
    }

    /// @inheritdoc IReferralManager
    function isRebateValid(address referrer, address trader) public view returns (bool isValid) {
        TraderReferralInfo storage traderInfo = traderReferrals[trader];
        if (traderInfo.referrer != referrer) return false;

        ReferrerConfig storage config = referrerConfigs[referrer];

        // Global override: if enabled, all bound traders enjoy permanent rebates
        if (globalRebateOverride) {
            return true;
        }

        // Check for permanent validity (avoid overflow)
        if (config.rebateValidityDuration == 0 || config.rebateValidityDuration == type(uint256).max) {
            return true;
        }

        // Time-based validity check
        return block.timestamp <= traderInfo.activatedAt + config.rebateValidityDuration;
    }



    /// @inheritdoc IReferralManager
    function getRemainingMonthlyRebateAllowance(address referrer)
        external view returns (uint256 remainingAllowance) {
        ReferrerConfig storage config = referrerConfigs[referrer];
        if (config.monthlyRebateLimit == 0) {
            return type(uint256).max; // No limit
        }

        // Use global monthly USD rebates (across all collaterals)
        uint256 currentMonth = block.timestamp / 30 days;
        uint256 lastMonth = config.currentMonthStart / 30 days;

        uint256 currentMonthUsdRebates;
        if (currentMonth > lastMonth) {
            // New month, no rebates yet
            currentMonthUsdRebates = 0;
        } else {
            // Same month, use global USD rebates
            currentMonthUsdRebates = config.currentMonthUsdRebates;
        }

        // Check against USD limit
        if (currentMonthUsdRebates >= config.monthlyRebateLimit) {
            return 0;
        }

        // Return remaining allowance in USD
        return config.monthlyRebateLimit - currentMonthUsdRebates;
    }

    // ============ UI Support Functions ============

    /// @inheritdoc IReferralManager
    function getReferrerDashboard(address referrer)
        external view returns (
            ReferrerConfig memory config,
            bool isActive
        ) {
        config = referrerConfigs[referrer];
        isActive = registeredReferrers[referrer] && config.isActive && config.expiresAt > block.timestamp;
    }

    /// @inheritdoc IReferralManager
    function getTraderReferralStatus(address trader)
        external view returns (
            TraderReferralInfo memory info,
            bool isDiscountActive,
            uint256 remainingDiscountTime
        ) {
        info = traderReferrals[trader];
        isDiscountActive = isDiscountValid(trader);

        if (info.referrer != address(0) && isDiscountActive) {
            ReferrerConfig storage config = referrerConfigs[info.referrer];
            if (config.discountValidityDuration == 0) {
                remainingDiscountTime = 0; // Unlimited
            } else {
                uint256 expiryTime = info.activatedAt + config.discountValidityDuration;
                remainingDiscountTime = expiryTime > block.timestamp ? expiryTime - block.timestamp : 0;
            }
        } else {
            remainingDiscountTime = 0;
        }
    }

    /// @inheritdoc IReferralManager
    function batchGetTradersReferralInfo(address[] calldata traders)
        external view returns (address[] memory referrers, bool[] memory discountsActive) {
        uint256 length = traders.length;
        referrers = new address[](length);
        discountsActive = new bool[](length);

        for (uint256 i = 0; i < length; i++) {
            TraderReferralInfo storage info = traderReferrals[traders[i]];
            referrers[i] = info.referrer;
            discountsActive[i] = isDiscountValid(traders[i]);
        }
    }

    /// @inheritdoc IReferralManager
    function getDiscountStats(address trader)
        external view returns (DiscountStats memory stats) {
        return discountStats[trader];
    }



    /// @inheritdoc IReferralManager
    function getTraderDiscountInfo(address trader)
        external view returns (
            TraderReferralInfo memory referralInfo,
            DiscountStats memory stats
        ) {
        referralInfo = traderReferrals[trader];
        stats = discountStats[trader];
    }

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
        )
    {
        ReferrerConfig storage config = referrerConfigs[referrer];
        return (config.monthlyRebateLimit, config.currentMonthStart, config.currentMonthUsdRebates);
    }

    /// @notice Convert token amount to USD value
    /// @param collateralToken The collateral token address
    /// @param amount Token amount
    /// @return usdValue USD value (scaled by 1e6)
    function convertToUsd(address collateralToken, uint256 amount)
        external view returns (uint256 usdValue)
    {
        return _convertToUsd(collateralToken, amount);
    }

    /// @notice Convert USD value to token amount
    /// @param collateralToken The collateral token address
    /// @param usdValue USD value (scaled by 1e6)
    /// @return amount Token amount
    function convertFromUsd(address collateralToken, uint256 usdValue)
        external view returns (uint256 amount)
    {
        return _convertFromUsd(collateralToken, usdValue);
    }
}