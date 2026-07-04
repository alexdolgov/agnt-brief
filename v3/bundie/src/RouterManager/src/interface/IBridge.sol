// SPDX-License-Identifier: MIT
//
//        ██████╗ ██╗   ██╗███╗   ██╗██████╗ ██╗███████╗
//        ██╔══██╗██║   ██║████╗  ██║██╔══██╗██║██╔════╝
//        ██████╔╝██║   ██║██╔██╗ ██║██║  ██║██║█████╗  
//        ██╔══██╗██║   ██║██║╚██╗██║██║  ██║██║██╔══╝  
//        ██████╔╝╚██████╔╝██║ ╚████║██████╔╝██║███████╗
//        ╚═════╝  ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝╚══════╝
//
//        Cross-Chain Yield Aggregation Protocol
//
pragma solidity 0.8.34;

/// @title IBridge
/// @author Bundie Team
/// @notice Interface for cross-chain bridge implementations in the Bundie protocol
/// @dev Each bridge implementation (LayerZero, Wormhole, Custom) implements this interface.
///      Bridges advertise their capabilities via state variables, allowing the protocol
///      to dynamically select appropriate bridges based on route availability and status.
///
///      ## Architecture
///      - BundieRouter holds registered bridge modules and queries their capabilities
///      - Bridge modules are responsible for encoding/decoding cross-chain messages
///      - Each bridge handles its own fee collection and message delivery
///
///      ## Frontend Integration
///      Frontends can use `executionParamsSchema()` to dynamically construct the
///      `executionParams` bytes for the `bridge()` function. The schema is returned
///      as a JSON string describing the ABI-encoded parameters expected by each bridge.
///
///      Example schema for LayerZero:
///      ```json
///      {
///        "params": [
///          {"name": "lzComposeGas", "type": "uint128", "description": "Gas for lzCompose callback"},
///          {"name": "extraOptions", "type": "bytes", "description": "LayerZero extra options"}
///        ]
///      }
///      ```
///
///      ## Security Considerations
///      - Always check `isActive()` before calling `bridge()`
///      - Validate `targetChainId` is in `supportedDestinationChains()`
///      - Ensure sufficient native token is sent for bridge fees
interface IBridge {
    /// @notice Returns the human-readable name of this bridge implementation
    /// @dev Used for logging, UI display, and bridge identification
    /// @return name The bridge name
    function bridgeName() external view returns (string memory name);

    /// @notice Returns the ABI schema for execution parameters as a JSON string
    /// @dev Frontends use this to dynamically construct the `executionParams` bytes.
    ///      The schema describes the expected ABI-encoded parameters for this bridge.
    ///
    ///      Each bridge implementation defines its own parameter requirements.
    ///
    /// @return schema JSON string describing the execution parameters structure
    function executionParamsSchema() external view returns (string memory schema);

    /// @notice Returns all destination chain IDs supported by this bridge
    /// @dev Chain IDs follow the bridge's native format.
    ///      The router uses this to determine valid cross-chain routes.
    /// @return chainIds Array of supported destination chain IDs
    function supportedDestinationChains() external view returns (uint32[] memory chainIds);

    /// @notice Checks if this bridge module is currently active and usable
    /// @dev Returns false if the bridge is paused, deprecated, or experiencing issues.
    ///      Always check this before calling `bridge()` to avoid failed transactions.
    /// @return active True if the bridge is operational, false otherwise
    function isActive() external view returns (bool active);

    /// @notice Extract minAmountOut from bridge-specific execution parameters
    /// @dev Each bridge implementation decodes its own parameter format.
    ///      Used by vaults to store slippage protection values without knowing bridge internals.
    /// @param executionParams Bridge-specific encoded parameters
    /// @return minAmountOut Minimum acceptable output amount (0 if not specified)
    function extractMinAmountOut(bytes calldata executionParams) external pure returns (uint256 minAmountOut);

    /// @notice Quote the native token fee required for a bridge operation
    /// @dev Call this before `bridge()` to determine the required msg.value.
    ///      Fee varies based on destination chain, message size, and execution parameters.
    ///
    ///      This function mirrors the signature of `bridge()` (minus msg.value) to ensure
    ///      accurate fee estimation for the exact operation that will be executed.
    ///
    /// @param asset The ERC20 token address to bridge
    /// @param amount The amount of tokens to bridge
    /// @param targetChainId The destination chain ID (bridge-specific format)
    /// @param targetVault The receiving vault address on the destination chain
    /// @param executionParams Bridge-specific parameters (same encoding as for `bridge()`)
    /// @return nativeFee Required fee in native token (ETH, AVAX, etc.)
    function quoteBridgeFee(
        address asset,
        uint256 amount,
        uint32 targetChainId,
        address targetVault,
        bytes calldata executionParams
    ) external returns (uint256 nativeFee);

    /// @notice Executes a cross-chain bridge operation
    /// @dev Transfers assets to the target chain and vault. The caller must:
    ///      1. Approve this contract to spend `amount` of `asset`
    ///      2. Send sufficient native token (msg.value) for bridge fees
    ///      3. Ensure `targetChainId` is supported via `supportedDestinationChains()`
    ///
    ///      The function handles:
    ///      - Asset locking/burning on source chain
    ///      - Cross-chain message construction and sending
    ///      - Fee payment to the bridge protocol
    ///
    /// @param asset The ERC20 token address to bridge
    /// @param amount The amount of tokens to bridge
    /// @param targetChainId The destination chain ID (bridge-specific format)
    /// @param targetVault The receiving vault address on the destination chain
    /// @param executionParams Bridge-specific parameters (see `executionParamsSchema()`)
    /// @return messageId Unique identifier for tracking the cross-chain message
    function bridge(
        address asset,
        uint256 amount,
        uint32 targetChainId,
        address targetVault,
        bytes calldata executionParams
    ) external payable returns (bytes32 messageId);

    /// @notice Claim a credited native-fee refund (if this bridge module supports/uses refund credits)
    /// @dev Some bridges may attempt a best-effort refund to a `returnRecipient` and, on failure,
    ///      credit the refund for later claiming by that recipient. Bridges that never credit refunds
    ///      may revert or return 0.
    /// @param to Address to receive the refunded native token
    /// @return amount Amount claimed
    function claimNativeRefund(address to) external returns (uint256 amount);

    /// @notice Get bridge fee info for a given asset token
    /// @dev Returns the flat fee amount and the recipient address (relayer) for the fee.
    ///      Bridges that don't charge fees return (0, address(0)).
    ///      Used by Account layer during withdrawal confirmation to deduct bridge fees.
    /// @param token Asset token address
    /// @return fee Fee amount in token decimals (0 if no fee configured)
    /// @return feeRecipient Address to receive the fee (address(0) if no fee)
    function getBridgeFeeInfo(address token) external view returns (uint256 fee, address feeRecipient);
}
