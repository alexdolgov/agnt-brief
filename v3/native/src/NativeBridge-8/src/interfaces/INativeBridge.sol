// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IQuote} from "./IQuote.sol";

/// @title ICreditVault - Interface for Market Maker Credit Accounting
/// @notice Manages market maker positions and credit balances across multiple tokens
interface ICreditVault {
    /// @notice Returns the credit position of a market maker for a specific token
    /// @param settler The market maker's address
    /// @param token The token address
    /// @return amount The credit position (positive = credit, negative = debt)
    function positions(address settler, address token) external view returns (int256 amount);
}

/// @title INativeBridge - Interface for Native Bridge Cross-chain Protocol
/// @notice Defines the data structures, errors, and events for the Native Bridge system
interface INativeBridge is IQuote {
    /*//////////////////////////////////////////////////////////////
                                 STRUCTS / ENUMS
    //////////////////////////////////////////////////////////////*/

    /// @notice Tracks the lifecycle state of a bridge order
    /// @dev State transitions:
    /// @dev None -> Committed (via initiate)
    /// @dev Committed -> Completed (via claim) OR Refunded (via refund)
    enum OrderState {
        /// @dev Order does not exist or has not been initiated
        None,
        /// @dev Order initiated on source chain, funds locked, awaiting fill on destination chain
        Committed,
        /// @dev Order filled on destination chain and claimed on source chain by market maker
        Completed,
        /// @dev Order refunded to user after timeout period
        Refunded
    }

    enum ExternalBridgeState {
        None,
        Committed,
        Refunded
    }

    /// @notice Core order information stored on both source and destination chains
    /// @dev Fields have different meanings depending on which chain:
    struct Order {
        /// @dev The recipient address (who will receive tokens on destination chain)
        /// @dev Enables backend to verify recipient via RPC without event indexing delays, preventing recipient address forgery
        address recipient;
        /// @dev The token address (sellerToken on source chain, buyerToken on destination chain)
        address token;
        /// @dev The token amount (locked amount on source chain, delivered amount on destination chain)
        uint256 amount;
        /// @dev The timestamp when the order was created (initiate time on source, fill time on dest)
        uint256 orderTimestamp;
        /// @dev The market maker (quote.signer) responsible for filling this order
        address settler;
        /// @dev Current state of the order in its lifecycle
        OrderState orderState;
    }

    /// @notice Data structure for batch claiming multiple orders
    /// @dev Market makers use this to claim rewards for fulfilled orders
    struct ClaimData {
        /// @dev The signed quote from the market maker
        /// @dev quote.sellerTokenAmount must equal the sum of all order amounts
        /// @dev quote.buyerTokenAmount must be 0 (already paid on dest chain)
        IQuote.RFQTQuote quote;
        /// @dev Array of user addresses whose orders are being claimed
        address[] users;
        /// @dev Array of quote IDs corresponding to each user's order
        bytes16[] quoteIds;
    }

    /// @notice Parameters for executing a fallback external bridge call
    struct ExternalBridge {
        /// @dev External bridge router contract (must be whitelisted)
        address bridgerRouter;
        /// @dev Contract that actually pulls tokens; may differ from bridgeRouter
        address spender;
        /// @dev Recipient address on the destination chain (for accounting / events)
        address recipient;
        /// @dev Token supplied on the source chain (ERC20 or wrapped native token)
        address inputToken;
        /// @dev Token expected to arrive on the destination chain (for reconciliation)
        address outputToken;
        /// @dev Amount of inputToken to send into the external bridge
        uint256 inputTokenAmount;
        /// @dev Quoted/expected output token amount before slippage
        uint256 outputTokenAmount;
        /// @dev Minimum acceptable output amount (slippage protection)
        uint256 minOutputAmount;
        /// @dev Destination chain ID recognized by the external bridge
        uint256 destChainId;
        /// @dev Deadline timestamp after which this fallback quote is invalid
        uint256 deadlineTimestamp;
        /// @dev Backend-generated globally unique identifier for this fallback call
        bytes16 quoteId;
        /// @dev Encoded calldata to execute on the bridgeRouter
        bytes callData;
        /// @dev EIP-712 signature authorized by backend to allow this fallback path
        bytes signature;
    }

    /// @notice State for fallback external bridge orders
    struct ExternalBridgeOrder {
        address inputToken;
        uint256 inputTokenAmount;
        uint256 orderTimestamp;
        ExternalBridgeState state;
    }

    /*//////////////////////////////////////////////////////////////
                                 ERRORS
    //////////////////////////////////////////////////////////////*/

    /// @notice Thrown when a deadline has passed
    error DeadlineExpired();

    /// @notice Thrown when attempting to refund an order that is not refundable
    error NotRefundable();

    /// @notice Thrown when attempting to use an unapproved external bridge router
    error InvalidBridgeRouter();

    /// @notice Thrown when attempting to bridge to a disabled destination chain
    error InvalidDestChain();

    /// @notice Thrown when an EIP-712 signature verification fails
    error InvalidSignature();

