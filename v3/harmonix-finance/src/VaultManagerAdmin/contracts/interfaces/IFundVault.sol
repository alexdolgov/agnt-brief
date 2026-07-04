// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

interface IFundVault {
    // ============== EVENTS ================

    /// @notice Emitted when idle assets are released to an AssetVault for redeem fulfillment.
    event AssetsReleased(address indexed asset, address indexed assetVault, uint256 amount);

    /// @notice Emitted when capital flows in or out of a strategy.
    /// @param isAllocate `true` for allocation (vault → strategy), `false` for deallocation (strategy → vault).
    event StrategyFlow(bool indexed isAllocate, address indexed asset, address indexed strategy, uint256 amount);

    /// @notice Emitted when a strategy is added to or removed from the whitelist.
    /// @param isAdded `true` when whitelisted, `false` when removed.
    event StrategyWhitelisted(address indexed asset, address indexed strategy, bool indexed isAdded);

    /// @notice Emitted when a curator sets or updates a strategy's allocation cap.
    event StrategyCapSet(address indexed strategy, uint256 cap);

    // ================= ERRORS ==================

    /// @notice The strategy is not registered for the given asset.
    error UnknownStrategy(address asset, address strategy);

    /// @notice The strategy is already registered for the given asset.
    error DuplicateStrategy(address asset, address strategy);

    /// @notice Insufficient idle balance of the given asset to fulfill the request.
    error InsufficientIdle(address asset, uint256 requested, uint256 available);

    /// @notice Allocation would exceed the strategy's configured cap.
    error CapExceeded(address strategy, uint256 cap, uint256 wouldBe);

    /**
     * @notice Allocates `amount` of idle assets into `strategy`.
     * @dev Restricted to `CURATOR_ROLE`. Reverts if the strategy is not whitelisted or
     *      if idle balance is insufficient. The asset address is queried from the strategy.
     *      Approves `strategy` for `amount` and calls `strategy.deposit(amount)`.
     * @param strategy The whitelisted strategy to receive the capital.
     * @param amount   Token amount (in asset decimals) to allocate.
     */
    function allocate(address strategy, uint256 amount) external;

    /**
     * @notice Deallocates `amount` of asset from `strategy` back into this contract.
     * @dev Restricted to `CURATOR_ROLE`. The asset is derived from `strategy.asset()`.
     *      Calls `strategy.withdraw(amount)`.
     * @param strategy The strategy returning the capital.
     * @param amount   Token amount (in asset decimals) to deallocate.
     */
    function deallocate(address strategy, uint256 amount) external;

    /**
     * @notice Releases `amount` of idle assets to the calling AssetVault.
     * @dev Only callable by a registered AssetVault. The asset is derived from
     *      `_validateVault(msg.sender)` — no asset parameter needed. Used during
     *      redeem fulfillment to pre-fund the AssetVault before controllers claim assets.
     * @param amount Token amount (in asset decimals) to release.
     */
    function releaseAssets(uint256 amount) external;

    /**
     * @notice Whitelists a strategy in the FundVault.
     * @dev Restricted to `CURATOR_ROLE`. The asset is derived from `IStrategy(strategy).asset()`.
     * @param strategy Address of the strategy contract to whitelist.
     */
    function addStrategy(address strategy) external;

    /**
     * @notice Removes a strategy from the whitelist in the FundVault.
     * @dev Restricted to `CURATOR_ROLE`. The asset is derived from `IStrategy(strategy).asset()`.
     * @param strategy Address of the strategy contract to remove.
     */
    function removeStrategy(address strategy) external;

    /**
     * @notice Sets the maximum deployed balance allowed for `strategy` at any time.
     * @dev Restricted to `CURATOR_ROLE`. The strategy must be whitelisted.
     *      A cap of 0 blocks all future allocations to that strategy.
     *      Checked in `allocate()` as: strategy.totalAssets() + amount <= cap.
     * @param strategy The whitelisted strategy to configure.
     * @param cap      Maximum deployable amount in asset decimals. 0 = fully blocked.
     */
    function setStrategyCap(address strategy, uint256 cap) external;

    // ============== VIEW FUNCTIONS  ======================

    /// @notice Idle (undeployed) balance of a specific asset sitting in the fund contract.
    function idleAssets(address asset) external view returns (uint256);

    /// @notice Sum of `totalAssets()` across all whitelisted strategies for a given asset.
    function totalDeployedAssets(address asset) external view returns (uint256);

    /// @notice Returns the real-time total assets for a given asset token.
    /// @dev Computed as `totalDeployedAssets(asset) + idleAssets(asset)`.
    function totalManagedAssets(address asset) external view returns (uint256);

    /// @notice Current balance held in a given strategy, queried from `IStrategy.totalAssets()`.
    function allocated(address strategy) external view returns (uint256);

    /// @notice Whether a strategy is whitelisted for a specific asset.
    function isStrategyWhitelisted(address asset, address strategy) external view returns (bool);

    /// @notice Returns all whitelisted strategies for a given asset.
    function strategies(address asset) external view returns (address[] memory);

    /// @notice Returns the number of whitelisted strategies for a given asset.
    function strategyCount(address asset) external view returns (uint256);

    /// @notice Cumulative amount ever allocated into a strategy across all `allocate` calls.
    function totalAllocated(address strategy) external view returns (uint256);

    /// @notice Cumulative amount ever deallocated from a strategy across all `deallocate` calls.
    function totalDeallocated(address strategy) external view returns (uint256);

    /**
     * @notice Returns the current allocation cap for `strategy`.
     * @dev 0 means the strategy is fully blocked (no allocations permitted).
     * @param strategy The strategy to query.
     * @return The maximum deployable balance in asset decimals.
     */
    function strategyCap(address strategy) external view returns (uint256);
}
