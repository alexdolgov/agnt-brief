// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.8.29 <0.9.0;

/**
 * @title IYearnVaultManager
 * @notice Interface for managing a specific Yearn Vault's debt ratios across multiple strategies
 * @dev This contract receives the `management` role from a Yearn Vault and enables
 *      multiple authorized addresses to perform management functions via SuperEarnAccessControl.
 *      Each YearnVaultManager instance manages exactly one Yearn Vault.
 *
 * ## Key Features
 *
 * 1. **Single Vault Management**: Each manager is bound to one Yearn Vault at initialization
 * 2. **Multi-sig Management**: Multiple addresses can perform management operations
 * 3. **Debt Ratio Adjustment**: Align debt ratios with actual strategy debts after withdrawals
 * 4. **Debt Ratio Restoration**: Restore target debt ratios when new deposits arrive
 * 5. **Safe Update Ordering**: Handle MAX_BPS constraint by updating in correct order
 *
 * ## Use Cases
 *
 * - After `CrosschainKeeper.withdrawFromYearn()`: Call `adjustDebtRatio()` to prevent
 *   unnecessary asset movements during subsequent harvests
 * - After new deposits arrive: Call `restoreDebtRatio()` to gradually return to target
 *   allocation without triggering withdrawals from any strategy
 */
interface IYearnVaultManager {
    // ============================================
    // Enums
    // ============================================

    /// @notice Indicates which debt ratio action is needed before harvest
    enum RatioAction {
        NONE, // No action needed - ratios are aligned
        ADJUST, // adjustDebtRatio needed - ratios misaligned with actual debts (after withdrawal, no idle)
        RESTORE, // restoreDebtRatio needed - idle funds waiting to be deployed (includes debt protection)
        ADJUST_FIRST // @deprecated - kept for ABI compatibility. RESTORE handles both cases since it
            // calculates minRatios from actual debts, protecting existing funds while deploying idle.

    }

    // ============================================
    // Events
    // ============================================

    /// @notice Emitted when target debt ratios are set for strategies
    event TargetDebtRatiosSet(address indexed vault, address[] strategies, uint256[] targetRatios);

    /// @notice Emitted when debt ratios are adjusted to match current debts
    event DebtRatiosAdjusted(address indexed vault, uint256 strategyCount);

    /// @notice Emitted when debt ratios are restored towards targets
    event DebtRatiosRestored(address indexed vault, uint256 strategyCount);

    /// @notice Emitted when strategy debt ratio is updated
    event StrategyDebtRatioUpdated(address indexed vault, address indexed strategy, uint256 oldRatio, uint256 newRatio);

    // ============================================
    // Errors
    // ============================================

    /// @notice Invalid vault address (zero address or not initialized)
    error InvalidVaultAddress();

    /// @notice Invalid strategy address
    error InvalidStrategyAddress();

    /// @notice Array length mismatch
    error ArrayLengthMismatch();

    /// @notice Total debt ratio exceeds MAX_BPS
    error TotalRatioExceedsMax(uint256 total);

    /// @notice No strategies found in vault
    error NoStrategiesFound();

    /// @notice Total debt is zero, cannot calculate ratios
    error ZeroTotalDebt();

    /// @notice Target debt ratios not set for this vault
    error TargetRatiosNotSet();

    // ============================================
    // Core Functions
    // ============================================

    /**
     * @notice Adjust debt ratios to match current actual debts
     * @dev Call this after withdrawals to prevent unnecessary asset movements during harvest.
     *      Updates are ordered to avoid MAX_BPS overflow (decreases first, then increases).
     *
     * Example:
     * - Before withdrawal: A=70%, B=30% (ratio), A=70 ETH, B=30 ETH (debt)
     * - After withdrawal from A: A=70%, B=30% (ratio), A=50 ETH, B=30 ETH (debt) ← mismatch!
     * - After adjustDebtRatio: A=62.5%, B=37.5% (ratio), A=50 ETH, B=30 ETH (debt) ← aligned
     */
    function adjustDebtRatio() external;

    /**
     * @notice Restore debt ratios towards targets without triggering withdrawals
     * @dev Call this after new deposits to move towards target allocation.
     *      If full restoration would require withdrawals from some strategies,
     *      calculates optimal ratios that allocate new funds proportionally
     *      while keeping existing funds untouched.
     *
     * Example (insufficient new deposit):
     * - Target: A=70%, B=30%
     * - Current: A=50 ETH (62.5%), B=30 ETH (37.5%), Total=80 ETH
     * - New deposit: 10 ETH → Total=90 ETH
     * - Target would require: A=63 ETH, B=27 ETH → B needs withdrawal!
     * - Optimal result: A=60 ETH (66.7%), B=30 ETH (33.3%) → No withdrawals
     */
    function restoreDebtRatio() external;

