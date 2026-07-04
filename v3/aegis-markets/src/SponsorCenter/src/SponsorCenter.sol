// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {Constants} from "./lib/Constants.sol";
import {Types} from "./lib/Types.sol";
import {PoolKey} from "@uniswap/v4-core/src/types/PoolKey.sol";
import {PoolId, PoolIdLibrary} from "@uniswap/v4-core/src/types/PoolId.sol";
import {Currency} from "@uniswap/v4-core/src/types/Currency.sol";
import {IERC6551Registry} from "./interfaces/IERC6551Registry.sol";
import {ISponsorCenter} from "./interfaces/ISponsorCenter.sol";
import {IRewardCenter} from "./interfaces/IRewardCenter.sol";
import {IAegisHook} from "aegis-engine/contracts/interfaces/IAegisHook.sol";
import {IOracleManager} from "aegis-engine/contracts/interfaces/IOracleManager.sol";
import {ISpot} from "AEGIS_DFM/src/interfaces/ISpot.sol";
import {TruncGeoOracleMulti} from "AEGIS_DFM/src/TruncGeoOracleMulti.sol";

interface IERC1271 {
    function isValidSignature(bytes32 hash, bytes calldata signature) external view returns (bytes4);
}

/// @notice SponsorCenter owns invites, pool binding, slot accounting, and governance for sponsor limits.
/// @dev Storage home for sponsorship state; RewardCenter reads/writes via whitelisted hooks so reward logic
///      can be swapped without migrating storage.
contract SponsorCenter is ISponsorCenter, ReentrancyGuard {
    using ECDSA for bytes32;

    struct BindContext {
        PoolKey key;
        uint256 nonce;
        uint256 polValueAgNow;
    }

    struct SlotLedgerState {
        uint32 baseSlots;
        uint32 earnedSlots;
        uint32 activePools;
        uint64 inviteNonce;
    }

    struct InviteState {
        address sponsorTba;
        address targetWallet;
        InviteStatus status;
        address acceptedWallet;
        bool consumesSlot;
    }

    struct PoolBinding {
        bool consumesSlot;
        bool earnedSlotsGranted;
        address sponsorTba;
        uint256 lastPolValueAg;
        uint256 polWithdrawnShares;
        PoolKey key;
    }

    struct InitConfig {
        address aegisNft;
        address rewardCenter;   
        address agsToken;
        address agsDff;
        address erc6551Registry;
        address erc6551AccountImplementation;
        uint256 erc6551Salt;
        address multisig;
        address timelock;
        uint32 maxPoolBindings;
        uint256 rewardShareBps;
        uint256 polRewardDeltaThreshold;
        uint256 minPolValueAg;
    }

    bytes32 internal constant EIP712_DOMAIN_TYPEHASH =
        keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)");
    bytes32 internal constant SPONSOR_SLOT_PERMIT_TYPEHASH = keccak256(
        "SponsorSlotPermit(uint256 tokenId,address sponsorTba,bytes32 poolId,uint256 nonce,uint256 deadline)"
    );
    bytes32 internal constant SPONSORSHIP_ACCEPT_TYPEHASH =
        keccak256("SponsorshipAcceptance(bytes32 inviteId,address sponsoredWallet,uint256 deadline)");
    bytes32 internal constant EIP712_NAME_HASH = keccak256("SponsorCenter");
    bytes32 internal constant EIP712_VERSION_HASH = keccak256("1");
    bytes4 internal constant ERC1271_MAGICVALUE = 0x1626ba7e;

    // ---- Config ----
    /// @inheritdoc ISponsorCenter
    address public immutable override aegisNft;
    /// @inheritdoc ISponsorCenter
    address public override agsToken;
    /// @inheritdoc ISponsorCenter
    address public override agsDff;
    /// @inheritdoc ISponsorCenter
    address public immutable override ERC6551_REGISTRY;
    /// @inheritdoc ISponsorCenter
    address public immutable override ERC6551_ACCOUNT_IMPLEMENTATION;
    /// @inheritdoc ISponsorCenter
    bytes32 public immutable override ERC6551_SALT;
    /// @inheritdoc ISponsorCenter
    address public override multisig;
    /// @inheritdoc ISponsorCenter
    address public override timelock;
    /// @inheritdoc ISponsorCenter
    bool public override paused;
    /// @inheritdoc ISponsorCenter
    bool public override mintEnded;
    /// @inheritdoc ISponsorCenter
    bool public override poolBindingEnabled;
    /// @inheritdoc ISponsorCenter
    IRewardCenter public override rewardCenter;
    /// @inheritdoc ISponsorCenter
    mapping(address hook => Types.HookType) public override hookType;
    /// @inheritdoc ISponsorCenter
    mapping(bytes32 poolId => bool) public override poolBlacklisted;

    // ---- Tunable rewards params ----
    /// @inheritdoc ISponsorCenter
    uint256 public override rewardShareBps;
    /// @inheritdoc ISponsorCenter
    uint256 public override polRewardDeltaThreshold;
    /// @inheritdoc ISponsorCenter
    uint256 public override minPolValueAg;
    /// @inheritdoc ISponsorCenter
    uint256 public override minRewardAgsForSlots;
    /// @inheritdoc ISponsorCenter
    uint256 public override sponsorBenefitBps;
    /// @inheritdoc ISponsorCenter
    address public override defaultParentSponsorTba;
    /// @inheritdoc ISponsorCenter
    uint32 public override inviteEpoch;

    // ---- Slot accounting ----
    mapping(address sponsorTba => SlotLedgerState) internal _slotLedgers;
    /// @inheritdoc ISponsorCenter
    uint32 public override activePoolBindings;
    /// @inheritdoc ISponsorCenter
    uint32 public override maxPoolBindings;

    // ---- Invite state ----
    /// @inheritdoc ISponsorCenter
    mapping(address sponsorTba => mapping(uint32 epoch => uint32 activePreCca)) public override activePreCcaByEpoch;
    mapping(address wallet => bytes32[] inviteIds) private activeInvitesByWallet;
    mapping(bytes32 inviteId => uint256 indexPlusOne) private inviteIndexByWallet;

    /// @inheritdoc ISponsorCenter
    mapping(address wallet => address sponsorTba) public override sponsorTbaByWallet;
    mapping(bytes32 inviteId => InviteState) internal _invites;

    // ---- Lineage ----
    mapping(address sponsorTbaChild => address parent) internal _parentSponsorTba;

    // ---- Pool bindings and accounting ----
    mapping(bytes32 poolId => PoolBinding) internal _poolBindings;

    // ---- EIP-712 nonces ----
    /// @inheritdoc ISponsorCenter
    mapping(uint256 tokenId => uint256 nonce) public override permitNonces;

    constructor(InitConfig memory config) {
        if (
            config.aegisNft == address(0) || config.erc6551Registry == address(0)
                || config.erc6551AccountImplementation == address(0) || config.multisig == address(0)
                || config.timelock == address(0)
        ) {
            revert ZeroAddress();
        }
        if (config.maxPoolBindings == 0 || config.rewardShareBps == 0 || config.rewardShareBps > Constants.BPS_DENOMINATOR) {
            revert InvalidAmount();
        }
        if (Constants.SPONSOR_BENEFIT_BPS > Constants.BPS_DENOMINATOR) {
            revert InvalidAmount();
        }
        aegisNft = config.aegisNft;
        rewardCenter = IRewardCenter(config.rewardCenter);
        agsToken = config.agsToken;
        agsDff = config.agsDff;
        ERC6551_REGISTRY = config.erc6551Registry;
        ERC6551_ACCOUNT_IMPLEMENTATION = config.erc6551AccountImplementation;
        ERC6551_SALT = bytes32(config.erc6551Salt);

        multisig = config.multisig;
        timelock = config.timelock;
        maxPoolBindings = config.maxPoolBindings;
        rewardShareBps = config.rewardShareBps;
        polRewardDeltaThreshold = config.polRewardDeltaThreshold;
        minPolValueAg = config.minPolValueAg;
        defaultParentSponsorTba = address(0);
        sponsorBenefitBps = Constants.SPONSOR_BENEFIT_BPS;
    }

    modifier onlyTimelock() {
        if (msg.sender != timelock) {
            revert NotAuthorized();
        }
        _;
    }

    modifier onlyMultisig() {
        if (msg.sender != multisig) {
            revert NotAuthorized();
        }
        _;
    }

    modifier onlyRewardCenter() {
        if (msg.sender != address(rewardCenter)) {
            revert NotAuthorized();
        }
        _;
    }

    modifier onlyAegisNft() {
        if (msg.sender != aegisNft) {
            revert NotAuthorized();
        }
        _;
    }

    modifier whenNotPaused() {
        if (paused) {
            revert Paused();
        }
        _;
    }

    /// @inheritdoc ISponsorCenter
    function setRewardCenter(address newRewardCenter) external override onlyTimelock {
        if (newRewardCenter == address(0)) {
            revert ZeroAddress();
        }
        address prev = address(rewardCenter);
        rewardCenter = IRewardCenter(newRewardCenter);
        emit RewardCenterUpdated(prev, newRewardCenter);
    }

    /// @inheritdoc ISponsorCenter
    function setHookType(address hook, Types.HookType hookType_) external override onlyTimelock {
        if (hook == address(0)) {
            revert ZeroAddress();
        }

        // Validate hook implements the interface for the specified type
        if (hookType_ == Types.HookType.AEGIS_V2) {
            // Verify hook has ORACLE_MANAGER function
            try IAegisHook(hook).ORACLE_MANAGER() returns (IOracleManager oracleManager) {
                if (address(oracleManager) == address(0)) {
                    revert InvalidPool();
                }
            } catch {
                revert InvalidPool();
            }
        } else if (hookType_ == Types.HookType.AEGIS_V1) {
            // Verify hook has truncGeoOracle function
            try ISpot(hook).truncGeoOracle() returns (TruncGeoOracleMulti truncGeoOracle) {
                if (address(truncGeoOracle) == address(0)) {
                    revert InvalidPool();
                }
            } catch {
                revert InvalidPool();
            }
        }
        // No validation needed for NONE

        hookType[hook] = hookType_;
        emit HookTypeUpdated(hook, uint8(hookType_));
    }

    /// @inheritdoc ISponsorCenter
    function setPoolBlacklisted(bytes32 poolId, bool blacklisted) external override onlyMultisig {
        poolBlacklisted[poolId] = blacklisted;
        emit PoolBlacklistUpdated(poolId, blacklisted);
    }

    /// @inheritdoc ISponsorCenter
    function pause() external override onlyMultisig {
        paused = true;
        emit SponsorCenterPaused(msg.sender);
    }

    /// @inheritdoc ISponsorCenter
    function unpause() external override onlyMultisig {
        paused = false;
        emit Unpaused(msg.sender);
    }

    /// @inheritdoc ISponsorCenter
    function endMint() external override onlyMultisig {
        if (mintEnded) {
            revert AlreadySet();
        }
        mintEnded = true;
        emit SponsorCenterMintEnded(msg.sender);
    }

    /// @inheritdoc ISponsorCenter
    function setMultisig(address newMultisig) external override onlyTimelock {
        if (newMultisig == address(0)) {
            revert ZeroAddress();
        }
        address current = multisig;
        multisig = newMultisig;
        emit MultisigUpdated(current, newMultisig);
    }

    /// @inheritdoc ISponsorCenter
    function updateTimelock(address newTimelock) external override onlyTimelock {
        if (newTimelock == address(0)) {
            revert ZeroAddress();
        }
        address current = timelock;
        timelock = newTimelock;
        emit TimelockUpdated(current, newTimelock);
    }

    /// @inheritdoc ISponsorCenter
    function updateRewardShareBps(uint256 newRewardShareBps) external override onlyTimelock {
        if (newRewardShareBps == 0 || newRewardShareBps > Constants.BPS_DENOMINATOR) {
            revert InvalidAmount();
        }
        uint256 current = rewardShareBps;
        rewardShareBps = newRewardShareBps;
        emit RewardShareBpsUpdated(current, newRewardShareBps);
    }

    /// @inheritdoc ISponsorCenter
    function updateSponsorBenefitBps(uint256 newSponsorBenefitBps) external override onlyTimelock {
        if (newSponsorBenefitBps > Constants.BPS_DENOMINATOR / 2) {
            revert InvalidAmount();
        }
        uint256 current = sponsorBenefitBps;
        sponsorBenefitBps = newSponsorBenefitBps;
        emit SponsorBenefitBpsUpdated(current, newSponsorBenefitBps);
    }

    /// @inheritdoc ISponsorCenter
    function updatePolRewardDeltaThreshold(uint256 newThreshold) external override onlyTimelock {
        uint256 current = polRewardDeltaThreshold;
        polRewardDeltaThreshold = newThreshold;
        emit PolRewardDeltaThresholdUpdated(current, newThreshold);
    }

    /// @inheritdoc ISponsorCenter
    function updateMinPolValueAg(uint256 newMinPolValueAg) external override onlyTimelock {
        uint256 current = minPolValueAg;
        minPolValueAg = newMinPolValueAg;
        emit MinPolValueAgUpdated(current, newMinPolValueAg);
    }

    /// @inheritdoc ISponsorCenter
    function updateMinRewardAgsForSlots(uint256 newMinRewardAgsForSlots) external override onlyMultisig {
        uint256 current = minRewardAgsForSlots;
        minRewardAgsForSlots = newMinRewardAgsForSlots;
        emit MinRewardAgsForSlotsUpdated(current, newMinRewardAgsForSlots);
    }

    /// @inheritdoc ISponsorCenter
    function setAgsToken(address newAgsToken) external override onlyTimelock {
        if (newAgsToken == address(0)) {
            revert ZeroAddress();
        }
        if (agsToken != address(0)) {
            revert AlreadySet();
        }
        agsToken = newAgsToken;
        emit AgsTokenUpdated(newAgsToken);
    }

    /// @inheritdoc ISponsorCenter
    function setAgsDff(address newAgsDff) external override onlyTimelock {
        if (newAgsDff == address(0)) {
            revert ZeroAddress();
        }
        if (agsDff != address(0)) {
            revert AlreadySet();
        }
        agsDff = newAgsDff;
        emit AgsDffUpdated(newAgsDff);
    }

    /// @inheritdoc ISponsorCenter
    function slots(address sponsorTba)
        external
        view
        override
        returns (uint32 baseSlots, uint32 earnedSlots, uint32 activePools)
    {
        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];
        return (ledger.baseSlots, ledger.earnedSlots, ledger.activePools);
    }

    /// @inheritdoc ISponsorCenter
    function inviteConsumesSlot(bytes32 inviteId) external view override returns (bool) {
        return _invites[inviteId].consumesSlot;
    }

    /// @inheritdoc ISponsorCenter
    function inviteSponsorTba(bytes32 inviteId) external view override returns (address) {
        return _invites[inviteId].sponsorTba;
    }

    /// @inheritdoc ISponsorCenter
    function invites(bytes32 inviteId)
        external
        view
        override
        returns (address sponsorTba, address targetWallet, InviteStatus status, address acceptedWallet)
    {
        InviteState storage invite = _invites[inviteId];
        return (invite.sponsorTba, invite.targetWallet, invite.status, invite.acceptedWallet);
    }

    /// @inheritdoc ISponsorCenter
    function sponsorInviteNonce(address sponsorTba) external view override returns (uint64) {
        return _slotLedgers[sponsorTba].inviteNonce;
    }

    /// @inheritdoc ISponsorCenter
    function parentSponsorTbaBySponsorTba(address sponsorTba) public view override returns (address) {
        return _parentSponsorTba[sponsorTba];
    }

    /// @inheritdoc ISponsorCenter
    function poolConsumesSlot(bytes32 poolId) external view override returns (bool) {
        return _poolBindings[poolId].consumesSlot;
    }

    /// @inheritdoc ISponsorCenter
    function sponsorTbaByPool(bytes32 poolId) external view override returns (address) {
        return _poolBindings[poolId].sponsorTba;
    }

    /// @inheritdoc ISponsorCenter
    function poolEarnedSlotsGranted(bytes32 poolId) external view override returns (bool) {
        return _poolBindings[poolId].earnedSlotsGranted;
    }

    /// @inheritdoc ISponsorCenter
    function poolKeyByPoolId(bytes32 poolId) external view override returns (PoolKey memory) {
        return _poolBindings[poolId].key;
    }

    /// @inheritdoc ISponsorCenter
    function lastPolValueAg(bytes32 poolId) external view override returns (uint256) {
        return _poolBindings[poolId].lastPolValueAg;
    }

    /// @inheritdoc ISponsorCenter
    function polWithdrawnShares(bytes32 poolId) external view override returns (uint256) {
        return _poolBindings[poolId].polWithdrawnShares;
    }


    // -------- Reward-center callbacks --------

    /// @inheritdoc ISponsorCenter
    function rewardUpdateBaseline(bytes32 poolId, uint256 value) external override onlyRewardCenter {
        uint256 previous = _poolBindings[poolId].lastPolValueAg;
        _poolBindings[poolId].lastPolValueAg = value;
        emit PolBaselineUpdated(poolId, previous, value);
    }

    /// @inheritdoc ISponsorCenter
    function rewardOnFirstPaidClaim(bytes32 poolId, address sponsorTba)
        external
        override
        onlyRewardCenter
        returns (uint256)
    {
        if (_poolBindings[poolId].earnedSlotsGranted) {
            return 0;
        }
        _poolBindings[poolId].earnedSlotsGranted = true;
        uint256 slotsGranted =
            _grantEarnedSlots(sponsorTba, uint32(Constants.POST_CCA_EARNED_SLOTS_PER_POOL_SUCCESS));
        if (slotsGranted > 0) {
            emit PoolEarnedSlotsGranted(sponsorTba, poolId, slotsGranted);
        }
        return slotsGranted;
    }

    // -------- Invite lifecycle --------

    /// @inheritdoc ISponsorCenter
    function createInvite(address targetWallet)
        external
        override
        whenNotPaused
        returns (bytes32 inviteId)
    {
        _requireMintNotEnded();
        address sponsorTba = msg.sender;
        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];

        inviteId = keccak256(abi.encode(sponsorTba, ledger.inviteNonce));
        ledger.inviteNonce += 1;

        if (_invites[inviteId].status != InviteStatus.NONE) {
            revert InvalidInvite();
        }

        _invites[inviteId] = InviteState({
            sponsorTba: sponsorTba,
            targetWallet: targetWallet,
            status: InviteStatus.PENDING,
            acceptedWallet: address(0),
            consumesSlot: false
        });

        _trackInvite(inviteId, targetWallet);
        _consumeInviteSlot(inviteId, sponsorTba);

        emit InviteCreated(inviteId, sponsorTba, targetWallet);
    }

    /// @inheritdoc ISponsorCenter
    function cancelInvite(bytes32 inviteId) external override {
        _requireMintNotEnded();
        InviteState storage invite = _invites[inviteId];
        if (invite.status != InviteStatus.PENDING) {
            revert InvalidInvite();
        }
        _requireSponsorCaller(invite.sponsorTba);

        invite.status = InviteStatus.CANCELED;
        _untrackInvite(inviteId, invite.targetWallet);
        _releaseInviteSlot(inviteId, invite.sponsorTba);

        emit InviteCanceled(inviteId, invite.sponsorTba);
    }

    /// @inheritdoc ISponsorCenter
    function acceptSponsorshipBySig(SignedAcceptance calldata signed) external override onlyAegisNft whenNotPaused {
        SponsorshipAcceptance calldata acceptance = signed.acceptance;
        bytes32 inviteId = acceptance.inviteId;
        address sponsoredWallet = acceptance.sponsoredWallet;
        if (sponsoredWallet == address(0)) {
            revert ZeroAddress();
        }

        bytes memory signature = signed.signature;
        if (block.timestamp > acceptance.deadline) {
            revert DeadlineExpired();
        }

        bytes32 structHash = keccak256(abi.encode(SPONSORSHIP_ACCEPT_TYPEHASH, inviteId, sponsoredWallet, acceptance.deadline));
        bytes32 digest = _hashTypedData(structHash);
        if (!_isValidSignature(sponsoredWallet, digest, signature)) {
            revert InvalidSignature();
        }

        _acceptInvite(inviteId, sponsoredWallet);
    }

    /// @inheritdoc ISponsorCenter
    function enablePoolBinding() external override onlyMultisig {
        if (poolBindingEnabled) {
            revert AlreadySet();
        }
        _requireMintEnded();

        poolBindingEnabled = true;
        inviteEpoch += 1;
        emit PoolBindingEnabled(inviteEpoch);
    }

    // -------- Pool binding lifecycle --------

    /// @inheritdoc ISponsorCenter
    function bindSponsorTba(SignedSponsorSlotPermit calldata signed) external override nonReentrant whenNotPaused {
        _requirePoolBindingEnabled();
        SponsorSlotPermit memory permit = signed.permit;
        bytes32 poolId = permit.poolId;
        address sponsorTba = permit.sponsorTba;
        if (poolBlacklisted[poolId]) {
            revert PoolBlacklisted();
        }
        PoolBinding storage binding = _poolBindings[poolId];
        if (binding.consumesSlot) {
            revert AlreadySet();
        }

        bytes memory signature = signed.signature;
        BindContext memory ctx = _prepareBind(permit, signature);

        permitNonces[permit.tokenId] = ctx.nonce + 1;
        _consumePoolSlot(sponsorTba);
        binding.consumesSlot = true;
        binding.sponsorTba = sponsorTba;
        binding.key = ctx.key;
        uint256 priorBaseline = binding.lastPolValueAg;
        uint256 baselineInit = ctx.polValueAgNow;
        if (priorBaseline > baselineInit) {
            baselineInit = priorBaseline;
        }
        binding.lastPolValueAg = baselineInit;

        emit SponsorBound(poolId, sponsorTba, permit.tokenId, ctx.nonce);
    }

    /// @inheritdoc ISponsorCenter
    function unbindPool(bytes32 poolId) external override {
        _requirePoolBindingEnabled();
        PoolBinding storage binding = _poolBindings[poolId];
        if (!binding.consumesSlot) {
            revert InvalidPool();
        }
        address sponsorTba = binding.sponsorTba;
        _requireSponsorCaller(sponsorTba);

        _clearPoolBinding(poolId, sponsorTba);
        emit SponsorUnbound(poolId, sponsorTba);
    }

    /// @inheritdoc ISponsorCenter
    function revokeSponsor(bytes32 poolId) external override onlyMultisig {
        PoolBinding storage binding = _poolBindings[poolId];
        if (!binding.consumesSlot) {
            revert InvalidPool();
        }
        address sponsorTba = binding.sponsorTba;
        _clearPoolBinding(poolId, sponsorTba);
        emit SponsorRevoked(poolId, sponsorTba);
    }

    /// @inheritdoc ISponsorCenter
    function invalidateNonces(uint256 tokenId, uint256 newNonce) external override {
        _requireTokenAuthorized(tokenId, msg.sender);
        uint256 current = permitNonces[tokenId];
        if (newNonce <= current) {
            revert InvalidNonce();
        }
        permitNonces[tokenId] = newNonce;
        emit NoncesInvalidated(tokenId, newNonce);
    }

    /// @inheritdoc ISponsorCenter
    function updateMaxPoolBindings(uint32 newMaxPoolBindings) external override onlyTimelock {
        uint32 current = maxPoolBindings;
        if (newMaxPoolBindings == 0 || newMaxPoolBindings < current) {
            revert InvalidAmount();
        }
        maxPoolBindings = newMaxPoolBindings;
        emit MaxPoolBindingsUpdated(current, newMaxPoolBindings);
    }

    /// @inheritdoc ISponsorCenter
    function setDefaultParentSponsorTba(address newDefaultParentSponsorTba) external override onlyMultisig {
        address current = defaultParentSponsorTba;
        defaultParentSponsorTba = newDefaultParentSponsorTba;
        emit DefaultParentSponsorTbaUpdated(current, newDefaultParentSponsorTba);
    }

    /// @inheritdoc ISponsorCenter
    function updatePolWithdrawnShares(bytes32 poolId, uint256 sharesDelta) external override onlyMultisig {
        if (poolId == bytes32(0)) {
            revert InvalidPool();
        }
        uint256 current = _poolBindings[poolId].polWithdrawnShares;
        uint256 updated = current + sharesDelta;
        _poolBindings[poolId].polWithdrawnShares = updated;
        emit PolWithdrawnSharesUpdated(poolId, current, updated);
    }

    /// @inheritdoc ISponsorCenter
    function onMintSetBaseSlots(address sponsorTba, uint32 baseSlots) external override onlyAegisNft {
        _setBaseSlots(sponsorTba, baseSlots);
    }

    /// @inheritdoc ISponsorCenter
    function onMintSetParent(address sponsorTbaChild, address minterWallet) external override onlyAegisNft {
        if (sponsorTbaChild == address(0) || minterWallet == address(0)) {
            revert ZeroAddress();
        }
        if (defaultParentSponsorTba == address(0)) {
            revert NotInitialized();
        }
        if (_parentSponsorTba[sponsorTbaChild] != address(0)) {
            revert AlreadySet();
        }

        address parent = sponsorTbaByWallet[minterWallet];
        if (parent == address(0)) {
            parent = defaultParentSponsorTba;
        }
        // Defensive check: parent cannot equal child (impossible via normal flow, but prevents admin misconfig of defaultParent)
        if (parent == sponsorTbaChild) {
            revert InvalidSponsorTba();
        }
        // Invited parents must be initialized sponsor TBAs. The configured default parent is exempt from slot checks.
        if (parent != address(0) && parent != defaultParentSponsorTba && _slotLedgers[parent].baseSlots == 0) {
            revert NotInitialized();
        }
        _parentSponsorTba[sponsorTbaChild] = parent;
        if (parent != address(0)) {
            emit ParentSponsorSet(sponsorTbaChild, parent);
        }
    }

    // -------- Internal helpers (slots & invites) --------

    function _setBaseSlots(address sponsorTba, uint32 baseSlots) internal {
        if (sponsorTba == address(0)) {
            revert ZeroAddress();
        }
        if (baseSlots == 0) {
            revert InvalidAmount();
        }

        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];
        if (ledger.baseSlots != 0) {
            revert AlreadySet();
        }

        ledger.baseSlots = baseSlots;
    }

    function _grantEarnedSlots(address sponsorTba, uint32 amount) internal returns (uint32 granted) {
        if (sponsorTba == address(0)) {
            revert ZeroAddress();
        }
        if (amount == 0) {
            return 0;
        }

        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];
        if (ledger.baseSlots == 0) {
            revert NotInitialized();
        }

        uint32 cap = _maxEarnedSlots(ledger.baseSlots);
        if (ledger.earnedSlots >= cap) {
            return 0;
        }

        uint32 before = ledger.earnedSlots;
        uint32 updated = before + amount;
        if (updated > cap) {
            updated = cap;
        }

        ledger.earnedSlots = updated;
        granted = updated - before;
    }

    function _consumePoolSlot(address sponsorTba) internal {
        if (sponsorTba == address(0)) {
            revert ZeroAddress();
        }

        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];
        if (ledger.baseSlots == 0) {
            revert NotInitialized();
        }

        if (activePoolBindings >= maxPoolBindings) {
            revert SlotsUnavailable();
        }

        if (_availableSlots(sponsorTba) == 0) {
            revert SlotsUnavailable();
        }

        ledger.activePools += 1;
        activePoolBindings += 1;
    }

    function _releasePoolSlot(address sponsorTba) internal {
        if (sponsorTba == address(0)) {
            revert ZeroAddress();
        }

        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];
        if (ledger.activePools == 0 || activePoolBindings == 0) {
            revert SlotCountUnderflow();
        }

        ledger.activePools -= 1;
        activePoolBindings -= 1;
    }

    function _maxEarnedSlots(uint32 baseSlots) internal pure returns (uint32) {
        return baseSlots * uint32(Constants.MAX_EARNED_SLOTS_MULTIPLE);
    }

    function _maxActiveSlots(uint32 baseSlots, uint32 earnedSlots) internal pure returns (uint32) {
        return baseSlots + earnedSlots;
    }

    function _availableSlots(address sponsorTba) internal view returns (uint32) {
        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];
        // Uninitialized sponsors have no slots.
        if (ledger.baseSlots == 0) {
            revert NotInitialized();
        }

        // Active slots include current pools plus pre-CCA invites in this epoch.
        uint32 activePreCca = activePreCcaByEpoch[sponsorTba][inviteEpoch];
        uint32 activeTotal = ledger.activePools + activePreCca;
        // Max slots = base + earned (earned is capped elsewhere).
        uint32 maxActive = _maxActiveSlots(ledger.baseSlots, ledger.earnedSlots);
        if (activeTotal >= maxActive) {
            return 0;
        }
        // Remaining capacity.
        return maxActive - activeTotal;
    }

    /// @inheritdoc ISponsorCenter
    function availableSlots(address sponsorTba) external view override returns (uint32) {
        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];
        // Uninitialized sponsors have no slots.
        if (ledger.baseSlots == 0) {
            return 0;
        }
        // Active slots include current pools plus pre-CCA invites in this epoch.
        uint32 activePreCca = activePreCcaByEpoch[sponsorTba][inviteEpoch];
        uint32 activeTotal = ledger.activePools + activePreCca;
        // Max slots = base + earned (earned is capped elsewhere).
        uint32 maxActive = _maxActiveSlots(ledger.baseSlots, ledger.earnedSlots);
        if (activeTotal >= maxActive) {
            return 0;
        }
        // Remaining capacity.
        return maxActive - activeTotal;
    }

    function _consumeInviteSlot(bytes32 inviteId, address sponsorTba) internal {
        if (sponsorTba == address(0)) {
            revert ZeroAddress();
        }
        InviteState storage invite = _invites[inviteId];
        if (invite.consumesSlot) {
            revert InvalidInvite();
        }

        SlotLedgerState storage ledger = _slotLedgers[sponsorTba];
        if (ledger.baseSlots == 0) {
            revert NotInitialized();
        }

        uint32 activePreCca = activePreCcaByEpoch[sponsorTba][inviteEpoch];
        uint32 activeTotal = ledger.activePools + activePreCca;
        uint32 maxActive = _maxActiveSlots(ledger.baseSlots, ledger.earnedSlots);
        if (activeTotal >= maxActive) {
            revert SlotsUnavailable();
        }

        invite.consumesSlot = true;
        activePreCcaByEpoch[sponsorTba][inviteEpoch] = activePreCca + 1;
    }

    function _releaseInviteSlot(bytes32 inviteId, address sponsorTba) internal {
        InviteState storage invite = _invites[inviteId];
        if (!invite.consumesSlot) {
            revert InvalidInvite();
        }
        if (invite.sponsorTba != sponsorTba) {
            revert InvalidInvite();
        }

        uint32 activePreCca = activePreCcaByEpoch[sponsorTba][inviteEpoch];
        if (activePreCca == 0) {
            revert SlotCountUnderflow();
        }

        invite.consumesSlot = false;
        activePreCcaByEpoch[sponsorTba][inviteEpoch] = activePreCca - 1;
    }

    function _acceptInvite(bytes32 inviteId, address sponsoredWallet) internal {
        _requireMintNotEnded();
        InviteState storage invite = _invites[inviteId];
        if (invite.status != InviteStatus.PENDING) {
            revert InvalidInvite();
        }
        if (invite.targetWallet != address(0) && invite.targetWallet != sponsoredWallet) {
            revert NotAuthorized();
        }
        if (sponsorTbaByWallet[sponsoredWallet] != address(0)) {
            revert InvalidInvite();
        }

        SlotLedgerState storage ledger = _slotLedgers[invite.sponsorTba];
        if (ledger.baseSlots == 0) {
            revert NotInitialized();
        }
        sponsorTbaByWallet[sponsoredWallet] = invite.sponsorTba;

        uint32 slotsGranted = _grantEarnedSlots(invite.sponsorTba, uint32(Constants.PRE_CCA_EARNED_SLOTS_PER_REFERRAL));
        if (slotsGranted > 0) {
            emit InviteEarnedSlotsGranted(invite.sponsorTba, inviteId, slotsGranted);
        }

        // Open invites (target == 0) remain pending so they can be reused until canceled.
        if (invite.targetWallet != address(0)) {
            invite.status = InviteStatus.ACCEPTED;
            invite.acceptedWallet = sponsoredWallet;
            _untrackInvite(inviteId, invite.targetWallet);
        }
        emit SponsorshipAccepted(inviteId, invite.sponsorTba, sponsoredWallet);
    }

    function _clearPoolBinding(bytes32 poolId, address sponsorTba) internal {
        _releasePoolSlot(sponsorTba);
        PoolBinding storage binding = _poolBindings[poolId];
        binding.consumesSlot = false;
        binding.sponsorTba = address(0);
        delete binding.key;
    }

    function _prepareBind(SponsorSlotPermit memory permit, bytes memory signature)
        internal
        view
        returns (BindContext memory ctx)
    {
        bytes32 poolId = permit.poolId;
        address sponsorTba = permit.sponsorTba;
        if (
            block.timestamp > permit.deadline
                || permit.deadline > block.timestamp + Constants.MAX_PERMIT_DEADLINE_SECONDS
        ) {
            revert DeadlineExpired();
        }

        ctx.key = permit.key;
        if (Currency.unwrap(ctx.key.currency0) == address(0) || Currency.unwrap(ctx.key.currency1) == address(0)) {
            revert InvalidPool();
        }
        bytes32 derivedPoolId = PoolId.unwrap(PoolIdLibrary.toId(ctx.key));
        if (poolId != derivedPoolId) {
            revert InvalidPool();
        }
        if (address(rewardCenter) == address(0)) {
            revert NotInitialized();
        }
        rewardCenter.validatePool(ctx.key);

        if (!_sponsorTbaValid(permit.tokenId, sponsorTba)) {
            revert InvalidSponsorTba();
        }

        ctx.nonce = permitNonces[permit.tokenId];
        if (permit.nonce != ctx.nonce) {
            revert InvalidNonce();
        }

        bytes32 structHash = keccak256(
            abi.encode(
                SPONSOR_SLOT_PERMIT_TYPEHASH,
                permit.tokenId,
                permit.sponsorTba,
                permit.poolId,
                permit.nonce,
                permit.deadline
            )
        );
        bytes32 digest = _hashTypedData(structHash);
        address owner = IERC721(aegisNft).ownerOf(permit.tokenId);
        if (!_isValidSignature(owner, digest, signature)) {
            revert InvalidSignature();
        }
        if (IERC721(aegisNft).ownerOf(permit.tokenId) != owner) {
            revert InvalidSignature();
        }

        // Use optimistic TWAP pricing for the initial baseline to avoid lowball manipulation on bind.
        ctx.polValueAgNow = rewardCenter.polValueAgNowOptimistic(ctx.key);
    }

    // -------- Internal helpers (shared with RewardCenter) --------
    /// @inheritdoc ISponsorCenter
    function inviteStatus(bytes32 inviteId) external view override returns (InviteStatus) {
        return _invites[inviteId].status;
    }

    // Targeted invite enumeration helpers
    function _trackInvite(bytes32 inviteId, address targetWallet) internal {
        if (targetWallet == address(0)) {
            return; // open invites are not indexed
        }
        if (inviteIndexByWallet[inviteId] != 0) {
            return;
        }
        activeInvitesByWallet[targetWallet].push(inviteId);
        inviteIndexByWallet[inviteId] = activeInvitesByWallet[targetWallet].length; // 1-based index
    }

    function _untrackInvite(bytes32 inviteId, address targetWallet) internal {
        if (targetWallet == address(0)) {
            return;
        }
        uint256 idxPlusOne = inviteIndexByWallet[inviteId];
        if (idxPlusOne == 0) {
            return;
        }
        uint256 idx = idxPlusOne - 1;
        bytes32[] storage list = activeInvitesByWallet[targetWallet];
        if (idx >= list.length) {
            return;
        }
        uint256 last = list.length - 1;
        if (idx != last) {
            bytes32 moved = list[last];
            list[idx] = moved;
            inviteIndexByWallet[moved] = idx + 1;
        }
        list.pop();
        inviteIndexByWallet[inviteId] = 0;
    }

    /// @inheritdoc ISponsorCenter
    function activeInvitesFor(address wallet) external view override returns (bytes32[] memory) {
        if (mintEnded) {
            return new bytes32[](0);
        }
        bytes32[] storage list = activeInvitesByWallet[wallet];
        uint256 len = list.length;
        bytes32[] memory tmp = new bytes32[](len);
        uint256 count;
        for (uint256 i = 0; i < len; i++) {
            bytes32 id = list[i];
            InviteState storage inv = _invites[id];
            if (inv.status != InviteStatus.PENDING) continue;
            tmp[count++] = id;
        }
        bytes32[] memory out = new bytes32[](count);
        for (uint256 i = 0; i < count; i++) {
            out[i] = tmp[i];
        }
        return out;
    }

    /// @inheritdoc ISponsorCenter
    function domainSeparator() public view override returns (bytes32) {
        return _domainSeparator();
    }

    function _domainSeparator() internal view returns (bytes32) {
        return keccak256(
            abi.encode(EIP712_DOMAIN_TYPEHASH, EIP712_NAME_HASH, EIP712_VERSION_HASH, block.chainid, address(this))
        );
    }

    function _hashTypedData(bytes32 structHash) internal view returns (bytes32) {
        return keccak256(abi.encodePacked("\x19\x01", _domainSeparator(), structHash));
    }

    function _isValidSignature(address signer, bytes32 digest, bytes memory signature) internal view returns (bool) {
        if (signer.code.length > 0) {
            try IERC1271(signer).isValidSignature(digest, signature) returns (bytes4 magic) {
                return magic == ERC1271_MAGICVALUE;
            } catch {
                return false;
            }
        }
        return _recoverSigner(digest, signature) == signer;
    }

    function _recoverSigner(bytes32 digest, bytes memory signature) internal pure returns (address) {
        (address recovered, ECDSA.RecoverError err,) = ECDSA.tryRecover(digest, signature);
        if (err != ECDSA.RecoverError.NoError || recovered == address(0)) {
            revert InvalidSignature();
        }
        return recovered;
    }

    function _sponsorTbaValid(uint256 tokenId, address sponsorTba) internal view returns (bool) {
        if (sponsorTba == address(0)) {
            return false;
        }
        address expected = IERC6551Registry(ERC6551_REGISTRY)
            .account(ERC6551_ACCOUNT_IMPLEMENTATION, ERC6551_SALT, block.chainid, aegisNft, tokenId);
        return sponsorTba == expected;
    }

    function _requireTokenAuthorized(uint256 tokenId, address caller) internal view {
        address owner = IERC721(aegisNft).ownerOf(tokenId);
        if (caller == owner) {
            return;
        }
        if (IERC721(aegisNft).getApproved(tokenId) == caller) {
            return;
        }
        if (IERC721(aegisNft).isApprovedForAll(owner, caller)) {
            return;
        }
        revert NotAuthorized();
    }

    function _requirePoolBindingEnabled() internal view {
        if (!poolBindingEnabled) {
            revert PoolBindingNotEnabled();
        }
    }

    function _requireMintNotEnded() internal view {
        if (mintEnded) {
            revert MintEnded();
        }
    }

    function _requireMintEnded() internal view {
        if (!mintEnded) {
            revert MintNotEnded();
        }
    }

    function _requireSponsorCaller(address sponsorTba) internal view {
        if (msg.sender != sponsorTba) {
            revert NotAuthorized();
        }
    }
}
