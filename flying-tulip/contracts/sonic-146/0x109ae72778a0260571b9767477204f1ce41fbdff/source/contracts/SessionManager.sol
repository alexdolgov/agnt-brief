// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

import {Ownable2Step} from "openzeppelin-contracts/contracts/access/Ownable2Step.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";
import {
    SignatureChecker
} from "openzeppelin-contracts/contracts/utils/cryptography/SignatureChecker.sol";
import {EIP712} from "openzeppelin-contracts/contracts/utils/cryptography/EIP712.sol";
import {
    ReentrancyGuardTransient
} from "openzeppelin-contracts/contracts/utils/ReentrancyGuardTransient.sol";

/// @title SessionManager
/// @notice On-chain registry + validator for bounded "session keys" delegated by a user.
/// @dev
/// - User creates a session for a delegate key (EOA or ERC-1271 wallet) with expiry and/or max-call limit.
/// - Delegate signs per-call intents (EIP-712) that are consumed by trusted target contracts (e.g. MintAndRedeem).
/// - Allowlisted target contracts call `validateAndConsume` to enforce session constraints, per-asset spend limits,
///   and replay protection (sequential nonces).
contract SessionManager is EIP712, Ownable2Step, ReentrancyGuardTransient {
    uint256 public constant BPS = 10_000;
    uint48 public constant MIN_SESSION_DURATION = 1 hours;

    struct AssetLimit {
        address token;
        uint256 limit;
    }

    struct SessionConfig {
        address owner;
        address delegate;
        uint48 validAfter;
        uint48 validUntil; // 0 = no expiry
        uint32 maxCalls; // 0 = unlimited (requires validUntil != 0)
        uint16 maxFeeBps; // max relayer fee vs output amount (0 = no fee)
    }

    struct SessionCall {
        bytes32 sessionId;
        bytes32 dataHash; // target-specific hash of call parameters (incl selector)
        uint256 nonce; // sequential session nonce
        uint256 deadline; // 0 = no per-call deadline
        address executor; // relayer/bundler that must submit this call
        uint256 feeAmount; // relayer fee amount (token defined by target)
    }

    bytes32 private constant _ASSET_LIMIT_TYPEHASH =
        keccak256("AssetLimit(address token,uint256 limit)");
    bytes32 private constant _SESSION_TYPEHASH = keccak256(
        "Session(address owner,address delegate,uint48 validAfter,uint48 validUntil,uint32 maxCalls,uint16 maxFeeBps,AssetLimit[] limits,bytes32 salt)AssetLimit(address token,uint256 limit)"
    );
    bytes32 private constant _SESSION_CALL_TYPEHASH = keccak256(
        "SessionCall(bytes32 sessionId,address target,bytes32 dataHash,uint256 nonce,uint256 deadline,address executor,uint256 feeAmount)"
    );
    bytes32 private constant _REVOKE_SESSION_TYPEHASH =
        keccak256("RevokeSession(bytes32 sessionId,uint256 deadline)");
    bytes32 private constant _INVALIDATE_NONCE_TYPEHASH = keccak256(
        "InvalidateNonce(bytes32 sessionId,uint256 nonce,uint256 deadline,address executor)"
    );

    mapping(bytes32 sessionId => SessionConfig) public sessions;
    mapping(bytes32 sessionId => bool) public revoked;
    mapping(bytes32 sessionId => uint256) public nonces;

    mapping(address target => bool) public allowedTarget;

    /// @notice Per-session per-asset allowance (decrements on each spend).
    /// @dev `type(uint256).max` matches ERC-20 allowance semantics: no decrement ("infinite" allowance).
    mapping(bytes32 sessionId => mapping(address token => uint256)) public tokenAllowance;

    event SessionCreated(
        bytes32 indexed sessionId,
        address indexed owner,
        address indexed delegate,
        uint48 validAfter,
        uint48 validUntil,
        uint32 maxCalls,
        uint16 maxFeeBps
    );
    event SessionRevoked(bytes32 indexed sessionId, address indexed owner);
    event SessionConsumed(
        bytes32 indexed sessionId,
        address indexed owner,
        address indexed target,
        address executor,
        uint256 nonce,
        bytes32 dataHash,
        address spendToken,
        uint256 spendAmount,
        uint256 feeAmount
    );

    event AllowedTargetUpdated(address indexed target, bool allowed);
    event NonceInvalidated(
        bytes32 indexed sessionId, address indexed delegate, uint256 invalidatedNonce
    );

    error ZeroAddress();
    error InvalidSessionWindow(uint48 validAfter, uint48 validUntil);
    error SessionExpiryTooSoon(uint48 validUntil, uint48 minValidUntil);
    error SessionMustHaveExpiryOrCallLimit();
    error SessionAlreadyExists(bytes32 sessionId);
    error SessionNotFound(bytes32 sessionId);
    error SessionIsRevoked(bytes32 sessionId);
    error SessionNotYetValid(bytes32 sessionId, uint48 validAfter);
    error SessionExpired(bytes32 sessionId, uint48 validUntil);
    error SessionCallsExceeded(bytes32 sessionId, uint32 maxCalls);
    error DeadlineExpired(uint256 deadline, uint256 currentTime);
    error InvalidNonce(uint256 expected, uint256 provided);
    error InvalidSignature();
    error NotSessionOwner(bytes32 sessionId, address caller);
    error TargetNotAllowed(address target);
    error DuplicateAsset(address token);
    error AssetNotAllowed(address token);
    error AssetLimitExceeded(address token, uint256 requested, uint256 remaining);
    error ExecutorMismatch(address expected, address actual);
    error ExecutorCannotBeDelegate(address delegate);
    error InvalidMaxFeeBps(uint16 maxFeeBps);
    error NonceMismatch(uint256 expected, uint256 provided);

    constructor(address initialOwner) EIP712("ftUSD SessionManager", "1") Ownable(initialOwner) {}

    function computeSessionId(
        address owner_,
        address delegate,
        bytes32 salt
    )
        public
        pure
        returns (bytes32 sessionId)
    {
        return keccak256(abi.encode(owner_, delegate, salt));
    }

    function createSession(
        address delegate,
        uint48 validAfter,
        uint48 validUntil,
        uint32 maxCalls,
        uint16 maxFeeBps,
        AssetLimit[] calldata limits,
        bytes32 salt
    )
        external
        returns (bytes32 sessionId)
    {
        sessionId = _createSession(
            msg.sender, delegate, validAfter, validUntil, maxCalls, maxFeeBps, limits, salt
        );
    }

    function createSessionBySig(
        address owner_,
        address delegate,
        uint48 validAfter,
        uint48 validUntil,
        uint32 maxCalls,
        uint16 maxFeeBps,
        AssetLimit[] calldata limits,
        bytes32 salt,
        bytes calldata ownerSignature
    )
        external
        returns (bytes32 sessionId)
    {
        bytes32 limitsHash = _hashLimits(limits);
        bytes32 digest = _hashTypedDataV4(
            keccak256(
                abi.encode(
                    _SESSION_TYPEHASH,
                    owner_,
                    delegate,
                    validAfter,
                    validUntil,
                    maxCalls,
                    maxFeeBps,
                    limitsHash,
                    salt
                )
            )
        );

        if (!SignatureChecker.isValidSignatureNow(owner_, digest, ownerSignature)) {
            revert InvalidSignature();
        }

        sessionId = _createSession(
            owner_, delegate, validAfter, validUntil, maxCalls, maxFeeBps, limits, salt
        );
    }

    function revokeSession(bytes32 sessionId) external {
        SessionConfig memory s = sessions[sessionId];
        if (s.owner == address(0)) revert SessionNotFound(sessionId);
        if (msg.sender != s.owner) revert NotSessionOwner(sessionId, msg.sender);
        if (revoked[sessionId]) revert SessionIsRevoked(sessionId);
        revoked[sessionId] = true;
        emit SessionRevoked(sessionId, s.owner);
    }

    function revokeSessionBySig(
        bytes32 sessionId,
        uint256 deadline,
        bytes calldata ownerSignature
    )
        external
    {
        _revokeSessionBySig(sessionId, deadline, ownerSignature);
    }

    function setAllowedTarget(address target, bool allowed) external onlyOwner {
        _setAllowedTarget(target, allowed);
    }

    function setAllowedTargets(address[] calldata targets, bool allowed) external onlyOwner {
        uint256 len = targets.length;
        for (uint256 i = 0; i < len; i++) {
            _setAllowedTarget(targets[i], allowed);
        }
    }

    /// @notice Invalidate a session nonce without revoking the entire session.
    /// @param sessionId The session to invalidate the nonce for.
    /// @param nonce The current nonce to invalidate (must match on-chain nonce).
    /// @param deadline Signature expiry (0 = no deadline).
    /// @param executor The address authorized to submit this invalidation (must be msg.sender).
    /// @param delegateSignature EIP-712 signature from the session delegate.
    function invalidateNonceBySig(
        bytes32 sessionId,
        uint256 nonce,
        uint256 deadline,
        address executor,
        bytes calldata delegateSignature
    )
        external
    {
        if (executor == address(0)) revert ZeroAddress();
        if (executor != msg.sender) revert ExecutorMismatch(executor, msg.sender);

        SessionConfig memory s = sessions[sessionId];
        if (s.owner == address(0)) revert SessionNotFound(sessionId);
        if (revoked[sessionId]) revert SessionIsRevoked(sessionId);
        if (deadline != 0 && block.timestamp > deadline) {
            revert DeadlineExpired(deadline, block.timestamp);
        }

        uint256 currentNonce = nonces[sessionId];
        if (nonce != currentNonce) revert NonceMismatch(currentNonce, nonce);

        bytes32 digest = _hashTypedDataV4(
            keccak256(abi.encode(_INVALIDATE_NONCE_TYPEHASH, sessionId, nonce, deadline, executor))
        );
        if (!SignatureChecker.isValidSignatureNow(s.delegate, digest, delegateSignature)) {
            revert InvalidSignature();
        }

        nonces[sessionId] = currentNonce + 1;
        emit NonceInvalidated(sessionId, s.delegate, currentNonce);
    }

    /// @notice Validate a delegate-signed call and consume one session nonce.
    /// @dev Can only be called by the target contract that will execute the action.
    /// @param spendToken Token being spent from the session owner (0 if none).
    /// @param spendAmount Amount being spent (0 if none).
    /// @param call Session call intent signed by the delegate.
    /// @param delegateSignature Signature from the session delegate over `call`.
    /// @param executor The relayer/bundler address that submitted the target tx (target should pass `msg.sender`).
    function validateAndConsume(
        address spendToken,
        uint256 spendAmount,
        SessionCall calldata call,
        bytes calldata delegateSignature,
        address executor
    )
        external
        nonReentrant
        returns (address owner_, address delegate, uint16 maxFeeBps)
    {
        uint256 nowTs = block.timestamp;
        if (!allowedTarget[msg.sender]) revert TargetNotAllowed(msg.sender);
        if (executor == address(0)) revert ZeroAddress();
        if (call.executor != executor) revert ExecutorMismatch(call.executor, executor);

        SessionConfig memory s = sessions[call.sessionId];
        if (s.owner == address(0)) revert SessionNotFound(call.sessionId);
        if (revoked[call.sessionId]) revert SessionIsRevoked(call.sessionId);
        if (call.executor == s.delegate) revert ExecutorCannotBeDelegate(s.delegate);

        if (block.timestamp < s.validAfter) {
            revert SessionNotYetValid(call.sessionId, s.validAfter);
        }
        if (s.validUntil != 0 && nowTs > s.validUntil) {
            revert SessionExpired(call.sessionId, s.validUntil);
        }

        if (call.deadline != 0 && nowTs > call.deadline) {
            revert DeadlineExpired(call.deadline, nowTs);
        }

        uint256 expectedNonce = nonces[call.sessionId];
        if (call.nonce != expectedNonce) revert InvalidNonce(expectedNonce, call.nonce);
        if (s.maxCalls != 0 && expectedNonce >= s.maxCalls) {
            revert SessionCallsExceeded(call.sessionId, s.maxCalls);
        }

        bytes32 digest = _hashTypedDataV4(
            keccak256(
                abi.encode(
                    _SESSION_CALL_TYPEHASH,
                    call.sessionId,
                    msg.sender,
                    call.dataHash,
                    call.nonce,
                    call.deadline,
                    call.executor,
                    call.feeAmount
                )
            )
        );
        if (!SignatureChecker.isValidSignatureNow(s.delegate, digest, delegateSignature)) {
            revert InvalidSignature();
        }

        unchecked {
            nonces[call.sessionId] = expectedNonce + 1;
        }

        if (spendAmount != 0) {
            if (spendToken == address(0)) revert ZeroAddress();
            uint256 allowance = tokenAllowance[call.sessionId][spendToken];
            if (allowance == 0) revert AssetNotAllowed(spendToken);

            if (allowance != type(uint256).max) {
                if (spendAmount > allowance) {
                    revert AssetLimitExceeded(spendToken, spendAmount, allowance);
                }
                tokenAllowance[call.sessionId][spendToken] = allowance - spendAmount;
            }
        }

        emit SessionConsumed(
            call.sessionId,
            s.owner,
            msg.sender,
            executor,
            call.nonce,
            call.dataHash,
            spendToken,
            spendAmount,
            call.feeAmount
        );

        return (s.owner, s.delegate, s.maxFeeBps);
    }

    // ===== Internals =====

    function _revokeSessionBySig(
        bytes32 sessionId,
        uint256 deadline,
        bytes calldata ownerSignature
    )
        internal
        returns (address owner_)
    {
        SessionConfig memory s = sessions[sessionId];
        owner_ = s.owner;
        if (owner_ == address(0)) revert SessionNotFound(sessionId);
        if (revoked[sessionId]) revert SessionIsRevoked(sessionId);
        if (deadline != 0 && block.timestamp > deadline) {
            revert DeadlineExpired(deadline, block.timestamp);
        }

        bytes32 digest =
            _hashTypedDataV4(keccak256(abi.encode(_REVOKE_SESSION_TYPEHASH, sessionId, deadline)));
        if (!SignatureChecker.isValidSignatureNow(owner_, digest, ownerSignature)) {
            revert InvalidSignature();
        }

        revoked[sessionId] = true;
        emit SessionRevoked(sessionId, owner_);
    }

    function _createSession(
        address owner_,
        address delegate,
        uint48 validAfter,
        uint48 validUntil,
        uint32 maxCalls,
        uint16 maxFeeBps,
        AssetLimit[] calldata limits,
        bytes32 salt
    )
        internal
        returns (bytes32 sessionId)
    {
        if (owner_ == address(0) || delegate == address(0)) revert ZeroAddress();
        if (validUntil != 0) {
            uint48 nowTs = uint48(block.timestamp);
            uint48 start = validAfter > nowTs ? validAfter : nowTs;
            uint48 minValidUntil = start + MIN_SESSION_DURATION;
            if (validUntil < minValidUntil) revert SessionExpiryTooSoon(validUntil, minValidUntil);
        }
        if (validUntil != 0 && validUntil <= validAfter) {
            revert InvalidSessionWindow(validAfter, validUntil);
        }
        if (validUntil == 0 && maxCalls == 0) revert SessionMustHaveExpiryOrCallLimit();
        if (maxFeeBps > BPS) revert InvalidMaxFeeBps(maxFeeBps);

        sessionId = computeSessionId(owner_, delegate, salt);
        if (sessions[sessionId].owner != address(0)) revert SessionAlreadyExists(sessionId);

        sessions[sessionId] = SessionConfig({
            owner: owner_,
            delegate: delegate,
            validAfter: validAfter,
            validUntil: validUntil,
            maxCalls: maxCalls,
            maxFeeBps: maxFeeBps
        });

        uint256 len = limits.length;
        for (uint256 i = 0; i < len; i++) {
            address token = limits[i].token;
            uint256 limit = limits[i].limit;
            if (token == address(0)) revert ZeroAddress();
            if (limit == 0) revert AssetNotAllowed(token);
            if (tokenAllowance[sessionId][token] != 0) revert DuplicateAsset(token);
            tokenAllowance[sessionId][token] = limit;
        }

        emit SessionCreated(
            sessionId, owner_, delegate, validAfter, validUntil, maxCalls, maxFeeBps
        );
    }

    function _hashLimits(AssetLimit[] calldata limits) internal pure returns (bytes32) {
        uint256 len = limits.length;
        bytes32[] memory hashes = new bytes32[](len);
        for (uint256 i = 0; i < len; i++) {
            hashes[i] =
                keccak256(abi.encode(_ASSET_LIMIT_TYPEHASH, limits[i].token, limits[i].limit));
        }
        return keccak256(abi.encodePacked(hashes));
    }

    function _setAllowedTarget(address target, bool allowed) internal {
        if (target == address(0)) revert ZeroAddress();
        allowedTarget[target] = allowed;
        emit AllowedTargetUpdated(target, allowed);
    }
}
