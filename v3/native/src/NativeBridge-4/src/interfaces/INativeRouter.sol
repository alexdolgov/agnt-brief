// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IQuote} from "./IQuote.sol";

/// @title Native Router Interface
interface INativeRouter is IQuote {
    /// @notice Execute an RFQ trade with a signed quote
    /// @param quote The RFQ quote containing trade details
    /// @param actualSellerAmount The actual amount of tokens to be sold
    /// @param actualMinOutputAmount The minimum amount of tokens to be received
    function tradeRFQT(
        RFQTQuote memory quote,
        uint256 actualSellerAmount,
        uint256 actualMinOutputAmount
    ) external payable;

    /// @notice Execute an external swap through approved external sources
    /// @param params The external swap parameters including signature
    function externalSwap(ExternalSwap calldata params) external payable;

    /// @notice Emitted when ETH is refunded
    event RefundETH(address recipient, uint256 amount);

    /// @notice Emitted when ERC20 tokens are refunded
    event RefundERC20(address token, address recipient, uint256 amount);

    // @notice Emitted when a signer's status is updated
    event SignerUpdated(address signer, bool isSigner);

    /// @notice Emitted when a native pool's status is updated
    event NativePoolUpdated(address indexed pool, bool isActive);

    /// @notice Emitted when RFQ trade widget fee is transferred
    event WidgetFeeTransfer(
        address widgetFeeRecipient, uint256 widgetFeeRate, uint256 widgetFeeAmount, address widgetFeeToken
    );

    /// @notice Emitted when WETH9 is unwrapped
    event UnwrapWETH9(address indexed recipient, uint256 amount);

    /// @notice Emitted when an external swap is executed
    event ExternalSwapped(
        address indexed source,
        address indexed recipient,
        address indexed sellerToken,
        address buyerToken,
        uint256 sellerTokenAmount,
        uint256 buyerTokenAmount,
        bytes16 quoteId
    );

    /// @notice Emitted when an external swap source's status is updated
    event ExternalSwapSourceUpdated(address indexed source, bool isActive);
}
