// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {MerkleProofLib} from "solady/utils/MerkleProofLib.sol";
import {ECDSA} from "solady/utils/ECDSA.sol";

import {Action, ApprovalLeaf} from "./types/SentryTypes.sol";
import {SentryStorage, SentryStorageLib} from "./libraries/SentryStorageLib.sol";
import {ParamValidator} from "./libraries/ParamValidator.sol";
import {IDecoderAndSanitizer} from "./interfaces/IDecoderAndSanitizer.sol";
import {ISentryDelegation} from "./interfaces/ISentryDelegation.sol";
import {IKeeperRegistry} from "./interfaces/IKeeperRegistry.sol";
import {AaveV3FlashLoanModule} from "./modules/AaveV3FlashLoanModule.sol";

/// @title SentryDelegation
/// @notice Core EIP-7702 delegate contract for Renzo Sentry.
///         User EOAs delegate to this contract to enable keeper-driven DeFi automation
///         with merkle-tree-based approval constraints.
/// @dev All user state lives on the user's EOA via ERC-7201 namespaced storage.
///      The keeper address is immutable (embedded in bytecode, shared across all delegators).
contract SentryDelegation is ISentryDelegation, AaveV3FlashLoanModule {
    using SentryStorageLib for *;

    // ── Immutables ──────────────────────────────────────────────────────────
    /// @notice Global keeper revocation registry (shared across all delegators)
    IKeeperRegistry public immutable keeperRegistry;

    /// @notice Versioned storage slot — unique per deployment address.
    ///         Cached at construction time to avoid recomputing on every storage access.
    bytes32 public immutable STORAGE_SLOT;

    /// @notice EIP-712 domain separator, computed once at construction time.
    bytes32 public immutable DOMAIN_SEPARATOR;

    bytes32 public constant DEGEN_APPROVAL_ROOT = keccak256("0xDEAD");

    /// @notice EIP-712 typehash for setApprovalRootWithSig
    bytes32 public constant SET_APPROVAL_ROOT_TYPEHASH =
        keccak256("SetApprovalRoot(bytes32 root,uint256 nonce,uint256 deadline)");
    // ── Constructor ─────────────────────────────────────────────────────────

    constructor(IKeeperRegistry _keeperRegistry, address _aavePool) AaveV3FlashLoanModule(_aavePool) {
        if (address(_keeperRegistry) == address(0)) revert InvalidZeroValue();
        if (address(_keeperRegistry).code.length == 0) revert InvalidRegistry();
        keeperRegistry = _keeperRegistry;
        STORAGE_SLOT = SentryStorageLib.computeSlot(address(this));
        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                keccak256("RenzoSentry"),
                keccak256("1"),
                block.chainid,
                address(this)
            )
        );
    }

    // ── Modifiers ───────────────────────────────────────────────────────────

    modifier onlyKeeper() {
        _onlyKeeper();
        _;
    }

    modifier onlySelf() {
        _onlySelf();
        _;
    }

    modifier onlySelfOrKeeper() {
        if (msg.sender != address(this) && keeperRegistry.isKeeperRevoked(msg.sender)) {
            revert Unauthorized();
        }
        _;
    }

    modifier nonReentrant() {
        SentryStorage storage s = SentryStorageLib.layout(STORAGE_SLOT);
        if (s.reentrancyStatus == 2) revert("ReentrancyGuard: reentrant call");
        s.reentrancyStatus = 2;
        _;
        s.reentrancyStatus = 1;
    }

    // ── Owner Functions (onlySelf) ──────────────────────────────────────────

    /// @inheritdoc ISentryDelegation
    function initialize(bytes32 root) external onlySelfOrKeeper {
        SentryStorage storage s = SentryStorageLib.layout(STORAGE_SLOT);
        if (s.initialized) revert AlreadyInitialized();

        s.approvalRoot = root;
        s.initialized = true;
        s.reentrancyStatus = 1;

        emit Initialized(root);
    }

    /// @inheritdoc ISentryDelegation
    /// @dev WARNING: Never set root to a predictable value (e.g. keccak256("dead"))
    ///      in production — an attacker could forge proofs and drain the account.
    ///      Test-only sentinel roots must NEVER be used on mainnet.
    function setApprovalRoot(bytes32 root) external onlySelf {
        SentryStorage storage s = SentryStorageLib.layout(STORAGE_SLOT);
        if (!s.initialized) revert NotInitialized();

        bytes32 oldRoot = s.approvalRoot;
        s.approvalRoot = root;

        emit ApprovalRootUpdated(oldRoot, root);
    }

    /// @inheritdoc ISentryDelegation
    function setApprovalRootWithSig(
        bytes32 root,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s_
    ) external onlyKeeper {
        SentryStorage storage s = SentryStorageLib.layout(STORAGE_SLOT);
        if (!s.initialized) revert NotInitialized();
        if (block.timestamp > deadline) revert SignatureExpired(deadline, block.timestamp);

        uint256 nonce = s.approvalRootNonce;
        bytes32 structHash = keccak256(abi.encode(SET_APPROVAL_ROOT_TYPEHASH, root, nonce, deadline));
        bytes32 digest = _hashTypedData(structHash);

        address signer = ECDSA.recover(digest, v, r, s_);
        if (signer != address(this)) revert InvalidSignature();

        s.approvalRootNonce = nonce + 1;
        bytes32 oldRoot = s.approvalRoot;
        s.approvalRoot = root;

        emit ApprovalRootUpdated(oldRoot, root);
    }

    /// @inheritdoc ISentryDelegation
    function revokeAll() external onlySelf {
        SentryStorage storage s = SentryStorageLib.layout(STORAGE_SLOT);
        if (!s.initialized) revert NotInitialized();

        // Set ApprovalRoot to 0 to revoke all existing approvals (since no valid leaf can have a proof to the zero root)
        s.approvalRoot = bytes32(0);

        emit AllApprovalsRevoked();
    }

    // ── Keeper Functions ────────────────────────────────────────────────────

    /// @inheritdoc ISentryDelegation
    function execute(
        Action calldata action,
        ApprovalLeaf calldata approval,
        bytes32[] calldata merkleProof
    ) external onlyKeeper nonReentrant {
        _execute(action, approval, merkleProof);
    }

    /// @inheritdoc ISentryDelegation
    function executeBatch(
        Action[] calldata actions,
        ApprovalLeaf[] calldata approvals,
        bytes32[][] calldata merkleProofs
    ) external onlyKeeper nonReentrant {
        uint256 len = actions.length;
        if (len != approvals.length || len != merkleProofs.length) {
            revert ArrayLengthMismatch();
        }

        for (uint256 i; i < len; ++i) {
            _execute(actions[i], approvals[i], merkleProofs[i]);
        }

        emit BatchExecuted(len);
    }

    /// @notice Inner-batch entry point invoked by the flash-loan callback via a self-call.
    ///         Re-uses the same merkle-authorized `_execute` logic as keeper-batched calls,
    ///         but is gated by `msg.sender == address(this)` and skips the `nonReentrant`
    ///         modifier (the outer `execute` is already guarded; the flash-loan path is
    ///         reentrancy-by-design).
    /// @dev    The self-call is required because `_execute` and `ParamValidator.validateAll`
    ///         take `calldata`, while `executeOperation` decodes inner actions from `params`
    ///         into memory. Encoding back through an external call converts memory to calldata.
    function flashLoanInnerBatch(
        Action[] calldata actions,
        ApprovalLeaf[] calldata approvals,
        bytes32[][] calldata merkleProofs
    ) external {
        if (msg.sender != address(this)) revert Unauthorized();
        uint256 len = actions.length;
        if (len != approvals.length || len != merkleProofs.length) {
            revert ArrayLengthMismatch();
        }

        for (uint256 i; i < len; ++i) {
            _execute(actions[i], approvals[i], merkleProofs[i]);
        }
    }

    // ── View Functions ──────────────────────────────────────────────────────

    /// @inheritdoc ISentryDelegation
    function getApprovalRoot() external view returns (bytes32) {
        return SentryStorageLib.layout(STORAGE_SLOT).approvalRoot;
    }

    /// @inheritdoc ISentryDelegation
    function isInitialized() external view returns (bool) {
        return SentryStorageLib.layout(STORAGE_SLOT).initialized;
    }

    /// @inheritdoc ISentryDelegation
    function getApprovalRootNonce() external view returns (uint256) {
        return SentryStorageLib.layout(STORAGE_SLOT).approvalRootNonce;
    }

    // ── Internal ────────────────────────────────────────────────────────────

    function _execute(
        Action calldata action,
        ApprovalLeaf calldata approval,
        bytes32[] calldata merkleProof
    ) internal {
        // Prevent actions from calling back into the sentry itself (defense-in-depth
        // against a merkle tree containing a self-referencing leaf).
        if (action.target == address(this)) revert SelfCallForbidden();

        SentryStorage storage s = SentryStorageLib.layout(STORAGE_SLOT);

        // Cache storage reads
        bytes32 approvalRoot = s.approvalRoot;
        bytes32 leafHash;
        // If the approval root is set to the special "0xDEAD" value, skip all checks and allow execution.
        if (approvalRoot != DEGEN_APPROVAL_ROOT) {
            // Step 1 — Basic state checks
            if (!s.initialized) revert NotInitialized();

            if (!approval.skipTargetCheck && action.target != approval.target) {
                revert TargetMismatch(approval.target, action.target);
            }
            if (bytes4(action.calldata_[:4]) != approval.selector) {
                revert SelectorMismatch(approval.selector, bytes4(action.calldata_[:4]));
            }
            if (action.value > 0 && !approval.valueAllowed) {
                revert ValueNotAllowed();
            }
            if (approval.valueAllowed && action.value > approval.maxValue) {
                revert ValueExceedsMax(approval.maxValue, action.value);
            }

            // Step 2 — Decode and sanitize
            // action.auxData is sideband data for decoders that need more than calldata;
            // it is intentionally NOT included in the leaf hash and is NOT forwarded
            // to target.call below.
            bytes memory addressesFound = IDecoderAndSanitizer(approval.decoderAndSanitizer).decode(
                action.calldata_,
                action.auxData,
                address(this)
            );

            // Step 3 — Address matching
            if (keccak256(addressesFound) != keccak256(approval.packedAddressConstraints)) {
                revert AddressMismatch();
            }

            // Step 4 — Amount constraint validation
            ParamValidator.validateAll(approval.amountConstraints, action.calldata_);

            // Step 5 — Build leaf hash and verify merkle proof
            leafHash = _hashLeaf(approval);

            // Step 6 - Merkle proof verification
            if (!MerkleProofLib.verify(merkleProof, approvalRoot, leafHash)) {
                revert InvalidMerkleProof();
            }
        }

        // Step 7 — Execute
        (bool success, bytes memory returnData) = action.target.call{value: action.value}(
            action.calldata_
        );
        if (!success) {
            revert ActionFailed(action.target, returnData);
        }

        // update last execution timestamp for rate-limiting purposes
        s.lastExecutionTimestamp = block.timestamp;

        emit ActionExecuted(action.target, approval.selector, action.value, leafHash);
    }

    /// @notice Computes the leaf hash for merkle proof verification
    function _hashLeaf(ApprovalLeaf calldata leaf) internal pure returns (bytes32) {
        return
            keccak256(
                abi.encodePacked(
                    leaf.decoderAndSanitizer,
                    leaf.target,
                    leaf.selector,
                    leaf.skipTargetCheck,
                    leaf.valueAllowed,
                    leaf.packedAddressConstraints,
                    keccak256(abi.encode(leaf.amountConstraints)),
                    leaf.maxValue
                )
            );
    }

    /// @notice Hashes a struct with the EIP-712 domain separator.
    function _hashTypedData(bytes32 structHash) internal view returns (bytes32) {
        return keccak256(abi.encodePacked("\x19\x01", DOMAIN_SEPARATOR, structHash));
    }

    function _isSelfOrKeeper() internal view {
        if (msg.sender != address(this) && keeperRegistry.isKeeperRevoked(msg.sender)) {
            revert Unauthorized();
        }
    }

    function _onlySelf() internal view {
        if (msg.sender != address(this)) revert Unauthorized();
    }

    function _onlyKeeper() internal view {
        if (keeperRegistry.isKeeperRevoked(msg.sender)) revert Unauthorized();
    }

    /// @inheritdoc AaveV3FlashLoanModule
    function _executeFromFlashLoan(
        Action[] memory actions,
        ApprovalLeaf[] memory approvals,
        bytes32[][] memory merkleProofs
    ) internal override {
        this.flashLoanInnerBatch(actions, approvals, merkleProofs);
    }

    /// @notice Allow the account to receive ETH
    receive() external payable {}
}
