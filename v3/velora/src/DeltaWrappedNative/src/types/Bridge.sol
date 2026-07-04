// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

/// @title Bridge Configuration Types
/// @notice User-facing bridge configuration types that are part of signed orders
/// @dev These structs are signed by users/protocols and stored in order data structures.
///      For internal execution types, see BridgeContext.sol

/// @dev Represents bridge configuration for cross-chain operations
///      This struct is part of the Order and is signed by the user
struct Bridge {
    /// @dev The bridge protocol selector
    ///      This determines which bridge module will be used for execution
    ///      For co-signed orders, this should be bytes4(0) and the protocol will provide an override
    bytes4 protocolSelector;
    /// @dev The destination chain ID where tokens should be bridged
    uint256 destinationChainId;
    /// @dev The token address on the destination chain
    address outputToken;
    /// @dev Represents destDecimals - srcDecimals to convert between token decimal formats
    ///      Positive: dest has more decimals, divide amounts before bridge
    ///      Negative: src has more decimals, multiply amounts before bridge
    ///      Zero: same decimals, no conversion needed
    int8 scalingFactor;
    /// @dev Protocol-specific configuration data
    ///      Contains immutable parameters like destEid for Stargate or multiCallHandler for Across
    ///      For co-signed orders, this should be empty and the protocol will provide an override
    bytes protocolData;
}

/// @notice Bridge protocol override for co-signed orders
/// @dev Allows users to delegate bridge selection to an authorized protocol signer while retaining control
///      over critical parameters (destinationChainId, outputToken).
///
///      When cosignature is present:
///      - protocolSelector must be non-zero and overrides order.bridge.protocolSelector
///      - protocolData overrides order.bridge.protocolData (bridge-specific configuration)
///      - The protocol signer must be authorized in SignersRegistry
///
///      When cosignature is not present:
///      - BridgeOverride is ignored (protocolSelector should be bytes4(0))
///      - order.bridge is used as-is
///
///      See BridgeCosignatureLib for signature verification logic.
struct BridgeOverride {
    /// @notice The bridge protocol selector
    /// @dev Overrides order.bridge.protocolSelector if non-zero
    bytes4 protocolSelector;
    /// @notice Protocol-specific bridge configuration data
    /// @dev Overrides order.bridge.protocolData
    bytes protocolData;
}
