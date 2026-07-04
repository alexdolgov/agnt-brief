// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC165} from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import {IRateVerifier} from "./interfaces/IRateVerifier.sol";

/// @title HemiBTCRateProvider
/// @notice Provides an on-chain exchange rate for hemiBTC by tracking total supply
///         and total value locked (TVL). An authorized updater pushes new snapshots;
///         the contract validates them against configurable bounds and maximum
///         per-update deviation before accepting a new rate.
/// @dev Deployed behind a TransparentUpgradeableProxy. Uses a fixed storage slot
///      (ERC-7201) to avoid storage collisions across upgrades.
contract HemiBTCRateProvider is Initializable, Ownable2StepUpgradeable, PausableUpgradeable {
    // ──────────────────────────────────────────────────────────────────────
    //  Custom Errors
    // ──────────────────────────────────────────────────────────────────────

    error NotUpdater();
    error TotalSupplyZero();
    error NoRateAvailable();
    error RenounceDisabled();
    error InvalidUpdater();
    error UpdaterIsLocked();
    error AlreadyLocked();
    error InvalidMinRate();
    error MinRateAboveMax();
    error InvalidMaxRate();
    error MaxRateBelowMin();
    error InvalidMaxDifference();

    error ZkRequired();
    error InvalidSlot();
    error VerifierNotContract();
    error VerifierRemovalBlocked();
    error NoVerifierAtSlot(uint8 slot);
    error VerificationFailed(uint8 slot);
    error VerifierReverted(uint8 slot, bytes reason);
    error InsufficientProofs(uint8 required, uint8 provided);
    error NoProofsProvided();
    error NoVerifiersSet();
    error InsufficientVerifiers(uint8 required, uint8 available);
    error DuplicateVerifier(address verifier);
    error VerifierInterfaceUnsupported();
    error ZkNotEnabled();
    error ZkIsLocked();
    error InvalidQuorumThreshold();
    error CannotLowerLockedQuorum();
    error QuorumTooLowToLock();

    // ──────────────────────────────────────────────────────────────────────
    //  Storage
    // ──────────────────────────────────────────────────────────────────────

    /// @custom:storage-location erc7201:hemiBTC.rateprovider.storage
    struct RateProviderStorage {
        // ── V1 fields (slots +0 to +7) ── DO NOT REORDER ──────────
        address updater;
        uint256 maxDifferencePercent;
        uint256 minRate;
        uint256 maxRate;
        uint256 latestUpdateTime;
        uint256 latestTotalSupply;
        uint256 latestTVL;
        uint256 latestRate;
        // ── V1.1 fields ───────────────────────────────────────────
        bool updaterLocked;
        // ── V2 ZK fields ─────────────────────────────────────────
        address[3] verifiers;       // 3 generic verifier slots
        bool zkEnabled;             // when true, only updateRateWithProof accepted
        bool zkEnabledLocked;       // permanently lock zkEnabled = true
        uint8 quorumThreshold;      // minimum proofs required (1-3); 0 = not yet set (defaults to 1)
        bool quorumLocked;          // permanently prevent lowering quorumThreshold
        bool lastUpdateZk;          // was last *accepted* update ZK-verified
        uint8 lastProofCount;       // how many proofs passed on last accepted update
    }

    /// @notice Return type for the bulk getState() view.
    struct RateProviderState {
        address updater;
        bool updaterLocked;
        uint256 maxDifferencePercent;
        uint256 minRate;
        uint256 maxRate;
        uint256 latestUpdateTime;
        uint256 latestTotalSupply;
        uint256 latestTVL;
        uint256 latestRate;
        address[3] verifiers;
        bool zkEnabled;
        bool zkEnabledLocked;
        uint8 quorumThreshold;
        bool quorumLocked;
        bool lastUpdateZk;
        uint8 lastProofCount;
        bool paused;
    }

    /// @dev ERC-7201 slot: keccak256(abi.encode(uint256(keccak256("hemiBTC.rateprovider.storage")) - 1)) & ~0xff
    bytes32 private constant _RATE_PROVIDER_STORAGE_SLOT =
        0x56d5f0914a6c81e2dc31bb8a5882a4dbba2a1308e003491f7f6160ed07a37f00;

    /// @notice 1e18 – rates are expressed with 18-decimal precision.
    uint256 public constant RATE_PRECISION_FACTOR = 1e18;

    /// @dev Maximum gas forwarded to each verifier.staticcall().
    ///      Prevents a malicious or buggy verifier from consuming all gas.
    uint256 private constant VERIFY_GAS_LIMIT = 1_000_000;


    // ──────────────────────────────────────────────────────────────────────
    //  Events
    // ──────────────────────────────────────────────────────────────────────

    event UpdaterSet(address indexed updater);
    event UpdaterLocked(address indexed updater);
    event MinRateSet(uint256 minRate);
    event MaxRateSet(uint256 maxRate);
    event MaxDifferencePercentSet(uint256 maxDifferencePercent);
    event AlertInvalidTVL(uint256 indexed tvl, uint256 indexed timestamp);
    event AlertInvalidTVLDifference(uint256 indexed previousTVL, uint256 indexed newTVL, uint256 indexed timestamp);
    event AlertInvalidRate(uint256 indexed rate, uint256 indexed timestamp);
    event LatestRateUpdated(uint256 indexed rate, uint256 indexed timestamp);
    event VerifierSet(uint8 indexed slot, address indexed verifier);
    event ZkEnabledSet(bool enabled);
    event ZkEnabledLocked();
    event QuorumThresholdSet(uint8 threshold);
    event QuorumLocked(uint8 threshold);

    // ──────────────────────────────────────────────────────────────────────
    //  Modifiers
    // ──────────────────────────────────────────────────────────────────────

    modifier onlyUpdater() {
        if (msg.sender != _getStorage().updater) revert NotUpdater();
        _;
    }

    // ──────────────────────────────────────────────────────────────────────
    //  Constructor / Initializer
    // ──────────────────────────────────────────────────────────────────────

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /// @notice Initializes the rate provider (called once via the proxy).
    /// @param owner_                Address that will own the contract.
    /// @param updater_              Address authorized to push rate updates.
    /// @param maxDifferencePercent_  Max allowed TVL change (18-dec fraction, e.g. 0.05e18 = 5 %).
    /// @param minRate_              Minimum acceptable rate.
    /// @param maxRate_              Maximum acceptable rate.
    function initialize(
        address owner_,
        address updater_,
        uint256 maxDifferencePercent_,
        uint256 minRate_,
        uint256 maxRate_
    ) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __Pausable_init();
        _setUpdater(updater_);
        _setMaxDifferencePercent(maxDifferencePercent_);
        _setMinRate(minRate_);
        _setMaxRate(maxRate_);
    }

    // ──────────────────────────────────────────────────────────────────────
    //  Core – rate update
    // ──────────────────────────────────────────────────────────────────────

    /// @notice Pushes a new rate snapshot (no ZK proof). Reverts if zkEnabled.
    /// @param totalSupply_  Current hemiBTC total supply.
    /// @param totalTVL_     Current total value locked (reserves backing hemiBTC).
    /// @return The (possibly unchanged) latest rate after validation.
    function updateRate(uint256 totalSupply_, uint256 totalTVL_) external onlyUpdater whenNotPaused returns (uint256) {
        if (_getStorage().zkEnabled) revert ZkRequired();
        return _updateRate(totalSupply_, totalTVL_, false, 0);
    }

    /// @notice Pushes a new rate snapshot verified by ZK proofs.
    /// @dev Each verifier slot gets its own proof + extraData pair. Empty proof
    ///      (length 0) skips that slot. Non-empty proof for a slot whose verifier
    ///      is address(0) reverts. This function is always callable regardless of
    ///      the zkEnabled flag, allowing a transition period where both plain and
    ///      ZK-verified updates coexist.
    /// @param totalSupply_  Current hemiBTC total supply.
    /// @param totalTVL_     Current total value locked.
    /// @param proof0        Proof bytes for verifier slot 0 (empty to skip).
    /// @param extraData0    Auxiliary data for verifier slot 0.
    /// @param proof1        Proof bytes for verifier slot 1 (empty to skip).
    /// @param extraData1    Auxiliary data for verifier slot 1.
    /// @param proof2        Proof bytes for verifier slot 2 (empty to skip).
    /// @param extraData2    Auxiliary data for verifier slot 2.
    /// @return The (possibly unchanged) latest rate after validation.
    function updateRateWithProof(
        uint256 totalSupply_,
        uint256 totalTVL_,
        bytes calldata proof0,
        bytes calldata extraData0,
        bytes calldata proof1,
        bytes calldata extraData1,
        bytes calldata proof2,
        bytes calldata extraData2
    ) external onlyUpdater whenNotPaused returns (uint256) {
        uint8 verified = _verifySlot(0, totalSupply_, totalTVL_, proof0, extraData0)
            + _verifySlot(1, totalSupply_, totalTVL_, proof1, extraData1)
            + _verifySlot(2, totalSupply_, totalTVL_, proof2, extraData2);

        if (verified == 0) revert NoProofsProvided();

        RateProviderStorage storage $ = _getStorage();
        uint8 required = $.quorumThreshold > 0 ? $.quorumThreshold : 1;
        if (verified < required) revert InsufficientProofs(required, verified);

        return _updateRate(totalSupply_, totalTVL_, true, verified);
    }

    // ──────────────────────────────────────────────────────────────────────
    //  Admin setters
    // ──────────────────────────────────────────────────────────────────────

    /// @notice Set a new authorized updater address.
    /// @param updater  New updater (must be non-zero). Reverts if updater is locked.
    function setUpdater(address updater) external onlyOwner {
        _setUpdater(updater);
    }

    /// @notice Permanently locks the current updater address. Once called,
    ///         `setUpdater` can never be called again — even by the owner.
    function lockUpdater() external onlyOwner {
        RateProviderStorage storage $ = _getStorage();
        if ($.updaterLocked) revert AlreadyLocked();
        $.updaterLocked = true;
        emit UpdaterLocked($.updater);
    }

    /// @notice Set the maximum allowed TVL deviation per update.
    /// @param maxDifferencePercent  18-decimal fraction (e.g. 0.05e18 = 5 %).
    ///                              Must be > 0 and ≤ 1e18.
    function setMaxDifferencePercent(uint256 maxDifferencePercent) external onlyOwner {
        _setMaxDifferencePercent(maxDifferencePercent);
    }

    /// @notice Set the minimum acceptable rate.
    /// @param minRate  Must be > 0 and ≤ current maxRate.
    function setMinRate(uint256 minRate) external onlyOwner {
        _setMinRate(minRate);
    }

    /// @notice Set the maximum acceptable rate.
    /// @param maxRate  Must be > 0 and ≥ current minRate.
    function setMaxRate(uint256 maxRate) external onlyOwner {
        _setMaxRate(maxRate);
    }

    /// @notice Pause rate updates and rate reads in an emergency.
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Resume normal operation after a pause.
    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Set or replace a verifier in a given slot (0-2).
    /// @dev Setting to address(0) removes the verifier. Non-zero addresses must
    ///      have deployed code, support IRateVerifier via ERC-165, and not already
    ///      be assigned to another slot. Removal is blocked if it would violate an
    ///      active lock (zkEnabled requires ≥1 verifier; quorumLocked requires ≥threshold).
    /// @param slot      Verifier slot index (0, 1, or 2).
    /// @param verifier  Verifier contract address, or address(0) to remove.
    function setVerifier(uint8 slot, address verifier) external onlyOwner {
        if (slot >= 3) revert InvalidSlot();
        RateProviderStorage storage $ = _getStorage();

        if (verifier != address(0)) {
            if (verifier.code.length == 0) revert VerifierNotContract();

            // ERC-165 check: verifier must declare IRateVerifier support.
            try IERC165(verifier).supportsInterface(type(IRateVerifier).interfaceId) returns (bool supported) {
                if (!supported) revert VerifierInterfaceUnsupported();
            } catch {
                revert VerifierInterfaceUnsupported();
            }

            // Duplicate check: same address cannot occupy multiple slots.
            for (uint8 i; i < 3; i++) {
                if (i != slot && $.verifiers[i] == verifier) revert DuplicateVerifier(verifier);
            }
        } else if ($.verifiers[slot] != address(0)) {
            // Removing a verifier — enforce safety invariants.
            uint8 remaining = _countVerifiersExcluding($, slot);
            if ($.zkEnabled && remaining < 1) revert VerifierRemovalBlocked();
            if ($.quorumLocked && remaining < $.quorumThreshold) revert VerifierRemovalBlocked();
        }

        $.verifiers[slot] = verifier;
        emit VerifierSet(slot, verifier);
    }

    /// @notice Enable or disable ZK-only mode. When enabled, plain updateRate reverts.
    /// @dev When enabling: requires enough verifiers to satisfy the current quorum
    ///      threshold. When disabling: blocked if zkEnabledLocked is true.
    /// @param enabled  True to require ZK proofs, false to allow plain updates.
    function setZkEnabled(bool enabled) external onlyOwner {
        RateProviderStorage storage $ = _getStorage();
        if (enabled) {
            uint8 count = _countVerifiers($);
            if (count == 0) revert NoVerifiersSet();
            uint8 threshold = $.quorumThreshold > 0 ? $.quorumThreshold : 1;
            if (count < threshold) revert InsufficientVerifiers(threshold, count);
        } else {
            if ($.zkEnabledLocked) revert ZkIsLocked();
        }
        $.zkEnabled = enabled;
        emit ZkEnabledSet(enabled);
    }

    /// @notice Permanently lock zkEnabled = true. After this call, setZkEnabled(false) reverts.
    /// @dev Requires zkEnabled to be true and enough verifiers for the current quorum.
    function lockZkEnabled() external onlyOwner {
        RateProviderStorage storage $ = _getStorage();
        if ($.zkEnabledLocked) revert AlreadyLocked();
        if (!$.zkEnabled) revert ZkNotEnabled();
        uint8 threshold = $.quorumThreshold > 0 ? $.quorumThreshold : 1;
        uint8 count = _countVerifiers($);
        if (count < threshold) revert InsufficientVerifiers(threshold, count);
        $.zkEnabledLocked = true;
        emit ZkEnabledLocked();
    }

    /// @notice Set the minimum number of proofs required per update (1-3).
    /// @dev When quorumLocked is true, the threshold can only be increased, not decreased.
    ///      When zkEnabled is true, the number of configured verifiers must be ≥ threshold.
    /// @param threshold  New quorum threshold (1, 2, or 3).
    function setQuorumThreshold(uint8 threshold) external onlyOwner {
        if (threshold < 1 || threshold > 3) revert InvalidQuorumThreshold();
        RateProviderStorage storage $ = _getStorage();
        if ($.quorumLocked && threshold < $.quorumThreshold) revert CannotLowerLockedQuorum();
        if ($.zkEnabled) {
            uint8 count = _countVerifiers($);
            if (count < threshold) revert InsufficientVerifiers(threshold, count);
        }
        $.quorumThreshold = threshold;
        emit QuorumThresholdSet(threshold);
    }

    /// @notice Permanently prevent the quorum threshold from being lowered.
    /// @dev Requires zkEnabled to be true, quorumThreshold ≥ 2 (locking threshold 1
    ///      is a no-op), and at least that many verifiers configured.
    function lockQuorum() external onlyOwner {
        RateProviderStorage storage $ = _getStorage();
        if ($.quorumLocked) revert AlreadyLocked();
        if (!$.zkEnabled) revert ZkNotEnabled();
        if ($.quorumThreshold < 2) revert QuorumTooLowToLock();
        uint8 count = _countVerifiers($);
        if (count < $.quorumThreshold) revert InsufficientVerifiers($.quorumThreshold, count);
        $.quorumLocked = true;
        emit QuorumLocked($.quorumThreshold);
    }

    // ──────────────────────────────────────────────────────────────────────
    //  View helpers
    // ──────────────────────────────────────────────────────────────────────

    /// @notice Returns the current authorized updater address.
    function getUpdater() external view returns (address) {
        return _getStorage().updater;
    }

    /// @notice Returns whether the updater address is permanently locked.
    function isUpdaterLocked() external view returns (bool) {
        return _getStorage().updaterLocked;
    }

    /// @notice Returns the maximum allowed TVL deviation (18-decimal fraction).
    function getMaxDifferencePercent() external view returns (uint256) {
        return _getStorage().maxDifferencePercent;
    }

    /// @notice Returns the total supply from the most recent accepted update.
    function getLatestTotalSupply() external view returns (uint256) {
        return _getStorage().latestTotalSupply;
    }

    /// @notice Returns the total value locked from the most recent accepted update.
    function getLatestTVL() external view returns (uint256) {
        return _getStorage().latestTVL;
    }

    /// @notice Returns the timestamp of the most recent accepted update.
    function getLatestUpdateTime() external view returns (uint256) {
        return _getStorage().latestUpdateTime;
    }

    /// @notice Returns the current rate. Reverts if paused or no update has been accepted.
    function getRate() public view whenNotPaused returns (uint256) {
        RateProviderStorage storage $ = _getStorage();
        if ($.latestUpdateTime == 0) revert NoRateAvailable();
        return $.latestRate;
    }

    /// @notice Returns the minimum acceptable rate.
    function getMinRate() external view returns (uint256) {
        return _getStorage().minRate;
    }

    /// @notice Returns the maximum acceptable rate.
    function getMaxRate() external view returns (uint256) {
        return _getStorage().maxRate;
    }

    /// @notice Returns the verifier address at a given slot (0-2).
    /// @param slot  Verifier slot index. Reverts if >= 3.
    function getVerifier(uint8 slot) external view returns (address) {
        if (slot >= 3) revert InvalidSlot();
        return _getStorage().verifiers[slot];
    }

    /// @notice Returns all three verifier addresses as a fixed-size array.
    function getVerifiers() external view returns (address[3] memory) {
        return _getStorage().verifiers;
    }

    /// @notice Returns whether ZK-only mode is enabled.
    function isZkEnabled() external view returns (bool) {
        return _getStorage().zkEnabled;
    }

    /// @notice Returns whether ZK-only mode is permanently locked on.
    function isZkEnabledLocked() external view returns (bool) {
        return _getStorage().zkEnabledLocked;
    }

    /// @notice Returns the effective quorum threshold (minimum 1).
    function getQuorumThreshold() external view returns (uint8) {
        uint8 t = _getStorage().quorumThreshold;
        return t > 0 ? t : 1;
    }

    /// @notice Returns whether the quorum threshold is permanently locked.
    function isQuorumLocked() external view returns (bool) {
        return _getStorage().quorumLocked;
    }

    /// @notice Returns whether the most recent accepted update was ZK-verified.
    function wasLastUpdateZkSecured() external view returns (bool) {
        return _getStorage().lastUpdateZk;
    }

    /// @notice Returns the number of proofs that passed on the most recent accepted update.
    function getLastProofCount() external view returns (uint8) {
        return _getStorage().lastProofCount;
    }

    /// @notice Returns a complete snapshot of the contract's state in a single call.
    /// @dev Not guarded by whenNotPaused — admin can inspect state even when paused.
    function getState() external view returns (RateProviderState memory) {
        RateProviderStorage storage $ = _getStorage();
        uint8 t = $.quorumThreshold;
        return RateProviderState({
            updater: $.updater,
            updaterLocked: $.updaterLocked,
            maxDifferencePercent: $.maxDifferencePercent,
            minRate: $.minRate,
            maxRate: $.maxRate,
            latestUpdateTime: $.latestUpdateTime,
            latestTotalSupply: $.latestTotalSupply,
            latestTVL: $.latestTVL,
            latestRate: $.latestRate,
            verifiers: $.verifiers,
            zkEnabled: $.zkEnabled,
            zkEnabledLocked: $.zkEnabledLocked,
            quorumThreshold: t > 0 ? t : 1,
            quorumLocked: $.quorumLocked,
            lastUpdateZk: $.lastUpdateZk,
            lastProofCount: $.lastProofCount,
            paused: paused()
        });
    }

    /// @notice Disabled – use transferOwnership + acceptOwnership instead.
    function renounceOwnership() public view override onlyOwner {
        revert RenounceDisabled();
    }

    // ──────────────────────────────────────────────────────────────────────
    //  Internal helpers
    // ──────────────────────────────────────────────────────────────────────

    function _getStorage() private pure returns (RateProviderStorage storage $) {
        assembly ("memory-safe") {
            $.slot := _RATE_PROVIDER_STORAGE_SLOT
        }
        return $;
    }

    /// @dev Core rate update logic. ZK metadata (isZk, proofCount) is written
    ///      only when the update is accepted — rejected updates (zero TVL,
    ///      excessive deviation, out-of-bounds rate) do NOT change these fields.
    function _updateRate(
        uint256 totalSupply_,
        uint256 totalTVL_,
        bool isZk,
        uint8 proofCount
    ) internal returns (uint256) {
        if (totalSupply_ == 0) revert TotalSupplyZero();
        RateProviderStorage storage $ = _getStorage();

        // Guard: zero TVL is treated as invalid data.
        if (totalTVL_ == 0) {
            emit AlertInvalidTVL(totalTVL_, block.timestamp);
            return $.latestRate;
        }

        // Guard: TVL must not deviate too far from the last known value.
        if ($.latestUpdateTime != 0) {
            uint256 absDiff = $.latestTVL > totalTVL_
                ? $.latestTVL - totalTVL_
                : totalTVL_ - $.latestTVL;
            uint256 difference = Math.mulDiv(absDiff, RATE_PRECISION_FACTOR, $.latestTVL);
            if (difference > $.maxDifferencePercent) {
                emit AlertInvalidTVLDifference($.latestTVL, totalTVL_, block.timestamp);
                return $.latestRate;
            }
        }

        // Compute new rate.
        uint256 latestRate = Math.mulDiv(totalTVL_, RATE_PRECISION_FACTOR, totalSupply_);

        // Guard: rate must fall within [minRate, maxRate].
        if (latestRate < $.minRate || latestRate > $.maxRate) {
            emit AlertInvalidRate(latestRate, block.timestamp);
            return $.latestRate;
        }

        // Accept the new snapshot.
        $.latestTVL = totalTVL_;
        $.latestTotalSupply = totalSupply_;
        $.latestUpdateTime = block.timestamp;
        $.latestRate = latestRate;
        $.lastUpdateZk = isZk;
        $.lastProofCount = proofCount;
        emit LatestRateUpdated(latestRate, block.timestamp);
        return latestRate;
    }

    /// @dev Verify a single verifier slot. Returns 1 if verified, 0 if skipped
    ///      (empty proof). Reverts if the verifier is missing, returns false, or
    ///      reverts itself. Uses a gas-limited STATICCALL to prevent a malicious
    ///      verifier from consuming all remaining gas. If the verifier reverts,
    ///      the reason is wrapped in a VerifierReverted error. If it returns
    ///      false (or invalid data), a VerificationFailed error is raised.
    function _verifySlot(
        uint8 slot,
        uint256 totalSupply_,
        uint256 totalTVL_,
        bytes calldata proof,
        bytes calldata extraData
    ) internal view returns (uint8) {
        if (proof.length == 0) return 0;
        address verifier = _getStorage().verifiers[slot];
        if (verifier == address(0)) revert NoVerifierAtSlot(slot);

        (bool success, bytes memory retdata) = verifier.staticcall{gas: VERIFY_GAS_LIMIT}(
            abi.encodeCall(IRateVerifier.verify, (totalSupply_, totalTVL_, proof, extraData))
        );

        if (!success) {
            if (retdata.length > 0) revert VerifierReverted(slot, retdata);
            revert VerificationFailed(slot);
        }

        // Valid ABI-encoded bool(true) is exactly 32 bytes encoding uint256(1).
        if (retdata.length != 32) revert VerificationFailed(slot);
        if (abi.decode(retdata, (uint256)) != 1) revert VerificationFailed(slot);

        return 1;
    }

    function _countVerifiers(RateProviderStorage storage $) private view returns (uint8 count) {
        for (uint8 i; i < 3; i++) {
            if ($.verifiers[i] != address(0)) count++;
        }
    }

    function _countVerifiersExcluding(RateProviderStorage storage $, uint8 excludeSlot) private view returns (uint8 count) {
        for (uint8 i; i < 3; i++) {
            if (i != excludeSlot && $.verifiers[i] != address(0)) count++;
        }
    }

    function _setUpdater(address updater) internal {
        if (updater == address(0)) revert InvalidUpdater();
        RateProviderStorage storage $ = _getStorage();
        if ($.updaterLocked) revert UpdaterIsLocked();
        $.updater = updater;
        emit UpdaterSet(updater);
    }

    function _setMinRate(uint256 minRate) internal {
        if (minRate == 0) revert InvalidMinRate();
        RateProviderStorage storage $ = _getStorage();
        if ($.maxRate != 0) {
            if (minRate > $.maxRate) revert MinRateAboveMax();
        }
        $.minRate = minRate;
        emit MinRateSet(minRate);
    }

    function _setMaxRate(uint256 maxRate) internal {
        if (maxRate == 0) revert InvalidMaxRate();
        RateProviderStorage storage $ = _getStorage();
        if ($.minRate != 0) {
            if (maxRate < $.minRate) revert MaxRateBelowMin();
        }
        $.maxRate = maxRate;
        emit MaxRateSet(maxRate);
    }

    function _setMaxDifferencePercent(uint256 maxDifferencePercent) internal {
        if (maxDifferencePercent == 0 || maxDifferencePercent > RATE_PRECISION_FACTOR) {
            revert InvalidMaxDifference();
        }
        RateProviderStorage storage $ = _getStorage();
        $.maxDifferencePercent = maxDifferencePercent;
        emit MaxDifferencePercentSet(maxDifferencePercent);
    }
}
