// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

/// @title IRealeRouter
/// @notice Interface for the Reale Router escrow contract (Jam-free version).
/// @dev Naming note:
///      - makerFundingAddress is the account that actually provides / receives settlement funds.
///
/// Two trading paths:
///   1. Settle-Later (SL): user calls lock() first, then settle() is called by backend operator.
///   2. Instant RFQ:       no lock; both parties sign InstantOrder, operator calls instantSettle().
interface IRealeRouter {
    // ─── Shared types ────────────────────────────────────────────────────────────

    /// @notice Status of a Settle-Later order.
    enum OrderStatus {
        None,
        Locked,
        Settled,
        Expired
    }

    /// @notice Persisted state for a Settle-Later order.
    struct Order {
        address taker;
        address makerFundingAddress;
        address tokenIn;
        address tokenOut;
        uint256 amountIn;
        uint256 amountOut;
        uint256 feeAmount; // fee locked at order creation time
        address feeRecipient; // fee recipient locked at order creation time
        bool feeInQuote; // true = redeem (fee from tokenOut); false = subscribe (fee from tokenIn)
        uint256 settleDeadline;
        OrderStatus status;
    }

    /// @notice Typed data authorized by the maker for a Settle-Later settlement.
    /// @dev Economic terms come entirely from the locked Order storage; settle only
    ///      needs maker approval for this specific orderId to preserve anyone-relay.
    struct SettleAuthorization {
        bytes32 orderId;
    }

    /// @notice Witness struct for a Permit2 lock order (Settle-Later).
    ///         Embedded as the witness in PermitWitnessTransferFrom so one taker signature
    ///         simultaneously authorises token transfer AND lock terms.
    struct LockOrder {
        bytes32 orderId;
        address taker;
        address makerFundingAddress;
        address tokenIn;
        address tokenOut;
        uint256 amountIn;
        uint256 amountOut;
        uint256 feeAmount;
        address feeRecipient;
        bool feeInQuote;
        uint256 settleDeadline;
    }

    /// @notice Parameters for an Instant RFQ trade (no prior lock required).
    ///
    ///   taker                – user address; they approve escrow to spend tokenIn
    ///   makerFundingAddress  – fund account; must approve escrow to spend tokenOut (gross)
    ///                          and may either sign itself or authorize a delegated signer
    ///   tokenIn              – token the user sells
    ///   tokenOut             – token the user receives
    ///   amountIn             – gross tokenIn amount (including fee when !feeInQuote)
    ///   amountOut            – net tokenOut amount the user receives (excluding fee when feeInQuote)
    ///   feeAmount            – fee amount
    ///   feeRecipient         – fee recipient address
    ///   feeInQuote           – true = fee deducted from tokenOut (redeem); false = fee from tokenIn (subscribe)
    ///   expiry               – quote expiry timestamp
    ///   orderId              – unique per-trade order identifier to prevent replay
    struct InstantOrder {
        bytes32 orderId;
        address taker;
        address makerFundingAddress;
        address tokenIn;
        address tokenOut;
        uint256 amountIn;
        uint256 amountOut;
        uint256 feeAmount;
        address feeRecipient;
        bool feeInQuote;
        uint256 expiry;
    }

    /// @notice Permit2 parameters for one-time token pull.
    /// @dev amount should match the exact amount that router will pull.
    struct Permit2Params {
        uint256 amount;
        uint256 nonce;
        uint256 deadline;
        bytes signature;
    }

    // ─── Events ──────────────────────────────────────────────────────────────────

    event Lock(
        bytes32 indexed orderId,
        address indexed taker,
        address indexed makerFundingAddress,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        uint256 feeAmount,
        address feeRecipient,
        bool feeInQuote,
        uint256 settleDeadline
    );

    event Settle(bytes32 indexed orderId, address indexed caller);

    event Refund(bytes32 indexed orderId, address indexed taker);

    event InstantSettle(
        bytes32 indexed orderId,
        address indexed taker,
        address indexed makerFundingAddress,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut
    );

