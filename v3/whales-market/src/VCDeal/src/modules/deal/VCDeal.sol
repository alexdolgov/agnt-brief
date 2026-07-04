// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { ECDSA } from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { MessageHashUtils } from "@openzeppelin/contracts/utils/cryptography/MessageHashUtils.sol";

import { Initializable } from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import { NoncesUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/NoncesUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { PausableUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol";
import { AccessControlUpgradeable } from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import { ReentrancyGuardUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import { Constants } from "../../common/Constants.sol";
import { IVCDeal } from "./IVCDeal.sol";

contract VCDeal is
    IVCDeal,
    Initializable,
    UUPSUpgradeable,
    NoncesUpgradeable,
    PausableUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    using MessageHashUtils for bytes32;
    using ECDSA for bytes32;
    using SafeERC20 for IERC20;

    uint256 public immutable CHAIN_ID;
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant TRANSFER_ROLE = keccak256("TRANSFER_ROLE");
    bytes32 public constant END_DEAL_ROLE = keccak256("END_DEAL_ROLE");
    uint256 public constant MAX_COMMISSION_FEE = Constants.WEI6 / 10; // 10%

    /// @custom:storage-location erc7201:whales.funds.storage.VCDeal
    struct VCDealStorage {
        mapping(address => bool) acceptedTokens;
        mapping(bytes32 dealId => Deal) deals;
        mapping(bytes32 dealId => mapping(address paymentToken => uint256 purchasedAmount)) purchasedAmounts;
        mapping(bytes32 dealId => mapping(address user => bytes32[] orderIds)) userOrders;
        mapping(bytes32 orderId => Order order) orders;
        address feeRecipient;
        uint96 commissionFee;
    }

    // keccak256(abi.encode(uint256(keccak256("whales.funds.storage.VCDeal")) - 1)) &
    // ~bytes32(uint256(0xff))
    bytes32 private constant VCDealStorageLocation = 0x53c87393273f0261763a1d7ce0cf791a88ecd88a7d00ebc90cb768959caf9800;

    function _getVCDealStorage() private pure returns (VCDealStorage storage $) {
        assembly {
            $.slot := VCDealStorageLocation
        }
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        CHAIN_ID = block.chainid;
        _disableInitializers();
    }

    function initialize() public initializer {
        __Nonces_init();
        __Pausable_init();
        __AccessControl_init();
        __ReentrancyGuard_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

        VCDealStorage storage $ = _getVCDealStorage();
        $.feeRecipient = msg.sender;
        $.commissionFee = 3500; // 0.35%
    }

    /// @inheritdoc IVCDeal
    function createDeal(CreateDealParams calldata params) external nonReentrant {
        VCDealStorage storage $ = _getVCDealStorage();

        // Verify create deal params
        if (params.recipient == address(0)) revert InvalidRecipient();
        if (params.paymentTokens.length == 0) revert NoAcceptedTokens();
        if (params.targetAmount == 0) revert InvalidTargetAmount();
        if (params.minimumAmount == 0) revert InvalidMinimumAmount(); // only work on one-chain deal
        if (params.minimumAmount > params.maximumAmount) revert InvalidMaximumAmount(); // only work on one-chain deal
        if (params.startTime > params.endTime || params.startTime < uint48(block.timestamp)) revert InvalidTimestamp();

        // Verify payment tokens
        for (uint256 i = 0; i < params.paymentTokens.length; i++) {
            address token = params.paymentTokens[i];
            if (token == address(0)) revert InvalidPaymentToken();
            if (!$.acceptedTokens[token]) revert InvalidPaymentToken();
        }

        // Verify deal id
        Deal memory deal = $.deals[params.dealId];
        if (deal.status != DealStatus.None) revert DealAlreadyExists();

        // Verify deal signature
        _verifyDealSignature(params);

        $.deals[params.dealId] = Deal({
            recipient: params.recipient,
            startTime: params.startTime,
            endTime: params.endTime,
            minimumAmount: params.minimumAmount,
            maximumAmount: params.maximumAmount,
            targetAmount: params.targetAmount,
            purchasedAmount: 0,
            paymentTokens: params.paymentTokens,
            status: DealStatus.Active
        });

        emit DealCreated(params.dealId, params.recipient, params.paymentTokens);
    }

    /// @inheritdoc IVCDeal
    /// @notice The amount must not make the deal's total purchased amount exceed the target amount
    /// @notice The amount must not make the user's total purchased amount exceed the maximum amount
    function createOrder(CreateOrderParams calldata params) external nonReentrant {
        VCDealStorage storage $ = _getVCDealStorage();
        Deal memory deal = $.deals[params.dealId];
        if (deal.status != DealStatus.Active) revert DealNotActive();

        // Verify purchase params
        if (params.amount == 0) revert InvalidAmount();
        if (params.paymentToken == address(0)) revert InvalidPaymentToken();
        if (bytes(params.recipient).length == 0) revert InvalidRecipient();

        // Verify deal data
        if (deal.startTime > uint48(block.timestamp)) revert DealNotStarted();
        if (deal.endTime < uint48(block.timestamp)) revert DealAlreadyEnded();

        // Verify payment token
        for (uint256 i = 0; i < deal.paymentTokens.length; i++) {
            if (deal.paymentTokens[i] == params.paymentToken) {
                break;
            }

            if (i == deal.paymentTokens.length - 1) revert InvalidPaymentToken();
        }

        // Throws if the payment token is not accepted anymore
        if (!$.acceptedTokens[params.paymentToken]) revert InvalidPaymentToken();

        // Verify amount and Check if the target amount is reached
        uint256 amountInWEI18 = _convertToWEI18(params.paymentToken, params.amount);

        if (amountInWEI18 < deal.minimumAmount) revert InvalidAmount(); // only work on one-chain deal
        if (amountInWEI18 > deal.maximumAmount) revert InvalidAmount(); // only work on one-chain deal
        if (deal.purchasedAmount + amountInWEI18 >= deal.targetAmount) {
            revert AmountExceedsMaximumPurchaseAmount();
        }

        // Update deal purchased amount
        $.deals[params.dealId].purchasedAmount += amountInWEI18;

        // Update the purchased amount of the payment token on the current deal
        $.purchasedAmounts[params.dealId][params.paymentToken] += params.amount;

        // Verify purchase signature
        _verifyPurchaseSignature(params);

        // Create new order if it doesn't exist
        Order memory order = $.orders[params.orderId];
        if (order.status != OrderStatus.None) revert OrderAlreadyPurchased();

        $.orders[params.orderId] = Order({
            dealId: params.dealId,
            user: msg.sender,
            paymentToken: params.paymentToken,
            amount: params.amount,
            status: OrderStatus.Purchased,
            recipient: params.recipient
        });

        // Add the newly created order to the user's orders under the current deal
        $.userOrders[params.dealId][msg.sender].push(params.orderId);

        // Transfer the payment token to the contract
        IERC20(params.paymentToken).safeTransferFrom(msg.sender, address(this), params.amount);

        emit OrderCreated(
            params.dealId,
            params.orderId,
            msg.sender,
            params.recipient,
            params.paymentToken,
            params.amount,
            uint48(block.timestamp)
        );
    }

    /// @inheritdoc IVCDeal
    function transferToVC(bytes32 dealId) external onlyRole(TRANSFER_ROLE) nonReentrant {
        VCDealStorage storage $ = _getVCDealStorage();
        Deal memory deal = $.deals[dealId];
        if (deal.status != DealStatus.Ended) revert DealNotTransferrable(); // only transferable when status is Ended
        if (block.timestamp <= deal.endTime) revert DealNotEnded();

        $.deals[dealId].status = DealStatus.Transferred;

        for (uint256 i = 0; i < deal.paymentTokens.length; i++) {
            address token = deal.paymentTokens[i];
            uint256 purchasedAmount = $.purchasedAmounts[dealId][token];
            if (purchasedAmount > 0) {
                uint256 commissionAmount = purchasedAmount * $.commissionFee / Constants.WEI6;
                uint256 amountToTransfer = purchasedAmount - commissionAmount;

                IERC20(token).safeTransfer(deal.recipient, amountToTransfer);
                IERC20(token).safeTransfer($.feeRecipient, commissionAmount);

                emit TokensTransferredToVC(dealId, token, deal.recipient, amountToTransfer, commissionAmount);
            }
        }

        emit TransferredToVC(dealId);
    }

    /// @inheritdoc IVCDeal
    function setEndDeal(
        bytes32 dealId,
        bytes32[] calldata refundOrderIds
    )
        external
        onlyRole(END_DEAL_ROLE)
        nonReentrant
    {
        VCDealStorage storage $ = _getVCDealStorage();
        Deal memory deal = $.deals[dealId];

        if (deal.status != DealStatus.Active) revert InvalidDealStatus(dealId, deal.status);
        if (block.timestamp <= deal.endTime) revert DealNotEnded();

        $.deals[dealId].status = DealStatus.Ended;

        for (uint256 i = 0; i < refundOrderIds.length; i++) {
            Order memory order = $.orders[refundOrderIds[i]];
            if (order.status != OrderStatus.Purchased) revert InvalidOrderStatus(refundOrderIds[i], order.status);

            uint256 amountInWEI18 = _convertToWEI18(order.paymentToken, order.amount);
            // refund and update data
            // update deal purchasedAmount
            $.deals[dealId].purchasedAmount -= amountInWEI18;
            // Update the purchased amount of the payment token on the current deal
            $.purchasedAmounts[dealId][order.paymentToken] -= order.amount;

            // refund and update order status
            $.orders[refundOrderIds[i]].status = OrderStatus.Refunded;
            IERC20(order.paymentToken).safeTransfer(order.user, order.amount);
        }

        emit DealEnded(dealId, refundOrderIds);
    }

    /// @notice Pauses the contract
    function pause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _pause();
    }

    /// @notice Unpauses the contract
    function unpause() external onlyRole(DEFAULT_ADMIN_ROLE) {
        _unpause();
    }

    /// @notice Verifies a deal signature
    function _verifyDealSignature(CreateDealParams calldata params) private view {
        if (block.timestamp > params.deadline) revert SignatureExpired();

        bytes32 structHash = keccak256(
            abi.encodePacked(
                params.dealId,
                params.recipient,
                keccak256(abi.encodePacked(params.paymentTokens)),
                params.startTime,
                params.endTime,
                params.minimumAmount,
                params.maximumAmount,
                params.targetAmount,
                params.deadline,
                CHAIN_ID
            )
        );
        _verifySignature(structHash, params.signature);
    }

    /// @notice Verifies a purchase signature
    function _verifyPurchaseSignature(CreateOrderParams calldata params) private {
        if (block.timestamp > params.deadline) revert SignatureExpired();

        bytes32 structHash = keccak256(
            abi.encodePacked(
                params.dealId,
                params.orderId,
                msg.sender,
                _useNonce(msg.sender),
                params.amount,
                params.paymentToken,
                params.recipient,
                params.deadline,
                CHAIN_ID
            )
        );

        _verifySignature(structHash, params.signature);
    }

    /// @notice Verifies a signature
    function _verifySignature(bytes32 structHash, bytes calldata signature) private view {
        bytes32 digest = structHash.toEthSignedMessageHash();
        address signer = digest.recover(signature);
        if (!hasRole(OPERATOR_ROLE, signer)) revert InvalidSignature();
    }

    /// @inheritdoc IVCDeal
    function addAcceptedToken(address token) external onlyRole(ADMIN_ROLE) {
        VCDealStorage storage $ = _getVCDealStorage();
        if ($.acceptedTokens[token]) revert TokenAlreadyAccepted();

        $.acceptedTokens[token] = true;

        emit PaymentTokenAdded(token);
    }

    /// @inheritdoc IVCDeal
    function removeAcceptedToken(address token) external onlyRole(ADMIN_ROLE) {
        VCDealStorage storage $ = _getVCDealStorage();
        if (!$.acceptedTokens[token]) revert TokenNotAccepted();

        $.acceptedTokens[token] = false;

        emit PaymentTokenRemoved(token);
    }

    /// @inheritdoc IVCDeal
    function toggleDealStatus(bytes32 dealId, DealStatus status) external onlyRole(ADMIN_ROLE) {
        VCDealStorage storage $ = _getVCDealStorage();
        Deal memory deal = $.deals[dealId];
        if (deal.status == DealStatus.None || deal.status == DealStatus.Transferred || deal.status == status) {
            revert InvalidDealStatus(dealId, deal.status);
        }

        $.deals[dealId].status = status;
        emit DealStatusToggled(dealId, deal.status, status);
    }

    /// @inheritdoc IVCDeal
    function setCommissionFee(uint96 commissionFee_) external onlyRole(ADMIN_ROLE) {
        if (commissionFee_ > Constants.WEI6 / 2) revert InvalidCommissionFee(); // not great than 50%

        VCDealStorage storage $ = _getVCDealStorage();
        $.commissionFee = commissionFee_;

        emit CommissionFeeUpdated($.commissionFee, commissionFee_);
    }

    /// @inheritdoc IVCDeal
    function setFeeRecipient(address feeRecipient_) external onlyRole(ADMIN_ROLE) {
        VCDealStorage storage $ = _getVCDealStorage();
        $.feeRecipient = feeRecipient_;

        emit FeeRecipientUpdated($.feeRecipient, feeRecipient_);
    }

    /// @inheritdoc IVCDeal
    function getDeal(bytes32 dealId) external view returns (Deal memory deal) {
        VCDealStorage storage $ = _getVCDealStorage();
        deal = $.deals[dealId];
    }

    /// @inheritdoc IVCDeal
    function getOrder(bytes32 orderId) external view returns (Order memory order) {
        VCDealStorage storage $ = _getVCDealStorage();
        order = $.orders[orderId];
    }

    /// @inheritdoc IVCDeal
    function getDealPurchasedAmount(bytes32 dealId, address token) external view returns (uint256 amount) {
        VCDealStorage storage $ = _getVCDealStorage();
        amount = $.purchasedAmounts[dealId][token];
    }

    /// @inheritdoc IVCDeal
    function getUserOrders(bytes32 dealId, address user) external view returns (bytes32[] memory orders) {
        VCDealStorage storage $ = _getVCDealStorage();
        orders = $.userOrders[dealId][user];
    }

    /// @inheritdoc IVCDeal
    function isTokenAccepted(address token) external view returns (bool isAccepted) {
        VCDealStorage storage $ = _getVCDealStorage();
        isAccepted = $.acceptedTokens[token];
    }

    /// @inheritdoc IVCDeal
    function commissionFee() external view returns (uint96) {
        VCDealStorage storage $ = _getVCDealStorage();
        return $.commissionFee;
    }

    /// @inheritdoc IVCDeal
    function feeRecipient() external view returns (address) {
        VCDealStorage storage $ = _getVCDealStorage();
        return $.feeRecipient;
    }

    function _convertToWEI18(address token, uint256 amount) private view returns (uint256) {
        uint256 decimals = IERC20Metadata(token).decimals();
        return amount * 1 ether / 10 ** decimals;
    }

    function _calculateUserTotalPurchasedAmount(bytes32 dealId, address user) private view returns (uint256) {
        VCDealStorage storage $ = _getVCDealStorage();

        uint256 totalPurchasedAmount = 0;
        bytes32[] memory orders = $.userOrders[dealId][user];
        for (uint256 i = 0; i < orders.length; i++) {
            Order memory order = $.orders[orders[i]];
            if (order.status != OrderStatus.Purchased) continue;
            totalPurchasedAmount += _convertToWEI18(order.paymentToken, order.amount);
        }

        return totalPurchasedAmount;
    }

    /// @inheritdoc UUPSUpgradeable
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) { }
}
