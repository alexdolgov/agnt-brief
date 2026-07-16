// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {Types} from "../lib/Types.sol";
import {IRewardCenter} from "./IRewardCenter.sol";

/// @title SponsorCenter External Interface (LSN v1)
/// @notice Canonical surface for invites, pool binding, lineage, and governance controls.
/// @dev Mirrors the external/public functions of `SponsorCenter`. Includes getters relied on by
///      RewardCenter and off-chain callers.
interface ISponsorCenter {
    // -------- Types --------

    enum InviteStatus {
        NONE, // sentinel for uninitialized invites
        PENDING, // active invite awaiting acceptance (open invites stay PENDING until canceled)
        ACCEPTED, // targeted invite accepted by a wallet
        CANCELED // canceled by sponsor before acceptance

    }

    struct Invite {
        address sponsorTba; // sponsor's ERC-6551 account that created the invite
        address targetWallet; // if nonzero, only this wallet may accept; zero = open invite
        InviteStatus status; // stored status
        address acceptedWallet; // wallet that accepted (set for targeted invites)
    }

    struct SlotLedger {
        uint32 baseSlots; // slots granted on mint
        uint32 earnedSlots; // slots earned via invites/claims
        uint32 activePools; // currently bound pools consuming slots
    }

    struct SponsorSlotPermit {
        uint256 tokenId; // sponsor NFT token id authorizing the bind
        address sponsorTba; // sponsor TBA to bind
        bytes32 poolId; // pool id provided by caller
        PoolKey key; // full pool key used to validate hooks/assets
        uint256 nonce; // sponsor permit nonce (per tokenId)
        uint256 deadline; // signature expiry timestamp
    }

    struct SponsorshipAcceptance {
        bytes32 inviteId; // invite being accepted
        address sponsoredWallet; // wallet to receive sponsorship
        uint256 deadline; // signature expiry timestamp
    }

    struct SignedAcceptance {
        SponsorshipAcceptance acceptance; // typed acceptance payload
        bytes signature; // EIP-712 signature from sponsored wallet
    }

    struct SignedSponsorSlotPermit {
        SponsorSlotPermit permit; // typed sponsor slot permit payload
        bytes signature; // EIP-712 signature from sponsor NFT owner
    }

    // -------- Errors --------

    /// @notice Thrown when caller is not authorized.
    error NotAuthorized();

    /// @notice Thrown when an address input is zero.
    error ZeroAddress();

    /// @notice Thrown when an address is invalid for expected contract type.
    error InvalidAddress();

    /// @notice Thrown when a numeric input is invalid.
    error InvalidAmount();

    /// @notice Thrown when minting would exceed max supply.
    error MaxSupplyReached();

    /// @notice Thrown when ETH value does not match expected mint fee.
    error MintFeeMismatch();

    /// @notice Thrown when the selected tier is invalid.
    error InvalidTier();

    /// @notice Thrown when public minting has ended.
    error MintEnded();

    /// @notice Thrown when operation requires mint to be ended first.
    error MintNotEnded();

    /// @notice Thrown when too many pools are passed to claim-many flow.
    error MaxClaimManyExceeded();

    /// @notice Thrown when pool validation fails.
    error InvalidPool();

    /// @notice Thrown when attempting to set an immutable one-time value twice.
    error AlreadySet();

    /// @notice Thrown when invite validation fails.
    error InvalidInvite();

    /// @notice Thrown when signature deadline has passed.
    error DeadlineExpired();

    /// @notice Thrown when signature deadline has not passed yet.
    error DeadlineNotExpired();

    /// @notice Thrown when signature validation fails.
    error InvalidSignature();

    /// @notice Thrown when nonce validation fails.
    error InvalidNonce();

    /// @notice Thrown when required system wiring has not been initialized.
    error NotInitialized();

    /// @notice Thrown when operation is blocked by paused state.
    error Paused();

    /// @notice Thrown when a merkle root has already been set.
    error MerkleRootAlreadySet();

    /// @notice Thrown when a merkle root has not been set.
    error MerkleRootUnset();

    /// @notice Thrown when a merkle proof is invalid.
    error MerkleProofInvalid();

    /// @notice Thrown when a claim has already been executed.
    error AlreadyClaimed();

    /// @notice Thrown when token balance is insufficient to pay expected amount.
    error Underfunded();

