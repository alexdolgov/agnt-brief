// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '../events/IVaultEvents.sol';
import './IBaseVault.sol';

/**
 * @title Asset Specific Vault Interface
 * @author ZeUSD Protocol Team
 * @notice Interface for specialized vaults handling primary and secondary assets
 * @dev Defines the standard interface for all Vault implementations
 *
 * ⚠️ PRECISION LOSS WARNING FOR VAULT IMPLEMENTATIONS:
 * Some vault implementations may integrate with external teller contracts (e.g., YieldTokenTellerV2)
 * that round down stablecoin amounts to 2 decimal places during asset conversions.
 * This can result in precision loss for secondary asset operations.
 *
 * Vault implementations using such external contracts should:
 * - Document the precision loss in their implementation
 * - Inform users about potential small losses (up to 0.0001 tokens)
 * - Account for rounding in slippage calculations
 *
 * @custom:security-contact tech@zoth.io
 */
interface IVault is IBaseVault, IVaultEvents {
    /// @notice SECURITY CONSIDERATIONS:
    /// - Asset validation must occur before any transfers
    /// - Balance verification required for all withdrawals
    /// - Emergency mode must restrict standard operations
    /// - Proper approval management for external protocols
    /// - Reentrancy protection on all state-changing functions
    ///
    /// OPERATIONAL STATES:
    /// - Normal: All operations permitted
    /// - Paused: No deposits or withdrawals
    /// - Emergency: Only admin emergency withdrawals allowed
    ///
    /// ASSET CATEGORIES:
    /// - Primary Asset: Core asset that cannot be removed
    /// - Secondary Assets: Additional supported assets that can be added/removed

    /**
     * @notice Handles deposit of any supported asset
     * @dev Some vault implementations may experience precision loss when converting secondary assets
     * through external teller contracts that round to 2 decimal places
     * @param user Address of the depositing user
     * @param asset Address of the asset being deposited
     * @param amount Amount to deposit
     * @return success Whether the deposit was successful
     * @return processedAmount Amount actually processed
     */
    function handleDeposit(
        address user,
        address asset,
        uint256 amount
    ) external returns (bool success, uint256 processedAmount);

    /**
     * @notice Handles withdrawal of any supported asset
     * @dev Some vault implementations may experience precision loss when converting assets
     * through external teller contracts that round to 2 decimal places
     * @param user Address of the withdrawing user
     * @param asset Address of the asset to withdraw
     * @param amount Amount to withdraw
     * @return isInitiated Whether withdrawal was initiated
     * @return isCompleted Whether withdrawal was completed (assets transferred)
     * @return processedAmount Amount actually processed
     */
    function handleWithdraw(
        address user,
        address asset,
        uint256 amount
    ) external returns (bool isInitiated, bool isCompleted, uint256 processedAmount);
}
