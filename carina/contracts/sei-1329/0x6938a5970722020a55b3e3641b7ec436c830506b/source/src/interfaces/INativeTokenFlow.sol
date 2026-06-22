// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IEIP1271} from "./IEIP1271.sol";
import {ISettlement} from "./ISettlement.sol";

/// @dev The status of a native token flow order is represented by an 8-bit unsigned integer with the following possible values:
/// - 0: Not Created - The order has not been created yet.
/// - 1: Created - The order has been created and is active.
/// - 2: Cancelled - The order has been cancelled by the owner and is no longer active.
uint8 constant NATIVE_FLOW_ORDER_STATUS_NOT_CREATED = 0;
uint8 constant NATIVE_FLOW_ORDER_STATUS_CREATED = 1;
uint8 constant NATIVE_FLOW_ORDER_STATUS_CANCELLED = 2;

interface INativeTokenFlow is IEIP1271 {
    /// @title Order
    /// @notice Order structure for an order of the native token flow.
    /// @dev Used to specify the details of a native token to ERC20 token exchange order.
    ///
    /// @param receiver The address that will receive the output tokens.
    /// @param validTo The timestamp until which the order is valid.
    /// @param tokenOut The output token to receive when exchanging the native token.
    /// @param amountIn The amount of native token to exchange.
    /// @param amountOut The expected amount of output token to receive.
    /// @param minAmountOut The minimum amount of output token to receive. If the actual amount is less than this, the order will fail.
    /// @param feeAmount The fee amount to be deducted from the input native tokens.
    /// @param quoteId The unique identifier for the quote associated with this order, used for off-chain verification.
    struct Order {
        address receiver;
        uint64 validTo;
        IERC20 tokenOut;
        uint256 amountIn;
        uint256 amountOut;
        uint256 minAmountOut;
        uint256 feeAmount;
        bytes16 quoteId;
    }

    /// @title OrderMetadata
    /// @notice Metadata associated with a native token flow order to store on-chain for managing order.
    /// @dev Used to track order ownership, validity, and status.
    ///
    /// @param owner The owner of the order who has the authority to cancel it before expired.
    /// @param validTo The timestamp until which the order is valid.
    /// @param status The status of the order. See NATIVE_FLOW_ORDER_STATUS_* constants for more details.
    struct OrderMetadata {
        address owner;
        uint64 validTo;
        uint8 status;
    }

    /// @notice Emitted when a new order is created.
    ///
    /// @param owner The address that created the order.
    /// @param order The details of the created order.
    /// @param quoteId The unique identifier for the quote associated with this order, used for off-chain verification.
    event OrderCreated(address indexed owner, ISettlement.Order order, bytes16 quoteId);

    /// @notice Emitted when an existing order is cancelled.
    ///
    /// @param sender The address that initiated the cancellation.
    /// @param owner The owner of the cancelled order.
    /// @param orderDigest The unique identifier of the cancelled order.
    event OrderCancelled(address indexed sender, address indexed owner, bytes32 orderDigest);

    /// @notice Error thrown when an attempt is made to cancel an order if not allowed.
    ///
    /// @param orderDigest The unique identifier of the order attempted to be cancelled.
    error InvalidOrderToCancel(bytes32 orderDigest);

    /// @notice Error thrown when a native token transfer fails.
    error NativeTokenTransferFailed();

    /// @notice Error thrown when an order is in an invalid status for the attempted operation.
    ///
    /// @param orderDigest The unique identifier of the order.
    /// @param currentStatus The current status of the order.
    /// @param expectedStatus The expected status for the operation.
    error InvalidOrderStatus(bytes32 orderDigest, uint8 currentStatus, uint8 expectedStatus);

    /// @notice Error thrown when the input amount specified of the order is zero.
    error ZeroAmountIn();

    /// @notice Error thrown when the transferred native token amount does not match the expected input amount of the order.
    ///
    /// @param required The required amount of native token.
    /// @param sent The actual amount of native token sent.
    error IncorrectNativeTokenAmount(uint256 required, uint256 sent);

    /// @notice Error thrown when the validTo of the order is less than the current timestamp.
    error InvalidValidTo();

    /// @notice Error thrown when the receiver address of the order is the zero address.
    error MissingReceiver();

    /// @notice Error thrown when an order already exists with the same parameters.
    ///
    /// @param orderDigest The unique identifier of the existing order.
    error OrderAlreadyExists(bytes32 orderDigest);

    /// @notice Wrap a specific amount of native token of the contract into wrapped native token (e.g., WETH).
    /// @dev If the given amount is larger than the contract's native token balance, it will wrap all native token instead.
    ///
    /// @param amount The amount of native token to wrap.
    function wrapNativeToken(uint256 amount) external;

    /// @notice Wrap all native token of the contract into wrapped native token (e.g., WETH).
    function wrapAllNativeToken() external;

    /// @notice Create a new order to exchange native token for another ERC20 token.
    /// This will transfer the specified amount of native token from the sender to the contract.
    ///
    /// @param order The order details. View `NativeTokenFlowOrder` struct for more information.
    function createOrder(Order calldata order) external payable;

    /// @notice Cancel an existing order. Only the owner of the order can cancel it before it expires.
    ///
    /// @param order The order to cancel.
    function cancelOrder(Order calldata order) external;

    /// @notice Cancel multiple existing orders. Anyone can call this function to cancel orders that have expired.
    /// If an order cannot be cancelled (e.g., not expired yet or already cancelled), it will be ignored.
    /// This function is useful for batch cancelling multiple orders in a single transaction to refund native token to users after orders expire.
    ///
    /// @param orders The list of orders to cancel.
    function cancelOrdersIgnoreInvalidCancellation(Order[] calldata orders) external;
}