    /// @notice Thrown when sponsor TBA validation fails.
    error InvalidSponsorTba();

    /// @notice Thrown when duplicate pool ids are passed in one call.
    error DuplicatePoolId();

    /// @notice Thrown when slot capacity is unavailable.
    error SlotsUnavailable();

    /// @notice Thrown when slot counters would underflow.
    error SlotCountUnderflow();

    /// @notice Thrown when pool is blacklisted.
    error PoolBlacklisted();

    /// @notice Thrown when low-level execution fails without revert data.
    error ExecutionFailed();

    /// @notice Thrown when oracle data is stale.
    error StaleOracle();

    /// @notice Thrown when DFF accounting checks fail.
    error InvalidDffAccounting();

    /// @notice Thrown when a reentrant call is attempted.
    error Reentrancy();

    /// @notice Thrown when pool binding is not enabled.
    error PoolBindingNotEnabled();

    /// @notice Thrown when an arithmetic cast or operation overflows.
    error Overflow();

    // -------- Events --------

    /// @notice Emitted when reward center address is updated.
    event RewardCenterUpdated(address indexed previous, address indexed current);

    /// @notice Emitted when hook type is updated.
    event HookTypeUpdated(address indexed hook, uint8 hookType);

    /// @notice Emitted when pool blacklist status changes.
    event PoolBlacklistUpdated(bytes32 indexed poolId, bool blacklisted);

    /// @notice Emitted when protocol is paused.
    event SponsorCenterPaused(address indexed by);

    /// @notice Emitted when protocol is unpaused.
    event Unpaused(address indexed by);

    /// @notice Emitted when minting is ended.
    event SponsorCenterMintEnded(address indexed by);

    /// @notice Emitted when multisig is updated.
    event MultisigUpdated(address indexed oldMultisig, address indexed newMultisig);

    /// @notice Emitted when timelock is updated.
    event TimelockUpdated(address indexed oldTimelock, address indexed newTimelock);

    /// @notice Emitted when reward share bps changes.
    event RewardShareBpsUpdated(uint256 oldShareBps, uint256 newShareBps);

    /// @notice Emitted when sponsor benefit bps changes.
    event SponsorBenefitBpsUpdated(uint256 oldBps, uint256 newBps);

    /// @notice Emitted when POL reward delta threshold changes.
    event PolRewardDeltaThresholdUpdated(uint256 oldThreshold, uint256 newThreshold);

    /// @notice Emitted when minimum claimable POL value changes.
    event MinPolValueAgUpdated(uint256 oldMinPolValueAg, uint256 newMinPolValueAg);

    /// @notice Emitted when minimum reward for slot grant changes.
    event MinRewardAgsForSlotsUpdated(uint256 oldMinRewardAgs, uint256 newMinRewardAgs);

    /// @notice Emitted when AGS token is configured.
    event AgsTokenUpdated(address indexed newAgsToken);

    /// @notice Emitted when AGS DFF vault is configured.
    event AgsDffUpdated(address indexed newAgsDff);

    /// @notice Emitted when a pool baseline is updated.
    event PolBaselineUpdated(bytes32 indexed poolId, uint256 oldBaseline, uint256 newBaseline);

    /// @notice Emitted when earned slots are granted on first paid claim.
    event PoolEarnedSlotsGranted(address indexed sponsorTba, bytes32 indexed poolId, uint256 amount);

    /// @notice Emitted when invite is created.
    event InviteCreated(bytes32 indexed inviteId, address indexed sponsorTba, address indexed targetWallet);

    /// @notice Emitted when invite is canceled.
    event InviteCanceled(bytes32 indexed inviteId, address indexed sponsorTba);

    /// @notice Emitted when pool binding becomes enabled.
    event PoolBindingEnabled(uint32 newInviteEpoch);

    /// @notice Emitted when sponsor binds to a pool.
    event SponsorBound(bytes32 indexed poolId, address indexed sponsorTba, uint256 indexed tokenId, uint256 nonce);

    /// @notice Emitted when sponsor unbinds from a pool.
    event SponsorUnbound(bytes32 indexed poolId, address indexed sponsorTba);

    /// @notice Emitted when multisig revokes a sponsor pool binding.
    event SponsorRevoked(bytes32 indexed poolId, address indexed sponsorTba);

    /// @notice Emitted when permit nonce is invalidated.
    event NoncesInvalidated(uint256 indexed tokenId, uint256 newNonce);

