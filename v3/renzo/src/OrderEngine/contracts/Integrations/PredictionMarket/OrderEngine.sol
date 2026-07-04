// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import { OwnableUpgradeable } from "@openzeppelin-upgrades/contracts/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../../Errors/Errors.sol";
import "./OrderEngineStorage.sol";

contract OrderEngine is OwnableUpgradeable, OrderEngineStorageV1 {
    using SafeERC20 for IERC20;

    event OrderCreated(uint256 indexed orderId, address indexed user, OrderRequest orderRequest);
    event OrderExecuted(uint256 indexed orderId, address indexed user);
    event OrderCancelled(uint256 indexed orderId, address indexed user);
    event MarketConfigured(
        bytes32 indexed marketKey,
        OrderSide orderSide,
        bytes32 marketId,
        bytes32 exchangeId,
        address vaultAddress
    );
    event MarketRemoved(
        bytes32 indexed marketKey,
        OrderSide orderSide,
        bytes32 marketId,
        bytes32 exchangeId
    );
    event FeeConfigUpdated(uint256 newOrderProcessingFee, address newFeeRecipient);
    event OrderPaymentReceiverUpdated(address newOrderPaymentReceiver);

    modifier onlyOrderAdmin() {
        if (!roleManager.isOrderAdmin(msg.sender)) revert NotOrderAdmin();

        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the factory contract
     * @param _owner The initial owner of the factory
     * @param _paymentAsset The ERC20 token address used for payments
     */
    function initialize(
        address _owner,
        IERC20 _paymentAsset,
        IRoleManager _roleManager,
        uint256 _minOrderAmount,
        uint256 _orderProcessingFee,
        address _feeRecipient,
        address _orderPaymentReceiver
    ) public initializer {
        if (
            _owner == address(0) ||
            address(_paymentAsset) == address(0) ||
            address(_roleManager) == address(0) ||
            _minOrderAmount == 0 ||
            _feeRecipient == address(0) ||
            _orderProcessingFee == 0 ||
            _orderPaymentReceiver == address(0)
        ) revert InvalidZeroInput();
        _transferOwnership(_owner);
        paymentAsset = _paymentAsset;
        roleManager = _roleManager;
        minOrderAmount = _minOrderAmount;
        orderProcessingFee = _orderProcessingFee;
        feeRecipient = _feeRecipient;
        orderPaymentReceiver = _orderPaymentReceiver;
    }

    function updateFeeConfig(
        uint256 _orderProcessingFee,
        address _feeRecipient
    ) external onlyOwner {
        if (_feeRecipient == address(0) || _orderProcessingFee == 0) revert InvalidZeroInput();
        orderProcessingFee = _orderProcessingFee;
        feeRecipient = _feeRecipient;

        emit FeeConfigUpdated(_orderProcessingFee, _feeRecipient);
    }

    function updateOrderPaymentReceiver(address _orderPaymentReceiver) external onlyOwner {
        if (_orderPaymentReceiver == address(0)) revert InvalidZeroInput();
        orderPaymentReceiver = _orderPaymentReceiver;
        emit OrderPaymentReceiverUpdated(_orderPaymentReceiver);
    }

    function configureSupportedMarkets(
        MarketVaultConfig[] calldata marketVaultConfigs
    ) external onlyOwner {
        if (marketVaultConfigs.length == 0) revert InvalidZeroInput();
        for (uint256 i = 0; i < marketVaultConfigs.length; i++) {
            // check for zero value inputs
            if (
                marketVaultConfigs[i].marketConfig.marketId == bytes32(0) ||
                marketVaultConfigs[i].marketConfig.exchangeId == bytes32(0) ||
                address(marketVaultConfigs[i].vault) == address(0)
            ) revert InvalidZeroInput();

            // configure market
            _configureMarket(marketVaultConfigs[i]);
        }
    }

    function removeMarketConfiguration(MarketConfig[] calldata marketConfigs) external onlyOwner {
        if (marketConfigs.length == 0) revert InvalidZeroInput();
        for (uint256 i = 0; i < marketConfigs.length; i++) {
            // check for zero value inputs
            if (
                marketConfigs[i].marketId == bytes32(0) || marketConfigs[i].exchangeId == bytes32(0)
            ) revert InvalidZeroInput();
            _removeMarketConfiguration(marketConfigs[i]);
        }
    }

    function createOrder(OrderRequest calldata _orderRequest) external {
        // verify order request
        _verifyOrderRequest(_orderRequest);

        // Transfer payment asset from caller to contract
        paymentAsset.safeTransferFrom(msg.sender, address(this), _orderRequest.paymentAssetAmount);

        // Increment order nonce for order
        orderNonce += 1;

        // create Order Info
        OrderInfo memory _orderInfo = OrderInfo({
            orderNonce: orderNonce,
            user: msg.sender,
            orderRequest: _orderRequest
        });

        // revert if order already exists
        if (orders[orderNonce].user != address(0)) revert OrderAlreadyExists();

        orders[orderNonce] = _orderInfo;
        // Implementation for creating an order

        emit OrderCreated(orderNonce, msg.sender, _orderRequest);
    }

    // Process an order based on its ID. If order executed mint vault shares and transfer to user
    // If not executed cancel the order and refund user.
    function processOrder(ProcessedOrder[] calldata _processedOrders) external onlyOrderAdmin {
        for (uint256 i = 0; i < _processedOrders.length; i++) {
            OrderInfo storage orderInfo = orders[_processedOrders[i].orderId];
            // revert if order does not exist
            if (orderInfo.user == address(0)) revert OrderDoesNotExist();

            if (_processedOrders[i].isExecuted) {
                // Order executed logic
                _executeOrder(orderInfo);
                emit OrderExecuted(_processedOrders[i].orderId, orderInfo.user);
            } else {
                // TODO: add fee deduction logic. to protect against spamming

                // Deduct order processing fee
                paymentAsset.safeTransfer(feeRecipient, orderProcessingFee);

                // Order not executed, refund user
                paymentAsset.safeTransfer(
                    orderInfo.user,
                    orderInfo.orderRequest.paymentAssetAmount - orderProcessingFee
                );
                emit OrderCancelled(_processedOrders[i].orderId, orderInfo.user);
            }

            // Clean up storage
            delete orders[_processedOrders[i].orderId];
        }
    }

    /**********************************
     ******** INTERNAL FUNCTIONS ******
     **********************************
     */

    function _executeOrder(OrderInfo storage orderInfo) internal {
        // Implementation for executing the order
        // Mints vault shares to the user based on order details
        bytes32 marketKey = _getMarketKey(
            orderInfo.orderRequest.orderSide,
            orderInfo.orderRequest.marketId,
            orderInfo.orderRequest.exchangeId
        );

        ILEZyVault vault = marketToVault[marketKey];
        uint256 sharesToMint = orderInfo.orderRequest.size * (10 ** vault.decimals()); // number of contracts
        vault.mintShares(sharesToMint, orderInfo.user);

        // Send payment assets to protocol controlled payment receiver
        paymentAsset.safeTransfer(orderPaymentReceiver, orderInfo.orderRequest.paymentAssetAmount);
    }

    function _getMarketKey(
        OrderSide orderSide,
        bytes32 marketId,
        bytes32 exchangeId
    ) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(orderSide, marketId, exchangeId));
    }

    function _verifyOrderRequest(OrderRequest calldata _orderRequest) internal view {
        bytes32 marketKey = _getMarketKey(
            _orderRequest.orderSide,
            _orderRequest.marketId,
            _orderRequest.exchangeId
        );
        // Check if market is supported
        if (address(marketToVault[marketKey]) == address(0)) revert MarketNotSupported();

        // TODO: verify payment amount
        // Check if paymentAsssetAmount is non zero and sufficient i.e. paymentAssetAmount >= fillPrice * size
        if (
            _orderRequest.paymentAssetAmount == 0 ||
            _orderRequest.fillPrice * _orderRequest.size > _orderRequest.paymentAssetAmount
        ) revert InvalidZeroInput();
        if (_orderRequest.deadline < block.timestamp) revert OrderExpired();

        // TODO: add min order amount check in payment asset
        if (_orderRequest.paymentAssetAmount < minOrderAmount) revert InvalidOrderAmount();
    }

    function _configureMarket(MarketVaultConfig calldata marketVaultConfig) internal {
        // Calculate market key
        bytes32 marketKey = _getMarketKey(
            marketVaultConfig.marketConfig.orderSide,
            marketVaultConfig.marketConfig.marketId,
            marketVaultConfig.marketConfig.exchangeId
        );

        // Set market to vault mapping
        marketToVault[marketKey] = marketVaultConfig.vault;

        // emit event for market configuration
        emit MarketConfigured(
            marketKey,
            marketVaultConfig.marketConfig.orderSide,
            marketVaultConfig.marketConfig.marketId,
            marketVaultConfig.marketConfig.exchangeId,
            address(marketVaultConfig.vault)
        );
    }

    function _removeMarketConfiguration(MarketConfig calldata marketConfig) internal {
        // Calculate market key
        bytes32 marketKey = _getMarketKey(
            marketConfig.orderSide,
            marketConfig.marketId,
            marketConfig.exchangeId
        );

        // Remove market configuration
        delete marketToVault[marketKey];

        // emit event for market removal
        emit MarketRemoved(
            marketKey,
            marketConfig.orderSide,
            marketConfig.marketId,
            marketConfig.exchangeId
        );
    }
}
