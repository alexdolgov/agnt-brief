// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {ITokenWhitelistRegistry} from "./interfaces/ITokenWhitelistRegistry.sol";
import {IKeeperRegistry} from "./interfaces/IKeeperRegistry.sol";
import {Ownable2Step, Ownable} from "openzeppelin-contracts/contracts/access/Ownable2Step.sol";
import {EnumerableSet} from "openzeppelin-contracts/contracts/utils/structs/EnumerableSet.sol";
import {ECDSA} from "solady/utils/ECDSA.sol";

/// @title TokenWhitelistRegistry
/// @notice Two-layer token whitelist consumed by Sentry decoders.
///         - **Global list**: owner-curated (Renzo multisig). Every user is
///           implicitly opted into this set.
///         - **Per-user opt-in**: each user can additionally approve tokens
///           for themselves, either by calling `userApproveTokens` directly
///           or by signing an EIP-712 payload that any non-revoked keeper
///           can submit via `userApproveTokensWithSig`. The signature
///           authorizes the action; the keeper gate only filters out
///           explicitly revoked relayers (see `onlyKeeper` modifier).
///         Both layers are enumerable so clients can render the full list
///         on-chain without scanning events or mirroring state off-chain.
/// @dev    One deployment per chain. Referenced as an immutable address from
///         `SentryDelegation`; affected decoders look it up at execute time
///         via `ISentryDelegation(caller).tokenWhitelist()`.
contract TokenWhitelistRegistry is Ownable2Step, ITokenWhitelistRegistry {
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet private _globalTokens;

    /// @dev OR'd with `_globalTokens` during whitelist checks.
    mapping(address user => EnumerableSet.AddressSet) private _userTokens;

    /// @inheritdoc ITokenWhitelistRegistry
    mapping(address => uint256) public nonces;

    /// @inheritdoc ITokenWhitelistRegistry
    bytes32 public immutable DOMAIN_SEPARATOR;

    /// @notice Global keeper revocation registry. Sig-relayed user actions
    ///         can only be submitted by a non-revoked relayer — note this is
    ///         allow-by-default (the registry tracks revocations, not
    ///         approvals), so the gate filters out blocklisted addresses
    ///         rather than maintaining a positive allowlist. The user's
    ///         signature is what actually authorizes the underlying action.
    IKeeperRegistry public immutable keeperRegistry;

    bytes32 public constant USER_APPROVE_TOKENS_TYPEHASH =
        keccak256("UserApproveTokens(address[] tokens,uint256 nonce,uint256 deadline)");

    bytes32 public constant USER_REVOKE_TOKENS_TYPEHASH =
        keccak256("UserRevokeTokens(address[] tokens,uint256 nonce,uint256 deadline)");

    modifier onlyKeeper() {
        if (keeperRegistry.isKeeperRevoked(msg.sender)) revert Unauthorized();
        _;
    }

    constructor(address _owner, IKeeperRegistry _keeperRegistry) Ownable(_owner) {
        if (address(_keeperRegistry) == address(0)) revert InvalidZeroValue();
        if (address(_keeperRegistry).code.length == 0) revert InvalidRegistry();
        keeperRegistry = _keeperRegistry;

        DOMAIN_SEPARATOR = keccak256(
            abi.encode(
                keccak256("EIP712Domain(string name,string version,uint256 chainId,address verifyingContract)"),
                keccak256("RenzoTokenWhitelist"),
                keccak256("1"),
                block.chainid,
                address(this)
            )
        );
    }

    // ── Mutative: global (owner-only) ───────────────────────────────────────

    /// @inheritdoc ITokenWhitelistRegistry
    function approveTokens(address[] calldata _tokens) external onlyOwner {
        for (uint256 i = 0; i < _tokens.length; i++) {
            if (_tokens[i] == address(0)) revert InvalidZeroValue();
            // EnumerableSet.add returns false if the value was already present;
            // treat that as TokenAlreadyApproved so the whole batch reverts
            // atomically (matches the per-user path).
            if (!_globalTokens.add(_tokens[i])) revert TokenAlreadyApproved(_tokens[i]);
        }
        emit TokensApproved(_tokens);
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function revokeTokens(address[] calldata _tokens) external onlyOwner {
        for (uint256 i = 0; i < _tokens.length; i++) {
            if (_tokens[i] == address(0)) revert InvalidZeroValue();
            if (!_globalTokens.remove(_tokens[i])) revert TokenNotApproved(_tokens[i]);
        }
        emit TokensRevoked(_tokens);
    }

    // ── Mutative: per-user direct ───────────────────────────────────────────

    /// @inheritdoc ITokenWhitelistRegistry
    function userApproveTokens(address[] calldata _tokens) external {
        _writeUserApprovals(msg.sender, _tokens);
        emit UserTokensApproved(msg.sender, _tokens);
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function userRevokeTokens(address[] calldata _tokens) external {
        _writeUserRevocations(msg.sender, _tokens);
        emit UserTokensRevoked(msg.sender, _tokens);
    }

    // ── Mutative: per-user sig-relayed ──────────────────────────────────────

    /// @inheritdoc ITokenWhitelistRegistry
    function userApproveTokensWithSig(
        address user,
        address[] calldata _tokens,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external onlyKeeper {
        _verifySig(USER_APPROVE_TOKENS_TYPEHASH, user, _tokens, deadline, v, r, s);
        _writeUserApprovals(user, _tokens);
        emit UserTokensApproved(user, _tokens);
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function userRevokeTokensWithSig(
        address user,
        address[] calldata _tokens,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external onlyKeeper {
        _verifySig(USER_REVOKE_TOKENS_TYPEHASH, user, _tokens, deadline, v, r, s);
        _writeUserRevocations(user, _tokens);
        emit UserTokensRevoked(user, _tokens);
    }

    // ── Views: membership ───────────────────────────────────────────────────

    /// @inheritdoc ITokenWhitelistRegistry
    function requireWhitelistedFor(address user, address token) external view {
        if (!_globalTokens.contains(token) && !_userTokens[user].contains(token)) {
            revert TokenNotWhitelisted(user, token);
        }
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function isGloballyApproved(address token) external view returns (bool) {
        return _globalTokens.contains(token);
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function isUserApproved(address user, address token) external view returns (bool) {
        return _userTokens[user].contains(token);
    }

    // ── Views: enumeration ──────────────────────────────────────────────────
    //
    // Ordering across these views is NOT stable across revokes — see
    // `ITokenWhitelistRegistry`'s enumeration block for the swap-and-pop
    // contract clients must respect.

    /// @inheritdoc ITokenWhitelistRegistry
    function globalTokensLength() external view returns (uint256) {
        return _globalTokens.length();
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function globalTokenAt(uint256 index) external view returns (address) {
        return _globalTokens.at(index);
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function globalTokens() external view returns (address[] memory) {
        return _globalTokens.values();
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function globalTokens(uint256 start, uint256 end) external view returns (address[] memory) {
        _validateRange(start, end, _globalTokens.length());
        return _globalTokens.values(start, end);
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function userTokensLength(address user) external view returns (uint256) {
        return _userTokens[user].length();
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function userTokenAt(address user, uint256 index) external view returns (address) {
        return _userTokens[user].at(index);
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function userTokens(address user) external view returns (address[] memory) {
        return _userTokens[user].values();
    }

    /// @inheritdoc ITokenWhitelistRegistry
    function userTokens(address user, uint256 start, uint256 end)
        external
        view
        returns (address[] memory)
    {
        _validateRange(start, end, _userTokens[user].length());
        return _userTokens[user].values(start, end);
    }

    // ── Internal ────────────────────────────────────────────────────────────

    function _writeUserApprovals(address user, address[] calldata _tokens) internal {
        EnumerableSet.AddressSet storage set = _userTokens[user];
        for (uint256 i = 0; i < _tokens.length; i++) {
            if (_tokens[i] == address(0)) revert InvalidZeroValue();
            if (!set.add(_tokens[i])) revert TokenAlreadyApproved(_tokens[i]);
        }
    }

    function _writeUserRevocations(address user, address[] calldata _tokens) internal {
        EnumerableSet.AddressSet storage set = _userTokens[user];
        for (uint256 i = 0; i < _tokens.length; i++) {
            if (_tokens[i] == address(0)) revert InvalidZeroValue();
            if (!set.remove(_tokens[i])) revert TokenNotApproved(_tokens[i]);
        }
    }

    function _verifySig(
        bytes32 typehash,
        address user,
        address[] calldata _tokens,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) internal {
        // Empty arrays would burn a nonce without authorizing any token. Reject
        // explicitly so a relayer can't grief a user's nonce stream with a
        // signed-but-empty payload.
        if (_tokens.length == 0) revert EmptyTokensArray();
        if (block.timestamp > deadline) revert SignatureExpired(deadline, block.timestamp);

        uint256 nonce = nonces[user];
        bytes32 structHash = keccak256(
            abi.encode(typehash, _hashAddressArray(_tokens), nonce, deadline)
        );
        bytes32 digest = keccak256(abi.encodePacked("\x19\x01", DOMAIN_SEPARATOR, structHash));

        address signer = ECDSA.recover(digest, v, r, s);
        if (signer != user) revert InvalidSignature();

        // Bump nonce only after a successful recovery so a bad signature
        // can't burn the user's nonce stream as a griefing vector.
        nonces[user] = nonce + 1;
    }

    /// @dev EIP-712 array encoding: each element encoded inline (addresses
    ///      pad to 32 bytes), concatenated, then hashed. NOT the same as
    ///      `abi.encodePacked(arr)` (which packs addresses to 20 bytes) or
    ///      `abi.encode(arr)` (which prepends length and offset).
    function _hashAddressArray(address[] calldata arr) internal pure returns (bytes32) {
        bytes32[] memory padded = new bytes32[](arr.length);
        for (uint256 i = 0; i < arr.length; i++) {
            padded[i] = bytes32(uint256(uint160(arr[i])));
        }
        return keccak256(abi.encodePacked(padded));
    }

    /// @dev Half-open range validation shared by the paginated readers.
    ///      Mirrors the `EnumerableSet.values(start, end)` precondition so
    ///      callers get a typed revert instead of an opaque panic.
    function _validateRange(uint256 start, uint256 end, uint256 length) internal pure {
        if (start > end || end > length) revert InvalidRange(start, end, length);
    }
}
