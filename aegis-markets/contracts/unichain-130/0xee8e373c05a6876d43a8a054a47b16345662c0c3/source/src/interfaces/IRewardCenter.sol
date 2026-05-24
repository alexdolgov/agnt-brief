// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Types} from "../lib/Types.sol";
import {ISponsorCenter} from "./ISponsorCenter.sol";

/// @title RewardCenter External Interface (LSN v1)
/// @notice Canonical surface for reward funding, claiming, and configuration.
/// @dev Mirrors the external/public functions of `RewardCenter`.
interface IRewardCenter {
    // -------- Errors --------

    /// @notice Thrown when caller is not authorized.
    error NotAuthorized();

    /// @notice Thrown when an address input is zero.
    error ZeroAddress();

    /// @notice Thrown when a numeric input is invalid.
    error InvalidAmount();

    /// @notice Thrown when required config was not initialized.
    error NotInitialized();

    /// @notice Thrown when operation is blocked by paused state.
    error Paused();

    /// @notice Thrown when too many pools are passed to `claimMany`.
    error MaxClaimManyExceeded();

    /// @notice Thrown when duplicate pool ids are passed in one call.
    error DuplicatePoolId();

    /// @notice Thrown when immutable one-time config is set again.
    error AlreadySet();

    /// @notice Thrown when an address is invalid for expected contract type.
    error InvalidAddress();

    /// @notice Thrown when pool validation fails.
    error InvalidPool();

    /// @notice Thrown when pool is blacklisted.
    error PoolBlacklisted();

    /// @notice Thrown when sponsor TBA validation fails.
    error InvalidSponsorTba();

    /// @notice Thrown when oracle data is stale.
    error StaleOracle();

    /// @notice Thrown when an arithmetic cast or operation overflows.
    error Overflow();

    /// @notice Thrown when DFF accounting checks fail.
    error InvalidDffAccounting();

    // -------- Events --------

    /// @notice Emitted when rewards are funded.
    event RewardsFunded(address indexed from, uint256 amount, uint256 newBalance);

    /// @notice Emitted on successful claim.
    event Claimed(
        bytes32 indexed poolId,
        address indexed sponsorTba,
        address indexed parentSponsorTba,
        uint256 polValueAgNow,
        uint256 baselineBefore,
        uint256 deltaPolValueAg,
        uint256 rewardValueAg,
        uint256 agsOutSponsor,
        uint256 agsOutTotal,
        uint256 slotsGranted
    );

    /// @notice Emitted when an asset eligibility flag changes.
    event EligibleAssetUpdated(address indexed asset, bool allowed);

    /// @notice Emitted when cached AG token is updated.
    event AgTokenUpdated(address indexed newAgToken);

    /// @notice Emitted when max TWAP spread is updated.
    event MaxTwapTickSpreadUpdated(uint24 oldMaxSpread, uint24 newMaxSpread);

    /// @notice Emitted when Aegis engine config is set.
    event AegisEngineConfigured(address indexed engine, address indexed stateView);

    /// @notice Emitted when tokens are rescued by governance.
    event RescueToken(address indexed token, address indexed to, uint256 amount);

    // -------- Read: Core Wiring --------

    /// @notice SponsorCenter source of permissions, pool state, and reward parameters.
    /// @return sponsorCenterAddress SponsorCenter contract instance.
    function sponsorCenter() external view returns (ISponsorCenter);

    /// @notice Registered hook type (Aegis v1 vs Aegis v2) sourced from SponsorCenter.
    /// @param hook Hook contract address.
    /// @return kind Hook type enum value.
    function hookType(address hook) external view returns (Types.HookType);

    /// @notice Whether an asset is eligible for reward valuation.
    /// @dev True when asset is listed via AG anchor pool or explicitly allowlisted.
    /// @param asset Asset address.
    /// @return listed True if asset can be valued in AG terms.
    function eligibleAsset(address asset) external view returns (bool);

    /// @notice Anchor pool used to price an asset in AG terms.
    /// @dev Zero-value pool key when no anchor pool is registered.
    /// @param asset Non-AG asset address.
    /// @return key PoolKey used as anchor.
    function anchorPoolByAsset(address asset) external view returns (PoolKey memory);

