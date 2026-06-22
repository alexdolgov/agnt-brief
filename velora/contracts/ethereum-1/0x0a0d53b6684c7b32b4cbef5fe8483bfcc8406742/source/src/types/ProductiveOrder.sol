// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import { Bridge, BridgeOverride } from "./Bridge.sol";

/// @dev Order data structure containing the order details to be settled,
///      the order is signed by the owner to be executed by an agent
///      on behalf of the owner, executing the swap and transferring the
///      dest token to the beneficiary.
///      ProductiveOrders are always SELL orders - the user sells srcToken (with accumulated yield)
///      for destToken. BUY semantics don't apply since source amount is fixed by strategy position.
struct ProductiveOrder {
    /// @dev The address of the order owner
    address owner;
    /// @dev The address of the order beneficiary
    address beneficiary;
    /// @dev The address of the src token
    address srcToken;
    /// @dev The address of the dest token
    address destToken;
    /// @dev The amount of src token to swap
    uint256 srcAmount;
    /// @dev The minimum amount of dest token to receive
    uint256 destAmount;
    /// @dev The expected amount of dest token to receive (used for surplus/fee calculation)
    uint256 expectedAmount;
    /// @dev The deadline for the order (timestamp)
    uint256 deadline;
    /// @dev The nonce of the order
    uint256 nonce;
    /// @dev Encoded partner address, fee bps, and flags for the order
    ///      partnerAndFee = (partner << 96) | (partnerTakesSurplus << 8) | (capSurplus << 9) |
    ///      fee in bps (max fee is 2%)
    uint256 partnerAndFee;
    /// @dev Optional permit signature for the src token
    bytes permit;
    /// @dev Optional metadata for the order
    bytes metadata;
    /// @dev Strategy used for yield
    address strategy;
    /// @dev Amount of shares on order's creation
    uint256 shares;
    /// @dev Whether to use principal + yield or only initial principal for order's settlement
    bool useShares;
    /// @dev The bridge configuration, should contain all empty fields if cross-chain is not required
    Bridge bridge;
}

/// @notice Order with user signature and optional protocol co-signature for bridge delegation
/// @dev Encapsulates the complete order execution data including optional bridge override mechanism
struct ProductiveOrderWithSig {
    /// @notice The order data struct
    ProductiveOrder order;
    /// @notice The user's EIP-712 signature on the order hash
    bytes signature;
    /// @notice Optional bridge override for delegated bridge selection
    /// @dev When cosignature is present, these values override order.bridge.protocolSelector and
    /// order.bridge.protocolData
    ///      When cosignature is absent, this field is ignored
    ///      Allows users to delegate optimal bridge selection to protocol while retaining control over
    ///      destination chain and output token
    BridgeOverride bridgeOverride;
    /// @notice Optional protocol co-signature authorizing the bridge override
    /// @dev When present: bridgeOverride must be valid and will be applied (protocolSelector must be non-zero)
    ///      When absent: bridgeOverride is ignored, order.bridge is used as-is
    ///      Must be from an authorized signer in SignersRegistry
    bytes cosignature;
}