    /// @notice Thrown when a quoteId is invalid or already used
    error InvalidQuoteId();

    /// @notice Thrown when token validation fails
    error InvalidToken();

    /// @notice Thrown when attempting to fill an already completed order
    error OrderCompleted();

    /*//////////////////////////////////////////////////////////////
                                FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Emitted when an order is filled on the destination chain
    /// @param recipient The address receiving the buyerToken on destination chain
    /// @param quoteId The unique identifier of the order
    /// @param settler The market maker who filled this order
    /// @param buyerToken The token delivered to the recipient
    /// @param buyerTokenAmount The actual amount of buyerToken delivered (after fees)
    /// @param chainId The chain ID where the fill occurred (destination chain)
    event Filled(
        address indexed recipient,
        bytes16 indexed quoteId,
        address indexed settler,
        address buyerToken,
        uint256 buyerTokenAmount,
        uint32 chainId
    );

    /// @notice Emitted when a new bridge order is created on the source chain
    /// @param swapper The user who initiated the cross-chain swap
    /// @param recipient The address that will receive tokens on the destination chain
    /// @param quoteId The unique identifier for this order
    /// @param sellerToken The token locked on the source chain
    /// @param sellerTokenAmount The amount of sellerToken locked
    /// @param buyerToken The token to be delivered on the destination chain
    /// @param buyerTokenAmount The expected amount of buyerToken to be delivered
    /// @param settler The market maker responsible for filling this order
    /// @param destChainId The destination chain ID where the order will be filled
    event OrderCreated(
        address indexed swapper,
        address indexed recipient,
        bytes16 indexed quoteId,
        address sellerToken,
        uint256 sellerTokenAmount,
        address buyerToken,
        uint256 buyerTokenAmount,
        address settler,
        uint32 destChainId
    );

    /// @notice Emitted when a signer's authorization status is updated
    /// @param signer The address of the signer being updated
    /// @param isSigner True if the signer is authorized, false if revoked
    event SignerUpdated(address indexed signer, bool isSigner);

    /// @notice Emitted when a user receives a refund for an unfilled order
    /// @param user The user receiving the refund
    /// @param quoteId The unique identifier of the refunded order
    /// @param token The token being refunded
    /// @param amount The amount of tokens refunded
    event Refunded(address indexed user, bytes16 indexed quoteId, address indexed token, uint256 amount);

    /// @notice Emitted when a destination chain's enabled status is updated
    /// @param destChainId The chain ID being updated
    /// @param enabled True if the chain is enabled, false if disabled
    event DestinationStatusUpdated(uint32 indexed destChainId, bool enabled);

    /// @notice Emitted when the refund buffer period is updated
    /// @param oldBuffer The previous refund buffer in seconds
    /// @param newBuffer The new refund buffer in seconds
    event RefundBufferUpdated(uint256 oldBuffer, uint256 newBuffer);

    /// @notice Emitted when the NativeRouter contract address is updated
    /// @param oldRouter The previous router contract address
    /// @param newRouter The new router contract address
    event RouterUpdated(address indexed oldRouter, address indexed newRouter);

    /// @notice Emitted when a market maker claims locked funds for filled orders
    /// @param settler The market maker claiming the funds
    /// @param token The token being claimed
    /// @param amount The total amount of tokens claimed
    /// @param users Array of user addresses whose orders are being claimed
    /// @param quoteIds Array of quote IDs being claimed
    event Claimed(address indexed settler, address indexed token, uint256 amount, address[] users, bytes16[] quoteIds);

    /// @notice Emitted when funds are bridged via an external fallback path
    /// @param bridgeRouter The external bridge router contract invoked
    /// @param recipient The destination recipient encoded in the fallback request
    /// @param inputToken The token sent on the source chain
    /// @param outputToken The token expected on the destination chain
    /// @param inputTokenAmount The amount of inputToken supplied to the bridge
    /// @param outputTokenAmount The quoted/expected output token amount
    /// @param minOutputAmount The minimum acceptable output amount
    /// @param destChainId The destination chain id understood by the bridge
    /// @param quoteId Backend-generated identifier for this fallback bridge
    event ExternalBridged(
        address indexed bridgeRouter,
        address indexed recipient,
        address inputToken,
        address outputToken,
        uint256 inputTokenAmount,
        uint256 outputTokenAmount,
        uint256 minOutputAmount,
        uint256 destChainId,
        bytes16 quoteId
    );

    /// @notice Emitted when an external bridge router whitelist status is updated
    /// @param bridgeRouter The router address being updated
    /// @param allowed True if router is whitelisted, false if removed
    event ExternalBridgeRouterUpdated(address indexed bridgeRouter, bool allowed);

    /// @notice Emitted when an external bridge order is refunded on the source chain
    /// @param recipient The original recipient/user receiving the refund
    /// @param quoteId The identifier of the external bridge order
    /// @param token The input token being refunded
    /// @param amount The input token amount refunded
    event ExternalBridgeRefunded(address indexed recipient, bytes16 indexed quoteId, address token, uint256 amount);
}
