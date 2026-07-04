// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IQuote} from "./IQuote.sol";

/// @title Native RFQ Pool Interface
interface INativeRFQPool is IQuote {
    /// @notice Execute an RFQ trade with a signed quote
    /// @notice The amount of sellerToken sold in this trade
    /// @param quote The RFQ quote containing trade details
    function tradeRFQT(uint256 effectiveSellerTokenAmount, RFQTQuote memory quote) external;

    /// @notice Fill an order with permit2 authorization
    /// @notice The amount of tokenIn sold in this trade
    /// @param quote The quote containing trade parameters
    function fillOrder(uint256 effectiveAmountIn, PermitQuote memory quote) external;

    /// @notice Emitted when a signer's status is updated
    event SignerUpdated(address signer, bool isSigner);

    /// @notice Emitted when treasury address is set
    event TreasurySet(address treasury);

    /// @notice Event emitted when a whitelisted signer status is updated
    event WhitelistedSignerUpdated(address indexed account, bool status);

    /// @notice Emitted when an RFQ trade is executed
    event RFQTrade(
        address recipient,
        address sellerToken,
        address buyerToken,
        uint256 sellerTokenAmount,
        uint256 buyerTokenAmount,
        bytes16 quoteId,
        address signer
    );

    /// @notice Emitted when an order is filled
    event OrderFilled(
        address recipient,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 amountOut,
        address marketMaker,
        bytes orderBookSig,
        bytes32 orderBookDigest
    );
}