    /// @notice Emitted when max pool bindings changes.
    event MaxPoolBindingsUpdated(uint256 oldMax, uint256 newMax);

    /// @notice Emitted when default parent sponsor TBA changes.
    event DefaultParentSponsorTbaUpdated(address indexed oldParent, address indexed newParent);

    /// @notice Emitted when tracked withdrawn shares are updated.
    event PolWithdrawnSharesUpdated(bytes32 indexed poolId, uint256 oldShares, uint256 newShares);

    /// @notice Emitted when parent sponsor is set for a child sponsor.
    event ParentSponsorSet(address indexed sponsorTbaChild, address indexed parentSponsorTba);

    /// @notice Emitted when earned slots are granted after invite acceptance.
    event InviteEarnedSlotsGranted(address indexed sponsorTba, bytes32 indexed inviteId, uint256 amount);

    /// @notice Emitted when a sponsorship invite is accepted.
    event SponsorshipAccepted(bytes32 indexed inviteId, address indexed sponsorTba, address indexed sponsoredWallet);

    // -------- Read: Core Config --------

    /// @notice Canonical AEGIS NFT contract address.
    /// @dev This contract is the only allowed caller for mint hook entrypoints.
    function aegisNft() external view returns (address);

    /// @notice AGS token used for reward funding and payouts.
    function agsToken() external view returns (address);

    /// @notice AGS DFF vault used to derive AG value from AGS-denominated amounts.
    function agsDff() external view returns (address);

    /// @notice ERC-6551 registry used to derive sponsor TBAs.
    function ERC6551_REGISTRY() external view returns (address);

    /// @notice ERC-6551 account implementation used for sponsor TBAs.
    function ERC6551_ACCOUNT_IMPLEMENTATION() external view returns (address);

    /// @notice ERC-6551 salt used for sponsor TBA derivation.
    function ERC6551_SALT() external view returns (bytes32);

    /// @notice Multisig controller for emergency and operational actions.
    function multisig() external view returns (address);

    /// @notice Timelock controller for governance-gated configuration changes.
    function timelock() external view returns (address);

    /// @notice Global pause flag.
    /// @dev When true, invite acceptance/creation and reward claiming paths are blocked.
    function paused() external view returns (bool);

    /// @notice True once minting and pre-CCA invite flow have been permanently ended.
    function mintEnded() external view returns (bool);

    /// @notice True once post-mint pool binding has been enabled.
    function poolBindingEnabled() external view returns (bool);

    /// @notice RewardCenter contract authorized to call reward callbacks.
    /// @return rewardCenterAddress RewardCenter contract instance.
    function rewardCenter() external view returns (IRewardCenter);

    /// @notice Registered hook type (Aegis v1 vs Aegis v2).
    /// @dev Acts as the canonical hook allowlist/type registry.
    /// @param hook Hook contract address.
    /// @return kind Hook type enum value.
    function hookType(address hook) external view returns (Types.HookType);

    /// @notice Whether a pool is blacklisted from receiving rewards.
    /// @param poolId Canonical pool identifier.
    /// @return blacklisted True if claims should be blocked for this pool.
    function poolBlacklisted(bytes32 poolId) external view returns (bool);

    /// @notice Gross reward share in basis points (denominator: 10_000).
    function rewardShareBps() external view returns (uint256);

    /// @notice Minimum POL delta (AG units) required before rewards accrue.
    function polRewardDeltaThreshold() external view returns (uint256);

    /// @notice Minimum current POL value (AG units) required for claims.
    function minPolValueAg() external view returns (uint256);

    /// @notice Minimum AGS payout required to grant post-CCA earned slots.
    function minRewardAgsForSlots() external view returns (uint256);

    /// @notice Default parent sponsor TBA used when the minter has no mapped sponsor.
    function defaultParentSponsorTba() external view returns (address);

    /// @notice Parent sponsor benefit share in basis points (denominator: 10_000).
    function sponsorBenefitBps() external view returns (uint256);

    /// @notice Current invite epoch index used for pre-CCA slot accounting.
    function inviteEpoch() external view returns (uint32);

    /// @notice Total number of active pool bindings across all sponsors.
    function activePoolBindings() external view returns (uint32);

    /// @notice Global cap on concurrently active pool bindings.
    function maxPoolBindings() external view returns (uint32);

