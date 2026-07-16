// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {EIP712, ECDSA} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

import "../libraries/ConstantsLib.sol";
import {IWETH9} from "../interfaces/IWETH9.sol";
import {SafeERC20} from "../libraries/SafeERC20.sol";
import {ErrorsLib} from "../libraries/ErrorsLib.sol";
import {IQuote} from "../interfaces/INativeRouter.sol";
import {INativeRouter} from "../interfaces/INativeRouter.sol";
import {TransferHelper} from "../libraries/TransferHelper.sol";
import {INativeBridge, ICreditVault} from "../interfaces/INativeBridge.sol";
import {ReentrancyGuardTransient} from "../libraries/ReentrancyGuardTransient.sol";

/// @title Native Bridge - Intent-based Cross-chain Token Swap Protocol
//
/// @notice Facilitates cross-chain token swaps using an intent-based architecture with market maker fulfillment.
/// @notice This bridge operates as a trustless intermediary where users express cross-chain swap intents,
/// @notice and market makers compete to fulfill these intents by providing liquidity on the destination chain.
//
/// @dev CROSS-CHAIN LIFECYCLE:
/**
 * SOURCE CHAIN                           DESTINATION CHAIN
 *
 *     [1] initiate()
 *         ├─ Lock sellerToken
 *         ├─ Store: sourceOrder
 *         └─ Emit: OrderCreated
 *                │
 *                │ (Off-chain relay)
 *                ▼
 *                                             [2] fill()
 *                                                 ├─ Call router.tradeRFQT()
 *                                                 ├─ Deliver buyerToken to recipient
 *                                                 ├─ Store: destOrder
 *                                                 └─ Emit: Filled
 *                                                       │
 *                     (Backend confirms fill)           │
 *                            │◄─────────────────────────┘
 *                            ▼
 *     [3] claim()
 *         ├─ Validate filled orders
 *         ├─ Call router.tradeRFQT()
 *         ├─ Deposit to CreditVault
 *         ├─ Update: sourceOrder[].state = Completed
 *         └─ Emit: Claimed
 *
 *     [Alternative: User refund after timeout]
 *     [4] refund()
 *         ├─ Check: block.timestamp > orderTimestamp + refundBuffer
 *         ├─ Verify: backend signature
 *         ├─ Return: sellerToken to user
 *         └─ Emit: Refunded
 */
