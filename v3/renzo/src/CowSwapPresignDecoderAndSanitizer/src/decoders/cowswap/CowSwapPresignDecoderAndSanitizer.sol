// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.29;

import {IDecoderAndSanitizer} from "../../interfaces/IDecoderAndSanitizer.sol";
import {GPv2Order} from "../../libraries/GPv2Order.sol";

/// @title CowSwapPresignDecoderAndSanitizer
/// @notice Decoder/sanitizer for `GPv2Settlement.setPreSignature(bytes,bool)`.
///         Validates that a CoW Protocol order being authorized OR cancelled
///         via PreSign is safe for the delegated user wallet to commit to.
/// @dev    The standard PreSign flow only carries the 56-byte `orderUid` on-chain,
///         so the contract can't see the order body to validate `receiver`,
///         `kind`, `validTo`, etc. We close that gap by passing the full
///         `GPv2Order.Data` struct via `auxData` (Action.auxData on the
///         SentryDelegation execute path), recomputing the orderUid from the
///         body, and asserting equality. The orderUid embeds `owner` and
///         `validTo` literally, and its digest covers every other order field —
///         so a single 56-byte equality pins the entire order shape to the
///         user's wallet.
///
///         Both `signed=true` (authorize) and `signed=false` (cancel) are
///         accepted: cancellation requires re-presenting the original order
///         body so the same uid match logic forces `owner == caller`. A
///         compromised keeper can therefore cancel a legitimate pending order
///         but cannot value-leak via cancellation — the user re-submits.
///
///         Bounds (`MAX_TTL`, `MAX_FEE`) are constructor immutables. Changing
///         them requires deploying a new decoder and bumping the rulepack
///         version.
contract CowSwapPresignDecoderAndSanitizer is IDecoderAndSanitizer {
    // ── Errors ──────────────────────────────────────────────────────────────

    error UnsupportedSelector(bytes4 selector);
    error AuxDataRequired();
    error OrderUidMismatch();
    error InvalidReceiver(address expected, address got);
    error InvalidOrderKind(bytes32 kind);
    error UnsupportedPartialFill();
    error UnsupportedSellTokenBalance(bytes32 mode);
    error UnsupportedBuyTokenBalance(bytes32 mode);
    error TtlExceeded(uint256 maxValidTo, uint32 actual);
    error FeeExceeded(uint256 maxFee, uint256 actual);

    // ── Immutables ──────────────────────────────────────────────────────────

    /// @notice GPv2Settlement domain separator on the chain this decoder targets.
    bytes32 public immutable DOMAIN_SEPARATOR;

    /// @notice Max allowed seconds between block.timestamp and order.validTo.
    uint32 public immutable MAX_TTL;

    /// @notice Max allowed fee in sellToken units per order.
    uint256 public immutable MAX_FEE;

    // ── Selectors ───────────────────────────────────────────────────────────

    // setPreSignature(bytes orderUid, bool signed)
    bytes4 internal constant SET_PRE_SIGNATURE_SELECTOR = 0xec6cb13f;

    // ── Constructor ─────────────────────────────────────────────────────────

    constructor(bytes32 domainSeparator, uint32 maxTtl, uint256 maxFee) {
        DOMAIN_SEPARATOR = domainSeparator;
        MAX_TTL = maxTtl;
        MAX_FEE = maxFee;
    }

    // ── Decode ──────────────────────────────────────────────────────────────

    /// @inheritdoc IDecoderAndSanitizer
    function decode(
        bytes calldata calldata_,
        bytes calldata auxData,
        address caller
    ) external view returns (bytes memory) {
        bytes4 selector = bytes4(calldata_[:4]);
        if (selector != SET_PRE_SIGNATURE_SELECTOR) {
            revert UnsupportedSelector(selector);
        }
        return _setPreSignature(calldata_, auxData, caller);
    }

    // ── Internal Decoders ───────────────────────────────────────────────────

    /// @dev setPreSignature(bytes orderUid, bool signed)
    ///      auxData = abi.encode(GPv2Order.Data)
    function _setPreSignature(
        bytes calldata calldata_,
        bytes calldata auxData,
        address caller
    ) internal view returns (bytes memory) {
        if (auxData.length == 0) revert AuxDataRequired();

        // Decode (orderUid, signed) from the call's calldata. Both signed=true
        // (authorize) and signed=false (cancel) are accepted — the orderUid
        // match below pins owner==caller in either direction.
        (bytes memory orderUid, ) = abi.decode(calldata_[4:], (bytes, bool));

        // Decode the full order body from auxData.
        GPv2Order.Data memory order = abi.decode(auxData, (GPv2Order.Data));

        // Reconstruct the expected uid from the order body, pinning owner == caller.
        bytes32 digest = GPv2Order.hash(order, DOMAIN_SEPARATOR);
        bytes memory expectedUid = GPv2Order.packOrderUidParams(
            digest,
            caller,
            order.validTo
        );

        // Single equality pins owner, validTo, and (via digest) every other order field.
        if (
            orderUid.length != GPv2Order.UID_LENGTH ||
            keccak256(orderUid) != keccak256(expectedUid)
        ) revert OrderUidMismatch();

        if (order.receiver != caller) {
            revert InvalidReceiver(caller, order.receiver);
        }
        // Both SELL and BUY orders are accepted; any other bytes32 (an unknown
        // future kind enum) is rejected. SELL/BUY semantics differ off-chain
        // (which amount is exact vs capped), but on-chain the validation is
        // the same — owner pinning, receiver, balance modes, bounds.
        if (order.kind != GPv2Order.KIND_SELL && order.kind != GPv2Order.KIND_BUY) {
            revert InvalidOrderKind(order.kind);
        }
        // Defense in depth: partiallyFillable is pinned by the orderUid digest,
        // but an explicit reject ensures any future code path that builds
        // auxData with partiallyFillable=true fails at validation time, not
        // silently at solver-fill time.
        if (order.partiallyFillable) {
            revert UnsupportedPartialFill();
        }
        if (order.sellTokenBalance != GPv2Order.BALANCE_ERC20) {
            revert UnsupportedSellTokenBalance(order.sellTokenBalance);
        }
        if (order.buyTokenBalance != GPv2Order.BALANCE_ERC20) {
            revert UnsupportedBuyTokenBalance(order.buyTokenBalance);
        }

        // TTL: order must expire within MAX_TTL of now.
        uint256 maxValidTo = block.timestamp + uint256(MAX_TTL);
        if (uint256(order.validTo) > maxValidTo) {
            revert TtlExceeded(maxValidTo, order.validTo);
        }

        if (order.feeAmount > MAX_FEE) {
            revert FeeExceeded(MAX_FEE, order.feeAmount);
        }

        // No token-pair allowlist in v1: a single setPreSignature leaf authorizes
        // any (sellToken, buyToken). The merkle leaf's packedAddressConstraints
        // is `""` and the decoder returns `""` to match. The keeper's discretion
        // over sellToken/buyToken/buyAmount is constrained off-chain (API minOut
        // sanity check) and via MAX_TTL/MAX_FEE on-chain. Adding a price checker
        // and/or token allowlist is the v2 hardening step.
        return "";
    }
}