    // -------- Read: Sponsor/Invite State --------

    /// @notice Slot ledger for a sponsor TBA.
    /// @param sponsorTba Sponsor token-bound account.
    /// @return baseSlots Static slots assigned at mint.
    /// @return earnedSlots Dynamic slots earned via referral/claims.
    /// @return activePools Currently bound pool count consuming slots.
    function slots(address sponsorTba)
        external
        view
        returns (uint32 baseSlots, uint32 earnedSlots, uint32 activePools);

    /// @notice Available slots for a sponsor TBA (0 if uninitialized).
    /// @param sponsorTba Sponsor token-bound account.
    /// @return remainingSlots Remaining capacity for invites/bindings.
    function availableSlots(address sponsorTba) external view returns (uint32);

    /// @notice Active pre-CCA invites for a sponsor in a given epoch.
    /// @dev Counts invites that currently consume slot capacity for that epoch.
    /// @param sponsorTba Sponsor token-bound account.
    /// @param epoch Invite epoch index.
    /// @return count Active invite count consuming slots.
    function activePreCcaByEpoch(address sponsorTba, uint32 epoch) external view returns (uint32);

    /// @notice Whether an invite currently consumes a slot.
    /// @param inviteId Invite identifier.
    /// @return consumesSlot True if this invite currently holds slot capacity.
    function inviteConsumesSlot(bytes32 inviteId) external view returns (bool);

    /// @notice Sponsor TBA associated with an invite.
    /// @param inviteId Invite identifier.
    /// @return sponsorTba Sponsor that created the invite.
    function inviteSponsorTba(bytes32 inviteId) external view returns (address);

    /// @notice Sponsor TBA assigned to a wallet.
    /// @dev Mapping is populated when invites are accepted.
    /// @param wallet Wallet address.
    /// @return sponsorTba Sponsor assigned to wallet (or zero if none).
    function sponsorTbaByWallet(address wallet) external view returns (address);

    /// @notice Invite record for an invite id.
    function invites(bytes32 inviteId)
        external
        view
        returns (address sponsorTba, address targetWallet, InviteStatus status, address acceptedWallet);

    /// @notice Invite status for an invite id.
    /// @param inviteId Invite identifier.
    /// @return status Current invite status enum.
    function inviteStatus(bytes32 inviteId) external view returns (InviteStatus);

    /// @notice Invite nonce for a sponsor TBA.
    /// @param sponsorTba Sponsor token-bound account.
    /// @return nonce Current invite nonce.
    function sponsorInviteNonce(address sponsorTba) external view returns (uint64);

    /// @notice Parent sponsor mapping for a sponsor TBA.
    /// @param sponsorTba Child sponsor token-bound account.
    /// @return parentSponsorTba Parent sponsor (or zero if unset).
    function parentSponsorTbaBySponsorTba(address sponsorTba) external view returns (address);

    /// @notice Whether a pool is bound to a sponsor TBA and consumes a slot.
    function poolConsumesSlot(bytes32 poolId) external view returns (bool);

    /// @notice Sponsor TBA bound to a pool.
    function sponsorTbaByPool(bytes32 poolId) external view returns (address);

    /// @notice Whether earned slots have been granted for a pool.
    function poolEarnedSlotsGranted(bytes32 poolId) external view returns (bool);

    /// @notice PoolKey registered for a pool id.
    function poolKeyByPoolId(bytes32 poolId) external view returns (PoolKey memory);

    /// @notice Last POL value baseline for a pool.
    function lastPolValueAg(bytes32 poolId) external view returns (uint256);

    /// @notice Shares withdrawn from POL for a pool.
    function polWithdrawnShares(bytes32 poolId) external view returns (uint256);

    /// @notice Sponsor slot permit nonce for a token id.
    /// @dev Monotonically increasing nonce used by EIP-712 bind permits.
    /// @param tokenId Sponsor NFT token id.
    /// @return nonce Current EIP-712 permit nonce.
    function permitNonces(uint256 tokenId) external view returns (uint256);

    /// @notice EIP-712 domain separator for permit and acceptance signatures.
    /// @return separator Domain separator hash.
    function domainSeparator() external view returns (bytes32);

    // -------- Write: Invite & Binding Lifecycle --------

