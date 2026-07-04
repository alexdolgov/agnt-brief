// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {IAsyncRequestManager} from "../interfaces/IAsyncRequestManager.sol";
import {INavAggregateModel} from "../interfaces/INavAggregateModel.sol";
import {IFundVault} from "../interfaces/IFundVault.sol";
import {HaBaseUpgradeable} from "../base/HaBaseUpgradeable.sol";

/// @dev Minimal view surface of HaBaseUpgradeable's timelock storage, callable on any inheriting contract.
interface IHaTimelock {
    function timelockDuration(bytes4 selector) external view returns (uint256);
    function executableAt(bytes32 dataHash) external view returns (uint256);
    function pendingCount() external view returns (uint256);
    function getPendingAt(uint256 index) external view returns (bytes memory);
    function getAllPending() external view returns (bytes[] memory);
}

/// @title HaVaultReader
/// @notice Read-only contract for querying vault state across the Harmonix vault system.
contract HaVaultReader is HaBaseUpgradeable {
    /// @notice Aggregated snapshot of a vault's redemption state, NAV, and pause status.
    struct VaultOverview {
        address vault;
        address asset;
        /// @notice Shares locked in pending redemptions.
        uint256 redeemShares;
        /// @notice Assets fulfilled but not yet claimed by the controller.
        uint256 claimableAssets;
        /// @notice Assets requested for redemption but not yet fulfilled by the operator.
        uint256 pendingAssets;
        /// @notice Total vault NAV in asset-token units (from last updateNav() call).
        uint256 navAsset;
        /// @notice Total vault NAV in common denomination units (from last updateNav() call).
        uint256 navDenomination;
        /// @notice Whether the vault is currently paused.
        bool isPaused;
    }

    /// @notice Flattened pending withdrawal data for easy frontend/subgraph consumption.
    struct PendingWithdraw {
        uint256 id;
        address vault;
        address controller;
        uint256 shares;
        uint256 assets;
        uint64 requestedAt;
        bool isFulfilled;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(address vaultManagerAddr) external initializer {
        __HaBase_init(vaultManagerAddr);
    }

    function _requestManager() internal view returns (IAsyncRequestManager) {
        return _vaultManager.requestManager();
    }

    /// @notice Returns the total number of redeem requests ever queued across all vaults.
    function getRedeemQueueLength() external view returns (uint256) {
        // redeemEntries[0] is a sentinel, so subtract 1 for the actual count.
        return _requestManager().redeemEntriesLength() - 1;
    }

    /// @notice Returns the (vault, controller) pair for a given global queue ID.
    function getRedeemQueueEntry(uint256 id) external view returns (IAsyncRequestManager.RedeemEntry memory) {
        return _requestManager().getRedeemEntry(id);
    }

    /**
     * @notice Returns the (vault, controller) pair and full redeem request data for a global queue ID.
     * @param id The global queue ID (1-based).
     * @return entry The (vault, controller) pair.
     * @return data  The controller's current redeem request data on that vault.
     */
    function getRedeemById(uint256 id)
        external
        view
        returns (IAsyncRequestManager.RedeemEntry memory entry, IAsyncRequestManager.RedeemRequest memory data)
    {
        IAsyncRequestManager rm = _requestManager();
        if (id == 0 || id >= rm.redeemEntriesLength()) return (entry, data);
        entry = rm.getRedeemEntry(id);
        // Cross-check the active-request pointer: if currentRequest no longer points to
        // index `id`, this entry was cancelled (or fully claimed and superseded).
        bytes32 key = keccak256(abi.encode(entry.vault, entry.controller));
        bool isActive = rm.currentRequest(key) == id;
        data = rm.getRedeemRequestByIndex(id);
        if (!isActive) {
            data.shares = 0;
            data.assets = 0;
            data.isFulfilled = false;
        }
    }

    /**
     * @notice Binary search: finds the smallest global queue ID whose requestedAt > targetTimestamp.
     * @dev Valid because IDs are assigned globally in order and requestedAt = block.timestamp at the
     *      time of requestRedeem, making requestedAt monotonically non-decreasing across the queue.
     *
     * @param targetTimestamp The timestamp threshold (exclusive lower bound).
     * @return The smallest global queue ID with requestedAt > targetTimestamp, or 0 if none found.
     */
    function findFirstRedeemIdAfter(uint256 targetTimestamp) external view returns (uint256) {
        IAsyncRequestManager rm = _requestManager();
        // redeemEntriesLength() includes the sentinel at index 0
        uint256 total = rm.redeemEntriesLength() - 1;
        if (total == 0) return 0;

        uint256 low = 1;
        uint256 high = total;
        uint256 result = 0;

        while (low <= high) {
            uint256 mid = low + (high - low) / 2;

            IAsyncRequestManager.RedeemRequest memory request = rm.getRedeemRequestByIndex(mid);

            if (request.requestedAt > targetTimestamp) {
                result = mid;
                high = mid - 1;
            } else {
                low = mid + 1;
            }
        }

        return result;
    }

    /**
     * @notice Returns all redeem requests (fulfilled or not) in the global queue
     *         with IDs in [fromId, toId] (inclusive).
     * @param fromId Start of the ID range (1-based, inclusive).
     * @param toId   End of the ID range (inclusive). If toId > queue length, it is clamped.
     * @return Array of redeem requests for every ID in the range. Entries with no queue record
     *         (vault == address(0)) have zero-value fields.
     */
    function getPendingWithdrawals(uint256 fromId, uint256 toId) external view returns (PendingWithdraw[] memory) {
        IAsyncRequestManager rm = _requestManager();
        uint256 queueLen = rm.redeemEntriesLength() - 1;

        // Clamp toId to queue length
        if (toId > queueLen) toId = queueLen;

        // Validate range
        if (fromId < 1 || fromId > toId) {
            return new PendingWithdraw[](0);
        }

        uint256 size = toId - fromId + 1;
        PendingWithdraw[] memory result = new PendingWithdraw[](size);
        for (uint256 i = fromId; i <= toId; i++) {
            IAsyncRequestManager.RedeemEntry memory entry = rm.getRedeemEntry(i);
            IAsyncRequestManager.RedeemRequest memory request = rm.getRedeemRequestByIndex(i);
            // Cross-check the active-request pointer: if currentRequest no longer points to
            // index `i`, this entry was cancelled (or fully claimed and superseded). In that
            // case, zero out the mutable fields so callers see a cancelled/inactive request.
            bytes32 key = keccak256(abi.encode(entry.vault, entry.controller));
            bool isActive = rm.currentRequest(key) == i;
            result[i - fromId] = PendingWithdraw({
                id: i,
                vault: entry.vault,
                controller: entry.controller,
                shares: isActive ? request.shares : 0,
                assets: isActive ? request.assets : 0,
                requestedAt: request.requestedAt,
                isFulfilled: isActive && request.isFulfilled
            });
        }
        return result;
    }

    // ---- Dependent Contracts ----

    /// @notice Returns the ShareToken shared by all registered AssetVaults.
    function getShareToken() external view returns (address) {
        return address(_vaultManager.shareToken());
    }

    /// @notice Returns the FundVault that holds and deploys capital.
    function getFundVault() external view returns (address) {
        return address(_vaultManager.fundVault());
    }

    /// @notice Returns the PriceFeed used to convert asset amounts to the common denomination.
    function getPriceFeed() external view returns (address) {
        return address(_vaultManager.priceFeed());
    }

    /// @notice Returns the AsyncRequestManager that governs async redeem request lifecycle.
    function getRequestManager() external view returns (address) {
        return address(_vaultManager.requestManager());
    }

    /// @notice Returns the AccessManager used for role-based permission checks.
    function getAccessManager() external view returns (address) {
        return address(_vaultManager.accessManager());
    }

    /// @notice Returns the FundNavFeed used to retrieve per-category NAV values.
    function getFundNav() external view returns (address) {
        return address(_vaultManager.fundNav());
    }

    // ---- NAV / Asset Queries ----

    /// @notice Returns the gross fund NAV denomination (before redemption deductions) from the last updateNav() call.
    function getNavDenomination() external view returns (uint256) {
        return _vaultManager.navDenomination();
    }

    /// @notice Returns the effective fund NAV denomination (net of redemption obligations) from the last updateNav() call.
    function getEffNavDenomination() external view returns (uint256) {
        return _vaultManager.effNavDenomination();
    }

    /// @notice Returns the current price-per-share in denomination units (1e18 scale).
    function getPricePerShare() external view returns (uint256) {
        return _vaultManager.pricePerShare();
    }

    /// @notice Returns a live NAV snapshot without updating the price-per-share.
    function getNavSnapshot() external view returns (INavAggregateModel.NavResult memory) {
        return _vaultManager.computeNav();
    }

    /// @notice Returns the stored NAV and denomination for a specific asset from the last updateNav() call.
    function getAssetNavAndDenomination(address asset) external view returns (uint256 nav, uint256 denomination) {
        return _vaultManager.totalAssets(asset);
    }

    /// @notice Returns stored NAV and denomination for every registered asset (from last updateNav()).
    function getAllAssetNavs()
        external
        view
        returns (address[] memory assets, uint256[] memory navs, uint256[] memory denominations)
    {
        assets = _vaultManager.getRegisteredAssets();
        navs = new uint256[](assets.length);
        denominations = new uint256[](assets.length);
        for (uint256 i = 0; i < assets.length; i++) {
            (navs[i], denominations[i]) = _vaultManager.totalAssets(assets[i]);
        }
    }

    // ---- Registry Queries ----

    /// @notice Returns the addresses of all registered asset tokens.
    function getRegisteredAssets() external view returns (address[] memory) {
        return _vaultManager.getRegisteredAssets();
    }

    /// @notice Returns the AssetVault registered for a given asset token. Returns address(0) if none.
    function getVaultForAsset(address asset) external view returns (address) {
        return _vaultManager.vaultForAsset(asset);
    }

    /// @notice Returns the underlying asset token for a given AssetVault. Returns address(0) if not registered.
    function getAssetForVault(address vault) external view returns (address) {
        return _vaultManager.assetForVault(vault);
    }

    /// @notice Returns the number of registered asset vaults.
    function getRegisteredAssetsLength() external view returns (uint256) {
        return _vaultManager.getRegisteredAssetsLength();
    }

    // ---- Vault State ----

    /// @notice Returns whether a vault is paused.
    function getVaultStatus(address vault) external view returns (bool isPaused) {
        return _vaultManager.pauseStatus(vault);
    }

    /// @notice Returns the total pending asset amount for a vault.
    /// @dev Pending assets are requested for redemption but not yet fulfilled by the operator.
    function getPendingAssets(address vault) external view returns (uint256) {
        return _vaultManager.pendingAssets(vault);
    }

    /// @notice Returns the total claimable asset amount for a vault.
    /// @dev Claimable assets are fulfilled by the operator but not yet claimed by the controller.
    function getClaimableAssets(address vault) external view returns (uint256) {
        return _vaultManager.claimableAssets(vault);
    }

    /// @notice Returns the total shares locked in pending redemptions for a vault.
    function getRedeemShares(address vault) external view returns (uint256) {
        return _vaultManager.redeemShares(vault);
    }

    /// @notice Returns an aggregated snapshot of vault state: redemption queue, NAV, and pause status.
    /// @dev NAV values reflect the last updateNav() call, not a live computation.
    function getVaultOverview(address vault) external view returns (VaultOverview memory overview) {
        address asset = _vaultManager.assetForVault(vault);
        (uint256 nav, uint256 denomination) = _vaultManager.totalAssets(asset);
        overview = VaultOverview({
            vault: vault,
            asset: asset,
            redeemShares: _vaultManager.redeemShares(vault),
            claimableAssets: _vaultManager.claimableAssets(vault),
            pendingAssets: _vaultManager.pendingAssets(vault),
            navAsset: nav,
            navDenomination: denomination,
            isPaused: _vaultManager.pauseStatus(vault)
        });
    }

    /// @notice Returns VaultOverview for every registered vault.
    function getAllVaultOverviews() external view returns (VaultOverview[] memory overviews) {
        address[] memory assets = _vaultManager.getRegisteredAssets();
        overviews = new VaultOverview[](assets.length);
        for (uint256 i = 0; i < assets.length; i++) {
            address vault = _vaultManager.vaultForAsset(assets[i]);
            (uint256 nav, uint256 denomination) = _vaultManager.totalAssets(assets[i]);
            overviews[i] = VaultOverview({
                vault: vault,
                asset: assets[i],
                redeemShares: _vaultManager.redeemShares(vault),
                claimableAssets: _vaultManager.claimableAssets(vault),
                pendingAssets: _vaultManager.pendingAssets(vault),
                navAsset: nav,
                navDenomination: denomination,
                isPaused: _vaultManager.pauseStatus(vault)
            });
        }
    }

    /// @notice Returns the current denomination price for an asset from PriceFeed.
    function getAssetPrice(address asset) external view returns (uint256) {
        return _vaultManager.assetPrice(asset);
    }

    // ---- AsyncRequestManager State ----

    /// @notice Returns the current redeem mode (Global or PerAsset).
    function getRedeemMode() external view returns (IAsyncRequestManager.RedeemMode) {
        return _requestManager().redeemMode();
    }

    /// @notice Returns the total pending shares for a controller across all assets.
    function getPendingShares(address controller) external view returns (uint256) {
        return _requestManager().pendingShares(controller);
    }

    // ---- FundVault Capital Breakdown ----

    function _fundVault() internal view returns (IFundVault) {
        return IFundVault(_vaultManager.fundVault());
    }

    /// @notice Returns the idle (undeployed) balance of an asset sitting in the FundVault.
    function getIdleAssets(address asset) external view returns (uint256) {
        return _fundVault().idleAssets(asset);
    }

    /// @notice Returns total assets across FundVault + all strategies for a given asset.
    function getTotalManagedAssets(address asset) external view returns (uint256) {
        return _fundVault().totalManagedAssets(asset);
    }

    /// @notice Returns the balance currently held in a specific strategy.
    function getAllocated(address strategy) external view returns (uint256) {
        return _fundVault().allocated(strategy);
    }

    /// @notice Returns all whitelisted strategies for a given asset.
    function getStrategies(address asset) external view returns (address[] memory) {
        return _fundVault().strategies(asset);
    }

    /// @notice Returns total deployed assets across all strategies for a given asset.
    function getTotalDeployedAssets(address asset) external view returns (uint256) {
        return _fundVault().totalDeployedAssets(asset);
    }

    /// @notice Returns whether a strategy is whitelisted for a specific asset.
    function isStrategyWhitelisted(address asset, address strategy) external view returns (bool) {
        return _fundVault().isStrategyWhitelisted(asset, strategy);
    }

    /// @notice Returns the number of whitelisted strategies for a given asset.
    function getStrategyCount(address asset) external view returns (uint256) {
        return _fundVault().strategyCount(asset);
    }

    /// @notice Returns the maximum deployed balance allowed for a strategy.
    function getStrategyCap(address strategy) external view returns (uint256) {
        return _fundVault().strategyCap(strategy);
    }

    /// @notice Returns the cumulative amount ever allocated into a strategy.
    function getTotalAllocated(address strategy) external view returns (uint256) {
        return _fundVault().totalAllocated(strategy);
    }

    /// @notice Returns the cumulative amount ever deallocated from a strategy.
    function getTotalDeallocated(address strategy) external view returns (uint256) {
        return _fundVault().totalDeallocated(strategy);
    }

    // ---- Access Control ----

    /// @notice Returns whether `account` holds `role` in the AccessManager.
    function hasRole(bytes32 role, address account) external view returns (bool) {
        return _vaultManager.hasRole(role, account);
    }

    // ---- VaultManager Configuration ----

    /// @notice Fee and watermark configuration snapshot.
    struct FeeConfig {
        /// @notice Address that receives minted fee shares.
        address feeReceiver;
        /// @notice Annualised management fee rate in WAD scale (1e18 = 100%).
        uint256 managementFeeRate;
        /// @notice Timestamp of the most recent harvestManagementFee call (0 if never).
        uint256 lastManagementHarvest;
        /// @notice Performance fee rate in WAD scale (1e18 = 100%).
        uint256 performanceFeeRate;
        /// @notice PPS high-watermark in WAD scale. Performance fee only accrues above this.
        uint256 highWatermark;
        /// @notice Timestamp of the most recent harvestPerformanceFee call that raised the watermark (0 if never).
        uint256 lastHarvestPerformanceFeeTime;
    }

    /// @notice Returns the address that receives minted fee shares.
    function getFeeReceiver() external view returns (address) {
        return _vaultManager.feeReceiver();
    }

    /// @notice Returns the annualised management fee rate in WAD scale (1e18 = 100%). Zero means disabled.
    function getManagementFeeRate() external view returns (uint256) {
        return _vaultManager.managementFeeRate();
    }

    /// @notice Returns the timestamp of the most recent harvestManagementFee call. Zero if never harvested.
    function getLastManagementHarvest() external view returns (uint256) {
        return _vaultManager.lastManagementHarvest();
    }

    /// @notice Returns the performance fee rate in WAD scale (1e18 = 100%). Zero means disabled.
    function getPerformanceFeeRate() external view returns (uint256) {
        return _vaultManager.performanceFeeRate();
    }

    /// @notice Returns the PPS high-watermark. Performance fee only accrues when current PPS exceeds this. Zero means not yet initialised.
    function getHighWatermark() external view returns (uint256) {
        return _vaultManager.highWatermark();
    }

    /// @notice Returns the timestamp of the most recent harvestPerformanceFee call that raised the watermark. Zero if never called.
    function getLastHarvestPerformanceFeeTime() external view returns (uint256) {
        return _vaultManager.lastHarvestPerformanceFeeTime();
    }

    /// @notice Returns the effective share supply recorded during the most recent updateNav call. Zero if never set.
    function getEffectiveSupply() external view returns (uint256) {
        return _vaultManager.effectiveSupply();
    }

    /// @notice Returns all fee-related configuration in a single call.
    function getFeeConfig() external view returns (FeeConfig memory) {
        return FeeConfig({
            feeReceiver: _vaultManager.feeReceiver(),
            managementFeeRate: _vaultManager.managementFeeRate(),
            lastManagementHarvest: _vaultManager.lastManagementHarvest(),
            performanceFeeRate: _vaultManager.performanceFeeRate(),
            highWatermark: _vaultManager.highWatermark(),
            lastHarvestPerformanceFeeTime: _vaultManager.lastHarvestPerformanceFeeTime()
        });
    }

    /// @notice Returns the maximum PPS deviation allowed on each updateNav call (1e18 scale). Zero means no check.
    function getDeviationPps() external view returns (uint256) {
        return _vaultManager.deviationPps();
    }

    /// @notice Returns the maximum age in seconds a NAV update may have before deposits/redeems are blocked. Zero disables the check.
    function getMaxNavStaleness() external view returns (uint256) {
        return _vaultManager.maxNavStaleness();
    }

    /// @notice Returns the block timestamp of the most recent updateNav call. Zero if never called.
    function getLastNavUpdated() external view returns (uint256) {
        return _vaultManager.lastNavUpdated();
    }

    // ---- Timelock Queries ----

    /// @notice Enriched view of a single queued timelock operation.
    struct PendingOperation {
        /// @notice Full ABI-encoded calldata submitted to `submit(bytes)`.
        bytes data;
        /// @notice 4-byte function selector extracted from `data`.
        bytes4 selector;
        /// @notice Timestamp when this operation becomes executable.
        uint256 executableAt;
        /// @notice True if the delay has already elapsed and the call can be executed now.
        bool isReady;
    }

    /// @notice Aggregated timelock status for a specific pending operation.
    struct TimelockStatus {
        /// @notice Configured delay for this selector in seconds (0 = no timelock).
        uint256 duration;
        /// @notice Timestamp when this exact calldata becomes executable (0 = not queued).
        uint256 executableAt;
        /// @notice True if queued and the delay has already elapsed — ready to execute.
        bool isReady;
        /// @notice True if queued but the delay has not yet elapsed — still waiting.
        bool isPending;
    }

    /**
     * @notice Returns the configured timelock delay for a function selector on any
     *         HaBaseUpgradeable contract. Returns 0 if no timelock is configured.
     * @param target   Address of the HaBaseUpgradeable contract to query.
     * @param selector The 4-byte function selector.
     */
    function getTimelockDuration(address target, bytes4 selector) external view returns (uint256) {
        return IHaTimelock(target).timelockDuration(selector);
    }

    /**
     * @notice Returns the timestamp at which a pending timelocked operation becomes
     *         executable. Returns 0 if no such operation is currently queued.
     * @param target The HaBaseUpgradeable contract that owns the pending operation.
     * @param data   The exact ABI-encoded calldata that was passed to `submit(bytes)`.
     */
    function getExecutableAt(address target, bytes calldata data) external view returns (uint256) {
        return IHaTimelock(target).executableAt(keccak256(data));
    }

    /**
     * @notice Returns true if the given calldata has been submitted and the timelock
     *         delay has elapsed (i.e. the operation can be executed right now).
     * @param target The HaBaseUpgradeable contract that owns the pending operation.
     * @param data   The exact ABI-encoded calldata that was passed to `submit(bytes)`.
     */
    function isTimelockReady(address target, bytes calldata data) external view returns (bool) {
        uint256 eta = IHaTimelock(target).executableAt(keccak256(data));
        return eta != 0 && block.timestamp >= eta;
    }

    /**
     * @notice Returns a full timelock status snapshot for a specific pending operation.
     * @param target The HaBaseUpgradeable contract.
     * @param data   The exact ABI-encoded calldata that was passed to `submit(bytes)`.
     */
    function getTimelockStatus(address target, bytes calldata data)
        external
        view
        returns (TimelockStatus memory status)
    {
        bytes4 selector = bytes4(data);
        status.duration = IHaTimelock(target).timelockDuration(selector);
        status.executableAt = IHaTimelock(target).executableAt(keccak256(data));
        status.isReady = status.executableAt != 0 && block.timestamp >= status.executableAt;
        status.isPending = status.executableAt != 0 && block.timestamp < status.executableAt;
    }

    /// @notice Returns all pending timelocked operations on the VaultManagerAdmin contract.
    function getVaultManagerAdminPending() external view returns (PendingOperation[] memory) {
        return _buildPendingOps(_vaultManager.adminFacet());
    }

    /// @notice Returns all pending timelocked operations on the FundVault contract.
    function getFundVaultPending() external view returns (PendingOperation[] memory) {
        return _buildPendingOps(address(_vaultManager.fundVault()));
    }

    /**
     * @notice Returns all pending timelocked operations on any HaBaseUpgradeable contract.
     * @param target Address of the HaBaseUpgradeable contract to query.
     */
    function getContractPending(address target) external view returns (PendingOperation[] memory) {
        return _buildPendingOps(target);
    }

    function _buildPendingOps(address target) private view returns (PendingOperation[] memory ops) {
        IHaTimelock t = IHaTimelock(target);
        bytes[] memory allData = t.getAllPending();
        ops = new PendingOperation[](allData.length);
        for (uint256 i = 0; i < allData.length; i++) {
            bytes memory d = allData[i];
            uint256 eta = t.executableAt(keccak256(d));
            ops[i] = PendingOperation({
                data: d, selector: bytes4(d), executableAt: eta, isReady: eta != 0 && block.timestamp >= eta
            });
        }
    }
}
