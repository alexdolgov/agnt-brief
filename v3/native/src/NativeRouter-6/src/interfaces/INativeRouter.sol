// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IQuote} from "./IQuote.sol";
import {ISignatureTransfer} from "@permit2/interfaces/ISignatureTransfer.sol";

/// @title Native Router Interface
interface INativeRouter is IQuote {
    /// @notice Execute an RFQ trade with a signed quote
    /// @param quote The RFQ quote containing trade details
    function tradeRFQT(
        RFQTQuote memory quote,
        uint256 _actualSellerTokenAmount,
        uint256 _actualAmountOutMinimum
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

    /// @notice Emitted when RFQ trade widget fee is transferred
    event WidgetFeeTransfer(
        address widgetFeeRecipient, uint256 widgetFeeRate, uint256 widgetFeeAmount, address widgetFeeToken
    );

    /// @notice Emitted when permit widget fees are withdrawn
    event WidgetFeesWithdrawn(address indexed recipient, address token, uint256 amount);

    /// @notice Emitted when WETH9 is unwrapped
    event UnwrapWETH9(address indexed recipient, uint256 amount);

    /// @notice Emitted when router is whitelisted or blacklisted
    event WhitelistRouterSet(address indexed router, bool isWhitelisted);
}
