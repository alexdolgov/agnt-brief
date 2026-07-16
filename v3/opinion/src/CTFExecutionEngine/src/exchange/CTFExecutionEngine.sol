// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import { Auth } from "./mixins/Auth.sol";
import { Fees } from "./mixins/Fees.sol";
import { Assets } from "./mixins/Assets.sol";
import { Hashing } from "./mixins/Hashing.sol";
import { Trading } from "./mixins/Trading.sol";
import { Pausable } from "./mixins/Pausable.sol";
import { Registry } from "./mixins/Registry.sol";
import { Signatures } from "./mixins/Signatures.sol";
import { AssetOperations } from "./mixins/AssetOperations.sol";
import { IReferralManager } from "./interfaces/IReferralManager.sol";
import { IFeeEstimation } from "./interfaces/IFeeEstimation.sol";
import { TraderReferralInfo } from "./libraries/ReferralStructs.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

import { BaseExchange } from "./BaseExchange.sol";
import { Order } from "./libraries/OrderStructs.sol";

/// @title CTF Execution Engine
/// @notice Core trading logic with essential mixins only
/// @author OLAB
contract CTFExecutionEngine is
    BaseExchange,
    Auth,
    Assets,
    Fees,
    Pausable,
    AssetOperations,
    Hashing("OLAB CTF Exchange", "1"),
    Registry,
    Signatures,
    Trading
{
    // External referral manager (optional). When unset, referrals are disabled.
    IReferralManager public referralManager;
    // External fee manager (optional but recommended). If unset, engine falls back to order values.
    IFeeEstimation public feeManager;

    /// @notice Tracks cumulative fees paid for each order hash to avoid multiple minimum fee charges
    mapping(bytes32 => uint256) public orderCumulativeFees;

    event ReferralManagerUpdated(address indexed previous, address indexed current);

    constructor(address _collateral, address _ctf, address _proxyFactory, address _safeFactory)
        Assets(_collateral, _ctf)
        Signatures(_proxyFactory, _safeFactory)
    {
        _setTreasury(msg.sender);
    }

    function pauseTrading() external onlyAdmin {
        _pauseTrading();
    }

    function unpauseTrading() external onlyAdmin {
        _unpauseTrading();
    }

    function registerToken(uint256 token, uint256 complement, bytes32 conditionId) external onlyOperator {
        _registerToken(token, complement, conditionId);
    }

    /// @notice Sets external referral manager. Set to address(0) to disable referrals.
    function setReferralManager(address _referralManager) external onlyOperator {
        address previous = address(referralManager);
        referralManager = IReferralManager(_referralManager);
        emit ReferralManagerUpdated(previous, _referralManager);
    }

    /// @notice Sets external fee manager. Set to address(0) to disable custom fee rates.
    function setFeeManager(address _feeManager) external onlyOperator {
        feeManager = IFeeEstimation(_feeManager);
    }

    // Core trading function
    function matchOrders(
        Order memory takerOrder,
        Order[] memory makerOrders,
        uint256 takerFillAmount,
        uint256[] memory makerFillAmounts
    ) external nonReentrant onlyOperator notPaused {
        (uint256 makerFeeBps, uint256 takerFeeBps, bool enabled, uint256 minFee) = _getFeeSettings(takerOrder.tokenId);

        // Gas optimization: avoid conditional logic by using ternary operators
        uint256 finalTakerFee = enabled ? takerFeeBps : takerOrder.feeRateBps;
        uint256 finalMakerFee = enabled ? makerFeeBps : (makerOrders.length > 0 ? makerOrders[0].feeRateBps : 0);
        // If token ID not configured, get global min fee from FeeManager
        uint256 finalMinFee = enabled ? minFee : _getGlobalDefaultMinFee();

        _executeMatch(
            takerOrder,
            makerOrders,
            takerFillAmount,
            makerFillAmounts,
            finalTakerFee,
            finalMakerFee,
            0,
            0,
            finalMinFee
        );
    }

    // Core trading function with explicit discounts
    function advancedMatchOrders(
        Order memory takerOrder,
        Order[] memory makerOrders,
        uint256 takerFillAmount,
        uint256[] memory makerFillAmounts,
        uint256 takerDiscountBps,
        uint256 makerDiscountBps
    ) external nonReentrant onlyOperator notPaused {
        require(takerDiscountBps <= 10_000, "Invalid taker discount");
        require(makerDiscountBps <= 10_000, "Invalid maker discount");

        (uint256 makerFee, uint256 takerFee, bool enabled, uint256 minFee) = _getFeeSettings(takerOrder.tokenId);
        if (!enabled) {
            takerFee = takerOrder.feeRateBps;
            makerFee = makerOrders.length > 0 ? makerOrders[0].feeRateBps : 0;
            // If token ID not configured, get global min fee from FeeManager
            minFee = _getGlobalDefaultMinFee();
        }

        _executeMatch(
            takerOrder,
            makerOrders,
            takerFillAmount,
            makerFillAmounts,
            takerFee,
            makerFee,
            takerDiscountBps,
            makerDiscountBps,
            minFee
        );
    }

    // Calculate referral rewards only (no transfers - handled by Trading.sol)
    function _processTradeReferral(address trader, uint256 feeAmount)
        internal
        view
        override
        returns (uint256 traderDiscount, uint256 referrerRebate)
    {
        // If no referral manager set, referrals are disabled
        if (address(referralManager) == address(0)) {
            return (0, 0);
        }

        // Only calculate rewards, don't transfer funds
        // Get default collateral token from fee manager
        address collateralToken = address(feeManager) != address(0) ? feeManager.defaultCollateralToken() : address(0);
        (traderDiscount, referrerRebate) = referralManager.calculateReferralRewards(trader, feeAmount, collateralToken);


        // NOTE: Removed fund transfers - now handled properly in Trading.sol
        // The new architecture ensures referrer rebates come from user fees, not engine balance
        
        return (traderDiscount, referrerRebate);
    }

    // View-only referral calculation via Exchange
    function _calculateTradeReferralOnly(address trader, uint256 feeAmount) internal view override returns (uint256, uint256) {
        if (address(referralManager) == address(0)) {
            return (0, 0);
        }
        // Get default collateral token from fee manager
        address collateralToken = address(feeManager) != address(0) ? feeManager.defaultCollateralToken() : address(0);
        return referralManager.calculateReferralRewards(trader, feeAmount, collateralToken);
    }

    function _getFeeSettings(uint256 tokenId)
        internal
        view
        returns (uint256 makerFeeRateBps, uint256 takerFeeRateBps, bool enabled, uint256 minFeeAmount)
    {
        if (address(feeManager) != address(0)) {
            return feeManager.getFeeRateSettings(tokenId);
        }
        // No feeManager set: fall back to disabled custom settings
        return (0, 0, false, 0);
    }

    /// @notice Get global default minimum fee from FeeManager for Engine's collateral token
    /// @return minFee The global default minimum fee amount
    function _getGlobalDefaultMinFee() internal view returns (uint256 minFee) {
        if (address(feeManager) != address(0)) {
            // Get min fee for Engine's specific collateral token, not just the default
            return feeManager.getCollateralGlobalMinFee(getCollateral());
        }
        return 0; // No fee manager, no minimum fee
    }

    /// @notice Gets the referrer address for a trader (overrides Trading.sol)
    /// @param trader The trader address
    /// @return referrer The referrer address (zero if no referrer)
    function _getTraderReferrerAddress(address trader) internal view override returns (address referrer) {
        if (address(referralManager) == address(0)) {
            return address(0);
        }
        TraderReferralInfo memory info = referralManager.getTraderReferralInfo(trader);
        return info.referrer;
    }

    /// @notice Get collateral token precision (overrides Trading.sol)
    /// @return precision The collateral token precision (10^decimals)
    function _getCollateralPrecision() internal view override returns (uint256 precision) {
        try IERC20Metadata(collateral).decimals() returns (uint8 decimals) {
            return 10 ** decimals;
        } catch {
            // Fallback to 18 decimals if decimals() call fails
            return 1e18;
        }
    }

    /// @notice Get collateral token address (overrides Trading.sol)
    /// @return The collateral token address
    function _getCollateralTokenAddress() internal view override returns (address) {
        return collateral;
    }

    /// @notice Hook called after rebate payment (overrides Trading.sol)
    /// @param trader The trader who generated the fee
    /// @param referrer The referrer receiving the rebate
    /// @param rebateAmount The rebate amount paid
    /// @param totalFeeAmount The total fee amount before rebate deduction
    /// @param collateralToken The collateral token address
    function _onRebatePaid(
        address trader,
        address referrer,
        uint256 rebateAmount,
        uint256 totalFeeAmount,
        address collateralToken
    ) internal override {
        // If no referral manager, skip
        if (address(referralManager) == address(0)) {
            return;
        }

        // Call referral manager to record stats and emit event
        referralManager.recordRebatePayment(
            trader,
            referrer,
            rebateAmount,
            totalFeeAmount,
            collateralToken
        );
    }

    /// @notice Hook called after discount is applied (overrides Trading.sol)
    /// @param trader The trader who received the discount
    /// @param discountAmount The discount amount
    /// @param collateralToken The collateral token address
    function _onDiscountApplied(
        address trader,
        uint256 discountAmount,
        address collateralToken
    ) internal override {
        // If no referral manager, skip
        if (address(referralManager) == address(0)) {
            return;
        }

        // Call referral manager to record discount stats
        referralManager.recordDiscountUsage(
            trader,
            collateralToken,
            discountAmount
        );
    }

    /// @notice Get fee manager (overrides Trading.sol)
    /// @return The fee manager interface
    function _getFeeManager() internal view override returns (IFeeEstimation) {
        return feeManager;
    }

    /// @notice Get referral manager (overrides Trading.sol)
    /// @return The referral manager interface
    function _getReferralManager() internal view override returns (IReferralManager) {
        return referralManager;
    }

    /// @notice Get user discount rate (overrides Trading.sol)
    /// @param user The user address
    /// @return discountBps The discount rate in basis points
    function _getUserDiscountBps(address user) internal view override returns (uint256 discountBps) {
        // Use fee manager if available to get user tier discount
        if (address(feeManager) != address(0)) {
            (uint256 userTierDiscountBps,) = feeManager.getUserDiscountInfo(user);
            return userTierDiscountBps;
        }
        // Fallback: no discount
        return 0;
    }

    /// @notice Get cumulative fee paid for an order (overrides Trading.sol)
    /// @param orderHash The order hash
    /// @return cumulativeFee The cumulative fee already paid for this order
    function _getOrderCumulativeFee(bytes32 orderHash) internal view override returns (uint256 cumulativeFee) {
        return orderCumulativeFees[orderHash];
    }

    /// @notice Update cumulative fee for an order (overrides Trading.sol)
    /// @param orderHash The order hash
    /// @param additionalFee The additional fee to add to cumulative total
    function _updateOrderCumulativeFee(bytes32 orderHash, uint256 additionalFee) internal override {
        orderCumulativeFees[orderHash] += additionalFee;
    }

    /// @notice Get referrer's monthly rebate limit and current usage (overrides Trading.sol)
    /// @param referrer The referrer address
    /// @return monthlyRebateLimit Monthly limit in USD (scaled by 1e6)
    /// @return currentMonthStart Timestamp of current month start
    /// @return currentMonthUsdRebates Total USD rebates paid this month
    function _getReferrerMonthlyLimit(address referrer)
        internal
        view
        override
        returns (
            uint256 monthlyRebateLimit,
            uint256 currentMonthStart,
            uint256 currentMonthUsdRebates
        )
    {
        if (address(referralManager) == address(0)) {
            return (0, 0, 0);
        }
        return referralManager.getReferrerMonthlyLimit(referrer);
    }

    /// @notice Convert token amount to USD value (overrides Trading.sol)
    /// @param collateralToken The collateral token address
    /// @param amount Token amount
    /// @return usdValue USD value (scaled by 1e6)
    function _convertToUsd(address collateralToken, uint256 amount)
        internal
        view
        override
        returns (uint256 usdValue)
    {
        if (address(referralManager) == address(0)) {
            return amount; // Default: 1:1
        }
        return referralManager.convertToUsd(collateralToken, amount);
    }

    /// @notice Convert USD value to token amount (overrides Trading.sol)
    /// @param collateralToken The collateral token address
    /// @param usdValue USD value (scaled by 1e6)
    /// @return amount Token amount
    function _convertFromUsd(address collateralToken, uint256 usdValue)
        internal
        view
        override
        returns (uint256 amount)
    {
        if (address(referralManager) == address(0)) {
            return usdValue; // Default: 1:1
        }
        return referralManager.convertFromUsd(collateralToken, usdValue);
    }
}
