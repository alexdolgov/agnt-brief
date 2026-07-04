// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.20;

/// @title ILimitOrderEngine Interface
/// @notice Interface for managing limit orders, including validation, status tracking, and cancellation
interface ILimitOrderEngine {
    /// @notice Events
    event OrderCanceled(address maker, bytes32 orderHash);
    event OrderPreSigned(bytes32 indexed orderHash, address indexed maker);
    event RouterUpdated(address indexed newRouter);
    event FeeRecipientUpdated(address indexed newFeeRecipient);
    event OrderFilled(bytes32 orderHash, uint256 actualMaking);
    event LimitOrderFeeChange(uint256 previousLimitOrderFee, uint256 newLimitOrderFee);

    /// @notice Errors
    error NotMaker();
    error AlreadyFilled(bytes32 orderId);
    error OrderNotExisting(bytes32 orderId);
    error OrderAlreadyRegistered(bytes32 orderHash);
    error InvalidOrderForPreSign();
    error NotRouter();
    error NoValidOrder();
    error InvalidOrderType();
    error MaxTakingExceeded();
    error IncompatibleOrderBatch();
    error InsufficientFunds();
    error InvalidBatchParams();
    error FeeGreaterThanMaxValue();

    /// @notice Order types
    enum OrderType {
        NONE,
        IBT_FOR_PT, //makingToken is IBT, takingToken is PT: (taker is buying IBT with PT)
        PT_FOR_IBT,
        IBT_FOR_YT,
        YT_FOR_IBT
    }

    /// @notice Order struct
    /// @param salt The salt used to hash the order
    /// @param expiry The expiry timestamp of the order
    /// @param nonce The nonce of the order
    /// @param orderType The type of the order
    /// @param pt The address of the PT token
    /// @param maker The address of the maker
    /// @param receiver The address of the receiver
    /// @param makingAmount The amount of the input token
    /// @param impliedRate The implied rate of the order
    struct Order {
        uint256 salt;
        uint256 expiry;
        uint256 nonce;
        OrderType orderType;
        address pt;
        address maker;
        address receiver;
        uint256 makingAmount;
        uint256 impliedRate;
    }

    /// @notice Fill order params struct
    /// @param order The order to fill
    /// @param signature The maker's EIP-712 signature; may be empty bytes for orders authorised via preSign
    /// @param makingAmount The amount of the input token
    /// @param maxTaking The maximum amount of the output token
    struct FillOrderParams {
        Order order;
        bytes signature;
        uint256 makingAmount;
        uint256 maxTaking;
    }

    /// @notice Order status struct
    /// @param remaining The remaining amount of the order
    /// @param filledAmount The filled amount of the order
    struct OrderStatus {
        uint128 remaining;
        uint128 filledAmount;
    }

    /// @notice Order result struct
    /// @param actualTaking The actual taking amount of the order
    /// @param actualMaking The actual making amount of the order
    struct OrderResult {
        uint256 actualTaking; // taking amount without fees (taking = actualTaking + fees)
        uint256 actualMaking;
    }

    /* Setters
     *********************************************************************************************************/

    /// @notice Updates the router address.
    /// @dev This function allows an authorized entity to change the router contract.
    /// @param _newRouter The new router contract address.
    /// @custom:event Emits `RouterUpdated(address newRouter)`.
    function setRouter(address _newRouter) external;

    /// @notice Updates the protocol limit-order fee.
    /// @dev Restricted to the access manager. Reverts with `FeeGreaterThanMaxValue` if the new
    ///      fee exceeds `MAX_LIMIT_ORDER_FEE`.
    /// @param _limitOrderFee The new fee value in 18-decimal WAD (e.g. 1e16 = 1%).
    /// @custom:event Emits `LimitOrderFeeChange(uint256 previousLimitOrderFee, uint256 newLimitOrderFee)`.
    function setLimitOrderFee(uint256 _limitOrderFee) external;

    /* Getters
     *********************************************************************************************************/

    /// @notice Retrieves the current fee recipient.
    /// @dev This function returns the address that receives protocol fees.
    /// @return feeRecipient The address of the current fee recipient.
    function feeRecipient() external view returns (address feeRecipient);

    /// @notice Retrieves the current router address.
    /// @return router The address of the current router contract.
    function router() external view returns (address router);

    /// @notice Retrieves the current limit-order fee.
    /// @return The current protocol limit-order fee in 18-decimal WAD.
    function getLimitOrderFee() external view returns (uint256);

    /// @notice Computes a unique hash for an order
    /// @param order The order to hash
    /// @return The order's hash as bytes32
    function hashOrder(Order memory order) external view returns (bytes32);

