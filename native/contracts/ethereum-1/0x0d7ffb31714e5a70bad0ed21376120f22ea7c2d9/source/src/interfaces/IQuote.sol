// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

interface IQuote {
    struct WidgetFee {
        address feeRecipient;
        uint256 feeRate;
    }

    struct RFQTQuote {
        /// @notice RFQ pool address
        address pool;
        /// @notice market maker
        address signer;
        /// @notice The recipient of the buyerToken at the end of the trade.
        address recipient;
        /// @notice The token that the trader sells.
        address sellerToken;
        /// @notice The token that the trader buys.
        address buyerToken;
        /// @notice The max amount of sellerToken sold.
        uint256 sellerTokenAmount;
        /// @notice The amount of buyerToken bought when sellerTokenAmount is sold.
        uint256 buyerTokenAmount;
        /// @notice Minimum buyerToken amount received
        uint256 amountOutMinimum;
        /// @notice The Unix timestamp (in seconds) when the quote expires.
        uint256 deadlineTimestamp;
        /// @notice Nonces are used to protect against replay.
        uint256 nonce;
        /// @notice confidence control factor T
        uint256 confidenceExtractedValueT;
        /// @notice confidence control factor N
        uint256 confidenceExtractedValueN;
        /// @notice confidence control factor E
        uint256 confidenceExtractedValueE;
        /// @notice confidence control factor M
        uint256 confidenceExtractedValueM;
        /// @notice Unique identifier for the quote.
        /// @dev Generated off-chain via a distributed UUID generator.
        bytes16 quoteId;
        /// @dev  false if this quote is for the 1st hop of a multi-hop or a single-hop, in which case msg.sender is the payer.
        ///       true if this quote is for 2nd or later hop of a multi-hop, in which case router is the payer.
        bool multiHop;
        /// @notice Signature provided by the market maker (EIP-191).
        bytes signature;
        /// @notice Widget fee information
        WidgetFee widgetFee;
        /// @notice Widget fee signature
        bytes widgetFeeSignature;
    }

    struct ExternalSwap {
        /// @notice The external liquidity source contract
        address source;
        /// @notice The contract address that needs seller token approval (may differ from source)
        address spender;
        /// @notice The recipient of the buyerToken at the end of the swap
        address recipient;
        /// @notice The token to be sold/swapped from
        address sellerToken;
        /// @notice The amount of sellerToken to be swapped
        uint256 sellerTokenAmount;
        /// @notice The token that the trader buys
        address buyerToken;
        /// @notice Minimum amount of buyerToken expected to receive
        uint256 amountOutMinimum;
        /// @notice The Unix timestamp (in seconds) when the swap expires
        uint256 deadlineTimestamp;
        /// @notice Unique identifier for the quote
        bytes16 quoteId;
        /// @notice Call data for the external swap
        bytes callData;
        /// @notice EIP-712 signature authorizing the swap
        bytes signature;
    }
}
