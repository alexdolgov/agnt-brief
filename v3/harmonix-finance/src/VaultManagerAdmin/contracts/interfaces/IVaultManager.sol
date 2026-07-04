// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.34;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IShareToken} from "./IShareToken.sol";
import {IPriceFeed} from "./IPriceFeed.sol";
import {IFundVault} from "./IFundVault.sol";
import {IAsyncRequestManager} from "./IAsyncRequestManager.sol";
import {IAccessManager} from "./IAccessManager.sol";
import {IFundNavFeed} from "./IFundNavFeed.sol";
import {INavAggregateModel} from "./INavAggregateModel.sol";

interface IVaultManager {
    // ================ STRUCTS ===================
    /**
     * @notice Describes a signed change to be applied to a vault's tracked state.
     * @dev A positive value increases the field; a negative value decreases it.
     * @param pendingAssets   Signed delta for the vault's pending asset amount.
     *                        Positive when a redeem request is created; negative when it is fulfilled or cancelled.
     * @param claimableAssets Signed delta for the vault's claimable asset amount.
     *                        Positive when a request is fulfilled; negative when assets are claimed or a fulfilled request is cancelled.
     * @param redeemShares    Signed delta for the vault's locked share amount.
     *                        Positive when a redeem request is created; negative when shares are claimed or the request is cancelled.
     * @param depositedAssets Signed asset delta for the vault.
     *                        Positive on deposit: increments navAsset, navDenomination, and effNavDenomination.
     *                        Negative on withdrawal (final claim): decrements the same three values.
     */
    struct VaultStateDelta {
        int256 pendingAssets;
        int256 claimableAssets;
        int256 redeemShares;
        int256 depositedAssets;
    }

    /**
     * @notice A snapshot of a single vault's tracked redemption state.
     * @param redeemShares    Shares locked in pending redemption requests.
     * @param claimableAssets Assets fulfilled by the operator but not yet claimed by the controller.
     * @param pendingAssets   Assets requested for redemption but not yet fulfilled.
     */
    struct VaultState {
        uint256 redeemShares;
        uint256 claimableAssets;
        uint256 pendingAssets;
    }
    // ================ EVENTS ===================

    /// @notice Emitted when a vault is registered.
    event VaultRegistered(address indexed asset, address indexed vault);

    /// @notice Emitted when a vault registration is removed.
    event VaultRemoved(address indexed vault);

    /// @notice Emitted when the global price-per-share is updated.
    event PricePerShareUpdated(uint256 oldPps, uint256 newPps);

    /// @notice Emitted when the pause flag is enabled or disabled on the contract
    event ContractPaused(address indexed haContract, bool isPaused);

    /// @notice Emitted when management fee shares are minted to the fee receiver.
    event ManagementFeeCollected(address indexed receiver, uint256 sharesMinted, uint256 feeAmount);

    /// @notice Emitted when performance fee shares are minted to the fee receiver.
    event PerformanceFeeCollected(address indexed receiver, uint256 sharesMinted, uint256 feeAmount);

    // ================ ERRORS ===================

    error VaultAlreadyRegistered(address vault);
    error VaultNotRegistered(address vault);
    error VaultHasLockedShares(address vault);
    error ZeroPricePerShare();
    error InvalidPricePerShare();
    error AssetPriceNotSet(address asset);
    error NavStale(uint256 lastNavUpdated);
    error ExceedCap(address asset);

    // ================ ADMIN BRIDGE FUNCTIONS  ===================

    /// @notice Returns the registered adminFacet contract address.
    function adminFacet() external view returns (address);

    /// @notice Registers the VaultManagerAdmin contract as the sole admin facet.
    function setAdminFacet(address facet) external;

    /**
     * @notice Raw key-value write to the address store. Restricted to the adminFacet.
     * @param key   Storage key (one of AddrValueLib's `internal constant` values).
     * @param value Address to store.
     */
    function applyAddrConfig(bytes32 key, address value) external;

    /**
     * @notice Raw key-value write to the uint256 store. Restricted to the adminFacet.
     * @param key   Storage key (one of UintValueLib's `internal constant` values).
     * @param value uint256 value to store.
     */
    function applyUintConfig(bytes32 key, uint256 value) external;

    /**
     * @notice Raw key-value write to the boolean store. Restricted to the adminFacet.
     * @param key   Storage key (one of UintValueLib's `internal constant` values).
     * @param value bool value to store.
     */
    function applyBoolConfig(bytes32 key, bool value) external;

