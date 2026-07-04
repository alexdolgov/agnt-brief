// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0;

/**
 * @title IFundNavFeed
 * @notice Interface for off-chain-updated fund Net Asset Value (NAV) feeds.
 * @dev Implementations store per-category NAV values that cannot be derived
 *      on-chain (e.g. real-world assets, illiquid positions) and are pushed
 *      by a trusted off-chain keeper.
 */
interface IFundNavFeed {
    /// @notice Thrown when attempting to add a category that already exists for the asset.
    /// @param asset  The asset address.
    /// @param index  The index of the existing duplicate category.
    error CategorySupported(address asset, uint256 index);

    /// @notice Thrown when referencing a category that does not exist for the asset.
    error CategoryNotSupported(address asset);

    event NavUpdated(address indexed asset, uint256 nav, string description);

    /**
     * @notice Describes a single NAV category tracked by this feed.
     * @param isActive    Whether this category is currently active and should be
     *                    included in NAV aggregation.
     * @param nav         The off-chain-pushed NAV value for this category, in the feed's base currency.
     * @param description Human-readable label for the category (e.g. "T-Bills").
     */
    struct NavCategory {
        bool isActive;
        string description;
        uint256 nav;
    }

    /**
     * @notice Returns the NAV value for a specific asset and description key.
     * @dev The value is pushed off-chain and stored on-chain; it is not derived
     *      from live market data. Callers should verify the matching category is
     *      active before relying on the returned value.
     * @param asset       The token address identifying the asset category.
     * @param description The description key used to look up the category.
     * @return nav        The stored NAV value, denominated in the feed's base
     *                    currency (typically USD with 6 or 18 decimals).
     */
    function fundNavValue(address asset, string memory description) external view returns (uint256 nav);

    /**
     * @notice Returns the NAV value for an asset, aggregated across all active
     *         categories that match the given asset address.
     * @dev Convenience overload of `fundNavValue` when the description is not
     *      needed to disambiguate. The value is off-chain-pushed and may lag
     *      real-time market prices.
     * @param asset  The token address identifying the asset.
     * @return totalNav   The aggregated NAV value for the asset, denominated in the
     *               feed's base currency (typically USD with 6 or 18 decimals).
     */
    function fundNavValue(address asset) external view returns (uint256 totalNav);

    /**
     * @notice Returns the total active NAV for each asset in the provided list.
     * @dev Iterates over each asset and sums the NAV of all active categories.
     *      Assets with no categories or no active categories contribute 0.
     * @param assetList  Array of token addresses to query NAV for.
     * @return navValues Per-asset array of total active NAV values, aligned with `assetList`.
     */
    function fundNavValue(address[] calldata assetList) external view returns (uint256[] memory navValues);

    /**
     * @notice Returns all NAV categories registered for a given asset.
     * @param asset           The token address to query categories for.
     * @return categoriesList All categories associated with the asset, including
     *                        inactive ones. Callers should filter by `isActive`
     *                        before using the results in NAV aggregation.
     */
    function categories(address asset) external view returns (NavCategory[] memory categoriesList);
}
