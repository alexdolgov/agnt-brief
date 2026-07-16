// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/**
 * @title IStrategy
 * @notice Interface that every strategy must implement to integrate with the Vault.
 *
 *   The vault interacts with strategies exclusively through this interface,
 *   keeping concrete strategy implementations decoupled from vault internals.
 */
interface IStrategy {

    // ─── Events ──────────────────────────────────────────────────────────

    event Deposited(uint256 amount);
    event Withdrawn(uint256 amount);

    // ─── View ─────────────────────────────────────────────────────────────

    /// @notice The vault this strategy belongs to.
    function vault() external view returns (address);

    /// @notice The asset token managed by this strategy.
    function asset() external view returns (address);

    /**
     * @notice Total value of assets currently controlled by this strategy.
     *         This is the single source of truth the vault reads to compute
     *         profit/loss during harvest.
     *
     *         Updated on every deposit/withdrawal and whenever the keeper
     *         reconciles off-chain / cross-chain balances.
     *         On-chain strategies may override this to return a live value
     *         computed directly from the underlying protocol.
     */
    function totalTrackedAssets() external view returns (uint256);

    /**
     * @notice Timestamp of the last keeper reconciliation.
     *         The vault uses this during harvest to enforce staleness checks.
     *         On-chain strategies that override totalTrackedAssets() with a live value
     *         should return block.timestamp here (always fresh).
     */
    function lastReconciledAt() external view returns (uint256);

    // ─── Keeper Operations ────────────────────────────────────────────────

    /**
     * @notice Manually updates the total value tracked by this strategy.
     *         Called by the keeper after confirming off-chain / cross-chain balances.
     *         The vault reads lastReconciledAt() during harvest to enforce staleness checks.
     * @param newValue Current total value of assets controlled by this strategy.
     */
    function updateTotalTrackedAssets(uint256 newValue) external;

    /**
     * @notice Sends tokens from this strategy to a whitelisted destination.
     * @param to     Destination address (must be in approvedDestinations).
     * @param amount Amount of asset tokens to send.
     */
    function deployValue(address to, uint256 amount) external;

    // ─── Vault Operations ─────────────────────────────────────────────────

    /**
     * @notice Called by the vault after transferring tokens to this strategy.
     *         Increases totalTrackedAssets and triggers internal deployment logic.
     * @param amount Amount of asset tokens received from the vault.
     */
    function deposit(uint256 amount) external;

    /**
     * @notice Called by the vault before pulling tokens back from this strategy.
     *         Decreases totalTrackedAssets and triggers internal withdrawal logic
     *         so funds are available to pull.
     * @param amount Amount of asset tokens the vault intends to pull.
     */
    function withdraw(uint256 amount) external;
}