    /**
     * @notice Registers an AssetVault. Restricted to the adminFacet.
     * @param vault Address of the AssetVault contract to register.
     */
    function applyRegisterVault(address vault) external;

    /**
     * @notice Removes a registered AssetVault. Restricted to the adminFacet.
     * @param vault Address of the AssetVault contract to remove.
     */
    function applyRemoveVault(address vault) external;

    // ================ MUTATE FUNCTIONS  ===================

    /**
     * @notice Applies a signed state delta to a vault's tracked values.
     * @dev Only callable by the AsyncRequestManager, which is the sole source of truth
     *      for pending asset changes. Using a signed delta keeps the call site expressive —
     *      a single struct describes both increases and decreases without separate functions.
     * @param vault  The vault whose state is being updated.
     * @param delta  Signed delta to apply. See {IVaultManager.VaultStateDelta}.
     */
    function updateVaultState(address vault, VaultStateDelta calldata delta) external;

    /**
     * @notice Collects the accrued management fee by minting new shares to the fee receiver.
     * @dev Restricted to `OPERATOR_ROLE`. Reads `navDenomination` and `effectiveSupply` stored
     *      during the last `updateNav()` call, computes the accrued fee, mints shares, then
     *      updates stored `effectiveSupply` and `pricePerShare` arithmetically.
     *      Returns 0 without reverting if the fee rate is zero or no shares round to non-zero.
     * @return sharesToMint The number of fee shares minted.
     */
    function harvestManagementFee() external returns (uint256 sharesToMint);

    /**
     * @notice Collects the accrued performance fee by minting new shares to the fee receiver.
     * @dev Restricted to `OPERATOR_ROLE`. Only accrues when the current PPS exceeds the stored
     *      `highWatermark`. On the first call (watermark == 0), bootstraps the watermark to the
     *      current PPS and returns 0. After a successful harvest, raises the watermark to the
     *      current PPS so future harvests only capture new gains.
     *      Returns 0 without reverting when PPS <= watermark or no shares round to non-zero.
     * @return sharesToMint The number of fee shares minted.
     */
    function harvestPerformanceFee() external returns (uint256 sharesToMint);

    /**
     * @notice Previews the management fee `harvestManagementFee()` would mint at the current
     *         `block.timestamp` without changing state.
     * @dev Mirrors the gating of `harvestManagementFee` but never reverts: returns (0, 0) when
     *      the fee rate is zero, the fee receiver is unset, the harvest has not been bootstrapped
     *      (`lastManagementHarvest == 0`), or no time has elapsed since the last harvest.
     *      Uses the same internal formula as the real harvest, so rounding matches exactly.
     * @return feeAmount    Fee in common denomination units the harvest would account for.
     * @return sharesToMint Shares the harvest would mint to the fee receiver.
     */
    function previewHarvestManagementFee() external view returns (uint256 feeAmount, uint256 sharesToMint);

    /**
     * @notice Previews the performance fee `harvestPerformanceFee()` would mint at the current
     *         price-per-share without changing state.
     * @dev Mirrors the gating of `harvestPerformanceFee` but never reverts: returns (0, 0) when
     *      the fee rate is zero, the fee receiver is unset, the watermark has not been
     *      bootstrapped (`highWatermark == 0`), or current PPS does not exceed the watermark.
     *      Uses the same internal formula as the real harvest, so rounding matches exactly.
     * @return feeAmount    Fee in common denomination units the harvest would account for.
     * @return sharesToMint Shares the harvest would mint to the fee receiver.
     */
    function previewHarvestPerformanceFee() external view returns (uint256 feeAmount, uint256 sharesToMint);

    // ================ VIEW FUNCTIONS - DEPENDENT CONTRACTS ===================

    /// @notice The single ShareToken shared by all registered AssetVaults.
    function shareToken() external view returns (IShareToken);

    /// @notice The FundVault that holds and deploys capital on behalf of all AssetVaults.
    function fundVault() external view returns (IFundVault);

    /// @notice The PriceFeed used to convert asset amounts to the common denomination.
    function priceFeed() external view returns (IPriceFeed);

    /// @notice The AsyncRequestManager that governs async redeem request lifecycle.
    function requestManager() external view returns (IAsyncRequestManager);

    /// @notice The AccessManager used for all role-based permission checks.
    function accessManager() external view returns (IAccessManager);

    /// @notice The FundNavFeed contract used to retrieve per-category NAV values.
    /// @return feed Address of the registered FundNavFeed contract, or `address(0)` if not set.
    function fundNav() external view returns (IFundNavFeed feed);

