// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

library UintValueLib {
    // ======================= STORAGE KEYS ====================

    bytes32 internal constant PRICE_PER_SHARE_KEY = keccak256(abi.encode("PRICE_PER_SHARE"));
    bytes32 internal constant REGISTERED_ASSET_COUNT_KEY = keccak256(abi.encode("REGISTERED_ASSET_COUNT"));
    bytes32 internal constant DEVIATION_PPS_KEY = keccak256(abi.encode("DEVIATION_PPS"));
    bytes32 internal constant LAST_NAV_UPDATED_KEY = keccak256(abi.encode("LAST_NAV_UPDATED"));
    bytes32 internal constant MAX_NAV_STALENESS_KEY = keccak256(abi.encode("MAX_NAV_STALENESS"));
    bytes32 internal constant GLOBAL_REDEEM_SHARES_KEY = keccak256(abi.encode("GLOBAL_REDEEM_SHARES"));
    bytes32 internal constant MANAGEMENT_FEE_RATE_KEY = keccak256(abi.encode("MANAGEMENT_FEE_RATE"));
    bytes32 internal constant LAST_MANAGEMENT_HARVEST_KEY = keccak256(abi.encode("LAST_MANAGEMENT_HARVEST"));
    bytes32 internal constant PERFORMANCE_FEE_RATE_KEY = keccak256(abi.encode("PERFORMANCE_FEE_RATE"));
    bytes32 internal constant HIGH_WATERMARK_KEY = keccak256(abi.encode("HIGH_WATERMARK"));
    bytes32 internal constant LAST_PERFORMANCE_HARVEST_KEY = keccak256(abi.encode("LAST_PERFORMANCE_HARVEST"));

    // ================ VALUE SET =====================

    /**
     * @notice Applies a signed delta to the pending asset amount for a vault.
     * @dev Positive delta increases, negative delta decreases.
     * @param vault   The vault address.
     * @param delta   Signed amount to apply.
     */
    function adjustPendingAsset(mapping(bytes32 => uint256) storage map, address vault, int256 delta) internal {
        _applyDelta(map, _pendingAssetKey(vault), delta);
    }

    /**
     * @notice Applies a signed delta to the claimable asset amount for a vault.
     * @dev Positive delta increases, negative delta decreases.
     * @param vault   The vault address.
     * @param delta   Signed amount to apply.
     */
    function adjustClaimableAsset(mapping(bytes32 => uint256) storage map, address vault, int256 delta) internal {
        _applyDelta(map, _claimableAssetKey(vault), delta);
    }

    /**
     * @notice Applies a signed delta to the redeem shares amount for a vault.
     * @dev Positive delta increases, negative delta decreases.
     * @param vault   The vault address.
     * @param delta   Signed amount to apply.
     */
    function adjustRedeemShares(mapping(bytes32 => uint256) storage map, address vault, int256 delta) internal {
        _applyDelta(map, _redeemSharesKey(vault), delta);
    }

    /**
     * @notice Applies a signed delta to the global redeem shares amount for a vault.
     * @dev Positive delta increases, negative delta decreases.
     * @param delta   Signed amount to apply.
     */
    function adjustGlobalRedeemShares(mapping(bytes32 => uint256) storage map, int256 delta) internal {
        _applyDelta(map, GLOBAL_REDEEM_SHARES_KEY, delta);
    }

    /**
     * @notice Applies a signed delta to the stored per-asset NAV.
     * @param asset   The asset token address.
     * @param delta   Signed amount to apply (in asset-token units).
     */
    function adjustAssetNav(mapping(bytes32 => uint256) storage map, address asset, int256 delta) internal {
        _applyDelta(map, _navAssetKey(asset), delta);
    }

    /**
     * @notice Applies a signed delta to the stored gross NAV denomination.
     * @param delta   Signed denomination amount to apply.
     */
    function adjustNavDenomination(mapping(bytes32 => uint256) storage map, int256 delta) internal {
        _applyDelta(map, keccak256("NAV_DENOMINATION"), delta);
    }

    /**
     * @notice Applies a signed delta to the stored effective NAV denomination.
     * @param delta   Signed denomination amount to apply.
     */
    function adjustEffNavDenomination(mapping(bytes32 => uint256) storage map, int256 delta) internal {
        _applyDelta(map, keccak256("EFF_NAV_DENOMINATION"), delta);
    }

    /**
     * @notice Stores the latest gross NAV denomination — the sum of all asset NAVs in the common
     *         denomination before subtracting any redemption obligations.
     * @dev Called by `VaultManager.updateNav` each time the price-per-share is refreshed.
     * @param value  The navDenomination value to persist.
     */
    function setNavDenomination(mapping(bytes32 => uint256) storage map, uint256 value) internal {
        map[keccak256("NAV_DENOMINATION")] = value;
    }

    /**
     * @notice Stores the latest effective NAV denomination — gross denomination minus redemption
     *         obligations (`pendingAssets + claimableAssets` per asset). Used as the PPS numerator.
     * @dev Called by `VaultManager.updateNav` each time the price-per-share is refreshed.
     * @param value  The effNavDenomination value to persist.
     */
    function setEffNavDenomination(mapping(bytes32 => uint256) storage map, uint256 value) internal {
        map[keccak256("EFF_NAV_DENOMINATION")] = value;
    }

    /**
     * @notice Stores the last-computed total NAV for a specific asset (in asset-token units).
     * @dev Written by `VaultManager.updateNav` for each registered asset on every NAV refresh.
     *      Total NAV = offChainNav + balanceOf(fundVault) + claimableAssets.
     * @param asset  The token address of the asset.
     * @param nav    The total NAV value to persist.
     */
    function setAssetNav(mapping(bytes32 => uint256) storage map, address asset, uint256 nav) internal {
        map[_navAssetKey(asset)] = nav;
    }

    /// @notice Stores the registered asset count.
    function setRegisteredAssetCount(mapping(bytes32 => uint256) storage map, uint256 count) internal {
        map[REGISTERED_ASSET_COUNT_KEY] = count;
    }

    /**
     * @notice Stores the price-per-share value.
     * @param value  The price-per-share to persist.
     */
    function setPricePerShare(mapping(bytes32 => uint256) storage map, uint256 value) internal {
        map[PRICE_PER_SHARE_KEY] = value;
    }

    /// @notice Stores the timestamp of the most recent `updateNav` call.
    function setLastNavUpdated(mapping(bytes32 => uint256) storage map, uint256 timestamp) internal {
        map[LAST_NAV_UPDATED_KEY] = timestamp;
    }

    /// @notice Sets the global total redeem shares counter — called by `updateNav` to sync from the canonical nav result.
    function setGlobalRedeemShares(mapping(bytes32 => uint256) storage map, uint256 value) internal {
        map[GLOBAL_REDEEM_SHARES_KEY] = value;
    }

    /// @notice Stores the annualised management fee rate in WAD scale (1e18 = 100%, e.g. 0.02e18 = 2%/year).
    function setManagementFeeRate(mapping(bytes32 => uint256) storage map, uint256 rate) internal {
        map[MANAGEMENT_FEE_RATE_KEY] = rate;
    }

    /// @notice Stores the timestamp of the most recent management fee harvest.
    function setLastManagementHarvest(mapping(bytes32 => uint256) storage map, uint256 timestamp) internal {
        map[LAST_MANAGEMENT_HARVEST_KEY] = timestamp;
    }

    /// @notice Stores the performance fee rate in WAD scale (1e18 = 100%, e.g. 0.2e18 = 20%).
    function setPerformanceFeeRate(mapping(bytes32 => uint256) storage map, uint256 rate) internal {
        map[PERFORMANCE_FEE_RATE_KEY] = rate;
    }

    /// @notice Stores the high-watermark PPS in WAD scale. The performance fee only accrues above this level.
    function setHighWatermark(mapping(bytes32 => uint256) storage map, uint256 value) internal {
        map[HIGH_WATERMARK_KEY] = value;
    }

    /// @notice Stores the timestamp of the most recent performance fee harvest.
    function setLastPerformanceHarvest(mapping(bytes32 => uint256) storage map, uint256 timestamp) internal {
        map[LAST_PERFORMANCE_HARVEST_KEY] = timestamp;
    }

    // ======================= VALUE GET ====================

    /**
     * @notice Returns the current pending asset amount for a vault.
     * @param vault   The vault address.
     * @return        The pending asset amount.
     */
    function getPendingAsset(mapping(bytes32 => uint256) storage map, address vault) internal view returns (uint256) {
        return map[_pendingAssetKey(vault)];
    }

    /**
     * @notice Returns the current claimable asset amount for a vault.
     * @param vault   The vault address.
     * @return        The claimable asset amount.
     */
    function getClaimableAsset(mapping(bytes32 => uint256) storage map, address vault) internal view returns (uint256) {
        return map[_claimableAssetKey(vault)];
    }

    /**
     * @notice Returns the current redeem shares amount for a vault.
     * @param vault   The vault address.
     * @return        The redeem shares amount.
     */
    function getRedeemShares(mapping(bytes32 => uint256) storage map, address vault) internal view returns (uint256) {
        return map[_redeemSharesKey(vault)];
    }

    /**
     * @notice Returns the last stored gross NAV denomination value.
     * @return The navDenomination (gross) recorded during the most recent `updateNav` call, or 0 if never set.
     */
    function getNavDenomination(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[keccak256("NAV_DENOMINATION")];
    }

    /**
     * @notice Returns the last stored effective NAV denomination value.
     * @return The effNavDenomination (net of redemption obligations) recorded during the most recent
     *         `updateNav` call, or 0 if never set.
     */
    function getEffNavDenomination(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[keccak256("EFF_NAV_DENOMINATION")];
    }

    /**
     * @notice Returns the last stored total NAV for an asset.
     * @return The total NAV recorded during the most recent `updateNav` call, or 0 if never set.
     */
    function getAssetNav(mapping(bytes32 => uint256) storage map, address asset) internal view returns (uint256) {
        return map[_navAssetKey(asset)];
    }

    /// @notice Returns the registered asset count.
    function getRegisteredAssetCount(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[REGISTERED_ASSET_COUNT_KEY];
    }

    /**
     * @notice Returns the stored price-per-share value.
     * @return The price-per-share recorded during the most recent `updateNav` call, or 0 if never set.
     */
    function getPricePerShare(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[PRICE_PER_SHARE_KEY];
    }

    /**
     * @notice Returns the stored deviationPps value.
     * @return The maximum allowed PPS deviation percentage, or 0 if not set (no check enforced).
     */
    function getDeviationPps(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[DEVIATION_PPS_KEY];
    }

    /// @notice Returns the timestamp of the most recent `updateNav` call, or 0 if never called.
    function getLastNavUpdated(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[LAST_NAV_UPDATED_KEY];
    }

    /**
     * @notice Returns the maximum allowed NAV age in seconds.
     * @return The configured staleness limit, or 0 if no check is enforced.
     */
    function getMaxNavStaleness(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[MAX_NAV_STALENESS_KEY];
    }

    /// @notice Returns the global total redeem shares counter, or 0 if never set.
    function getGlobalRedeemShares(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[GLOBAL_REDEEM_SHARES_KEY];
    }

    /// @notice Returns the annualised management fee rate in WAD scale, or 0 if not set.
    function getManagementFeeRate(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[MANAGEMENT_FEE_RATE_KEY];
    }

    /// @notice Returns the timestamp of the most recent management fee harvest, or 0 if never harvested.
    function getLastManagementHarvest(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[LAST_MANAGEMENT_HARVEST_KEY];
    }

    /// @notice Returns the performance fee rate in WAD scale, or 0 if not set.
    function getPerformanceFeeRate(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[PERFORMANCE_FEE_RATE_KEY];
    }

    /// @notice Returns the stored high-watermark PPS, or 0 if not yet initialised.
    function getHighWatermark(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[HIGH_WATERMARK_KEY];
    }

    /// @notice Returns the timestamp of the most recent performance fee harvest, or 0 if never harvested.
    function getLastHarvestPerformanceFeeTime(mapping(bytes32 => uint256) storage map) internal view returns (uint256) {
        return map[LAST_PERFORMANCE_HARVEST_KEY];
    }

    /// @notice Return the maximum cap setup for a vault
    /// @dev 0 means no cap check
    function getVaultCap(mapping(bytes32 => uint256) storage map, address vault) internal view returns (uint256) {
        return map[_vaultCapKey(vault)];
    }

    // ================== PRIVATE =====================

    function _setValue(mapping(bytes32 => uint256) storage map, bytes32 key, uint256 value) private {
        map[key] = value;
    }

    function _applyDelta(mapping(bytes32 => uint256) storage map, bytes32 key, int256 amount) private {
        if (amount > 0) {
            // casting to 'uint256' is safe: amount > 0 ensures the value is in [1, int256.max], which fits in uint256
            // forge-lint: disable-next-line(unsafe-typecast)
            map[key] += uint256(amount);
        } else {
            // casting to 'uint256' is safe: amount <= 0, so -amount is non-negative and fits in uint256;
            // financial deltas are always bounded well below type(int256).max
            // forge-lint: disable-next-line(unsafe-typecast)
            map[key] -= uint256(-amount);
        }
    }

    function _increaseValue(mapping(bytes32 => uint256) storage map, bytes32 key, uint256 amount)
        private
        returns (uint256)
    {
        return map[key] += amount;
    }

    function _decreaseValue(mapping(bytes32 => uint256) storage map, bytes32 key, uint256 amount)
        private
        returns (uint256)
    {
        return map[key] -= amount;
    }

    // ==================== KEY COMPUTATION ============

    function _pendingAssetKey(address vault) private pure returns (bytes32) {
        // forge-lint: disable-next-line(asm-keccak256)
        return keccak256(abi.encode("PENDING_STATUS", vault));
    }

    function _claimableAssetKey(address vault) private pure returns (bytes32) {
        // forge-lint: disable-next-line(asm-keccak256)
        return keccak256(abi.encode("CLAIMABLE_ASSET", vault));
    }

    function _redeemSharesKey(address vault) private pure returns (bytes32) {
        // forge-lint: disable-next-line(asm-keccak256)
        return keccak256(abi.encode("REDEEM_SHARE", vault));
    }

    function _navAssetKey(address asset) private pure returns (bytes32) {
        // forge-lint: disable-next-line(asm-keccak256)
        return keccak256(abi.encode("ASSET_NAV", asset));
    }

    function _vaultCapKey(address vault) internal pure returns (bytes32) {
        // forge-lint: disable-next-line(asm-keccak256)
        return keccak256(abi.encode("VAULT_CAP", vault));
    }
}
