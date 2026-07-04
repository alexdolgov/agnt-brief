// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

import {Ownable2StepUpgradeable} from "@openzeppelin-upgradeable/contracts/access/Ownable2StepUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/contracts/proxy/utils/Initializable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Errors} from "../lib/Errors.sol";
import {Events} from "../lib/Events.sol";

/// @title FeeManager
/// @author Bundie Team
/// @notice Global fee configuration registry with delayed activation and UUPS upgradeability
/// @dev Key security property: vaults resolve fees by passing the *operation initiation timestamp* (`atTimestamp`).
///      This prevents “in-flight fee hikes” where an admin increases fees after a user initiates a deposit/withdrawal.
///
///      ## TL;DR
///      FeeManager centralizes fee configuration and implements the fee math + charging mechanics.
///      Vaults call `applyAndChargeFees(...)` during withdrawals/confirmations and (optionally) periodic accrual.
///
///      ## Fee types
///      - **Performance fee**: charged on realized profit **only** (never on principal).
///      - **Management fee**: time-based fee on principal over elapsed time (annualized bps).
///
///      ## Delayed activation + in-flight protection
///      - Fee *increases* are delayed (minimum `MIN_FEE_DELAY`) so users can exit.
///      - Vaults resolve fee config at `atTimestamp` (the initiation time of the user action), not at `block.timestamp`.
///        This prevents governance from “sniping” users by raising fees after initiation but before confirmation.
///
///      ## Call pattern (from a vault)
///      1. Vault computes/knows:
///         - principalBefore (cost basis)
///         - sharesBefore (position size)
///         - sharesWithdrawn + assetsReceived (for withdrawals) OR 0/0 (for mgmt-fee-only collection)
///         - lastAccrualBefore, nowTimestamp, atTimestamp
///      2. Vault approves this FeeManager to pull up to `assetsReceived` (or more for mgmt-fee-only).
///      3. Vault calls `applyAndChargeFees(...)`.
///      4. Vault updates its stored `principal` and `lastFeeAccrual` based on return values.
///
///      ## Non-reverting fee charging (important)
///      We intentionally avoid making withdrawals/confirmations unconfirmable due to fee payment issues:
///      - If allowance/balance is insufficient, we charge what we can (possibly 0) and emit an event.
///      - For mgmt-fee-only collection, we *skip* if the vault lacks liquid assets, preserving accrual timestamp.
///      This design trades "strict fee collection" for "liveness and fund recoverability".
///
/// @custom:invariant Performance fee <= MAX_PERFORMANCE_FEE_BPS (5000 = 50%)
/// @custom:invariant Management fee <= MAX_MANAGEMENT_FEE_BPS_ANNUAL (5000 = 50%)
/// @custom:invariant Fee increases require MIN_FEE_DELAY (1 day) delay; decreases are immediate
/// @custom:invariant applyAndChargeFees() never reverts (non-reverting by design)
/// @custom:invariant In-flight operations use fee config active at initiation time, not current config
/// @custom:trust Owner can schedule fee changes but cannot bypass the delay for increases
/// @custom:trust Vaults are trusted to pass correct atTimestamp (operation initiation time)
contract FeeManager is Initializable, Ownable2StepUpgradeable, UUPSUpgradeable {
    // ========================== Constants ==========================
    // Max 50% performance fee to prevent excessive extraction on profits
    uint16 public constant MAX_PERFORMANCE_FEE_BPS = 5000;
    // Max 50% annualized management fee (realistically protocols use 0.5-2%)
    uint16 public constant MAX_MANAGEMENT_FEE_BPS_ANNUAL = 5000;
    // Minimum delay before fee increases take effect (protects users from sudden hikes)
    uint48 public constant MIN_FEE_DELAY = 1 days;
    // 10000 basis points = 100%
    uint256 private constant BPS_DENOMINATOR = 1e4;
    // Used for annualizing management fees
    uint256 private constant SECONDS_PER_YEAR = 365 days;

    // ========================== Fee Configuration Struct ==========================
    /// @dev FeeConfig holds both performance and management fee parameters together
    ///      with a shared recipient. This ensures atomic fee updates and prevents
    ///      inconsistent states (e.g., fees set but no recipient).
    struct FeeConfig {
        // Performance fee in basis points (charged on realized profit only)
        uint16 perfFeeBps;
        // Management fee in basis points per year (charged on principal over time)
        uint16 mgmtFeeBpsAnnual;
        // Address that receives all fee payments (must be non-zero if any fee > 0)
        address recipient;
        // When used as pending: the timestamp after which this config becomes active.
        // When used as current/previous: MUST be 0 (indicates it's not a pending config).
        uint48 validAfter;
    }

    // ========================== Fee State Variables ==========================
    // The currently active fee configuration
    FeeConfig private _feeCurrent;
    // A scheduled fee change waiting to activate (validAfter > 0 if pending)
    FeeConfig private _feePending;
    // Previous config preserved for in-flight protection: operations initiated before
    // a fee change should use the old fee rates, not the new ones
    FeeConfig private _feePrevious;
    // Records when _feeCurrent was activated from _feePending.
    // Used to determine if an operation's atTimestamp should use _feePrevious.
    uint48 private _currentValidAfter;

    /// @custom:oz-upgrades-unsafe-allow constructor
    /// @dev Disables initializers on the implementation to prevent direct initialization.
    ///      Only the proxy should be initialized via the initialize() function.
    constructor() {
        // Prevent implementation from being initialized directly
        _disableInitializers();
    }

    // ========================== External View Functions ==========================
    // These functions allow external contracts and UIs to query fee configurations.
    // They use _resolveFeeConfig() which implements in-flight protection.

    /// @notice Get the performance fee config that applies at a given timestamp
    /// @dev Uses in-flight protection: returns config active at `atTimestamp`, not current time.
    /// @param atTimestamp Timestamp to resolve fee config for (typically operation initiation time)
    /// @return perfFeeBps Performance fee in basis points
    /// @return recipient Address that receives fee payments
    function getPerformanceFeeConfig(uint48 atTimestamp) external view returns (uint16 perfFeeBps, address recipient) {
        // Resolve which config applies at the given timestamp
        FeeConfig memory cfg = _resolveFeeConfig(atTimestamp);
        return (cfg.perfFeeBps, cfg.recipient);
    }

    /// @notice Get the management fee config that applies at a given timestamp
    /// @dev Uses in-flight protection: returns config active at `atTimestamp`, not current time.
    /// @param atTimestamp Timestamp to resolve fee config for (typically operation initiation time)
    /// @return mgmtFeeBpsAnnual Management fee in basis points per year
    /// @return recipient Address that receives fee payments
    function getManagementFeeConfig(uint48 atTimestamp)
        external
        view
        returns (uint16 mgmtFeeBpsAnnual, address recipient)
    {
        // Resolve which config applies at the given timestamp
        FeeConfig memory cfg = _resolveFeeConfig(atTimestamp);
        return (cfg.mgmtFeeBpsAnnual, cfg.recipient);
    }

    // ========================== External State-Changing Functions ==========================

    /// @notice Initialize the FeeManager contract
    /// @dev Initializes default fees to zero and sets the owner (usually a factory/multisig).
    ///      Called once by the ERC1967Proxy during deployment.
    /// @param owner_ Initial owner address (typically FeeManagerFactory)
    function initialize(address owner_) external initializer {
        // Initialize Ownable with the specified owner
        __Ownable_init(owner_);
        // Set default fee config: all zeros (no fees until explicitly configured)
        _feeCurrent = FeeConfig({perfFeeBps: 0, mgmtFeeBpsAnnual: 0, recipient: address(0), validAfter: 0});
    }

    /// @notice Schedule or set the global fee configuration (performance + management)
    /// @dev Both fee types are set atomically to prevent config collision when scheduling
    ///      changes to one type while the other has a pending change.
    ///      If delaySeconds == 0, updates immediately. Otherwise schedules with delay.
    ///      Increases to either fee require a minimum delay; decreases can be immediate.
    /// @param perfFeeBps Performance fee in basis points (max 5000 = 50%)
    /// @param mgmtFeeBpsAnnual Annual management fee in basis points (max 5000 = 50%)
    /// @param recipient Address to receive fee payments
    /// @param delaySeconds Delay before config activates (0 = immediate, must be >= MIN_FEE_DELAY for increases)
    function setFeeConfig(uint16 perfFeeBps, uint16 mgmtFeeBpsAnnual, address recipient, uint48 delaySeconds)
        external
        onlyOwner
    {
        _setFeeConfig(perfFeeBps, mgmtFeeBpsAnnual, recipient, delaySeconds);
    }

    /// @notice Apply fees (performance + management) and update position accounting
    /// @dev Called by vaults during withdrawal flows and periodic management-fee collection.
    ///
    /// ## Fee Calculation Logic
    /// - **Performance fee**: Applied to profit only (assetsReceived - principalPortion).
    ///   If withdrawing at a loss, no performance fee is charged.
    /// - **Management fee**: Time-based fee on principal, pro-rated by seconds elapsed.
    ///   Formula: principal × (mgmtBps / 10000) × (dt / SECONDS_PER_YEAR)
    ///
    /// ## Principal Accounting
    /// On partial withdrawals, principal is reduced proportionally to shares withdrawn.
    /// We round UP to prevent dust exploitation across many small withdrawals.
    ///
    /// ## Non-reverting Design
    /// This function intentionally does NOT revert if fee payment fails due to
    /// insufficient balance/allowance. This prevents cross-chain confirmations from
    /// getting stuck. Instead, we charge what we can and emit events.
    ///
    /// @param user Vault owner (for events only)
    /// @param strategyId Strategy identifier (for events only)
    /// @param assetToken Token used to pay fees (vault must approve this contract)
    /// @param positionId Position identifier (for indexing; not used in math)
    /// @param principalBefore Cost basis tracked by vault for this position
    /// @param sharesBefore Total shares in position before this operation
    /// @param sharesWithdrawn Shares being redeemed (0 for mgmt-fee-only collection)
    /// @param assetsReceived Assets from withdrawal (0 for mgmt-fee-only collection)
    /// @param lastAccrualBefore Last management fee accrual timestamp
    /// @param nowTimestamp Current timestamp (explicit to avoid repeated reads)
    /// @param atTimestamp When the user initiated the operation (for fee resolution)
    /// @param msgGuid Cross-chain correlation ID (bytes32(0) for local ops)
    /// @return principalAfter Updated cost basis after deducting withdrawn portion
    /// @return lastAccrualAfter Updated accrual timestamp (may be partial if underpaid)
    function applyAndChargeFees(
        address user,
        bytes32 strategyId,
        address assetToken,
        uint256 positionId,
        uint256 principalBefore,
        uint256 sharesBefore,
        uint256 sharesWithdrawn,
        uint256 assetsReceived,
        uint48 lastAccrualBefore,
        uint48 nowTimestamp,
        uint48 atTimestamp,
        bytes32 msgGuid
    ) external returns (uint256 principalAfter, uint48 lastAccrualAfter) {
        // Activate any pending fee config if its validAfter has passed
        _activatePendingIfReady();

        // Defensive: skip fee math if position is uninitialized or shares param invalid.
        // This prevents division-by-zero and nonsensical fee extraction.
        if (principalBefore == 0 || sharesBefore == 0 || sharesWithdrawn > sharesBefore) {
            return (principalBefore, nowTimestamp);
        }

        // CRITICAL: Resolve fees at the operation's initiation time (atTimestamp),
        // NOT at confirmation time (nowTimestamp). This prevents governance from
        // raising fees after a user initiates a cross-chain operation.
        FeeConfig memory cfg = _resolveFeeConfig(atTimestamp);

        // Extract fee parameters from resolved config into local variables.
        // Using local variables is more gas-efficient than repeated struct access.
        // perfFeeBps: performance fee in basis points (100 bps = 1%)
        uint16 perfFeeBps = cfg.perfFeeBps;
        // mgmtFeeBpsAnnual: annualized management fee in basis points
        uint16 mgmtFeeBpsAnnual = cfg.mgmtFeeBpsAnnual;
        // recipient: address that receives all fee payments
        address recipient = cfg.recipient;

        // Defensive cap: even if storage is somehow corrupted or manipulated,
        // we NEVER charge more than the hardcoded maximum fee rates.
        // This is a safety invariant that protects users from excessive fees.
        if (perfFeeBps > MAX_PERFORMANCE_FEE_BPS) perfFeeBps = MAX_PERFORMANCE_FEE_BPS;
        // Same defensive cap for management fee rate
        if (mgmtFeeBpsAnnual > MAX_MANAGEMENT_FEE_BPS_ANNUAL) mgmtFeeBpsAnnual = MAX_MANAGEMENT_FEE_BPS_ANNUAL;

        // principalPortion: the cost-basis portion corresponding to shares being withdrawn.
        // This represents "how much did the user originally pay for these shares?"
        uint256 principalPortion = 0;
        // profit: the realized gain above cost basis.
        // profit = assetsReceived - principalPortion (if positive)
        uint256 profit = 0;

        // ===== PRINCIPAL & PROFIT CALCULATION =====
        // This section determines:
        // 1. How much of the original cost basis (principal) is being withdrawn
        // 2. Whether there's profit to charge performance fees on
        if (sharesWithdrawn > 0) {
            bool isFull = (sharesWithdrawn == sharesBefore);

            // Pro-rata principal: principal × (sharesWithdrawn / sharesBefore)
            // ROUND UP to prevent dust exploitation: if a user makes many small
            // withdrawals, rounding down each time could leave principal dust
            // that accumulates and eventually avoids performance fees.
            principalPortion = isFull
                ? principalBefore
                : Math.mulDiv(principalBefore, sharesWithdrawn, sharesBefore, Math.Rounding.Ceil);

            // Clamp to principalBefore (rounding could theoretically exceed it)
            if (principalPortion > principalBefore) principalPortion = principalBefore;

            // Profit = what user received minus their cost basis for those shares
            // Only positive profit triggers performance fees
            if (assetsReceived > principalPortion) {
                profit = assetsReceived - principalPortion;
            }
            // Withdrawing at a loss (or breakeven): no profit, no perf fee.
            // Reduce principal by the share-proportional portion, NOT by
            // assetsReceived. This maintains accurate cost basis tracking.
            principalAfter = isFull ? 0 : (principalBefore - principalPortion);
        } else {
            // No shares withdrawn = management-fee-only collection
            principalAfter = principalBefore;
        }

        // ===== MANAGEMENT FEE CALCULATION =====
        // Management fee accrues continuously on principal over time.
        // We only charge for the period since last accrual to avoid double-charging.
        uint256 dt = 0;
        if (lastAccrualBefore != 0 && nowTimestamp > lastAccrualBefore) {
            dt = uint256(nowTimestamp - lastAccrualBefore);
        }
        // If lastAccrualBefore==0, position is new; don't charge retroactively from epoch.
        // If nowTimestamp <= lastAccrualBefore, time went backwards; skip (defensive).

        uint256 mgmtFeeAmount = 0;
        if (mgmtFeeBpsAnnual != 0 && recipient != address(0) && dt > 0) {
            // Formula: principal × bps × dt / (10000 × 365 days)
            // Example: 1000 USDC × 200 bps × 30 days / (10000 × 365 days) ≈ 1.64 USDC
            // Round UP to prevent dust loss across many positions (favors protocol).
            mgmtFeeAmount = Math.mulDiv(
                principalBefore, uint256(mgmtFeeBpsAnnual) * dt, BPS_DENOMINATOR * SECONDS_PER_YEAR, Math.Rounding.Ceil
            );
        }

        // ===== PERFORMANCE FEE CALCULATION =====
        // Only charged on realized profit (never on principal or losses)
        uint256 perfFeeAmount = 0;
        if (profit != 0 && perfFeeBps != 0 && recipient != address(0)) {
            // Example: 100 USDC profit × 2000 bps / 10000 = 20 USDC fee
            perfFeeAmount = Math.mulDiv(profit, perfFeeBps, BPS_DENOMINATOR);
        }

        // Total fee to attempt to charge
        uint256 totalFee = perfFeeAmount + mgmtFeeAmount;
        // ===== FEE CHARGING (NON-REVERTING) =====
        // CRITICAL DESIGN: We never revert due to fee payment issues.
        // Rationale: Cross-chain withdrawals must be confirmable even if fee
        // payment temporarily fails. Otherwise, user funds get stuck.
        if (totalFee > 0 && recipient != address(0)) {
            // --- Management-fee-only collection (no withdrawal happening) ---
            // If there's no liquid balance to pay from, skip entirely and preserve
            // the accrual timestamp so fees can be collected on next withdrawal.
            if (sharesWithdrawn == 0 && assetsReceived == 0) {
                uint256 available = IERC20(assetToken).balanceOf(msg.sender);
                if (available < totalFee) {
                    emit Events.FeeChargeSkippedInsufficientBalance(
                        user, strategyId, assetToken, totalFee, available, msgGuid
                    );
                    // Return ORIGINAL accrual timestamp so fees accrue for later
                    return (principalBefore, lastAccrualBefore);
                }
            }

            // --- Determine how much we can actually charge ---
            // We take the minimum of: vault balance, vault approval, and total fee owed
            uint256 availableBalance = IERC20(assetToken).balanceOf(msg.sender);
            uint256 availableAllowance = IERC20(assetToken).allowance(msg.sender, address(this));
            uint256 payableBalance = availableBalance < availableAllowance ? availableBalance : availableAllowance;
            uint256 feeToCharge = totalFee < payableBalance ? totalFee : payableBalance;

            // If we can't charge anything, skip but don't advance accrual
            if (feeToCharge == 0) {
                emit Events.FeeChargeSkippedInsufficientBalance(
                    user, strategyId, assetToken, totalFee, payableBalance, msgGuid
                );
                return (principalAfter, lastAccrualBefore);
            }

            // Partial payment: log the shortfall for monitoring
            if (feeToCharge < totalFee) {
                emit Events.FeeChargeSkippedInsufficientBalance(
                    user, strategyId, assetToken, totalFee, payableBalance, msgGuid
                );
            }

            // Transfer whatever we can charge
            SafeERC20.safeTransferFrom(IERC20(assetToken), msg.sender, recipient, feeToCharge);

            // --- Allocate payment: performance fee first, then management ---
            // This prioritization means if partial payment, perf fee gets priority.
            // Rationale: perf fee is a one-time event; mgmt fee can be caught up later.
            uint256 perfPaid = perfFeeAmount < feeToCharge ? perfFeeAmount : feeToCharge;
            uint256 mgmtPaid = feeToCharge - perfPaid;

            if (perfPaid > 0) {
                emit Events.PerformanceFeeCharged(user, strategyId, assetToken, profit, perfPaid, perfFeeBps, msgGuid);
            }
            if (mgmtPaid > 0) {
                emit Events.ManagementFeeCharged(
                    user,
                    strategyId,
                    assetToken,
                    principalBefore,
                    mgmtPaid,
                    mgmtFeeBpsAnnual,
                    lastAccrualBefore,
                    nowTimestamp
                );
            }

            // --- Advance accrual timestamp proportionally ---
            // If mgmt fee was fully paid: advance to now.
            // If partially paid: advance proportionally to prevent double-charging
            // the unpaid portion while still allowing catch-up later.
            // Example: if 50% of mgmt fee paid, advance 50% of the time period.
            if (mgmtFeeAmount == 0 || mgmtPaid >= mgmtFeeAmount) {
                lastAccrualAfter = nowTimestamp;
            } else {
                uint256 dtPaid = dt == 0 ? 0 : Math.mulDiv(dt, mgmtPaid, mgmtFeeAmount);
                lastAccrualAfter = uint48(uint256(lastAccrualBefore) + dtPaid);
            }
        }

        // Default: if no fees were charged, still advance accrual to now
        if (lastAccrualAfter == 0) lastAccrualAfter = nowTimestamp;
        return (principalAfter, lastAccrualAfter);
    }

    // ========================== Private Fee Configuration Helpers ==========================

    /// @dev Combined fee config setter. Both fee types are set atomically to prevent
    ///      config collision when scheduling changes independently.
    /// @param perfFeeBps Performance fee in basis points
    /// @param mgmtFeeBpsAnnual Annual management fee in basis points
    /// @param recipient Address to receive fee payments
    /// @param delaySeconds Delay before config activates (0 = immediate)
    function _setFeeConfig(uint16 perfFeeBps, uint16 mgmtFeeBpsAnnual, address recipient, uint48 delaySeconds) private {
        // Activate any pending config if ready (keeps state consistent)
        _activatePendingIfReady();

        // Validate fees don't exceed hardcoded maximums
        require(perfFeeBps <= MAX_PERFORMANCE_FEE_BPS, Errors.FeeBpsTooHigh(perfFeeBps, MAX_PERFORMANCE_FEE_BPS));
        require(
            mgmtFeeBpsAnnual <= MAX_MANAGEMENT_FEE_BPS_ANNUAL,
            Errors.FeeBpsTooHigh(mgmtFeeBpsAnnual, MAX_MANAGEMENT_FEE_BPS_ANNUAL)
        );

        // RECIPIENT VALIDATION: If ANY fee is non-zero, recipient must be set.
        require((perfFeeBps == 0 && mgmtFeeBpsAnnual == 0) || recipient != address(0), Errors.InvalidFeeRecipient());

        // Fee increases require minimum delay for user protection.
        // This includes going from 0 to any non-zero value (zero-to-nonzero),
        // so users who joined with no fees get an exit window before fees activate.
        FeeConfig memory current = _feeCurrent;
        if (perfFeeBps > current.perfFeeBps || mgmtFeeBpsAnnual > current.mgmtFeeBpsAnnual) {
            require(delaySeconds >= MIN_FEE_DELAY, Errors.FeeDelayTooShort(delaySeconds, MIN_FEE_DELAY));
        }

        if (delaySeconds == 0) {
            // IMMEDIATE: Update current config directly.
            // Preserve previous config for in-flight protection so operations initiated
            // before this change resolve using the old fee rates, not the new ones.
            _feePrevious = _feeCurrent;
            _currentValidAfter = uint48(block.timestamp);
            _feeCurrent = FeeConfig({
                perfFeeBps: perfFeeBps, mgmtFeeBpsAnnual: mgmtFeeBpsAnnual, recipient: recipient, validAfter: 0
            });
            delete _feePending;
            emit Events.FeeConfigSet(perfFeeBps, mgmtFeeBpsAnnual, recipient);
        } else {
            // DELAYED: Schedule config for future activation
            uint48 validAfter = uint48(block.timestamp) + delaySeconds;
            _feePending = FeeConfig({
                perfFeeBps: perfFeeBps, mgmtFeeBpsAnnual: mgmtFeeBpsAnnual, recipient: recipient, validAfter: validAfter
            });
            emit Events.FeeConfigScheduled(perfFeeBps, mgmtFeeBpsAnnual, recipient, validAfter);
        }
    }

    // ========================== Internal View Functions ==========================

    /// @dev Resolve the fee config that applies at `atTimestamp`.
    ///      This is the core "in-flight protection" mechanism:
    ///      - User initiates operation at time T1
    ///      - Governance raises fees at time T2 (T2 > T1)
    ///      - Operation confirms at time T3 (T3 > T2)
    ///      - We use the fee config that was active at T1, NOT T3
    ///
    ///      Order of precedence:
    ///      1. Pending config applies if atTimestamp >= pending.validAfter
    ///         (operation started after the pending config became active)
    ///      2. Previous config applies if atTimestamp < _currentValidAfter
    ///         (operation started before current config was activated)
    ///      3. Otherwise current config applies
    ///
    /// @param atTimestamp The timestamp when the operation was initiated
    /// @return cfg The fee configuration that should be used for this operation
    function _resolveFeeConfig(uint48 atTimestamp) internal view returns (FeeConfig memory cfg) {
        // Load pending config into memory
        FeeConfig memory pending = _feePending;

        // Case 1: If there's a pending config and operation started after its activation time,
        // use the pending config (it would be "current" from that operation's perspective)
        if (pending.validAfter != 0 && atTimestamp >= pending.validAfter) {
            return pending;
        }

        // Load the timestamp when current config was activated
        uint48 currentValidAfter = _currentValidAfter;

        // Case 2: If current was activated at some point, and operation started BEFORE that,
        // use the previous config (which was active when the operation started)
        if (currentValidAfter != 0 && atTimestamp < currentValidAfter) {
            return _feePrevious;
        }

        // Case 3: Default - use the current active config
        return _feeCurrent;
    }

    // ========================== Internal State-Changing Functions ==========================

    /// @dev Activate the pending config if `block.timestamp` has reached its activation time.
    ///      This preserves the previous config for historical timestamp resolution (in-flight protection).
    ///      Called at the start of all fee-modifying and fee-charging functions to ensure state is current.
    function _activatePendingIfReady() internal {
        // Load pending config into memory
        FeeConfig memory pending = _feePending;

        // Early exit if:
        // - No pending config (validAfter == 0)
        // - Pending config's activation time hasn't arrived yet
        if (pending.validAfter == 0 || block.timestamp < pending.validAfter) return;

        // === ACTIVATION LOGIC ===
        // 1. Preserve current config as "previous" for in-flight operations
        //    Operations that started before this moment should use _feePrevious
        _feePrevious = _feeCurrent;

        // 2. Record when the new config became active
        //    Used by _resolveFeeConfig to determine which config to use
        _currentValidAfter = pending.validAfter;

        // 3. Make pending config the new current config
        //    Clear validAfter since current config is immediately active
        _feeCurrent = FeeConfig({
            perfFeeBps: pending.perfFeeBps,
            mgmtFeeBpsAnnual: pending.mgmtFeeBpsAnnual,
            recipient: pending.recipient,
            validAfter: 0 // Current config has no pending activation
        });

        // 4. Clear the pending slot (no longer pending)
        delete _feePending;

        // 5. Emit event for off-chain tracking
        emit Events.FeeConfigSet(_feeCurrent.perfFeeBps, _feeCurrent.mgmtFeeBpsAnnual, _feeCurrent.recipient);
    }

    /// @notice Authorize upgrade to new implementation
    function _authorizeUpgrade(address newImplementation) internal override onlyOwner {}
}