    /**
     * @notice Set target debt ratios for strategies
     * @dev Target ratios are used by restoreDebtRatio to determine ideal allocation.
     *      Sum of all ratios must not exceed MAX_BPS (10000).
     *      Ratios are applied in the same order as the withdrawal queue.
     * @param targetRatios Array of target debt ratios (in BPS), must match withdrawal queue length
     */
    function setTargetDebtRatios(uint256[] calldata targetRatios) external;

    // ============================================
    // Yearn Vault Management Wrappers
    // ============================================

    /**
     * @notice Update debt ratio for a specific strategy
     * @dev Wrapper for IVault.updateStrategyDebtRatio
     * @param strategy Address of the strategy
     * @param debtRatio New debt ratio (in BPS)
     */
    function updateStrategyDebtRatio(address strategy, uint256 debtRatio) external;

    /**
     * @notice Update minimum debt per harvest for a strategy
     * @dev Wrapper for IVault.updateStrategyMinDebtPerHarvest
     * @param strategy Address of the strategy
     * @param minDebtPerHarvest New minimum debt per harvest
     */
    function updateStrategyMinDebtPerHarvest(address strategy, uint256 minDebtPerHarvest) external;

    /**
     * @notice Update maximum debt per harvest for a strategy
     * @dev Wrapper for IVault.updateStrategyMaxDebtPerHarvest
     * @param strategy Address of the strategy
     * @param maxDebtPerHarvest New maximum debt per harvest
     */
    function updateStrategyMaxDebtPerHarvest(address strategy, uint256 maxDebtPerHarvest) external;

    // ============================================
    // View Functions
    // ============================================

    /**
     * @notice Get the Yearn vault this manager is responsible for
     * @return Address of the managed Yearn vault
     */
    function vault() external view returns (address);

    /**
     * @notice Get target debt ratio for a specific strategy
     * @param strategy Address of the strategy
     * @return Target debt ratio (in BPS)
     */
    function getTargetDebtRatio(address strategy) external view returns (uint256);

    /**
     * @notice Get all strategies from the vault's withdrawal queue
     * @return Array of strategy addresses (excluding zero addresses)
     */
    function getVaultStrategies() external view returns (address[] memory);

    /**
     * @notice Preview the debt ratios that would be set by adjustDebtRatio
     * @return strategies Array of strategy addresses
     * @return currentRatios Current debt ratios
     * @return newRatios New debt ratios based on current debts
     */
    function previewAdjustDebtRatio()
        external
        view
        returns (address[] memory strategies, uint256[] memory currentRatios, uint256[] memory newRatios);

    /**
     * @notice Preview the debt ratios that would be set by restoreDebtRatio
     * @return strategies Array of strategy addresses
     * @return currentRatios Current debt ratios
     * @return newRatios New debt ratios (optimal towards target without withdrawals)
     */
    function previewRestoreDebtRatio()
        external
        view
        returns (address[] memory strategies, uint256[] memory currentRatios, uint256[] memory newRatios);

    /**
     * @notice Determine which debt ratio action is needed before harvest
     * @dev Use this to decide whether to call adjustDebtRatio, restoreDebtRatio, or neither
     *
     * Logic (RESTORE takes priority):
     * - RESTORE: Vault has idle funds - restoreDebtRatio will deploy idle while protecting
     *            existing debts via minRatio calculation. No need for prior adjustDebtRatio.
     * - ADJUST: No idle funds but ratios don't match actual debt proportions (after withdrawals)
     * - NONE: Ratios are already aligned, no action needed
     *
     * Note: ADJUST_FIRST is deprecated. Since restoreDebtRatio calculates minRatios from
     * actual debts (not current ratios), it inherently protects existing funds while
     * deploying idle toward targets. Calling adjustDebtRatio first is unnecessary.
     *
     * @return action The recommended action to take
     * @return totalIdle Amount of idle assets in the vault
     * @return needsAdjust True if adjustDebtRatio would change ratios (informational)
     * @return needsRestore True if restoreDebtRatio would change ratios
     */
    function getRatioActionNeeded()
        external
        view
        returns (RatioAction action, uint256 totalIdle, bool needsAdjust, bool needsRestore);
}
