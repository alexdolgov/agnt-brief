// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { PegStabilityModule } from "./PegStabilityModule.sol";
import { IPegStabilityModuleWithStrategy } from "../Interfaces/IPegStabilityModuleWithStrategy.sol";
import { IPegStabilityModule_WithInit } from "../Interfaces/IPegStabilityModule.sol";
import { IPSMStrategy } from "../Interfaces/IPSMStrategy.sol";
import { IVersionable } from "../Interfaces/IVersionable.sol";
import { Timelockable2StepUpgradeable } from "../Dependencies/Timelockable2StepUpgradeable.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/// @title PegStabilityModuleWithStrategy
/// @notice PegStabilityModule extension that deploys excess peg-token liquidity into an external strategy.
/// @dev Strategy rotation (`setStrategy`) reverts if the previous strategy refuses to withdraw; operators must plan an upgrade path for stuck strategies.
///
/// STRATEGY TRUST MODEL:
/// This contract fully trusts the configured strategy implementation and assumes:
/// 1. Strategy accurately reports holdings via `totalHoldings()`
/// 2. Strategy honors withdrawal requests up to available liquidity
/// 3. Strategy restricts `deposit()` and `withdraw()` to this PSM only
/// 4. Strategy does not perform reentrancy attacks
/// 5. Strategy's `underlying()` token matches this PSM's `pegToken`
///
/// SECURITY CONSIDERATIONS:
/// - Strategy losses are detected and logged but do not automatically disable the strategy
/// - Operators should monitor PSMStrategyLossRealized events and respond accordingly
/// - For production deployments, strategies should be audited and battle-tested
/// - Consider using strategies from established protocols (Aave, Compound, Yearn, etc.)
/// - setStrategy() is protected by onlyTimelock to prevent admin bypass attacks
///
/// UPGRADEABILITY:
/// - Contract is upgradeable via OZ TransparentProxy pattern (inherited from PegStabilityModule)
/// - Storage layout must be preserved across upgrades (see __gap)
/// - Strategy can be changed via `setStrategy()` which withdraws all funds from previous strategy
///
/// ACCESS CONTROL:
/// - setStrategy() requires onlyTimelock (self-governing, cannot be bypassed by DEFAULT_ADMIN)
/// - Other strategy management functions use CONFIG_ROLE
/// - Timelock transfer is two-step: transferTimelock() + acceptTimelock()
contract PegStabilityModuleWithStrategy is
    PegStabilityModule,
    IPegStabilityModuleWithStrategy,
    Timelockable2StepUpgradeable
{
    using SafeERC20 for IERC20Metadata;

    // ------------------------------------------------------------------------
    // State
    // ------------------------------------------------------------------------

    IPSMStrategy public strategy;
    uint256 private _strategyUtilizationCap; // 1e18 = 100%
    uint256 private _strategyPegTokenDeposits; // Peg token principal deployed into strategy
    uint256 private _strategyRebalanceThreshold; // 1e18 precision drift tolerance

    // Storage gap reserved for future upgrades (keep near other state vars for clarity).
    uint256[50] private __gap;

    // ------------------------------------------------------------------------
    // Constants
    // ------------------------------------------------------------------------

    /**
     * @notice Contract version following semantic versioning
     * MAJOR versions MUST be storage upgrade compatible
     *
     * ## Changelog
     *
     * ### v1.1.0 (December 3, 2025)
     * - BREAKING: setStrategy() now requires onlyTimelock instead of DEFAULT_ADMIN_ROLE
     * - BREAKING: initialize() now requires initialTimelock parameter
     * - Added Timelockable2StepUpgradeable for self-governing timelock protection
     * - Timelock transfer is two-step: transferTimelock() + acceptTimelock()
     * - Prevents admin bypass attacks on critical strategy configuration
     *
     * ### v1.0.0 (November 2025)
     * - Initial implementation of PegStabilityModuleWithStrategy
     * - Extends PegStabilityModule with external yield strategy integration
     * - Strategy deposit/withdrawal management with automatic rebalancing
     * - Configurable utilization cap for strategy allocation (0-100%)
     * - Rebalance threshold for drift tolerance before triggering rebalances
     * - Automatic yield harvesting with fee collection
     * - Strategy loss detection and reporting via events
     * - Principal vs yield accounting for transparent strategy performance
     * - Liquidity provision for redemptions via automatic strategy withdrawals
     * - Manual strategy management controls (deposit, withdraw, rebalance, harvest)
     * - Strategy rotation support via setStrategy() with full withdrawal
     * - Lifecycle hooks override for post-mint/redeem rebalancing
     * - Compatible with standard yield strategies (Aave, Compound, Yearn, etc.)
     */

    /// @inheritdoc IVersionable
    function VERSION() external pure override returns (string memory) {
        return "1.1.0_PegStabilityModuleWithStrategy";
    }

    // ------------------------------------------------------------------------
    // Events
    // ------------------------------------------------------------------------

    event PSMStrategyUpdated(address indexed previousStrategy, address indexed newStrategy);
    event PSMStrategyUtilizationCapUpdated(uint256 previousCap, uint256 newCap);
    event PSMStrategyDeposit(address indexed strategy, uint256 amount);
    event PSMStrategyWithdraw(address indexed strategy, uint256 withdrawn);
    event PSMStrategyRebalanced(
        address indexed strategy,
        uint256 onHandBefore,
        uint256 investedBefore,
        uint256 target,
        uint256 movedToStrategy,
        uint256 movedToPSM
    );
    event PSMStrategyYieldHarvested(address indexed strategy, uint256 yieldAmount, bool collateralized);
    event PSMStrategyRebalanceThresholdUpdated(uint256 previousThreshold, uint256 newThreshold);
    event PSMStrategy_TotalHoldingsInvariantFound(address indexed strategy, uint256 holdings, uint256 expectedHoldings);
    event PSMStrategyLossRealized(address indexed strategy, uint256 lossAmount);
    event PSMStrategyPrincipalUpdated(uint256 previousPrincipal, uint256 newPrincipal);

    // ------------------------------------------------------------------------
    // Errors
    // ------------------------------------------------------------------------

    error PSMStrategy_CapAboveMax();
    error PSMStrategy_StrategyNotSet();
    error PSMStrategy_InvalidUnderlying();
    error PSMStrategy_InvalidPSM();
    error PSMStrategy_InvalidThreshold();
    error PSMStrategy_RemainingPrincipal(uint256 remainingPrincipal);
    error PSMStrategy_OverWithdraw(uint256 requested, uint256 actual);
    error PSMStrategy_PrincipalTouchedInHarvest();

    // ------------------------------------------------------------------------
    // Initialization
    // ------------------------------------------------------------------------

    /// @notice Initializes the PSM with strategy support
    /// @param params Base PSM initialization parameters
    /// @param initialStrategy Optional strategy address (use address(0) to skip)
    /// @param initialUtilizationCap Strategy utilization cap (1e18 = 100%)
    /// @param initialRebalanceThreshold Rebalance drift threshold (1e18 = 100%)
    /// @param initialTimelock The timelock address that will control setStrategy (cannot be zero)
    function initialize(
        IPegStabilityModule_WithInit.InitializeParams calldata params,
        address initialStrategy,
        uint256 initialUtilizationCap,
        uint256 initialRebalanceThreshold,
        address initialTimelock
    ) external initializer {
        __PegStabilityModuleWithStrategy_init(
            params,
            initialStrategy,
            initialUtilizationCap,
            initialRebalanceThreshold,
            initialTimelock
        );
    }

    /// @dev Internal initializer for strategy-specific state
    function __PegStabilityModuleWithStrategy_init(
        IPegStabilityModule_WithInit.InitializeParams calldata params,
        address initialStrategy,
        uint256 initialUtilizationCap,
        uint256 initialRebalanceThreshold,
        address initialTimelock
    ) internal onlyInitializing {
        // Initialize parent
        __PegStabilityModule_init(params);

        // Initialize timelock (required, cannot be zero)
        __Timelockable2Step_init(initialTimelock);

        // Validate strategy parameters
        if (initialUtilizationCap > PRECISION) revert PSMStrategy_CapAboveMax();
        if (initialRebalanceThreshold > PRECISION) revert PSMStrategy_InvalidThreshold();

        // Set strategy configuration
        _strategyUtilizationCap = initialUtilizationCap;
        _strategyRebalanceThreshold = initialRebalanceThreshold;

        // Optionally set initial strategy
        if (initialStrategy != address(0)) {
            _setStrategy(IPSMStrategy(initialStrategy));
        }
    }

    // ------------------------------------------------------------------------
    // Modifiers
    // ------------------------------------------------------------------------

    /// @dev Reverts if no strategy is currently set
    modifier whenStrategyActive() {
        if (address(strategy) == address(0)) revert PSMStrategy_StrategyNotSet();
        _;
    }

    // ------------------------------------------------------------------------
    // Hooks
    // ------------------------------------------------------------------------

    function _afterMint(address account, uint256 pegIn, uint256 debtOut, uint256 pegTokenFee) internal override {
        super._afterMint(account, pegIn, debtOut, pegTokenFee);
        _rebalanceStrategy();
    }

    function _afterRedeem(address account, uint256 debtIn, uint256 grossPegOut, uint256 pegTokenFee) internal override {
        super._afterRedeem(account, debtIn, grossPegOut, pegTokenFee);
        _rebalanceStrategy();
    }

    /// @notice Prepare liquidity for redemption by pulling deficit from strategy if needed
    /// @dev Attempts to withdraw shortfall from strategy; if insufficient, redemption will fail with PSM_InsufficientPegBalance
    function _beforeRedeem(address account, uint256 debtIn, uint256 grossPegOut, uint256 pegTokenFee) internal override {
        super._beforeRedeem(account, debtIn, grossPegOut, pegTokenFee);
        if (address(strategy) == address(0)) return;

        (uint256 onHand, ) = _currentHoldings();
        if (grossPegOut <= onHand) return;

        uint256 deficit = grossPegOut - onHand;
        uint256 available = strategy.totalHoldings();
        uint256 toWithdraw = deficit > available ? available : deficit;
        if (toWithdraw == 0) return;

        // Redemptions can use principal if needed - forbidPrincipalUse = false
        _withdrawFromStrategy(toWithdraw, false);
    }

    // ------------------------------------------------------------------------
    // Views
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModuleWithStrategy
    function strategyUtilizationCap() public view override returns (uint256) {
        return _strategyUtilizationCap;
    }

    /// @inheritdoc IPegStabilityModuleWithStrategy
    function strategyUtilization() public view override returns (uint256 utilization) {
        (uint256 onHand, uint256 invested) = _currentHoldings();
        uint256 total = onHand + invested;
        if (total == 0) return 0;
        return (invested * PRECISION) / total;
    }

    /// @inheritdoc IPegStabilityModuleWithStrategy
    function strategyPegTokenDeposits() public view override returns (uint256) {
        return _strategyPegTokenDeposits;
    }

    /// @inheritdoc IPegStabilityModuleWithStrategy
    function strategyRebalanceThreshold() public view override returns (uint256) {
        return _strategyRebalanceThreshold;
    }

    // ------------------------------------------------------------------------
    // Admin: Strategy configuration (onlyTimelock)
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModuleWithStrategy
    /// @dev Protected by onlyTimelock to prevent admin bypass - timelock is self-governing
    function setStrategy(IPSMStrategy newStrategy) external override onlyTimelock {
        _setStrategy(newStrategy);
    }

    function _setStrategy(IPSMStrategy newStrategy) internal {
        address previous = address(strategy);
        if (previous == address(newStrategy)) {
            return;
        }

        if (previous != address(0)) {
            _withdrawAllFromStrategy();
            pegToken.safeApprove(previous, 0);

            // Ensure no residual principal remains in the old strategy
            if (_strategyPegTokenDeposits != 0) {
                revert PSMStrategy_RemainingPrincipal(_strategyPegTokenDeposits);
            }

            // Explicitly keep principal at zero when fully withdrawn
            _strategyPegTokenDeposits = 0;
        }

        strategy = newStrategy;
        emit PSMStrategyUpdated(previous, address(newStrategy));

        if (address(newStrategy) != address(0)) {
            if (address(pegToken) != address(strategy.underlying())) {
                revert PSMStrategy_InvalidUnderlying();
            }

            if (_strategyUtilizationCap > 0) {
                _rebalanceStrategy();
            }
        }
    }

    // ------------------------------------------------------------------------
    // Admin: manual portfolio controls (CONFIG_ROLE)
    // ------------------------------------------------------------------------

    /// @notice Manually withdraws funds from the active strategy to the PSM
    function withdrawFromStrategy(
        uint256 amount
    ) external override onlyRole(CONFIG_ROLE) nonReentrant whenStrategyActive {
        if (amount == 0) return;
        _harvestStrategyYield();

        // Manual withdrawals can use principal if needed
        _withdrawFromStrategy(amount, false);
    }

    /// @notice Manually deposits peg tokens held by the PSM into the strategy
    function depositIntoStrategy(
        uint256 amount
    ) external override onlyRole(CONFIG_ROLE) nonReentrant whenStrategyActive {
        if (amount == 0) return;
        _approveAndDeposit(amount);
        emit PSMStrategyDeposit(address(strategy), amount);
    }

    /// @notice Triggers a strategy rebalance using the configured utilization cap
    function rebalanceStrategy() external override onlyRole(CONFIG_ROLE) nonReentrant {
        _rebalanceStrategy();
    }

    // ------------------------------------------------------------------------
    // Admin: Strategy configuration (CONFIG_ROLE)
    // ------------------------------------------------------------------------

    /// @inheritdoc IPegStabilityModuleWithStrategy
    function setStrategyUtilizationCap(uint256 utilizationCap) external override onlyRole(CONFIG_ROLE) {
        if (utilizationCap > PRECISION) revert PSMStrategy_CapAboveMax();
        uint256 previous = _strategyUtilizationCap;
        _strategyUtilizationCap = utilizationCap;
        emit PSMStrategyUtilizationCapUpdated(previous, utilizationCap);

        if (utilizationCap == 0) {
            _withdrawAllFromStrategy();
        } else if (address(strategy) != address(0)) {
            _rebalanceStrategy();
        }
    }

    /// @inheritdoc IPegStabilityModuleWithStrategy
    function setStrategyRebalanceThreshold(uint256 newThreshold) external override onlyRole(CONFIG_ROLE) {
        if (newThreshold > PRECISION) revert PSMStrategy_InvalidThreshold();
        uint256 previous = _strategyRebalanceThreshold;
        _strategyRebalanceThreshold = newThreshold;
        emit PSMStrategyRebalanceThresholdUpdated(previous, newThreshold);
    }

    /// @inheritdoc IPegStabilityModuleWithStrategy
    function harvestStrategyYield() external override onlyRole(CONFIG_ROLE) nonReentrant whenStrategyActive {
        _harvestStrategyYield();
    }

    // ------------------------------------------------------------------------
    // Internal helpers
    // ------------------------------------------------------------------------

    /// @notice Automatically rebalances strategy holdings to match configured utilization cap
    /// @dev Called after mint/redeem operations and manual rebalance requests
    /// @dev Skips rebalancing if drift is within configured threshold
    /// @dev Harvests yield before rebalancing to ensure accurate accounting
    function _rebalanceStrategy() internal {
        if (address(strategy) == address(0) || _strategyUtilizationCap == 0) {
            return;
        }

        _harvestStrategyYield();

        (uint256 onHand, uint256 invested) = _currentHoldings();
        uint256 total = onHand + invested;
        if (total == 0) return;

        uint256 target = (total * _strategyUtilizationCap) / PRECISION;
        uint256 movedToStrategy = 0;
        uint256 movedToPSM = 0;

        if (_strategyRebalanceThreshold > 0) {
            uint256 driftAllowed = (total * _strategyRebalanceThreshold) / PRECISION;
            uint256 delta = invested > target ? invested - target : target - invested;
            if (delta <= driftAllowed) {
                return;
            }
        } else if (invested == target) {
            return;
        }

        if (invested > target) {
            uint256 excess = invested - target;
            if (excess > 0) {
                // Rebalancing can use principal if needed
                (uint256 actualWithdrawn, ) = _withdrawFromStrategy(excess, false);
                movedToPSM = actualWithdrawn;
            }
        } else {
            uint256 deficit = target - invested;
            if (deficit > onHand) {
                deficit = onHand;
            }
            if (deficit > 0) {
                _approveAndDeposit(deficit);
                movedToStrategy = deficit;
            }
        }

        emit PSMStrategyRebalanced(address(strategy), onHand, invested, target, movedToStrategy, movedToPSM);
    }

    /// @notice Approves and deposits peg tokens into the active strategy
    /// @dev Uses approve(0) -> approve(amount) -> approve(0) pattern for safety
    /// @param amount Amount of peg tokens to deposit
    function _approveAndDeposit(uint256 amount) internal {
        if (amount == 0) return;
        pegToken.safeApprove(address(strategy), 0);
        pegToken.safeApprove(address(strategy), amount);
        strategy.deposit(amount);
        pegToken.safeApprove(address(strategy), 0);

        uint256 previousPrincipal = _strategyPegTokenDeposits;
        _strategyPegTokenDeposits += amount;
        emit PSMStrategyPrincipalUpdated(previousPrincipal, _strategyPegTokenDeposits);
    }

    /// @notice Withdraws all available funds from the active strategy
    /// @dev Harvests yield before withdrawal to capture any gains
    function _withdrawAllFromStrategy() internal {
        if (address(strategy) == address(0)) return;

        _harvestStrategyYield();

        uint256 invested = strategy.totalHoldings();
        if (invested > 0) {
            // Withdrawing all funds uses principal - forbidPrincipalUse = false
            _withdrawFromStrategy(invested, false);
        }
    }

    /// @notice Returns current PSM and strategy holdings
    /// @return onHand Peg tokens held directly by PSM
    /// @return invested Peg tokens deployed in strategy
    function _currentHoldings() internal view returns (uint256 onHand, uint256 invested) {
        onHand = pegToken.balanceOf(address(this));
        invested = address(strategy) == address(0) ? 0 : strategy.totalHoldings();
    }

    /// @notice Harvests realized yield from strategy and routes to treasury
    /// @dev Detects strategy losses and updates accounting accordingly
    /// @dev Yield is collected as fees according to `collateralizeFees` setting
    function _harvestStrategyYield() internal {
        if (address(strategy) == address(0)) {
            return;
        }

        uint256 currentStrategyHoldings = strategy.totalHoldings();
        if (currentStrategyHoldings == _strategyPegTokenDeposits) return;

        if (currentStrategyHoldings < _strategyPegTokenDeposits) {
            uint256 lossAmount = _strategyPegTokenDeposits - currentStrategyHoldings;

            // Emit events before updating state to capture actual vs expected values
            emit PSMStrategy_TotalHoldingsInvariantFound(
                address(strategy),
                currentStrategyHoldings,
                _strategyPegTokenDeposits
            );
            emit PSMStrategyLossRealized(address(strategy), lossAmount);

            // Update principal to reflect realized loss
            _strategyPegTokenDeposits = currentStrategyHoldings;
            return;
        }

        // Calculate expected yield amount
        uint256 yieldAmount = currentStrategyHoldings - _strategyPegTokenDeposits;

        // Withdraw yield with principal-touch guard enabled
        // forbidPrincipalUse = true ensures only yield is withdrawn, never principal
        (uint256 actualWithdrawn, uint256 yieldPortionWithdrawn) = _withdrawFromStrategy(yieldAmount, true);

        // Sanity check: harvest should never touch principal
        if (yieldPortionWithdrawn != actualWithdrawn) {
            revert PSMStrategy_PrincipalTouchedInHarvest();
        }

        // Collect fees on ACTUAL yield withdrawn (not expected)
        _collectPegFees(yieldPortionWithdrawn);

        emit PSMStrategyYieldHarvested(address(strategy), yieldPortionWithdrawn, collateralizeFees);
    }

    /// @dev Withdraws peg tokens from the strategy, separating yield from principal
    /// @param amount Desired withdrawal amount
    /// @param forbidPrincipalUse If true, reverts if withdrawal would consume principal (used in harvest)
    /// @return actualWithdrawn Actual amount withdrawn (verified by balance check)
    /// @return yieldPortionWithdrawn Amount of withdrawal that came from yield (not principal)
    function _withdrawFromStrategy(
        uint256 amount,
        bool forbidPrincipalUse
    ) internal returns (uint256 actualWithdrawn, uint256 yieldPortionWithdrawn) {
        if (address(strategy) == address(0) || amount == 0) {
            return (0, 0);
        }

        // Snapshot state before withdrawal
        uint256 balanceBefore = pegToken.balanceOf(address(this));
        uint256 principalBefore = _strategyPegTokenDeposits;
        uint256 strategyHoldingsBefore = strategy.totalHoldings();

        // Attempt withdrawal - let it revert if strategy can't fulfill
        strategy.withdraw(amount);

        // Verify actual tokens received
        uint256 balanceAfter = pegToken.balanceOf(address(this));
        actualWithdrawn = balanceAfter - balanceBefore;

        // Sanity check: strategy must not send more than requested
        if (actualWithdrawn > amount) {
            revert PSMStrategy_OverWithdraw(amount, actualWithdrawn);
        }

        // Compute how much of the withdrawal was yield vs principal using pre-withdraw state
        uint256 residualYieldBefore = strategyHoldingsBefore > principalBefore
            ? (strategyHoldingsBefore - principalBefore)
            : 0;

        yieldPortionWithdrawn = actualWithdrawn <= residualYieldBefore ? actualWithdrawn : residualYieldBefore;

        uint256 principalConsumed = actualWithdrawn - yieldPortionWithdrawn;

        // Harvest guard: forbid touching principal during yield harvest
        if (forbidPrincipalUse && principalConsumed > 0) {
            revert PSMStrategy_PrincipalTouchedInHarvest();
        }

        // Update principal only by the principal portion consumed
        uint256 principalAfter = principalConsumed >= principalBefore ? 0 : (principalBefore - principalConsumed);

        if (principalAfter != principalBefore) {
            _strategyPegTokenDeposits = principalAfter;
            emit PSMStrategyPrincipalUpdated(principalBefore, principalAfter);
        }

        emit PSMStrategyWithdraw(address(strategy), actualWithdrawn);
        return (actualWithdrawn, yieldPortionWithdrawn);
    }

    // ------------------------------------------------------------------------
    // ERC165
    // ------------------------------------------------------------------------

    /// @notice Checks if contract supports a given interface
    /// @param interfaceId The interface identifier to check
    /// @return True if the interface is supported
    function supportsInterface(bytes4 interfaceId) public view override(PegStabilityModule) returns (bool) {
        return interfaceId == type(IPegStabilityModuleWithStrategy).interfaceId || super.supportsInterface(interfaceId);
    }
}
