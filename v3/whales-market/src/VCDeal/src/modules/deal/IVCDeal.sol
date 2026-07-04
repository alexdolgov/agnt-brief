// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

interface IVCDeal {
    // Enums
    enum DealStatus {
        None,
        Active,
        Inactive,
        Ended,
        Transferred
    }

    enum OrderStatus {
        None,
        Purchased,
        Refunded
    }

    // Structs
    struct Deal {
        address recipient;
        uint48 startTime;
        uint48 endTime;
        uint256 minimumAmount;
        uint256 maximumAmount;
        uint256 targetAmount;
        uint256 purchasedAmount; // The total amount of tokens purchased for the deal
        address[] paymentTokens;
        DealStatus status;
    }

    struct Order {
        bytes32 dealId;
        address user;
        address paymentToken;
        uint256 amount;
        OrderStatus status;
        string recipient;
    }

    struct CreateDealParams {
        bytes32 dealId;
        address recipient;
        address[] paymentTokens;
        uint48 startTime;
        uint48 endTime;
        uint256 minimumAmount;
        uint256 maximumAmount;
        uint256 targetAmount;
        bytes signature;
        uint256 deadline;
    }

    struct CreateOrderParams {
        bytes32 dealId;
        bytes32 orderId;
        address paymentToken;
        uint256 amount;
        bytes signature;
        uint256 deadline;
        string recipient;
    }

    // Errors
    /// @notice Thrown when the deal is not active
    error DealNotActive();
    /// @notice Thrown when the deal is not transferrable
    error DealNotTransferrable();
    /// @notice Thrown when the deal status is invalid
    error InvalidDealStatus(bytes32 dealId, DealStatus status);
    /// @notice Thrown when the recipient address is invalid (zero address)
    error InvalidRecipient();
    /// @notice Thrown when no accepted tokens are provided for a deal
    error NoAcceptedTokens();
    /// @notice Thrown when attempting to create a deal that already exists
    error DealAlreadyExists();
    /// @notice Thrown when the signature has expired
    error SignatureExpired();
    /// @notice Thrown when the provided signature is invalid
    error InvalidSignature();
    /// @notice Thrown when the amount is invalid (zero or exceeds limits)
    error InvalidAmount();
    /// @notice Thrown when the payment token is not accepted for the deal
    error InvalidPaymentToken();
    /// @notice Thrown when an invalid address is provided
    error InvalidAddress();
    /// @notice Thrown when the requested deal does not exist
    error DealNotFound();
    /// @notice Thrown when the deal has not started
    error DealNotStarted();
    /// @notice Thrown when the deal has ended
    error DealAlreadyEnded();
    /// @notice Thrown when the target amount is invalid
    error InvalidTargetAmount();
    /// @notice Thrown when the time is invalid
    error InvalidTimestamp();
    /// @notice Thrown when the target amount is reached
    error TargetReached();
    /// @notice Thrown when the deal has not ended
    error DealNotEnded();
    /// @notice Thrown when the amount exceeds the maximum purchase amount
    error AmountExceedsMaximumPurchaseAmount();
    /// @notice Thrown when the token is already accepted
    error TokenAlreadyAccepted();
    /// @notice Thrown when the token is not accepted
    error TokenNotAccepted();
    /// @notice Thrown when the order is already purchased
    error OrderAlreadyPurchased();
    /// @notice Thrown when the order ids are invalid
    error InvalidOrderIds();
    /// @notice Thrown when the order status is invalid
    error InvalidOrderStatus(bytes32 orderId, OrderStatus status);
    /// @notice Thrown when the minimum amount is invalid
    error InvalidMinimumAmount();
    /// @notice Thrown when the maximum amount is invalid
    error InvalidMaximumAmount();
    /// @notice Thrown when the commission fee is invalid
    error InvalidCommissionFee();

    // Events
    /// @notice Emitted when a new deal is created
    /// @param dealId Unique identifier for the deal
    /// @param recipient Address that will receive the funds
    /// @param acceptedTokens Array of accepted payment tokens
    event DealCreated(bytes32 indexed dealId, address indexed recipient, address[] acceptedTokens);

    /// @notice Emitted when a deal is purchased
    /// @param dealId Unique identifier for the deal
    /// @param orderId Unique identifier for the order
    /// @param user Address of the user making the purchase
    /// @param paymentToken Token used for payment
    /// @param amount Amount paid
    /// @param timestamp When the purchase occurred
    event OrderCreated(
        bytes32 indexed dealId,
        bytes32 indexed orderId,
        address indexed user,
        string recipient,
        address paymentToken,
        uint256 amount,
        uint48 timestamp
    );