///
/// @dev FALLBACK PATH (EXTERNAL BRIDGE):
/// @dev - When RFQ market makers/settlers cannot fill user intents, backend can route the order via an external bridge aggregator
/// @dev - Source chain emits ExternalBridged and does not track destination balance changes; settlement occurs asynchronously, so users must rely on the external bridge’s own APIs/explorer to monitor completion
contract NativeBridge is INativeBridge, EIP712, Ownable2Step, Pausable, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////
                               STATE VARIABLES
    //////////////////////////////////////////////////////////////*/

    /// @notice The NativeRouter contract used for executing RFQ trades.
    /// @dev This contract handles the actual token swaps via tradeRFQT().
    INativeRouter public router;

    /// @notice The CreditVault contract where market maker positions are tracked.
    /// @dev Immutable to prevent unauthorized vault changes after deployment.
    address public immutable vault;

    /// @notice The Wrapped Ether (WETH9) contract address.
    address public immutable WETH9;

    /// @notice Minimum refund buffer period in seconds (30 minutes).
    uint256 public constant MIN_REFUND_BUFFER = 1800;

    /// @notice Time buffer in seconds after order creation before refunds are permitted.
    uint256 public refundBuffer;

    /// @notice Authorized signers who can sign refund authorization signatures.
    mapping(address => bool) public signers;

    /// @notice Tracks which destination chains are enabled for bridging.
    mapping(uint32 => bool) public enabledDestination;

    /// @notice Whitelist of bridge routers allowed for fallback external bridging.
    mapping(address => bool) public externalBridgeRouters;

    /// @notice Tracks fallback external bridge orders per user by quoteId.
    mapping(address => mapping(bytes16 => ExternalBridgeOrder)) public externalBridgeOrders;

    /// @notice Stores order information for users on the source chain.
    /// @dev Mapping: swapper address => quoteId => Order
    /// @dev Created in initiate(), updated in claim() or refund()
    /// @dev Order.token = sellerToken (locked asset)
    /// @dev Order.amount = sellerTokenAmount (locked amount)
    mapping(address => mapping(bytes16 => INativeBridge.Order)) public sourceOrder;

    /// @notice Records filled orders on the destination chain.
    /// @dev Mapping: recipient address => quoteId => Order
    /// @dev Created in fill() when MM delivers tokens to recipient
    /// @dev Order.token = buyerToken (delivered asset)
    /// @dev Order.amount = buyerTokenAmount (actual delivered amount)
    mapping(address => mapping(bytes16 => INativeBridge.Order)) public destOrder;

    /// @notice EIP-712 typehash for refund authorization signatures.
    /// @dev keccak256("Refund(address user,bytes16 quoteId)")
    bytes32 private constant REFUND_ORDER_TYPEHASH = 0x142c12c35aac893f0493cbe0da9d556a634e5befa64c3038f2df257040f7cbc9;

    /// @notice EIP-712 typehash for fallback external bridge signatures.
    /// @dev keccak256("ExternalBridge(address bridgerRouter,address spender,address recipient,address inputToken,address outputToken,uint256 inputTokenAmount,uint256 outputTokenAmount,uint256 minOutputAmount,uint256 destChainId,uint256 deadlineTimestamp,bytes16 quoteId,bytes callData)")
    bytes32 private constant EXTERNAL_BRIDGE_TYPEHASH =
        0x13cd64c20705b67ed42e8bcab4a2563dfb42bb2a709ffdc8106905de262ca135;

    /// @notice EIP-712 typehash for external bridge refund authorizations.
    /// @dev keccak256("ExternalBridgeRefund(bytes16 quoteId,address user,address inputToken,uint256 inputTokenAmount,address externalBridge,bytes refundCallData)")
    bytes32 private constant EXTERNAL_BRIDGE_REFUND_TYPEHASH =
        0xdfb432658a736c5b14087f0217e9b5a404508bdf9ec00196bdd9784fc451c65d;

    /*//////////////////////////////////////////////////////////////
                             RECEIVE FUNCTION
    //////////////////////////////////////////////////////////////*/

    /// @notice Allows the contract to receive native ETH.
    receive() external payable {}

    /*//////////////////////////////////////////////////////////////
                               CONSTRUCTOR
    //////////////////////////////////////////////////////////////*/

    /// @notice Initializes the NativeBridge contract with core parameters.
    /// @param _router The NativeRouter contract address for executing trades
    /// @param _WETH9 The Wrapped Ether (WETH9) contract address
    /// @param _signer The initial authorized signer for refund signatures
    /// @param _vault The CreditVault contract address for market maker accounting
    /// @param _refundBuffer The initial refund buffer period in seconds
    constructor(
        INativeRouter _router,
        address _WETH9,
        address _signer,
        address _vault,
        uint256 _refundBuffer
    ) EIP712("Native Bridge", "1") {
        require(_refundBuffer >= MIN_REFUND_BUFFER, ErrorsLib.InvalidAmount());

        router = _router;
        WETH9 = _WETH9;
        vault = _vault;
        refundBuffer = _refundBuffer;

        setSigner(_signer, true);
    }

    /*//////////////////////////////////////////////////////////////
                            EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Initiates a cross-chain bridge order by locking tokens on the source chain.
    /// @dev This is the entry point for users to start a cross-chain swap.
    /// @dev The function locks sellerToken in this contract and emits an event for backend/market makers to observe.
    //
    /// @param initDeadline The deadline timestamp by which this order must be initiated (anti-replay protection)
    /// @param destChainId The destination chain ID where the order will be filled by market makers
    /// @param quote The market maker's signed RFQ quote containing token addresses, amounts, recipient, and signature
    function initiate(
        uint32 initDeadline,
        uint32 destChainId,
        RFQTQuote calldata quote
    ) public payable nonReentrant whenNotPaused {
        require(enabledDestination[destChainId], InvalidDestChain());
        require(sourceOrder[msg.sender][quote.quoteId].orderState == OrderState.None, InvalidQuoteId());
        require(block.timestamp < initDeadline && initDeadline < quote.deadlineTimestamp, DeadlineExpired());

        // Handle token transfer based on seller token type
        if (msg.value > 0) {
            require(msg.value == quote.sellerTokenAmount, ErrorsLib.InvalidAmount());
            require(quote.sellerToken == WETH9, InvalidToken());

            IWETH9(WETH9).deposit{value: msg.value}();
        } else {
            uint256 balanceBefore = IERC20(quote.sellerToken).balanceOf(address(this));
            IERC20(quote.sellerToken).safeTransferFrom(msg.sender, address(this), quote.sellerTokenAmount);

            require(
                IERC20(quote.sellerToken).balanceOf(address(this)) - balanceBefore >= quote.sellerTokenAmount,
                ErrorsLib.InsufficientAmount()
            );
        }

        sourceOrder[msg.sender][quote.quoteId] = Order({
            token: quote.sellerToken,
            amount: quote.sellerTokenAmount,
            orderTimestamp: block.timestamp,
            settler: quote.signer,
            orderState: OrderState.Committed
        });

        emit OrderCreated(
            msg.sender,
            quote.recipient,
            quote.quoteId,
            quote.sellerToken,
            quote.sellerTokenAmount,
            quote.buyerToken,
            quote.buyerTokenAmount,
            quote.signer,
            destChainId
        );
    }

    /// @notice Fills an order on the destination chain by delivering tokens to the recipient.
    /// @dev This is called by market makers on the destination chain after observing an OrderCreated event.
    //
    /// @dev IMPORTANT: sellerToken is NOT required on destination chain because it's already
    /// @dev locked on source chain. We only need to deliver buyerToken here.
    //
    /// @param quote The market maker's signed quote (must match the one used in initiate on source chain)
    function fill(RFQTQuote memory quote) external nonReentrant whenNotPaused {
        // Validate order state on destination chain
        require(destOrder[quote.recipient][quote.quoteId].orderState == OrderState.None, OrderCompleted());

        // SellerToken already locked on source chain, no need to pay on dest chain
        require(quote.sellerTokenAmount == 0, ErrorsLib.InvalidAmount());

        uint256 initialBalance = quote.buyerToken == address(0)
            ? address(quote.recipient).balance
            : IERC20(quote.buyerToken).balanceOf(quote.recipient);

        router.tradeRFQT(quote, 0, 0);

        // This is required as tradeRFQT doesn't return amountOut
        uint256 buyerTokenAmount = quote.buyerToken == address(0)
            ? address(quote.recipient).balance - initialBalance
            : IERC20(quote.buyerToken).balanceOf(quote.recipient) - initialBalance;

        require(
            buyerTokenAmount
                >= quote.buyerTokenAmount - (quote.widgetFee.feeRate * quote.buyerTokenAmount / BPS_DENOMINATOR),
            ErrorsLib.InsufficientAmount()
        );

        destOrder[quote.recipient][quote.quoteId] = Order({
            token: quote.buyerToken,
            amount: buyerTokenAmount,
            orderTimestamp: block.timestamp,
            settler: quote.signer,
            orderState: OrderState.Completed
        });

        emit Filled(
            quote.recipient, quote.quoteId, quote.signer, quote.buyerToken, buyerTokenAmount, uint32(block.chainid)
        );
    }

    /// @notice Processes a single batch claim for multiple filled orders on the source chain.
    /// @dev This is called by market makers on the source chain after filling orders on the destination chain.
    /// @dev All orders in a single claim must have the same sellerToken and settler (MM).
    /// @param claimData The claim data containing quote (with MM signature), user addresses, and quoteIds
    function claim(ClaimData calldata claimData) external nonReentrant whenNotPaused {
        _claim(claimData);
    }

    /// @notice Processes multiple batch claims in a single transaction for gas efficiency.
    /// @dev Each claim can have a different sellerToken, but within each claim all orders must share the same token.
    /// @dev Useful when MM needs to claim multiple token types simultaneously (e.g., USDC orders + WETH orders).
    /// @param claimData Array of claim data to process sequentially
    function batchClaim(ClaimData[] calldata claimData) external nonReentrant whenNotPaused {
        for (uint256 i; i < claimData.length; ++i) {
            _claim(claimData[i]);
        }
    }

    /// @notice Executes a fallback external bridge call using pre-authorized parameters.
    /// @dev Used when market makers do not provide RFQ bridge swap, falling back to external bridge instead.
    /// @param params The external bridge parameters signed off-chain by an authorized backend
    function externalBridge(ExternalBridge calldata params) external payable nonReentrant whenNotPaused {
        require(block.timestamp <= params.deadlineTimestamp, DeadlineExpired());
        require(externalBridgeRouters[params.bridgerRouter], InvalidBridgeRouter());

        ExternalBridgeOrder storage orderInfo = externalBridgeOrders[msg.sender][params.quoteId];
        require(orderInfo.state == ExternalBridgeState.None, InvalidQuoteId());

        bytes32 structHash = keccak256(
            abi.encode(
                EXTERNAL_BRIDGE_TYPEHASH,
                params.bridgerRouter,
                params.spender,
                params.recipient,
                params.inputToken,
                params.outputToken,
                params.inputTokenAmount,
                params.outputTokenAmount,
                params.minOutputAmount,
                params.destChainId,
                params.deadlineTimestamp,
                params.quoteId,
                keccak256(params.callData)
            )
        );

        _verifySignature(structHash, params.signature);

        if (params.inputToken == address(0)) {
            // Native token
            require(msg.value == params.inputTokenAmount, ErrorsLib.InvalidAmount());
        } else {
            // ERC20 token
            require(msg.value == 0, ErrorsLib.UnexpectedMsgValue());
            IERC20(params.inputToken).safeTransferFrom(msg.sender, address(this), params.inputTokenAmount);
            // Approve the spender to use exact amount
            IERC20(params.inputToken).safeApprove(params.spender, params.inputTokenAmount);
        }

        (bool success,) = params.bridgerRouter.call{value: msg.value}(params.callData);
        require(success, ErrorsLib.ExternalCallFailed());

        externalBridgeOrders[msg.sender][params.quoteId] = ExternalBridgeOrder({
            inputToken: params.inputToken,
            inputTokenAmount: params.inputTokenAmount,
            orderTimestamp: block.timestamp,
            state: ExternalBridgeState.Committed
        });

        emit ExternalBridged(
            params.bridgerRouter,
            params.recipient,
            params.inputToken,
            params.outputToken,
            params.inputTokenAmount,
            params.outputTokenAmount,
            params.minOutputAmount,
            params.destChainId,
            params.quoteId
        );
    }

    /// @notice Allows a user to request a refund for an unfilled order after the timeout period.
    //
    /// @dev VALIDATIONS:
    /// @dev - Order must be in Committed state (not already completed or refunded)
    /// @dev - Sufficient time must have passed (refundBuffer protection for MMs)
    /// @dev - Signature must be from authorized signer (prevents unauthorized refunds)
    //
    /// @param quoteId The unique identifier of the order to refund
    /// @param refundSignature EIP-712 signature from authorized signer authorizing this refund
    function refund(bytes16 quoteId, bytes calldata refundSignature) external nonReentrant whenNotPaused {
        Order storage orderInfo = sourceOrder[msg.sender][quoteId];

        require(orderInfo.orderState == OrderState.Committed, InvalidQuoteId());
        require(block.timestamp > orderInfo.orderTimestamp + refundBuffer, NotRefundable());

        _verifySignature(keccak256(abi.encode(REFUND_ORDER_TYPEHASH, msg.sender, quoteId)), refundSignature);

        orderInfo.orderState = OrderState.Refunded;

        IERC20(orderInfo.token).safeTransfer(msg.sender, orderInfo.amount);

        emit Refunded(msg.sender, quoteId, orderInfo.token, orderInfo.amount);
    }

    /// @notice Refunds funds for a fallback external bridge order when the external bridge fails.
    /// @param quoteId The identifier of the external bridge order to refund
    /// @param refundSignature Backend-issued signature authorizing this refund
    /// @param bridge The external bridge contract address to call for refund
    /// @param refundCallData The calldata to call on externalBridge
    function refundExternalBridge(
        bytes16 quoteId,
        bytes calldata refundSignature,
        address bridge, // optional, can be address(0)
        bytes calldata refundCallData // optional, can be empty
    ) external nonReentrant whenNotPaused {
        ExternalBridgeOrder storage order = externalBridgeOrders[msg.sender][quoteId];
        require(order.state == ExternalBridgeState.Committed, InvalidQuoteId());
        require(block.timestamp > order.orderTimestamp + refundBuffer, NotRefundable());

        _verifySignature(
            keccak256(
                abi.encode(
                    EXTERNAL_BRIDGE_REFUND_TYPEHASH,
                    quoteId,
                    msg.sender,
                    order.inputToken,
                    order.inputTokenAmount,
                    bridge,
                    keccak256(refundCallData)
                )
            ),
            refundSignature
        );

        // Call external bridge to initiate refund if provided.
        // Normally cross-chain transactions don't fail, and most bridges auto-refund on failure.
        // However, some bridge protocols require active refund requests instead of automatic refunds.
        // This optional call provides fault tolerance for bridges that don't support automatic refunds.
        if (bridge != address(0)) {
            // validate external bridge is whitelisted
            require(externalBridgeRouters[bridge], InvalidBridgeRouter());

            (bool success,) = bridge.call(refundCallData);

            require(success, ErrorsLib.ExternalCallFailed());
        }

        order.state = ExternalBridgeState.Refunded;

        if (order.inputToken == address(0)) {
            TransferHelper.safeTransferETH(msg.sender, order.inputTokenAmount);
        } else {
            IERC20(order.inputToken).safeTransfer(msg.sender, order.inputTokenAmount);
        }

        emit ExternalBridgeRefunded(msg.sender, quoteId, order.inputToken, order.inputTokenAmount);
    }

    /*//////////////////////////////////////////////////////////////
                             ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    /// @notice Sets the authorization status for a refund signer.
    /// @dev Authorized signers can create EIP-712 signatures to approve user refund requests.
    /// @param signer The address to authorize or revoke as a refund signer
    /// @param isSigner True to authorize the signer, false to revoke authorization
    function setSigner(address signer, bool isSigner) public onlyOwner {
        require(signer != address(0), ErrorsLib.ZeroAddress());

        signers[signer] = isSigner;
        emit SignerUpdated(signer, isSigner);
    }

    /// @notice Updates the NativeRouter contract address.
    /// @dev The router is responsible for executing tradeRFQT() for swaps.
    /// @param newRouter The address of the new NativeRouter contract
    function setRouter(address newRouter) external onlyOwner {
        require(newRouter != address(0), ErrorsLib.ZeroAddress());

        address oldRouter = address(router);
        router = INativeRouter(newRouter);

        emit RouterUpdated(oldRouter, newRouter);
    }

    /// @notice Updates whitelist status for an external bridge router.
    /// @param bridgeRouter The router address to update
    /// @param allowed True to whitelist, false to remove
    function setExternalBridgeRouter(address bridgeRouter, bool allowed) external onlyOwner {
        require(bridgeRouter != address(0), ErrorsLib.ZeroAddress());
        externalBridgeRouters[bridgeRouter] = allowed;

        emit ExternalBridgeRouterUpdated(bridgeRouter, allowed);
    }

    /// @notice Sets whether destination chains are enabled for bridging.
    /// @dev Allows owner to disable problematic chains or enable new chains in batch.
    /// @param destChainIds Array of chain IDs to enable or disable
    /// @param statuses Array of status flags (true to enable, false to disable)
    function setDestinationChains(uint32[] calldata destChainIds, bool[] calldata statuses) external onlyOwner {
        require(destChainIds.length == statuses.length, ErrorsLib.InvalidAmount());

        for (uint256 i = 0; i < destChainIds.length; ++i) {
            enabledDestination[destChainIds[i]] = statuses[i];
            emit DestinationStatusUpdated(destChainIds[i], statuses[i]);
        }
    }

    /// @notice Sets the refund buffer period.
    /// @dev The refund buffer protects market makers by ensuring they have time to fill orders.
    /// @param newRefundBuffer The new refund buffer period in seconds
    function setRefundBuffer(uint256 newRefundBuffer) external onlyOwner {
        require(newRefundBuffer >= MIN_REFUND_BUFFER, ErrorsLib.InvalidAmount());

        uint256 oldBuffer = refundBuffer;
        refundBuffer = newRefundBuffer;

        emit RefundBufferUpdated(oldBuffer, newRefundBuffer);
    }

    /// @notice Pauses the contract, disabling initiate, fill, claim, and refund functions.
    /// @dev Used as an emergency circuit breaker in case of discovered vulnerabilities or attacks.
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpauses the contract, re-enabling all functions.
    function unpause() external onlyOwner {
        _unpause();
    }

    /*//////////////////////////////////////////////////////////////
                           INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////*/

    function _claim(ClaimData memory claimData) internal {
        // BuyerToken already paid on dest chain, no need to pay on source chain
        require(claimData.quote.buyerTokenAmount == 0, ErrorsLib.InvalidAmount());

        uint256 totalAmount;
        address claimToken = claimData.quote.sellerToken;
        address signer = claimData.quote.signer;
        require(msg.sender == signer, "Only the setter can claim");

        for (uint256 i; i < claimData.quoteIds.length; ++i) {
            Order memory orderInfo = sourceOrder[claimData.users[i]][claimData.quoteIds[i]];

            // Ensure all orders in this claim are for the same token
            require(orderInfo.token == claimToken, InvalidToken());
            require(orderInfo.settler == signer, ErrorsLib.InvalidSigner());
            require(orderInfo.orderState == OrderState.Committed, OrderCompleted());

            totalAmount = totalAmount + orderInfo.amount;

            // Mark order as completed on source chain
            sourceOrder[claimData.users[i]][claimData.quoteIds[i]].orderState = OrderState.Completed;
        }

        // Verify that MM's signed amount matches the actual total
        require(claimData.quote.sellerTokenAmount == totalAmount, ErrorsLib.InvalidAmount());

        uint256 initialBalance = IERC20(claimToken).balanceOf(vault);
        int256 initialPosition = ICreditVault(vault).positions(signer, claimToken);

        IERC20(claimToken).safeApprove(address(router), totalAmount);
        router.tradeRFQT(claimData.quote, 0, 0);

        require(IERC20(claimToken).balanceOf(vault) - initialBalance >= totalAmount, ErrorsLib.InsufficientAmount());

        // validate market maker's position
        require(
            ICreditVault(vault).positions(signer, claimToken) - initialPosition >= int256(totalAmount),
            ErrorsLib.InsufficientAmount()
        );

        emit Claimed(signer, claimToken, totalAmount, claimData.users, claimData.quoteIds);
    }

    function _verifySignature(bytes32 structHash, bytes calldata signature) internal view {
        address recoveredSigner = ECDSA.recover(_hashTypedDataV4(structHash), signature);

        require(signers[recoveredSigner], ErrorsLib.InvalidSignature());
    }
}
