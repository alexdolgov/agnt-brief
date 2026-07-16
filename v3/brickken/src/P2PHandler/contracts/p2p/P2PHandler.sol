// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {EIP712} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {AccessControlEnumerable} from "@openzeppelin/contracts/access/AccessControlEnumerable.sol";
import {IAccessControlEnumerable} from "@openzeppelin/contracts/access/IAccessControlEnumerable.sol";

contract P2PHandler is Pausable, ReentrancyGuard, EIP712, AccessControlEnumerable {
    using SafeERC20 for IERC20Metadata;
    using ECDSA for bytes32;

    uint256 constant ONE = 1e18;

    enum OrderStatus {
        EMPTY, // Order not created
        REJECTED, // Token issuer rejected the order placement
        EXPIRED, // Order has expired
        PENDING, // Order has been created and it's in the exclusivity window
        ACTIVE, // Order is ready to be filled outside of its exclusivity window
        PARTIALLY_FILLED, // Order has been filled partially
        FILLED // Order has been fully filled
    }

    struct FillerInfo {
        address filler;
        uint256 amountFilled;
    }

    struct InitOrder {
        address underlyingToken;
        address paymentToken;
        bool isBuyOrder;
        uint256 orderAmount;
        uint256 pricePerToken; // with 18 decimals
        uint256 duration;
        uint256 exclusivityPeriod;
        Fees fees;
    }

    struct OrderFilling {
        uint256 amountFilled;
        mapping(address => uint256) filledAmounts; // filler => amount
        address[] fillers;
    }

    struct Fees {
        address[] feeRecipients;
        uint256[] feePercentages; // with 18 decimals
        bool isFeeOnFills;
    }

    struct PlacedOrder {
        address placer;
        bool rejected; // Set by rejectOrder() - cannot be calculated
        bool resolved; // True when tokens returned to placer (expired/rejected/filled)
        uint88 createdAt; // uint88 is 11 bytes (enough for timestamps until year 9800+)
        uint88 exclusiveUntil;
        uint88 expiresAt;
        uint88 minFillableUnit; // Minimum remaining amount
        InitOrder order;
        OrderFilling filling;
    }

    event OrderPlaced(uint256 indexed orderId, bytes32 digest, address indexed placer);
    event OrderDurationChanged(uint256 indexed orderId, uint256 indexed newDuration);
    event OrderFilled(uint256 indexed orderId);
    event OrderActivated(uint256 indexed orderId);
    event OrderExpired(uint256 indexed orderId);
    event OrderRejected(uint256 indexed orderId);
    event Fill(
        uint256 indexed orderId,
        address indexed beneficiary,
        bytes32 indexed digest,
        uint256 amountFilled,
        uint256 amountUnfilled
    );
    event TokensRecovered(address indexed token, address indexed to, uint256 amount);

    error InvalidTimestamp(uint256 timestamp);
    error NotZeroValue();
    error InvalidOrderDuration(uint256 duration);
    error InvalidOrderStatus(uint256 orderId, OrderStatus currentOrderStatus);
    error OverBought(uint256 orderAmount, uint256 amountFilled);
    error InvalidEditor(address caller);
    error InvalidSignature();
    error OrderNotFound(uint256 orderId);
    error InvalidAddress();
    error UserIsNotWhitelisted(address caller);
    error UserIsNotRejecterRole(address caller);
    error UserIsNotExclusiveFiller(address caller);
    error CannotModifyFinalizedOrder(uint256 orderId);
    error FeesExceed100Percent(uint256 totalFeePercentage);
    error LengthMismatch();
    error TokenNotEnabled(address token);
    error OrderAlreadyResolved(uint256 orderId);

    // EIP-712 Domain
    bytes32 public constant PLACE_ORDER_TYPEHASH = keccak256(
        "PlaceOrder(address placer,address underlyingToken,address paymentToken,bool isBuyOrder,uint256 orderAmount,uint256 pricePerToken,uint256 duration,uint256 exclusivityPeriod,bytes32 feeRecipientsHash,bytes32 feePercentagesHash,bool isFeeOnFills,uint256 nonce)"
    );

    bytes32 public constant FILL_ORDER_TYPEHASH = keccak256(
        "FillOrder(uint256 orderId,address filler,address onBehalfOf,uint256 amount,uint256 nonce)"
    );

    // Roles to be set on the underlyingToken contract
    bytes32 public constant TOKEN_WHITELIST_ROLE = keccak256(abi.encode("TOKEN_WHITELIST_ROLE"));
    bytes32 public constant TOKEN_WHITELIST_ADMIN_ROLE = keccak256(abi.encode("TOKEN_WHITELIST_ADMIN_ROLE"));

    // Roles to be set on address(this)
    bytes32 public constant P2P_OFFCHAIN_SIGNER = keccak256(abi.encode("P2P_OFFCHAIN_SIGNER"));

    // These are only used in exclusiveRolesPerToken mapping
    bytes32 public constant P2P_REJECTER_ROLE = keccak256(abi.encode("P2P_REJECTER_ROLE"));
    bytes32 public constant P2P_EXCLUSIVE_FILLER_ROLE = keccak256(abi.encode("P2P_EXCLUSIVE_FILLER_ROLE"));

    mapping(uint256 => PlacedOrder) internal placedOrders;
    mapping(address => uint256) public placeOrderNonces;
    mapping(address => uint256) public fillOrderNonces;
    mapping(address token => mapping(bytes32 exclusiveRole => mapping(address user => bool enabled))) public
        exclusiveRolesPerToken;
    mapping(address token => bool enabled) public enabledTokens;

    uint256 public ordersCount;

    constructor(address offchainSigner, address defaultAdmin) EIP712("P2PHandler", "1") {
        _grantRole(DEFAULT_ADMIN_ROLE, defaultAdmin);
        _grantRole(P2P_OFFCHAIN_SIGNER, offchainSigner);
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // STATUS CALCULATION
    // ═══════════════════════════════════════════════════════════════════════════

    /**
     * @notice Calculate the current status of an order based on timestamps and state
     * @dev This is the single source of truth for order status - no stored status
     * @param orderId The order ID
     * @return OrderStatus The calculated status
     */
    function getOrderStatus(uint256 orderId) public view returns (OrderStatus) {
        PlacedOrder storage order = placedOrders[orderId];

        // EMPTY: Order doesn't exist
        if (order.placer == address(0)) return OrderStatus.EMPTY;

        // REJECTED: Explicitly rejected during exclusivity
        if (order.rejected) return OrderStatus.REJECTED;

        // FILLED: All tokens sold (remaining can't purchase a single unit of the token)
        uint256 remaining = order.order.orderAmount - order.filling.amountFilled;
        if (remaining == 0 || remaining < order.minFillableUnit) return OrderStatus.FILLED;

        // EXPIRED: Past expiration (not perpetual)
        if (order.expiresAt > 0 && block.timestamp >= order.expiresAt) return OrderStatus.EXPIRED;

        // PARTIALLY_FILLED: Some tokens sold, not expired
        if (order.filling.amountFilled > 0) return OrderStatus.PARTIALLY_FILLED;

        // PENDING: Still in exclusivity window
        if (block.timestamp < order.exclusiveUntil) return OrderStatus.PENDING;

        // ACTIVE: Past exclusivity, not expired, no fills
        return OrderStatus.ACTIVE;
    }

    /**
     * @notice Check if an order is in PENDING status
     * @param orderId The order ID
     * @return True if order is PENDING
     */
    function isPending(uint256 orderId) external view returns (bool) {
        return getOrderStatus(orderId) == OrderStatus.PENDING;
    }

    /**
     * @notice Check if an order is in ACTIVE status
     * @param orderId The order ID
     * @return True if order is ACTIVE
     */
    function isActive(uint256 orderId) external view returns (bool) {
        return getOrderStatus(orderId) == OrderStatus.ACTIVE;
    }

    /**
     * @notice Check if an order is EXPIRED
     * @param orderId The order ID
     * @return True if order is EXPIRED
     */
    function isExpired(uint256 orderId) external view returns (bool) {
        return getOrderStatus(orderId) == OrderStatus.EXPIRED;
    }

    /**
     * @notice Check if an order is FILLED
     * @param orderId The order ID
     * @return True if order is FILLED
     */
    function isFilled(uint256 orderId) external view returns (bool) {
        return getOrderStatus(orderId) == OrderStatus.FILLED;
    }

    /**
     * @notice Check if an order is REJECTED
     * @param orderId The order ID
     * @return True if order is REJECTED
     */
    function isRejected(uint256 orderId) external view returns (bool) {
        return getOrderStatus(orderId) == OrderStatus.REJECTED;
    }

    /**
     * @notice Check if an order is PARTIALLY_FILLED
     * @param orderId The order ID
     * @return True if order is PARTIALLY_FILLED
     */
    function isPartiallyFilled(uint256 orderId) external view returns (bool) {
        return getOrderStatus(orderId) == OrderStatus.PARTIALLY_FILLED;
    }

    /**
     * @notice Check if an order has been resolved (tokens returned to placer)
     * @param orderId The order ID
     * @return True if order is resolved
     */
    function isResolved(uint256 orderId) external view returns (bool) {
        return placedOrders[orderId].resolved;
    }

    /**
     * @notice Check if an order can be filled (PENDING, ACTIVE, or PARTIALLY_FILLED)
     * @param orderId The order ID
     * @return True if order is fillable
     */
    function isFillable(uint256 orderId) public view returns (bool) {
        OrderStatus status = getOrderStatus(orderId);
        return status == OrderStatus.PENDING || status == OrderStatus.ACTIVE || status == OrderStatus.PARTIALLY_FILLED;
    }

    // ═══════════════════════════════════════════════════════════════════════════
    // GETTERS
    // ═══════════════════════════════════════════════════════════════════════════

    /**
     * @notice Get the current nonce for a user
     * @param user The user address
     * @return placedOrdersNonce Nonce for placing orders
     * @return fillOrdersNonce Nonce for filling orders
     */
    function getNonces(address user) external view returns (uint256 placedOrdersNonce, uint256 fillOrdersNonce) {
        return (placeOrderNonces[user], fillOrderNonces[user]);
    }

    /**
     * @notice Get order details
     * @param orderId The order ID
     * @return status Order status
     * @return placer Order placer address
     * @return underlyingToken token being sold/bought
     * @return paymentToken token used for payment
     * @return orderAmount Total amount to sell
     * @return pricePerToken Price per token
     * @return amountFilled Total amount which has been filled
     * @return isBuyOrder whether it is a buy order or not
     * @return rejected Whether the order was rejected
     * @return resolved Whether the order has been resolved (tokens returned)
     * @return createdAt Creation timestamp
     * @return exclusiveUntil Exclusivity end timestamp
     * @return expiresAt Expiration timestamp
     */
    function getOrder(uint256 orderId)
        external
        view
        returns (
            OrderStatus status,
            address placer,
            address underlyingToken,
            address paymentToken,
            uint256 orderAmount,
            uint256 pricePerToken,
            uint256 amountFilled,
            bool isBuyOrder,
            bool rejected,
            bool resolved,
            uint256 createdAt,
            uint256 exclusiveUntil,
            uint256 expiresAt
        )
    {
        PlacedOrder storage order = placedOrders[orderId];
        return (
            getOrderStatus(orderId),
            order.placer,
            order.order.underlyingToken,
            order.order.paymentToken,
            order.order.orderAmount,
            order.order.pricePerToken,
            order.filling.amountFilled,
            order.order.isBuyOrder,
            order.rejected,
            order.resolved,
            order.createdAt,
            order.exclusiveUntil,
            order.expiresAt
        );
    }

    /**
     * @notice Get all fillers for a specific order
     * @param orderId The order ID
     * @return Array of filler addresses
     */
    function getOrderFillers(uint256 orderId) external view returns (address[] memory) {
        return placedOrders[orderId].filling.fillers;
    }

    /**
     * @notice Get all fillers with their filled amounts for a specific order
     * @param orderId The order ID
     * @return fillerInfos Array of FillerInfo structs containing filler addresses and amounts
     */
    function getOrderFillersWithAmounts(uint256 orderId) external view returns (FillerInfo[] memory fillerInfos) {
        PlacedOrder storage order = placedOrders[orderId];
        uint256 fillersCount = order.filling.fillers.length;

        fillerInfos = new FillerInfo[](fillersCount);

        for (uint256 i = 0; i < fillersCount;) {
            address filler = order.filling.fillers[i];
            fillerInfos[i] = FillerInfo({filler: filler, amountFilled: order.filling.filledAmounts[filler]});
            unchecked {
                ++i;
            }
        }

        return fillerInfos;
    }

    /**
     * @notice Get the filled amount for a specific filler in an order
     * @param orderId The order ID
     * @param filler The filler address
     * @return The amount filled by the filler
     */
    function getFilledAmount(uint256 orderId, address filler) external view returns (uint256) {
        return placedOrders[orderId].filling.filledAmounts[filler];
    }

    /**
     * @notice Calculate amounts of underlying and payment token to be traded according to order type and fee directions
     * @dev The 'amount' parameter is always the TOTAL amount from the user's perspective:
     *      - If isBuyOrder=false, `amount` is in paymentToken units
     *      - If isBuyOrder=true, `amount` is in underlyingToken units
     * @param orderId The order ID
     * @param amount The input amount from user's perspective (total including all fees if applicable)
     * @return paymentAmount The total payment token amount to be traded
     * @return placerProceeds The amount the placer receives (net of fees if placer pays)
     * @return paymentFill The amount of paymentToken used to fill in the accounting for the order
     * @return underlyingFill The total underlying token amount to be traded, also representing the amount in the order accounting
     * @return feeAmounts Array of fee amounts to be sent to fee recipients
     */
    function previewFill(uint256 orderId, uint256 amount)
        public
        view
        returns (
            uint256 paymentAmount,
            uint256 placerProceeds,
            uint256 paymentFill,
            uint256 underlyingFill,
            uint256[] memory feeAmounts
        )
    {
        PlacedOrder storage order = placedOrders[orderId];
        require(order.placer != address(0), OrderNotFound(orderId));

        uint8 paymentTokenDecimals = IERC20Metadata(order.order.paymentToken).decimals();
        uint8 underlyingTokenDecimals = IERC20Metadata(order.order.underlyingToken).decimals();

        uint256 feeRecipientsLength = order.order.fees.feeRecipients.length;
        feeAmounts = new uint256[](feeRecipientsLength);
        uint256 totalFees;

        if (order.order.isBuyOrder == false) {
            // Since it's a sell order, `amount` is in paymentToken units, i,e USDC, and so it is `totalFees`
            for (uint256 i = 0; i < feeRecipientsLength;) {
                feeAmounts[i] = (order.order.fees.feePercentages[i] * amount) / ONE;
                totalFees += feeAmounts[i]; // Notice that totalFees here can be either an amount of underlying or paymentToken
                unchecked {
                    ++i;
                }
            }
            
            paymentFill = amount;
            paymentAmount = amount;
            placerProceeds = amount - totalFees;

            if (order.order.fees.isFeeOnFills) {
                paymentAmount = amount + totalFees;
                placerProceeds = amount;
            }

            uint256 basePayment18 = _to18(paymentFill, paymentTokenDecimals);
            uint256 tokens18 = (basePayment18 * ONE) / order.order.pricePerToken;
            underlyingFill = _from18(tokens18, underlyingTokenDecimals);
        } else {
            // Since it's a buy order, `amount` is in underlyingToken units, i,e an STO token, and so `totalFees` must be converted
            uint256 amountConverted18 = _to18(amount, underlyingTokenDecimals);
            uint256 amountConverted = _from18((amountConverted18 * order.order.pricePerToken) / ONE, paymentTokenDecimals);    
            
            for (uint256 i = 0; i < feeRecipientsLength;) {
                feeAmounts[i] = (order.order.fees.feePercentages[i] * amountConverted) / ONE;
                totalFees += feeAmounts[i]; // Notice that totalFees here can be either an amount of underlying or paymentToken
                unchecked {
                    ++i;
                }
            }
            
            underlyingFill = amount; // Since we charge fee in payment token, this is always amount in this case
            placerProceeds = underlyingFill; // In a buy order, the placer earns underlyingToken, no fees deducted in this denomination
            paymentFill = amountConverted;
            paymentAmount = order.order.fees.isFeeOnFills ? paymentFill - totalFees : paymentFill;
        }
    }

    // ADMIN FUNCTIONS

    /**
     * @notice Pause the contract
     */
    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    /**
     * @notice Unpause the contract
     */
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /**
     * @notice Recover stuck tokens from the contract
     * @param token The token address to recover
     * @param to The recipient address
     * @param amount The amount to recover
     */
    function recoverTokens(address token, address to, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20Metadata(token).safeTransfer(to, amount);
        emit TokensRecovered(token, to, amount);
    }

    // USER FUNCTIONS

    /**
     * @notice Grant P2P roles on underlyingToken contract by setting the nested exclusiveRolesPerToken mapping
     * @param underlyingToken The token being sold/bought in the P2P orders
     * @param exclusiveFiller Address to be granted P2P_EXCLUSIVE_FILLER_ROLE (can fill during exclusivity)
     * @param orderRejecter Address to be granted P2P_REJECTER_ROLE (can reject orders during exclusivity)
     */
    function grantP2PRolesForToken(address underlyingToken, address exclusiveFiller, address orderRejecter) external {
        require(
            IAccessControlEnumerable(underlyingToken).hasRole(TOKEN_WHITELIST_ADMIN_ROLE, msg.sender)
                || hasRole(DEFAULT_ADMIN_ROLE, msg.sender) || hasRole(P2P_OFFCHAIN_SIGNER, msg.sender),
            InvalidEditor(msg.sender)
        );

        if (exclusiveFiller != address(0)) {
            exclusiveRolesPerToken[underlyingToken][P2P_EXCLUSIVE_FILLER_ROLE][exclusiveFiller] = true;
        }
        if (orderRejecter != address(0)) exclusiveRolesPerToken[underlyingToken][P2P_REJECTER_ROLE][orderRejecter] = true;
        enabledTokens[underlyingToken] = true;
    }

    /**
     * @notice Revoke P2P roles on underlyingToken contract by setting the nested exclusiveRolesPerToken mapping
     * @param underlyingToken The token being sold/bought in the P2P orders
     * @param exclusiveFiller Address to be revoked P2P_EXCLUSIVE_FILLER_ROLE
     * @param orderRejecter Address to be revoked P2P_REJECTER_ROLE
     */
    function revokeP2PRolesForToken(address underlyingToken, address exclusiveFiller, address orderRejecter) external {
        require(
            IAccessControlEnumerable(underlyingToken).hasRole(TOKEN_WHITELIST_ADMIN_ROLE, msg.sender)
                || hasRole(DEFAULT_ADMIN_ROLE, msg.sender) || hasRole(P2P_OFFCHAIN_SIGNER, msg.sender),
            InvalidEditor(msg.sender)
        );

        if (exclusiveFiller != address(0)) {
            exclusiveRolesPerToken[underlyingToken][P2P_EXCLUSIVE_FILLER_ROLE][exclusiveFiller] = false;
        }
        if (orderRejecter != address(0)) exclusiveRolesPerToken[underlyingToken][P2P_REJECTER_ROLE][orderRejecter] = false;
        enabledTokens[underlyingToken] = false;
    }

    /**
     * @notice Place a buy order with signature authorization
     * @param order The order details
     * @param signature The signature from the authorized signer
     */
    function placeOrder(InitOrder memory order, bytes memory signature) external nonReentrant whenNotPaused {
        address placer = msg.sender;

        require(order.underlyingToken != address(0), InvalidAddress());
        require(order.paymentToken != address(0), InvalidAddress());
        require(order.orderAmount > 0 && order.pricePerToken > 0, NotZeroValue());
        require(enabledTokens[order.underlyingToken], TokenNotEnabled(order.underlyingToken));

        require(order.fees.feeRecipients.length == order.fees.feePercentages.length, LengthMismatch());

        require(
            IAccessControlEnumerable(order.underlyingToken).hasRole(TOKEN_WHITELIST_ROLE, placer),
            UserIsNotWhitelisted(placer)
        );

        // Hash the arrays for EIP-712
        bytes32 feeRecipientsHash = keccak256(abi.encodePacked(order.fees.feeRecipients));
        bytes32 feePercentagesHash = keccak256(abi.encodePacked(order.fees.feePercentages));

        // Verify signature
        bytes32 digest = _hashTypedDataV4(
            keccak256(
                abi.encode(
                    PLACE_ORDER_TYPEHASH,
                    placer,
                    order.underlyingToken,
                    order.paymentToken,
                    order.isBuyOrder,
                    order.orderAmount,
                    order.pricePerToken,
                    order.duration,
                    order.exclusivityPeriod,
                    feeRecipientsHash,
                    feePercentagesHash,
                    order.fees.isFeeOnFills,
                    placeOrderNonces[placer]
                )
            )
        );

        address signer = digest.recover(signature);

        require(hasRole(P2P_OFFCHAIN_SIGNER, signer), InvalidSignature());

        // Increment nonce
        unchecked {
            placeOrderNonces[placer]++;
        }

        // Validate duration
        require(order.duration == 0 || order.duration >= order.exclusivityPeriod, InvalidOrderDuration(order.duration));

        uint256 totalFeePercentage;
        uint256 feesLength = order.fees.feePercentages.length;
        for (uint256 i = 0; i < feesLength;) {
            totalFeePercentage += order.fees.feePercentages[i];
            unchecked {
                ++i;
            }
        }

        require(totalFeePercentage <= ONE, FeesExceed100Percent(totalFeePercentage));

        uint256 creationTimestamp = block.timestamp;
        uint256 exclusivityTimestamp = creationTimestamp + order.exclusivityPeriod;
        uint256 expirationTimestamp = order.duration == 0 ? 0 : creationTimestamp + order.duration;

        unchecked {
            ordersCount++;
        }

        PlacedOrder storage newOrder = placedOrders[ordersCount];
        newOrder.order = order;
        newOrder.placer = placer;
        // forge-lint: disable-next-line(unsafe-typecast)
        newOrder.createdAt = uint88(creationTimestamp);
        // forge-lint: disable-next-line(unsafe-typecast)
        newOrder.exclusiveUntil = uint88(exclusivityTimestamp);
        // forge-lint: disable-next-line(unsafe-typecast)
        newOrder.expiresAt = uint88(expirationTimestamp);
        // forge-lint: disable-next-line(unsafe-typecast)
        newOrder.minFillableUnit = uint88(_resolution(order));
        emit OrderPlaced(ordersCount, digest, placer);

        // Transfer tokens from placer to contract
        address tokenToTransfer = newOrder.order.isBuyOrder ? order.paymentToken : order.underlyingToken;

        // If it's a buy order it means that placer puts payment tokens in. If fee is on placer, we charge that upfront.
        uint256 totalFee = !newOrder.order.fees.isFeeOnFills && newOrder.order.isBuyOrder ? (totalFeePercentage * order.orderAmount) / ONE : 0;
        uint256 amountToTransfer =  order.orderAmount + totalFee;

        IERC20Metadata(tokenToTransfer).safeTransferFrom(placer, address(this), amountToTransfer);
    }

    /**
     * @notice Reject an order and return unfilled tokens to the placer
     * @dev Can be called on any fillable order (PENDING, ACTIVE, or PARTIALLY_FILLED)
     * @dev Authorized callers: placer, P2P_REJECTER_ROLE for the token, or P2P_OFFCHAIN_SIGNER
     * @param orderId The order ID
     */
    function rejectOrder(uint256 orderId) external whenNotPaused {
        PlacedOrder storage order = placedOrders[orderId];

        OrderStatus currentStatus = getOrderStatus(orderId);
        require(isFillable(orderId), InvalidOrderStatus(orderId, currentStatus));

        require(
            msg.sender == order.placer
                || exclusiveRolesPerToken[order.order.underlyingToken][P2P_REJECTER_ROLE][msg.sender]
                || hasRole(P2P_OFFCHAIN_SIGNER, msg.sender),
            UserIsNotRejecterRole(msg.sender)
        );

        order.rejected = true;
        _resolveOrder(order, orderId);

        emit OrderRejected(orderId);
    }

    /**
     * @notice Resolve an expired order and return remaining tokens
     * @param orderId The order ID
     */
    function expireOrder(uint256 orderId) external whenNotPaused {
        PlacedOrder storage order = placedOrders[orderId];
        require(!order.resolved, OrderAlreadyResolved(orderId));

        OrderStatus currentStatus = getOrderStatus(orderId);
        require(currentStatus == OrderStatus.EXPIRED, InvalidOrderStatus(orderId, currentStatus));

        order.resolved = true;
        _resolveOrder(order, orderId);
        emit OrderExpired(orderId);
    }

    /**
     * @notice Modify order duration
     * @param orderId The order ID
     * @param newDuration The new duration in seconds
     */
    function modifyOrder(uint256 orderId, uint256 newDuration) external whenNotPaused {
        PlacedOrder storage order = placedOrders[orderId];

        OrderStatus currentStatus = getOrderStatus(orderId);
        require(
            currentStatus == OrderStatus.PENDING || currentStatus == OrderStatus.ACTIVE
                || currentStatus == OrderStatus.PARTIALLY_FILLED,
            CannotModifyFinalizedOrder(orderId)
        );

        require(order.placer == msg.sender || hasRole(P2P_OFFCHAIN_SIGNER, msg.sender), InvalidEditor(msg.sender));

        if (order.createdAt + newDuration != order.expiresAt) {
            uint256 exclusivityPeriod = order.exclusiveUntil - order.createdAt;
            require(newDuration == 0 || newDuration >= exclusivityPeriod, InvalidOrderDuration(newDuration));

            // forge-lint: disable-next-line(unsafe-typecast)
            order.expiresAt = newDuration == 0 ? uint88(0) : uint88(order.createdAt + newDuration);
            emit OrderDurationChanged(orderId, newDuration);
        }

        // Re-check status after potential duration change
        currentStatus = getOrderStatus(orderId);
        if (currentStatus == OrderStatus.EXPIRED && !order.resolved) {
            _resolveOrder(order, orderId);
            emit OrderExpired(orderId);
        }
    }

    /**
     * @notice Fill an order with signature authorization
     * @param orderId The order ID
     * @param amount The amount to fill (paymenToken if is a sell order, underlyingToken if is a buy order)
     * @param onBehalfOf The beneficiary address (who receives the bought tokens)
     * @param signature Signature from authorized signer
     */
    function fillOrder(uint256 orderId, uint256 amount, address onBehalfOf, bytes memory signature)
        public
        nonReentrant
        whenNotPaused
    {
        require(onBehalfOf != address(0), InvalidAddress());
        require(amount > 0, NotZeroValue());

        PlacedOrder storage order = placedOrders[orderId];
        require(enabledTokens[order.order.underlyingToken], TokenNotEnabled(order.order.underlyingToken));

        OrderStatus currentStatus = getOrderStatus(orderId);
        require(isFillable(orderId), InvalidOrderStatus(orderId, currentStatus));

        // Emit activation event if this is the first fill after exclusivity period
        if (currentStatus == OrderStatus.ACTIVE && order.filling.amountFilled == 0) {
            emit OrderActivated(orderId);
        }

        // If ACTIVE or PARTIALLY_FILLED, check if msg.sender is whitelisted
        if (currentStatus == OrderStatus.ACTIVE || currentStatus == OrderStatus.PARTIALLY_FILLED) {
            require(
                IAccessControlEnumerable(order.order.underlyingToken).hasRole(TOKEN_WHITELIST_ROLE, msg.sender),
                UserIsNotWhitelisted(msg.sender)
            );
        }

        // If PENDING, check if msg.sender has exclusive filler role or is the OFFCHAIN_SIGNER doing onBehalfOf the
        // exclusive filler
        if (currentStatus == OrderStatus.PENDING) {
            require(
                (hasRole(P2P_OFFCHAIN_SIGNER, msg.sender) || msg.sender == onBehalfOf)
                    && exclusiveRolesPerToken[order.order.underlyingToken][P2P_EXCLUSIVE_FILLER_ROLE][onBehalfOf],
                UserIsNotExclusiveFiller(msg.sender)
            );
        }

        bytes32 digest;

        {
            // Verify signature for filling
            digest = _hashTypedDataV4(
                keccak256(
                    abi.encode(
                        FILL_ORDER_TYPEHASH,
                        orderId,
                        msg.sender,
                        onBehalfOf,
                        amount,
                        fillOrderNonces[onBehalfOf]
                    )
                )
            );

            address signer = digest.recover(signature);
            require(hasRole(P2P_OFFCHAIN_SIGNER, signer), InvalidSignature());
        }

        // Increment nonce
        unchecked {
            fillOrderNonces[onBehalfOf]++;
        }

        // Process the fill in a separate scope to manage stack
        _processFill(orderId, amount, onBehalfOf, digest);
    }

    // INTERNAL FUNCTIONS

    function _resolveOrder(PlacedOrder storage order, uint256 orderId) internal {
        uint256 unfilled = order.order.orderAmount - order.filling.amountFilled;

        if (unfilled > 0) {
            if (order.order.isBuyOrder) {
                if (!order.order.fees.isFeeOnFills) {
                    address[] memory feeRecipients = order.order.fees.feeRecipients;
                    uint256 length = feeRecipients.length;
                    uint256 feeTotal;
                    for (uint256 i = 0; i < length;) {
                        feeTotal += order.order.fees.feePercentages[i] * unfilled / ONE;
                        unchecked {
                            ++i;
                        }
                    }

                    unfilled += feeTotal;
                }

                IERC20Metadata(order.order.paymentToken).safeTransfer(order.placer, unfilled);
            } else {
                IERC20Metadata(order.order.underlyingToken).safeTransfer(order.placer, unfilled);
            }

            order.resolved = true;
        }
    }

    /**
     * @dev Internal function to process the fill and manage stack depth
     */
    function _processFill(uint256 orderId, uint256 amount, address onBehalfOf, bytes32 digest)
        internal
    {
        PlacedOrder storage order = placedOrders[orderId];

        (
            uint256 paymentAmount,
            uint256 placerProceeds,
            uint256 paymentFill,
            uint256 underlyingFill,
            uint256[] memory feeAmounts
        ) = previewFill(orderId, amount);

        // Track new filler if this is their first fill
        if (order.filling.filledAmounts[onBehalfOf] == 0) {
            order.filling.fillers.push(onBehalfOf);
        }

        if (order.order.isBuyOrder) {
            require(
                paymentFill + order.filling.amountFilled <= order.order.orderAmount,
                OverBought(order.order.orderAmount, order.filling.amountFilled + paymentFill)
            );

            order.filling.amountFilled += paymentFill;
            order.filling.filledAmounts[onBehalfOf] += paymentFill;

            IERC20Metadata(order.order.underlyingToken).safeTransferFrom(msg.sender, order.placer, placerProceeds);            
            IERC20Metadata(order.order.paymentToken).safeTransfer(onBehalfOf, paymentAmount);            
        } else {
            require(
                underlyingFill + order.filling.amountFilled <= order.order.orderAmount,
                OverBought(order.order.orderAmount, order.filling.amountFilled + underlyingFill)
            );

            order.filling.amountFilled += underlyingFill;
            order.filling.filledAmounts[onBehalfOf] += underlyingFill;

            IERC20Metadata(order.order.underlyingToken).safeTransfer(onBehalfOf, underlyingFill);
            
            // For sell orders, collect full payment amount (including fees) from filler to contract
            IERC20Metadata(order.order.paymentToken).safeTransferFrom(msg.sender, address(this), paymentAmount);
            // Then pay the placer their earning (net of fees if applicable)
            IERC20Metadata(order.order.paymentToken).safeTransfer(order.placer, placerProceeds);
        }

        // Distribute fees
        address[] memory feeRecipients = order.order.fees.feeRecipients;
        uint256 length = feeRecipients.length;
        uint256 feeTotal;
        for (uint256 i = 0; i < length;) {
            IERC20Metadata(order.order.paymentToken).safeTransfer(feeRecipients[i], feeAmounts[i]);
            feeTotal += feeAmounts[i];
            unchecked {
                ++i;
            }
        }

        emit Fill(orderId, onBehalfOf, digest, order.filling.amountFilled, order.order.orderAmount - order.filling.amountFilled);

        uint256 remaining = order.order.orderAmount - order.filling.amountFilled;
        if (remaining == 0) {
            emit OrderFilled(orderId);
        } else if (remaining < order.minFillableUnit) {
            _resolveOrder(order, orderId);
            if (order.resolved) emit OrderFilled(orderId);
        }
    }

    /**
     * @dev Compute the minimum fillable unit for an order.
     */
    function _resolution(InitOrder memory order) internal view returns (uint256) {
        uint8 paymentDecimals = IERC20Metadata(order.paymentToken).decimals();
        uint8 underlyingDecimals = IERC20Metadata(order.underlyingToken).decimals();

        uint256 unit;
        if (order.isBuyOrder) {
            uint256 oneUnderlying18 = _to18(1, underlyingDecimals);
            unit = _from18((oneUnderlying18 * order.pricePerToken) / ONE, paymentDecimals);
        } else {
            uint256 onePayment18 = _to18(1, paymentDecimals);
            unit = _from18((onePayment18 * ONE) / order.pricePerToken, underlyingDecimals);
        }

        return unit > 0 ? unit : 1;
    }

    function _to18(uint256 amount, uint8 decimals) internal pure returns (uint256) {
        if (decimals == 18) return amount;
        if (decimals < 18) return amount * (10 ** (18 - decimals));
        return amount / (10 ** (decimals - 18));
    }

    function _from18(uint256 amount18, uint8 decimals) internal pure returns (uint256) {
        if (decimals == 18) return amount18;
        if (decimals < 18) return amount18 / (10 ** (18 - decimals));
        return amount18 * (10 ** (decimals - 18));
    }
}
