// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

/// @title ITokenWhitelistRegistry
/// @notice Interface for the global token whitelist registry.
///         Two layers:
///         - **Global list** (owner-curated): the canonical set of tokens
///           Renzo has vetted. Every user is implicitly opted into this.
///         - **Per-user opt-in** (user-curated): each user can additionally
///           approve tokens for themselves via direct call or EIP-712 sig.
///         Decoders consult both via `requireWhitelistedFor(user, token)`.
///
///         Both layers are enumerable on-chain via `globalTokens*` /
///         `userTokens*` views so clients (iOS, dashboards) can render the
///         full list without scanning events or mirroring state off-chain.
interface ITokenWhitelistRegistry {
    // ── Events ──────────────────────────────────────────────────────────────
    event TokensApproved(address[] tokens);
    event TokensRevoked(address[] tokens);
    event UserTokensApproved(address indexed user, address[] tokens);
    event UserTokensRevoked(address indexed user, address[] tokens);

    // ── Errors ──────────────────────────────────────────────────────────────
    error InvalidZeroValue();
    error InvalidRegistry();
    error Unauthorized();
    error TokenAlreadyApproved(address token);
    error TokenNotApproved(address token);
    error TokenNotWhitelisted(address user, address token);
    error InvalidSignature();
    error SignatureExpired(uint256 deadline, uint256 currentTimestamp);
    error EmptyTokensArray();
    error InvalidRange(uint256 start, uint256 end, uint256 length);

    // ── Mutative: global (owner-only) ───────────────────────────────────────

    /// @notice Approve tokens for the global canonical list.
    /// @dev    Owner-only. Reverts on zero address or already-approved entries.
    function approveTokens(address[] calldata _tokens) external;

    /// @notice Revoke tokens from the global canonical list.
    /// @dev    Owner-only. Reverts on zero address or not-currently-approved entries.
    function revokeTokens(address[] calldata _tokens) external;

    // ── Mutative: per-user direct (msg.sender pays gas) ─────────────────────

    /// @notice Approve tokens for the caller's personal opt-in list.
    /// @dev    Partition key is `msg.sender`. Reverts on zero address or
    ///         already-approved entries for this user.
    function userApproveTokens(address[] calldata _tokens) external;

    /// @notice Revoke tokens from the caller's personal opt-in list.
    /// @dev    Partition key is `msg.sender`.
    function userRevokeTokens(address[] calldata _tokens) external;

    // ── Mutative: per-user sig-relayed (non-revoked keeper relays) ──────────

    /// @notice Approve tokens for `user`'s personal opt-in list using an
    ///         EIP-712 signature produced by `user`.
    /// @dev    Submitter must be a non-revoked relayer
    ///         (`!keeperRegistry.isKeeperRevoked(msg.sender)`). Note this is
    ///         allow-by-default — `KeeperRegistry` tracks revocations, not
    ///         approvals, so any address that hasn't been explicitly revoked
    ///         passes. The user's EIP-712 signature is what authorizes the
    ///         action; the keeper gate just blocks known-bad relayers and
    ///         mirrors `SentryDelegation.setApprovalRootWithSig`.
    ///         Replay-protected by per-user `nonces` and by `deadline`. The
    ///         signed struct binds `tokens`, `nonce`, and `deadline`.
    function userApproveTokensWithSig(
        address user,
        address[] calldata _tokens,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    /// @notice Revoke tokens from `user`'s personal opt-in list using an
    ///         EIP-712 signature produced by `user`.
    function userRevokeTokensWithSig(
        address user,
        address[] calldata _tokens,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    // ── View: membership ────────────────────────────────────────────────────

    /// @notice Reverts `TokenNotWhitelisted(user, token)` if `token` is not in
    ///         either the global canonical list or `user`'s personal opt-in.
    ///         This is the entry point decoders call.
    function requireWhitelistedFor(address user, address token) external view;

    /// @notice `true` if `token` is in the global canonical list.
    function isGloballyApproved(address token) external view returns (bool);

    /// @notice `true` if `token` is in `user`'s personal opt-in list.
    ///         Does NOT consider the global list — use `requireWhitelistedFor`
    ///         (or OR with `isGloballyApproved`) for the effective check.
    function isUserApproved(address user, address token) external view returns (bool);

    // ── View: enumeration ───────────────────────────────────────────────────
    //
    // Ordering is NOT stable across revokes (`EnumerableSet.remove` swap-and-pop).
    // Treat every fetch as a fresh snapshot. The paginated `(start, end)` reads
    // exist so clients can chunk large lists without blowing past RPC response
    // limits; for typical sizes (<50 tokens) the full `()` reader is fine.

    /// @notice Number of tokens currently in the global list.
    function globalTokensLength() external view returns (uint256);

    /// @notice Address at `index` in the global list.
    /// @dev    Reverts (out-of-bounds) when `index >= globalTokensLength()`.
    function globalTokenAt(uint256 index) external view returns (address);

    /// @notice All tokens in the global list. Convenience reader for small sets.
    function globalTokens() external view returns (address[] memory);

    /// @notice Slice of the global list, half-open `[start, end)`.
    ///         Reverts `InvalidRange` if `start > end` or `end > length`.
    function globalTokens(uint256 start, uint256 end) external view returns (address[] memory);

    /// @notice Number of tokens in `user`'s personal opt-in list.
    function userTokensLength(address user) external view returns (uint256);

    /// @notice Address at `index` in `user`'s personal opt-in list.
    /// @dev    Reverts (out-of-bounds) when `index >= userTokensLength(user)`.
    function userTokenAt(address user, uint256 index) external view returns (address);

    /// @notice All tokens in `user`'s personal opt-in list.
    function userTokens(address user) external view returns (address[] memory);

    /// @notice Slice of `user`'s personal opt-in list, half-open `[start, end)`.
    function userTokens(address user, uint256 start, uint256 end)
        external
        view
        returns (address[] memory);

    // ── View: misc ──────────────────────────────────────────────────────────

    /// @notice Current replay nonce for `user`'s sig-relayed approvals/revocations.
    /// @dev    Single stream covers both approve and revoke — the typehash
    ///         differs in the signed digest, so approve sigs can't be replayed
    ///         as revokes (or vice-versa).
    function nonces(address user) external view returns (uint256);

    /// @notice EIP-712 domain separator (pinned at construction).
    function DOMAIN_SEPARATOR() external view returns (bytes32);
}
