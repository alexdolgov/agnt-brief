// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.30;

/// @title ISessionManager
/// @notice On-chain registry + validator for bounded "session keys" delegated by a user.
/// @dev
/// # Third-party integration (target contracts)
/// A "target contract" is a contract that wants to accept delegate-signed calls on behalf of a user.
/// Targets must be explicitly allowlisted by the SessionManager owner.
///
/// Typical integration flow inside a target contract function:
/// 1) Recompute a target-specific `dataHash` from the actual call parameters and require it matches
///    `SessionCall.dataHash`. `SessionManager` does not interpret `dataHash`; it is only signed and replay-protected.
/// 2) Call `validateAndConsume(spendToken, spendAmount, call, delegateSignature, msg.sender)`:
///    - `msg.sender` (in the target) is treated as the `executor` (relayer/bundler) and must equal `call.executor`.
///    - One sequential nonce is consumed (`nonces[sessionId]` increments).
///    - `spendToken`/`spendAmount` are accounted against `tokenLimits` and recorded into `tokenSpent`.
/// 3) Use the returned `(owner_, delegate, maxFeeBps)` to determine the payer (`owner_`) and to bound relayer fees.
///
/// IMPORTANT: `spendToken` / `spendAmount` are provided by the target and are not part of `SessionCall`.
/// Targets should pass the actual token/amount spent on behalf of `owner_` and should include those values in their
/// `dataHash` scheme so the delegate signature binds them.
///
/// # Offchain signing notes
/// - `sessionId = keccak256(abi.encode(owner, delegate, salt))` (see `computeSessionId`).
/// - Delegates sign EIP-712 typed data for `SessionCall` where `target` is the target contract address.
/// - The expected `nonce` is read from `nonces(sessionId)`; it starts at 0 and increments per validated call.
///
/// ## EIP-712 details (reference `SessionManager` implementation)
/// - Domain: name = "ftUSD SessionManager", version = "1".
/// - Types (exact strings):
///   - "AssetLimit(address token,uint256 limit)"
///   - "Session(address owner,address delegate,uint48 validAfter,uint48 validUntil,uint32 maxCalls,uint16 maxFeeBps,bytes32 limitsHash,bytes32 salt)"
///   - "SessionCall(bytes32 sessionId,address target,bytes32 dataHash,uint256 nonce,uint256 deadline,address executor,uint256 feeAmount)"
///   - "RevokeSession(bytes32 sessionId,uint256 deadline)"
///   - "InvalidateNonce(bytes32 sessionId,uint256 nonce,uint256 deadline,address executor)"
/// - `limitsHash` is order-sensitive and is built by hashing each `AssetLimit` and then `keccak256(abi.encodePacked(...))`.
/// - `target` is the target contract address (validated on-chain as `msg.sender` in `validateAndConsume`).
interface ISessionManager {
    // ===== Types =====

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
        uint16 maxFeeBps; // max relayer fee vs amount out (0 = no fee)
    }

    struct SessionCall {
        bytes32 sessionId;
        bytes32 dataHash; // target-specific hash of call parameters (incl selector)
        uint256 nonce; // sequential session nonce
        uint256 deadline; // 0 = no per-call deadline
        address executor; // relayer/bundler that must submit this call
        uint256 feeAmount; // relayer fee amount (token defined by target)
    }

    // ===== Events =====

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
        address indexed target,
        address indexed executor,
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

    // ===== Errors =====

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

    // ===== Constants (as getters) =====

    function BPS() external pure returns (uint256);

    function MIN_SESSION_DURATION() external pure returns (uint48);

    // ===== View =====

    function sessions(bytes32 sessionId)
        external
        view
        returns (
            address owner,
            address delegate,
            uint48 validAfter,
            uint48 validUntil,
            uint32 maxCalls,
            uint16 maxFeeBps
        );

    function revoked(bytes32 sessionId) external view returns (bool);

    function nonces(bytes32 sessionId) external view returns (uint256);

    function allowedTarget(address target) external view returns (bool);

    function tokenLimits(bytes32 sessionId, address token) external view returns (uint256);

    function tokenSpent(bytes32 sessionId, address token) external view returns (uint256);

    // ===== Mutations =====

    function computeSessionId(
        address owner_,
        address delegate,
        bytes32 salt
    )
        external
        pure
        returns (bytes32 sessionId);

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
        returns (bytes32 sessionId);

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
        returns (bytes32 sessionId);

    function revokeSession(bytes32 sessionId) external;

    function revokeSessionBySig(
        bytes32 sessionId,
        uint256 deadline,
        bytes calldata ownerSignature
    )
        external;

    function setAllowedTarget(address target, bool allowed) external;

    function setAllowedTargets(address[] calldata targets, bool allowed) external;

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
        external;

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
        returns (address owner_, address delegate, uint16 maxFeeBps);
}
