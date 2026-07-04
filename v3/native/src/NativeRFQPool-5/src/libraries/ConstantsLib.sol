// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

/// @dev Every interval, the system performs an epoch update to calculate and settle funding fees between traders
uint256 constant EPOCH_UPDATE_INTERVAL = 8 hours;

/// @dev Maximum early withdrawal fee in basis points (10%)
uint256 constant MAX_EARLY_WITHDRAW_FEE_BIPS = 1000;

/// @dev Maximum widget fee in basis points (20%)
uint256 constant MAX_WIDGET_FEE_BIPS = 2000;

/// @dev The EIP-712 typeHash for Settle Market Maker Position Authorization.
bytes32 constant SETTLEMENT_REQUEST_SIGNATURE_HASH = keccak256(
    "SettlementRequest(uint256 nonce,uint256 deadline,address trader,bytes32 positionUpdates,address recipient)"
);

/// @dev The EIP-712 typeHash for Remove Collateral Authorization.
bytes32 constant REMOVE_COLLATERAL_REQUEST_SIGNATURE_HASH =
    keccak256("RemoveCollateralRequest(uint256 nonce,uint256 deadline,address trader,bytes32 tokens,address recipient)");

/// @dev The EIP-712 typeHash for Liquidation Authorization.
bytes32 constant LIQUIDATION_REQUEST_SIGNATURE_HASH = keccak256(
    "LiquidationRequest(uint256 nonce,uint256 deadline,address trader,bytes32 positionUpdates,bytes32 claimCollaterals,address recipient)"
);

/// @dev The EIP-712 typeHash for Market Maker RFQ Quote Authorization.
bytes32 constant ORDER_SIGNATURE_HASH = keccak256(
    "Order(uint256 id,address signer,address buyer,address seller,address buyerToken,address sellerToken,uint256 buyerTokenAmount,uint256 sellerTokenAmount,uint256 deadlineTimestamp,address caller,bytes16 quoteId)"
);

/// @dev The EIP-712 typeHash for RFQ Quote Widget Authorization.
bytes32 constant RFQ_QUOTE_WIDGET_SIGNATURE_HASH =
    keccak256("RFQTQuote(bytes32 quote,address widgetFeeRecipient,uint256 widgetFeeRate)");

/// @dev The EIP-712 typeHash for Fill Order Authorization.
bytes32 constant FILL_ORDER_SIGNATURE_HASH = keccak256(
    "fillOrder(uint256 nonce,address recipient,address tokenIn,address tokenOut,uint256 amountIn,uint256 amountOut,uint256 deadline,address widgetFeeRecipient,uint256 widgetFeeRate)"
);