    event OrderSignerRegistered(
        address indexed maker,
        address indexed signer,
        bool allowed
    );

    event MarkerUpdated(address indexed marker, bool allowed);

    event Permit2Updated(address indexed permit2);

    event ExchangeSignerUpdated(address indexed signer, bool allowed);

    // ─── Settle-Later functions ──────────────────────────────────────────────────

    /// @notice Locks tokenIn into escrow to initiate a Settle-Later trade.
    /// @dev taker must be explicit so the backend can submit on behalf of the user
    ///      when using the Permit2 witness path.
    ///      makerFundingAddress is the locked maker funding account on the Settle-Later path.
    ///      - If takerPermit2.signature is non-empty: anyone may call; token pull via
    ///        Permit2 permitWitnessTransferFrom with LockOrder as witness (one user sig).
    ///      - If takerPermit2.signature is empty: msg.sender must equal taker;
    ///        token pull via ERC20 safeTransferFrom (classic allowance path).
    function lock(
        bytes32 orderId,
        address taker,
        address makerFundingAddress,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        uint256 feeAmount,
        address feeRecipient,
        bool feeInQuote,
        uint256 settleDeadline,
        Permit2Params calldata takerPermit2,
        bytes calldata platformSig
    ) external;

    /// @notice Operator (or anyone with a valid maker signature) settles a locked order.
    ///         The maker signature authorises execution of the locked orderId; no msg.sender restriction.
    function settle(bytes32 orderId, bytes calldata makerSig) external;

    /// @notice Anyone may trigger refund after the settle deadline has passed.
    ///         tokenIn is always returned to the stored taker.
    function refund(bytes32 orderId) external;

    /// @notice Returns the stored order state.
    function getOrder(bytes32 orderId) external view returns (Order memory);

    /// @notice Whitelists market makers (allowed to create lock orders and instant settle).
    /// @dev    STANDARD_ROLE only. Reverts if paused.
    function addAllowedMarker(address[] calldata markers) external;

    /// @notice Removes market makers from the whitelist.
    /// @dev    IMMEDIATE_ROLE only. Callable even when paused (emergency revocation).
    function removeAllowedMarker(address[] calldata markers) external;
    /// @notice Returns whether a market maker is whitelisted for instant settle / lock.
    function isAllowedMarker(address marker) external view returns (bool);

    /// @notice Allows a makerFundingAddress to delegate quote signing to another address.
    function setAllowedOrderSigner(address signer, bool allowed) external;

    /// @notice Returns whether signer is allowed to sign orders on behalf of makerFundingAddress.
    function isAllowedOrderSigner(
        address maker,
        address signer
    ) external view returns (bool);

    // ─── Instant RFQ function ────────────────────────────────────────────────────

    /// @notice Atomically swaps tokenIn and tokenOut between taker and makerFundingAddress.
    /// @dev Two token-pull paths, selected by takerPermit2.signature:
    ///      - Non-empty: Permit2 PermitWitnessTransferFrom (takerSig ignored).
    ///        One taker signature covers both trade consent and token transfer.
    ///      - Empty: ERC20 safeTransferFrom allowance path; takerSig must be a valid
    ///        EIP-712 signature over the InstantOrder struct.
    function instantSettle(
        InstantOrder calldata order,
        bytes calldata makerSig,
        bytes calldata takerSig,
        Permit2Params calldata takerPermit2,
        bytes calldata platformSig
    ) external;

    /// @notice Returns the Permit2 contract address.
    function permit2() external view returns (address);

    /// @notice Registers an Exchange platform attestation signer.
    /// @dev    STANDARD_ROLE only. Reverts if paused.
    function addExchangeSigner(address signer) external;

    /// @notice Revokes an Exchange platform attestation signer.
    /// @dev    IMMEDIATE_ROLE only. Callable even when paused (emergency revocation).
    function removeExchangeSigner(address signer) external;

    /// @notice Returns whether signer is a registered Exchange platform signer.
    function isAllowedExchangeSigner(address signer) external view returns (bool);
}