    /// @notice Max tick spread allowed across short/medium/long TWAP windows.
    /// @return spread Maximum allowed spread in ticks.
    function maxTwapTickSpread() external view returns (uint24);

    /// @notice Whether an asset is explicitly marked as eligible.
    /// @dev Separate from anchor-pool listing; used for rapid allow/deny control.
    /// @param asset Asset address.
    /// @return eligible True if explicitly allowlisted.
    function assetEligible(address asset) external view returns (bool);

    /// @notice Aegis engine address used for POL accounting on Aegis v2 hooks.
    /// @return engine Engine contract address.
    function aegisEngine() external view returns (address);

    /// @notice Aegis state view address used for v2 share-price reads.
    /// @return stateView State-view contract address.
    function aegisStateView() external view returns (address);

    // -------- Write: Reward Flow --------

    /// @notice Fund the rewards pool with AGS.
    /// @dev Transfers AGS from the caller; reverts if amount is zero or transfer fails.
    /// @param amount AGS amount in token base units.
    function fundRewards(uint256 amount) external;

    /// @notice Claim rewards for a sponsored pool.
    /// @param poolId Canonical pool id (keccak256 of PoolKey).
    /// @return agsClaimed AGS amount actually paid for this claim.
    function claim(bytes32 poolId) external returns (uint256 agsClaimed);

    /// @notice Claim rewards for multiple pools in one transaction.
    /// @param poolIds List of canonical pool ids.
    /// @return agsClaimed AGS amount actually paid per pool (matched by index).
    function claimMany(bytes32[] calldata poolIds) external returns (uint256[] memory agsClaimed);

    /// @notice Rescue a token balance to the SponsorCenter multisig.
    /// @dev Timelock only; destination must equal multisig.
    /// @param token ERC-20 token address to rescue.
    /// @param to Destination address (must equal SponsorCenter multisig).
    /// @param amount Token amount to transfer.
    function rescueToken(address token, address to, uint256 amount) external;

    // -------- Write: Governance Config --------

    /// @notice Configure Aegis engine wiring.
    /// @dev Multisig only.
    /// @param engine Aegis engine contract.
    /// @param stateView Aegis state view contract.
    function setAegisEngineConfig(address engine, address stateView) external;

    /// @notice Register an AG anchor pool and list the non-AG asset.
    /// @dev Timelock only; validates hook allowlist and oracle.
    /// @param key Anchor pool key where one side is AG.
    function registerAgAnchorPool(PoolKey calldata key) external;

    /// @notice Clear a previously registered AG anchor pool (unlist asset).
    /// @dev Timelock only.
    /// @param asset Asset to unlist.
    function clearAgAnchorPool(address asset) external;

    /// @notice Update the maximum allowed TWAP tick spread.
    /// @dev Timelock only.
    /// @param newMaxSpread New max spread in ticks.
    function updateMaxTwapTickSpread(uint24 newMaxSpread) external;

    /// @notice Add an asset to the eligibility list.
    /// @dev Timelock only; allows assets without anchor pools to qualify for rewards.
    /// @param asset Asset address to mark as eligible.
    function addAssetEligible(address asset) external;

    /// @notice Remove an asset from the eligibility list.
    /// @dev Multisig only; enables quick removal of bad tokens to limit losses.
    /// @param asset Asset address to remove from eligibility.
    function removeAssetEligible(address asset) external;

    /// @notice Refresh cached AG token address from SponsorCenter's configured DFF vault.
    /// @dev Multisig only.
    function updateAgCache() external;

    // -------- Read: Valuation --------

    /// @notice Compute the current POL value in AG for a pool.
    /// @param key Pool key to value.
    /// @return valueAg Current value in AG base units.
    function polValueAgNow(PoolKey calldata key) external view returns (uint256);

    /// @notice Compute an optimistic POL value in AG for a pool (used for baseline on bind).
    /// @param key Pool key to value.
    /// @return valueAg Optimistic value in AG base units.
    function polValueAgNowOptimistic(PoolKey calldata key) external view returns (uint256);

    /// @notice Validate whether a pool is eligible for rewards.
    /// @param key Pool key to validate.
    function validatePool(PoolKey calldata key) external view;
}
