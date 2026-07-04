// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {IQuote} from "./IQuote.sol";

/// @title Native RFQ Pool Interface
interface INativeRFQPool is IQuote {
    /// @notice Execute an RFQ trade with a signed quote
    /// @param effectiveSellerTokenAmount The amount of sellerToken sold in this trade
    /// @param wNLPIn Same as quote.buyerToken if it's a wrapped token, address(0) otherwise
    /// @param quote The RFQ quote containing trade details
    function tradeRFQT(uint256 effectiveSellerTokenAmount, address wNLPIn, RFQTQuote memory quote) external;

    /// @notice Emitted when a signer's status is updated
    event SignerUpdated(address signer, bool isSigner);

    /// @notice Emitted when treasury address is set
    event TreasurySet(address treasury);

    /// @notice Emitted when a wrap token's status is updated
    /// @param token The address of the wrap token
    /// @param isWrapToken The new status of the wrap token
    event WrapTokenUpdated(address indexed token, bool isWrapToken);

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
}