    /// @notice Create an invite for a target wallet (or open invite if zero address).
    /// @dev Caller must be the sponsor's TBA; reverts once minting is ended.
    /// @dev Invites reserve one slot on creation.
    /// @dev For accepted invites, slot reservation remains consumed unless canceled while still pending.
    /// @param targetWallet Wallet to be sponsored; `address(0)` allows any wallet.
    /// @return inviteId Deterministic invite id derived from sponsor nonce.
    function createInvite(address targetWallet) external returns (bytes32 inviteId);

    /// @notice Cancel a pending invite created by the caller's sponsor TBA.
    /// @dev Reverts if invite is not PENDING or minting already ended.
    /// @param inviteId Invite identifier returned by `createInvite`.
    function cancelInvite(bytes32 inviteId) external;

    /// @notice Accept an invite using an EIP-712 signature from the sponsored wallet.
    /// @dev Callable only by `AegisNFT` during `mintWithInvite`.
    /// @dev Validates deadline and sponsored wallet signature.
    /// @dev Targeted invites are single-use; open invites can be accepted by multiple wallets while pending.
    /// @dev Acceptance links the wallet to its sponsor and grants invite-earned slots.
    /// @dev Invite slot reservation remains consumed after acceptance.
    /// @param signed Acceptance payload and signature bundle.
    function acceptSponsorshipBySig(SignedAcceptance calldata signed) external;

    /// @notice Enable pool binding and advance the invite epoch.
    /// @dev Callable once by governance, only after minting has ended.
    function enablePoolBinding() external;

    /// @notice Bind a pool to a sponsor position using a sponsor-signed permit.
    /// @dev Permissionless once pool binding is enabled. Checks permit nonce, pool key hash, sponsor TBA validity,
    ///      and slot availability; consumes one pool slot.
    /// @param signed Permit payload and signature bundle.
    function bindSponsorTba(SignedSponsorSlotPermit calldata signed) external;

    /// @notice Unbind a pool from the caller sponsor TBA, releasing its active slot.
    /// @dev Caller must be the pool's bound sponsor TBA; only callable after pool binding is enabled.
    /// @param poolId Canonical pool identifier.
    function unbindPool(bytes32 poolId) external;

    /// @notice Multisig-only revocation of a pool binding, releasing the slot.
    /// @param poolId Canonical pool identifier.
    function revokeSponsor(bytes32 poolId) external;

    /// @notice Invalidate sponsor slot permit nonces by setting a new higher nonce value.
    /// @dev Caller must be token owner/approved; reverts if `newNonce` is not greater than current.
    /// @param tokenId Sponsorship position token id.
    /// @param newNonce New nonce to set (must be > current nonce).
    function invalidateNonces(uint256 tokenId, uint256 newNonce) external;

    // -------- Write: Admin Controls --------

    /// @notice Pause binding and claiming (multisig only).
    function pause() external;

    /// @notice Unpause binding and claiming (multisig only).
    function unpause() external;

    /// @notice Permanently end minting and invite creation/acceptance.
    /// @dev Multisig only.
    function endMint() external;

    /// @notice Update the multisig address.
    /// @dev Timelock only.
    /// @param newMultisig New multisig controller.
    function setMultisig(address newMultisig) external;

    /// @notice Update the timelock address.
    /// @dev Timelock only.
    /// @param newTimelock New timelock contract.
    function updateTimelock(address newTimelock) external;

    /// @notice Increase-only update to the global concurrent pool binding cap.
    /// @dev Timelock only; reverts if lowering the cap.
    /// @param newMaxPoolBindings New global pool binding cap (must be >= current).
    function updateMaxPoolBindings(uint32 newMaxPoolBindings) external;

    /// @notice Update the gross reward share in basis points used when a parent sponsor applies.
    /// @dev Timelock only; bounded by BPS_DENOMINATOR.
    /// @param newRewardShareBps New reward share (bps).
    function updateRewardShareBps(uint256 newRewardShareBps) external;

    /// @notice Update the parent sponsor payout share in basis points.
    /// @dev Timelock only; bounded to <= 50% (5,000 bps).
    /// @param newSponsorBenefitBps New parent sponsor share (bps).
    function updateSponsorBenefitBps(uint256 newSponsorBenefitBps) external;

    /// @notice Update the anti-dust threshold for POL reward accrual.
    /// @dev Timelock only.
    /// @param newThreshold New threshold in `$AG` base units.
    function updatePolRewardDeltaThreshold(uint256 newThreshold) external;