    /// @notice The NavAggregateModel used to compute NAV snapshots.
    function navAggregateModel() external view returns (INavAggregateModel);

    // ================ VIEW FUNCTIONS - CONFIGURATION ===================

    /// @notice Returns the current denomination price for an asset from PriceFeed.
    function assetPrice(address asset) external view returns (uint256);

    /**
     * @notice Returns the AssetVault registered for a given asset token.
     * @dev Returns `address(0)` if no vault has been registered for the asset.
     */
    function vaultForAsset(address asset) external view returns (address);

    /**
     * @notice Returns the underlying asset token for a given registered AssetVault.
     * @dev Returns `address(0)` if the vault is not registered.
     */
    function assetForVault(address vault) external view returns (address);

    /**
     * @notice Returns whether the contract is currently paused
     * @dev When paused, some critical actions on contract is disabled (the critical actions is defined inside the contract)
     * @param haContract Address of the contract to query.
     * @return isPaused True if the vault is paused, false if it is active.
     */
    function pauseStatus(address haContract) external view returns (bool isPaused);

    /// @notice Returns true if the specific function selector has been disabled on the given contract.
    function functionDisabled(address haContract, bytes4 selector) external view returns (bool);

    /// @notice The annualised management fee rate in WAD scale (1e18 = 100%, e.g. 0.02e18 = 2%/year). Zero means disabled.
    function managementFeeRate() external view returns (uint256);

    /// @notice The block timestamp of the most recent `harvestManagementFee` call, or 0 if never harvested.
    function lastManagementHarvest() external view returns (uint256);

    /// @notice The address that receives minted fee shares (shared by management and performance fees), or `address(0)` if not set.
    function feeReceiver() external view returns (address);

    /// @notice The performance fee rate in WAD scale (1e18 = 100%, e.g. 0.2e18 = 20%). Zero means disabled.
    function performanceFeeRate() external view returns (uint256);

    /// @notice The PPS high-watermark in WAD scale. Performance fee only accrues when current PPS exceeds this. Zero means not yet initialised.
    function highWatermark() external view returns (uint256);

    /// @notice The block timestamp of the most recent `harvestPerformanceFee` call that raised the watermark, or 0 if never called.
    function lastHarvestPerformanceFeeTime() external view returns (uint256);

    /// @notice The effective share supply recorded during the most recent `updateNav` call, or 0 if never set.
    function effectiveSupply() external view returns (uint256);

    /**
     * @notice Returns the total pending asset amount for a vault.
     * @dev Pending assets are those requested for redemption but not yet fulfilled by the operator.
     * @param vault   The vault address.
     * @return        The pending asset amount.
     */
    function pendingAssets(address vault) external view returns (uint256);

    /**
     * @notice Returns the total claimable asset amount for a vault.
     * @dev Claimable assets are those fulfilled by the operator but not yet claimed by the controller.
     * @param vault   The vault address.
     * @return        The claimable asset amount.
     */
    function claimableAssets(address vault) external view returns (uint256);

    /**
     * @notice Returns the total redeem shares amount for a vault.
     * @dev Redeem shares are those locked from requestRedeem until claimed via redeem/withdraw or returned via cancelRedeem.
     * @param vault   The vault address.
     * @return        The redeem shares amount.
     */
    function redeemShares(address vault) external view returns (uint256);

    /**
     * @notice Returns the configured deposit cap for a vault, in asset-token units.
     * @dev A cap of 0 disables the check (deposits are unrestricted). When the cap is
     *      non-zero, deposits revert with `ExceedCap` once the per-asset NAV would
     *      exceed it. The cap is only enforced on the deposit direction; redemptions
     *      are unaffected.
     * @param vault The vault address.
     * @return cap  The deposit cap in asset-token units. Zero means uncapped.
     */
    function vaultCap(address vault) external view returns (uint256 cap);

    /**
     * @notice Returns a snapshot of a vault's tracked redemption state in a single call.
     * @param vault The vault address.
     * @return state The vault's current redeemShares, claimableAssets, and pendingAssets.
     */
    function getVaultState(address vault) external view returns (VaultState memory state);

    /**
     * @notice Resolves an asset to its registered vault and returns the vault's state in one call.
     * @dev Combines `vaultForAsset` + `getVaultState` to eliminate one cross-contract round-trip
     *      per asset inside the NavAggregateModel loop.
     * @param asset The ERC-20 token address of a registered AssetVault.
     * @return vault The registered AssetVault address for the asset.
     * @return state The vault's current redeemShares, claimableAssets, and pendingAssets.
     */
    function getVaultStateByAsset(address asset) external view returns (address vault, VaultState memory state);