    /// @notice Gets processed order statuses
    /// @dev Adjusts raw remaining values by subtracting one to confirm order existence
    /// @param orderHashes Array of order hashes to query
    /// @return remainings Processed remaining amounts for each order
    /// @return filledAmounts Filled amounts for each order
    function orderStatuses(bytes32[] calldata orderHashes)
        external
        view
        returns (uint256[] memory remainings, uint256[] memory filledAmounts);

    /// @notice Gets raw remaining and filled amounts for orders
    /// @param orderHashes Array of order hashes to query
    /// @return remainingsRaw Raw remaining amounts for each order
    /// @return filledAmounts Filled amounts for each order
    function orderStatusesRaw(bytes32[] calldata orderHashes)
        external
        view
        returns (uint256[] memory remainingsRaw, uint256[] memory filledAmounts);

    /* Executions
     *********************************************************************************************************/

    /// @notice Cancels multiple orders in a batch.
    /// @dev Loops through orders and cancels each one.
    /// @param orders Array of orders to cancel.
    /// @custom:event Emits `OrderCanceled(address maker, bytes32 orderHash)` for each canceled order.
    function cancelBatch(Order[] calldata orders) external;

    /// @notice Cancels a single order.
    /// @dev Sets order status as filled and emits an event.
    /// @param order The order to cancel.
    /// @custom:event Emits `OrderCanceled(address maker, bytes32 orderHash)`.
    function cancelSingle(Order calldata order) external;

    /// @notice Pre-signs multiple orders on-chain.
    /// @dev Loops through orders and pre-signs each one. Reverts if any order fails its checks.
    /// @param orders Array of orders to pre-sign.
    /// @custom:event Emits `OrderPreSigned(bytes32 orderHash, address maker)` for each pre-signed order.
    function preSignBatch(Order[] calldata orders) external;

    /// @notice Pre-signs a single order on-chain by setting the remaining amount to makingAmount + 1.
    /// @dev Allows fillers to skip EIP-712 signature verification for this order. The caller must be
    ///      the order's maker, the order must pass basic requirements (expiry/maturity/nonce), and the
    ///      order must not already exist (no prior fill, presign, or cancellation).
    /// @param order The order to pre-sign.
    /// @custom:event Emits `OrderPreSigned(bytes32 orderHash, address maker)`.
    function preSignSingle(Order calldata order) external;

    /// @notice Validates orders, updates their status, and calculates aggregate totals.
    /// @dev Must be called by the authorized router contract only.
    /// @dev All orders must share the same PT and a compatible OrderType.
    /// @param params Array of FillOrderParams containing order details and fill amounts
    /// @return validatedResults Array of OrderResult structs with actual amounts per order
    /// @return takerToken Address of the token being taken from the taker
    /// @return totalTaking Aggregate takerToken required (fees included)
    /// @return totalFees Aggregate fees collected from the transaction
    function validateOrdersAndUpdateStatus(FillOrderParams[] calldata params)
        external
        returns (OrderResult[] memory validatedResults, address takerToken, uint256 totalTaking, uint256 totalFees);

    /// @notice Settles validated orders: checks engine balance, pays makers, collects fees,
    ///         and sweeps remaining IBT/PT/YT to the receiver.
    /// @dev Must be called by the authorized router after `validateOrdersAndUpdateStatus` and
    ///      after the router has transferred the taker input token to this contract.
    /// @param receiver Address that receives remaining tokens after maker settlement and fees.
    /// @param params Order parameters (used to route maker payments and derive PT address).
    /// @param validatedResults Results returned by `validateOrdersAndUpdateStatus`.
    /// @param takerToken Token owed to makers and fee recipient.
    /// @param totalTaking Total takerToken required (must be held by this contract).
    /// @param totalFees Total fees to send to feeRecipient.
    /// @custom:event Emits `OrderFilled(bytes32 orderHash, uint256 actualMaking)` for each filled order.
    function transferPostValidation(
        address receiver,
        FillOrderParams[] memory params,
        OrderResult[] memory validatedResults,
        address takerToken,
        uint256 totalTaking,
        uint256 totalFees
    ) external;

    /// @notice Fills orders end-to-end: validates, pulls maker funds, handles optional
    ///         protocol deposit/withdraw, settles makers, collects fees, and returns
    ///         remaining balances to the receiver.
    /// @dev Must be called by the authorized router, which has already transferred the
    ///      taker input token to this contract before the call.
    /// @dev All orders in the batch must share the same PT and a compatible OrderType.
    /// @param receiver Address that receives the taker's output tokens (and any dust).
    /// @param params Array of FillOrderParams containing order details and fill amounts.
    /// @param data ABI-encoded address of the taker's input token.
    /// @custom:event Emits `OrderFilled(bytes32 orderHash, uint256 actualMaking)` for each filled order.
    function fillOrders(address receiver, FillOrderParams[] memory params, bytes memory data) external;
}