    event PaymentTokenAdded(address indexed token);

    event PaymentTokenRemoved(address indexed token);

    /// @notice Event emitted when a deal is ended
    /// @param dealId Unique identifier for the deal
    /// @param orderIds Array of order ids that were refunded
    event DealEnded(bytes32 indexed dealId, bytes32[] orderIds);

    /// @notice Event emitted when tokens are transferred to VC
    event TokensTransferredToVC(
        bytes32 indexed dealId,
        address indexed token,
        address indexed recipient,
        uint256 amount,
        uint256 commissionAmount
    );

    /// @notice Event emitted when a deal is transferred to VC
    /// @param dealId Unique identifier for the deal
    event TransferredToVC(bytes32 indexed dealId);

    /// @notice Event emitted when the status of a deal is toggled
    /// @param dealId Unique identifier for the deal
    /// @param oldStatus Old status of the deal
    /// @param newStatus New status of the deal
    event DealStatusToggled(bytes32 indexed dealId, DealStatus oldStatus, DealStatus newStatus);

    /// @notice Event emitted when the commission fee is updated
    /// @param oldCommissionFee Old commission fee
    /// @param newCommissionFee New commission fee
    event CommissionFeeUpdated(uint96 oldCommissionFee, uint96 newCommissionFee);

    /// @notice Event emitted when the fee recipient is updated
    /// @param oldFeeRecipient Old fee recipient
    /// @param newFeeRecipient New fee recipient
    event FeeRecipientUpdated(address oldFeeRecipient, address newFeeRecipient);

    // Functions
    /// @notice Creates a new deal
    /// @param params Parameters for creating a deal
    function createDeal(CreateDealParams calldata params) external;

    /// @notice Purchases an existing deal
    /// @param params Parameters for purchasing a deal
    function createOrder(CreateOrderParams calldata params) external;

    /// @notice Transfers tokens to the VC recipient
    /// @param dealId The unique identifier of the deal
    function transferToVC(bytes32 dealId) external;

    /// @notice Set a deal as ended
    /// @param dealId The unique identifier of the deal
    /// @param orderIds Array of order ids that were refunded
    function setEndDeal(bytes32 dealId, bytes32[] calldata orderIds) external;

    /// @notice Adds a new accepted token to the deal
    /// @param token Address of the token to add
    function addAcceptedToken(address token) external;

    /// @notice Removes an accepted token from the deal
    /// @param token Address of the token to remove
    function removeAcceptedToken(address token) external;

    /// @notice Toggles the status of a deal
    /// @param dealId Unique identifier for the deal
    /// @param status New status of the deal
    function toggleDealStatus(bytes32 dealId, DealStatus status) external;

    /// @notice Sets the commission fee for a deal
    /// @param commissionFee Commission fee
    function setCommissionFee(uint96 commissionFee) external;

    /// @notice Sets the fee recipient for a deal
    /// @param feeRecipient Fee recipient
    function setFeeRecipient(address feeRecipient) external;

    /// @notice Returns the deal data for a given dealId
    /// @param dealId Unique identifier for the deal
    /// @return deal Deal data
    function getDeal(bytes32 dealId) external view returns (Deal memory deal);

    /// @notice Returns the order data for a given orderId
    /// @param orderId Unique identifier for the order
    /// @return order Order data
    function getOrder(bytes32 orderId) external view returns (Order memory order);

    /// @notice Returns the amount of tokens purchased for a given deal and token
    /// @param dealId Unique identifier for the deal
    /// @param token Address of the token
    /// @return amount Amount of tokens purchased
    function getDealPurchasedAmount(bytes32 dealId, address token) external view returns (uint256 amount);

    /// @notice Returns the orders for a given user
    /// @param dealId Unique identifier for the deal
    /// @param user Address of the user
    /// @return orders Array of order ids
    function getUserOrders(bytes32 dealId, address user) external view returns (bytes32[] memory orders);

    /// @notice Returns whether a token is accepted for a given deal
    /// @param token Address of the token
    /// @return isAccepted Whether the token is accepted
    function isTokenAccepted(address token) external view returns (bool isAccepted);

    /// @notice Returns the commission fee
    /// @return commissionFee Commission fee
    function commissionFee() external view returns (uint96 commissionFee);

    /// @notice Returns the fee recipient
    /// @return feeRecipient Fee recipient
    function feeRecipient() external view returns (address feeRecipient);

    /// @notice Returns the chain ID
    /// @return chainId Chain ID
    function CHAIN_ID() external view returns (uint256 chainId);
}