    /// @notice Returns the addresses of all registered asset tokens.
    function getRegisteredAssets() external view returns (address[] memory);

    /// @notice Returns the number of registered asset vaults.
    function getRegisteredAssetsLength() external view returns (uint256);

    /// @notice Current price-per-share in denomination units (1e18 scale).
    function pricePerShare() external view returns (uint256);

    /**
     * @notice Returns the maximum allowed deviation between the current and new PPS on each
     *         `updateNav` call, expressed as a percentage in 1e18 scale (e.g. 0.01e18 = 1%).
     * @dev A value of 0 means no deviation check is enforced.
     */
    function deviationPps() external view returns (uint256);

    /// @notice The gross NAV denomination (sum of all asset NAVs in common denomination, before redemption deductions) from the most recent `updateNav` call.
    function navDenomination() external view returns (uint256);

    /// @notice The effective NAV denomination (gross minus redemption obligations) from the most recent `updateNav` call. Used as the PPS numerator.
    function effNavDenomination() external view returns (uint256);

    /// @notice The block timestamp of the most recent `updateNav` call, or 0 if never called.
    function lastNavUpdated() external view returns (uint256);

    /**
     * @notice The maximum age (in seconds) a NAV update may have before deposits and redeem
     *         requests are blocked. A value of 0 disables the staleness check.
     */
    function maxNavStaleness() external view returns (uint256);

    /**
     * @notice Returns the effective NAV for a registered asset in both asset-token units
     *         and the common denomination.
     * @dev Combines the off-chain NAV from FundNavFeed with the on-chain FundVault balance,
     *      then subtracts pending redemption obligations (same logic as `updateNav`).
     * @param asset        The ERC-20 token address of a registered AssetVault.
     * @return nav         Effective asset amount in token decimals.
     * @return denomination Effective value in the common denomination (1e18 scale).
     */
    function totalAssets(address asset) external view returns (uint256 nav, uint256 denomination);

    // ================ VIEW FUNCTIONS - UTILS ===================

    /// @notice Returns whether `account` holds `role` in the AccessManager.
    function hasRole(bytes32 role, address account) external view returns (bool);

    /**
     * @notice Converts an asset amount to the common denomination using the PriceFeed.
     * @param asset  The ERC-20 token address.
     * @param amount Token amount in asset decimals.
     * @return denominatedAmount Value in denomination units (1e18 scale).
     */
    function convertAssetToDenomination(address asset, uint256 amount) external view returns (uint256 denominatedAmount);

    /**
     * @notice Converts a denomination amount back to an asset amount using the PriceFeed.
     * @param asset             The ERC-20 token address.
     * @param denominatedAmount Value in denomination units (1e18 scale).
     * @return amount Token amount in asset decimals.
     */
    function convertDenominationToAsset(address asset, uint256 denominatedAmount) external view returns (uint256 amount);

    /**
     * @notice Converts a denomination amount to shares using the current PPS.
     * @dev shares = denominatedAmount * 1e18 / PPS
     * @param denominatedAmount Value in denomination units (1e18 scale).
     * @param rounding          Rounding direction applied to the result.
     * @return shares           Number of shares.
     */
    function convertToShares(uint256 denominatedAmount, Math.Rounding rounding) external view returns (uint256 shares);

    /**
     * @notice Converts a share amount to an asset amount using the current PPS and PriceFeed.
     * @dev denominatedValue = shares * PPS / 1e18, then amount = denominatedValue * 10^decimals / assetPrice
     * @param asset    The ERC-20 token address.
     * @param shares   Number of shares to convert.
     * @param rounding Rounding direction applied at each step.
     * @return amount  Token amount in asset decimals.
     */
    function convertToAssets(address asset, uint256 shares, Math.Rounding rounding)
        external
        view
        returns (uint256 amount);

    /**
     * @notice Computes the current NAV snapshot without updating the price-per-share.
     * @dev Delegates to NavAggregateModel. Queries FundNavFeed for off-chain NAV values
     *      and combines them with on-chain balances. Identical to the computation inside
     *      `updateNav` but read-only.
     * @return result The NAV snapshot containing totalSupply, navDenomination, and effectiveSupply.
     */
    function computeNav() external view returns (INavAggregateModel.NavResult memory result);
}
