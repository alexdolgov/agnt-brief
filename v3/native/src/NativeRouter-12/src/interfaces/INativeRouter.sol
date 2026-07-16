// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IQuote} from "./IQuote.sol";
import {ISignatureTransfer} from "@permit2/interfaces/ISignatureTransfer.sol";

/// @title Native Router Interface
interface INativeRouter is IQuote {
    /// @notice Execute an RFQ trade with a signed quote
    /// @param quote The RFQ quote containing trade details
    /// @param wNLPIn Same as quote.buyerToken if it's a wrapped token, address(0) otherwise
    /// @param wNLPOut Same as quote.sellerToken if it's a wrapped token, address(0) otherwise
    /// @param actualSellerAmount The actual amount of tokens to be sold
    /// @param actualMinOutputAmount The minimum amount of tokens to be received
    function tradeRFQT(
        RFQTQuote memory quote,
        address wNLPIn,
        address wNLPOut,
        uint256 actualSellerAmount,
        uint256 actualMinOutputAmount
    ) external payable;

    /// @notice Emitted when ETH is refunded
    event RefundETH(address recipient, uint256 amount);

    /// @notice Emitted when ERC20 tokens are refunded
    event RefundERC20(address token, address recipient, uint256 amount);

    // @notice Emitted when a signer's status is updated
    event SignerUpdated(address signer, bool isSigner);

    /// @notice Emitted when a native pool's status is updated
    /// @param pool The address of the native pool
    /// @param isActive The new status of the pool
    event NativePoolUpdated(address indexed pool, bool isActive);

    /// @notice Emitted when a wrap token's status is updated
    /// @param token The address of the wrap token
    /// @param isWrapToken The new status of the wrap token
    event WrapTokenUpdated(address indexed token, bool isWrapToken);

    /// @notice Emitted when RFQ trade widget fee is transferred
    event WidgetFeeTransfer(
        address widgetFeeRecipient, uint256 widgetFeeRate, uint256 widgetFeeAmount, address widgetFeeToken
    );

    /// @notice Emitted when WETH9 is unwrapped
    event UnwrapWETH9(address indexed recipient, uint256 amount);
}