    /// @notice Update the minimum POL value required for a claim to proceed.
    /// @dev Timelock only.
    /// @param newMinPolValueAg New minimum POL value in `$AG` base units.
    function updateMinPolValueAg(uint256 newMinPolValueAg) external;

    /// @notice Update the AGS payout threshold that must be exceeded to grant earned slots.
    /// @dev Multisig only.
    /// @param newMinRewardAgsForSlots New minimum AGS payout in `AGS` base units.
    function updateMinRewardAgsForSlots(uint256 newMinRewardAgsForSlots) external;

    /// @notice Configure the default parent sponsor TBA applied when a wallet has no recorded parent at mint.
    /// @dev Multisig only; `address(0)` disables minting until a non-zero default is configured.
    /// @param newDefaultParentSponsorTba Default parent sponsor TBA.
    function setDefaultParentSponsorTba(address newDefaultParentSponsorTba) external;

    /// @notice Set the RewardCenter address.
    /// @dev Timelock only.
    /// @param newRewardCenter New RewardCenter contract.
    function setRewardCenter(address newRewardCenter) external;

    /// @notice Register or update a hook's type.
    /// @dev Timelock only. Validates the hook implements the interface for the specified type.
    /// @param hook Hook address.
    /// @param hookType_ Expected hook kind.
    function setHookType(address hook, Types.HookType hookType_) external;

    /// @notice Blacklist or unblacklist a pool from receiving rewards.
    /// @dev Multisig only.
    /// @param poolId Pool identifier to blacklist or unblacklist.
    /// @param blacklisted True to blacklist, false to allow.
    function setPoolBlacklisted(bytes32 poolId, bool blacklisted) external;

    /// @notice Set the AGS token after deployment (one-time).
    /// @dev Timelock only.
    /// @param newAgsToken AGS token address.
    function setAgsToken(address newAgsToken) external;

    /// @notice Set the AGS DFF (ERC4626 vault) used to derive AG value per AGS (one-time).
    /// @dev Timelock only.
    /// @param newAgsDff DFF vault address.
    function setAgsDff(address newAgsDff) external;

    // -------- Write: Reward/Mint Hooks --------

    /// @notice Increase tracked withdrawn POL shares for a pool.
    /// @dev Multisig only. Additive-only counter used during reward valuation.
    /// @param poolId Canonical pool identifier.
    /// @param sharesDelta Additional withdrawn shares to add to the tracked total.
    function updatePolWithdrawnShares(bytes32 poolId, uint256 sharesDelta) external;

    /// @notice RewardCenter hook to update POL baseline for a pool.
    /// @dev RewardCenter only.
    /// @param poolId Canonical pool identifier.
    /// @param value New baseline value in AG base units.
    function rewardUpdateBaseline(bytes32 poolId, uint256 value) external;

    /// @notice RewardCenter hook invoked on first paid claim for a pool.
    /// @dev RewardCenter only; returns slots granted.
    /// @param poolId Canonical pool identifier.
    /// @param sponsorTba Sponsor receiving earned-slot grant.
    /// @return slotsGranted Number of newly granted earned slots.
    function rewardOnFirstPaidClaim(bytes32 poolId, address sponsorTba) external returns (uint256);

    /// @notice Mint hook to initialize base slots for a sponsor position.
    /// @dev Callable only by `AEGIS_NFT`; reverts on zero base slots or if already initialized.
    /// @param sponsorTba ERC-6551 account for the new sponsor position.
    /// @param baseSlots Tier-derived base slot count.
    function onMintSetBaseSlots(address sponsorTba, uint32 baseSlots) external;

    /// @notice Mint hook to set the parent sponsor mapping for a new sponsor position.
    /// @dev Callable only by `AEGIS_NFT`; reverts on zero addresses, already-set parent, or self-parenting.
    /// @param sponsorTbaChild ERC-6551 account for the child sponsor position.
    /// @param minterWallet Wallet that minted the sponsorship position (used to resolve parent).
    function onMintSetParent(address sponsorTbaChild, address minterWallet) external;

    /// @notice View active targeted invites for a wallet (excludes open invites with no target).
    /// @dev Filters out invites that are no longer pending.
    /// @param wallet Wallet address.
    /// @return inviteIds Active invite ids targeting this wallet.
    function activeInvitesFor(address wallet) external view returns (bytes32[] memory);
}
