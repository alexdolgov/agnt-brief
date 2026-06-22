// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.23;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import {Ownable2StepUpgradeable} from "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {ISettlement} from "./interfaces/ISettlement.sol";
import {EIP1271_MAGIC_VALUE, IEIP1271} from "./interfaces/IEIP1271.sol";
import {
    INativeTokenFlow,
    NATIVE_FLOW_ORDER_STATUS_NOT_CREATED,
    NATIVE_FLOW_ORDER_STATUS_CREATED,
    NATIVE_FLOW_ORDER_STATUS_CANCELLED
} from "./interfaces/INativeTokenFlow.sol";
import {IWrappedNativeToken} from "./interfaces/IWrappedNativeToken.sol";
import {OrderHelper} from "./libraries/OrderHelper.sol";

/// @title NativeTokenFlow
/// @notice A contract that facilitates the creation and management of orders for exchanging native token (e.g., ETH)
///         to ERC20 tokens using a settlement contract. It handles wrapping/unwrapping of native token and ensures
///         secure order processing. It also implements EIP-1271 for on-chain signature verification of orders.
///         The contract holds native tokens of users and wrapped native tokens to manage orders and refunds if orders expire.
contract NativeTokenFlow is
    Initializable,
    INativeTokenFlow,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    Ownable2StepUpgradeable
{
    struct TokenRefund {
        address receiver;
        uint256 amount;
    }

    ISettlement public SETTLEMENT;

    IWrappedNativeToken public WRAPPED_NATIVE_TOKEN;

    mapping(bytes32 => OrderMetadata) public nativeTokenOrders;

    constructor() {
        _disableInitializers();
    }

    function initialize(ISettlement settlement_, IWrappedNativeToken wrappedNativeToken_, address owner)
        public
        initializer
    {
        __ReentrancyGuard_init();
        __Pausable_init();
        __Ownable2Step_init();

        _transferOwnership(owner);
        SETTLEMENT = settlement_;
        WRAPPED_NATIVE_TOKEN = wrappedNativeToken_;

        address vaultRelayer = address(settlement_.VAULT_RELAYER());
        wrappedNativeToken_.approve(vaultRelayer, type(uint256).max);
    }

    receive() external payable {}

    /// @inheritdoc INativeTokenFlow
    function wrapNativeToken(uint256 amount) external {
        _wrapNativeToken(Math.min(amount, address(this).balance));
    }

    /// @inheritdoc INativeTokenFlow
    function wrapAllNativeToken() external {
        _wrapNativeToken(address(this).balance);
    }

    /// @inheritdoc INativeTokenFlow
    function createOrder(Order calldata order) external payable whenNotPaused {
        if (order.amountIn == 0) {
            revert ZeroAmountIn();
        }
        if (order.amountIn != msg.value) {
            revert IncorrectNativeTokenAmount(order.amountIn, msg.value);
        }
        if (order.validTo < block.timestamp) {
            revert InvalidValidTo();
        }

        ISettlement.Order memory settlementOrder = toSettlementOrder(order);
        bytes32 orderDigest = SETTLEMENT.hashTypedDataV4(OrderHelper.hashOrder(settlementOrder));

        if (nativeTokenOrders[orderDigest].status != NATIVE_FLOW_ORDER_STATUS_NOT_CREATED) {
            revert OrderAlreadyExists(orderDigest);
        }

        nativeTokenOrders[orderDigest] =
            OrderMetadata({owner: msg.sender, validTo: order.validTo, status: NATIVE_FLOW_ORDER_STATUS_CREATED});

        emit OrderCreated(msg.sender, settlementOrder, order.quoteId);
    }

    /// @inheritdoc INativeTokenFlow
    function cancelOrder(Order calldata order) external nonReentrant whenNotPaused {
        TokenRefund memory refund;
        _cancelOrder(order, true, refund);

        if (refund.amount > 0) {
            _unwrapNativeTokenIfNeeded(refund.amount);
            _executeRefund(refund);
        }
    }

    /// @inheritdoc INativeTokenFlow
    function cancelOrdersIgnoreInvalidCancellation(Order[] calldata orders) external nonReentrant whenNotPaused {
        TokenRefund[] memory refunds = new TokenRefund[](orders.length);
        uint256 totalRefundAmount = 0;
        uint256 length = orders.length;
        for (uint256 i = 0; i < length; ++i) {
            _cancelOrder(orders[i], false, refunds[i]);
            totalRefundAmount += refunds[i].amount;
        }

        if (totalRefundAmount == 0) return;

        _unwrapNativeTokenIfNeeded(totalRefundAmount);

        for (uint256 i = 0; i < length; ++i) {
            _executeRefund(refunds[i]);
        }
    }

    /// @dev This function only updates the order status to cancelled and prepares refund information.
    ///      It does not transfer any tokens; the caller must execute the refund separately.
    ///
    /// @param order The order to cancel.
    /// @param revertIfInvalidCancellation If true, reverts the transaction on invalid cancellation; if false, skips invalid cancellations.
    /// @param tokenRefund the receiver address and refund amount for successful cancellations.
    function _cancelOrder(Order calldata order, bool revertIfInvalidCancellation, TokenRefund memory tokenRefund)
        internal
    {
        ISettlement.Order memory settlementOrder = toSettlementOrder(order);
        bytes32 orderDigest = SETTLEMENT.hashTypedDataV4(OrderHelper.hashOrder(settlementOrder));

        OrderMetadata storage orderMeta = nativeTokenOrders[orderDigest];

        bool isOrderNotExpired = orderMeta.validTo >= uint64(block.timestamp);
        if (
            orderMeta.status != NATIVE_FLOW_ORDER_STATUS_CREATED || (isOrderNotExpired && orderMeta.owner != msg.sender)
        ) {
            if (revertIfInvalidCancellation) {
                revert InvalidOrderToCancel(orderDigest);
            } else {
                return;
            }
        }

        bytes memory orderId = new bytes(OrderHelper.ORDER_ID_LENGTH);
        OrderHelper.packOrderId(orderId, address(this), orderDigest);
        uint256 orderFilledAmount = SETTLEMENT.orderFilledAmount(orderId);

        // Because this smart contract never invalidates orders on the Settlement contract, `orderFilledAmount` <= `order.amountIn`

        if (orderFilledAmount < order.amountIn) {
            uint256 refundAmount = order.amountIn - orderFilledAmount;
            if (refundAmount > 0) {
                orderMeta.status = NATIVE_FLOW_ORDER_STATUS_CANCELLED;
                emit OrderCancelled(msg.sender, orderMeta.owner, orderDigest);

                tokenRefund.receiver = orderMeta.owner;
                tokenRefund.amount = refundAmount;
            }
        } else {
            // The order is settled, so cannot be cancelled
            if (revertIfInvalidCancellation) {
                revert InvalidOrderToCancel(orderDigest);
            }
        }
    }

    /// @notice Refund native tokens to the specified receivers.
    /// @dev This function does not unwrap wrapped native tokens.
    ///     It assumes the contract already has enough native tokens to refund.
    ///     It is the caller's responsibility to ensure sufficient balance.
    function _executeRefund(TokenRefund memory refund) internal {
        if (refund.amount == 0) return;

        // Note: this could potentially fail if the receiver is a contract with a fallback function that uses too much gas.
        // However, this is unlikely to be an issue in practice since most contracts should be able to receive ETH.
        // If this does become an issue, we could blacklist the order owner in the off-chain service.
        (bool success,) = payable(refund.receiver).call{value: refund.amount}("");
        if (!success) {
            revert NativeTokenTransferFailed();
        }
    }

    /// @inheritdoc IEIP1271
    function isValidSignature(bytes32 orderDigest, bytes memory) external view returns (bytes4 magicValue) {
        // The signature parameter is ignored since all information needed to verify the validity of the order is
        // already available on-chain.
        OrderMetadata memory order = nativeTokenOrders[orderDigest];
        if ((order.status == NATIVE_FLOW_ORDER_STATUS_CREATED) && (order.validTo >= block.timestamp)) {
            return EIP1271_MAGIC_VALUE;
        } else {
            return bytes4(0);
        }
    }

    /// @notice Unwraps native tokens if the current balance is insufficient.
    function _unwrapNativeTokenIfNeeded(uint256 amount) internal {
        uint256 currentNativeTokenBalance = address(this).balance;
        if (currentNativeTokenBalance < amount) {
            WRAPPED_NATIVE_TOKEN.withdraw(amount - currentNativeTokenBalance);
        }
    }

    function _wrapNativeToken(uint256 amount) internal {
        WRAPPED_NATIVE_TOKEN.deposit{value: amount}();
    }

    function toSettlementOrder(Order calldata order) internal view returns (ISettlement.Order memory settlementOrder) {
        if (order.receiver == OrderHelper.ZERO_ADDRESS) {
            // For native token flow orders, the order owner in the Settlement contract is this contract,
            // so the receiver must be specified to avoid sending tokens to this contract instead of users.
            revert MissingReceiver();
        }

        settlementOrder = ISettlement.Order({
            receiver: order.receiver,
            validTo: order.validTo,
            tokenIn: WRAPPED_NATIVE_TOKEN,
            tokenOut: order.tokenOut,
            amountIn: order.amountIn,
            amountOut: order.amountOut,
            minAmountOut: order.minAmountOut,
            feeAmount: order.feeAmount
        });
    }

    /// @notice Pauses the contract, preventing order creation
    /// @dev Only callable by the contract owner
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpauses the contract, allowing order creation
    /// @dev Only callable by the contract owner
    function unpause() external onlyOwner {
        _unpause();
    }
}
