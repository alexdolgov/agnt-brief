// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {ISignatureTransfer} from "@permit2/interfaces/ISignatureTransfer.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EIP712, ECDSA} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

import {IWETH9} from "./interfaces/IWETH9.sol";
import {INativeRouter} from "./interfaces/INativeRouter.sol";

import "./libraries/ConstantsLib.sol";
import {Orders} from "./libraries/Order.sol";
import {Multicall} from "./libraries/Multicall.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";
import {TransferHelper} from "./libraries/TransferHelper.sol";
import {ReentrancyGuardTransient} from "./libraries/ReentrancyGuardTransient.sol";

import {CreditVault} from "./CreditVault.sol";
import {NativeRFQPool} from "./NativeRFQPool.sol";
import {ExternalSwap} from "./libraries/ExternalSwap.sol";

contract NativeRouter is INativeRouter, EIP712, Ownable2Step, Pausable, Multicall, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    /// @dev Address of the Wrapped Ether (WETH9) contract
    address public immutable WETH9;

    /// @dev Uniswap Permit2 contract address
    address constant PERMIT2 = 0x000000000022D473030F116dDEE9F6B43aC78BA3;

    /// @dev Address of the CreditVault contract that manages credit and native pools
    address public vault;

    /// @notice Mapping of all trusted Native pools
    mapping(address => bool) public isNativePools;

    /// @dev Address of signer authorized to sign tradeRFQT and fillOrder signatures
    mapping(address => bool) public signers;

    /// @dev Mapping to track which external routers are whitelisted for swaps
    mapping(address => bool) public whitelistRouter;

    /*//////////////////////////////////////////////////////////////////////////
                                     RECEIVE FUNCTION
    //////////////////////////////////////////////////////////////////////////*/

    receive() external payable {
        require(msg.sender == WETH9, ErrorsLib.OnlyWETH9());
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor(address _vault, address _WETH9, address _signer) EIP712("Native Router", "1") {
        require(_vault != address(0) && _WETH9 != address(0), ErrorsLib.ZeroAddress());

        vault = _vault;
        WETH9 = _WETH9;

        setSigner(_signer, true);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    EXTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Execute a Request for Quote (RFQ) trade based on market maker's signed quote
    /// @dev This function facilitates trades between swappers and Native's partnered market makers:
    function tradeRFQT(RFQTQuote memory quote) external payable override nonReentrant whenNotPaused {
        require(quote.widgetFee.feeRate <= MAX_WIDGET_FEE_BIPS, ErrorsLib.InvalidWidgetFeeRate());
        require(block.timestamp <= quote.deadlineTimestamp, ErrorsLib.QuoteExpired());

        _verifyRFQSignature(quote);

        bool isNativePool = isNativePools[quote.pool];
        // address(this) is used for externalSwap
        address payee = isNativePool ? NativeRFQPool(payable(quote.pool)).treasury() : address(this);

        uint256 effectiveSellerTokenAmount =
            _transferSellerToken(quote.multiHop, payee, quote.sellerToken, quote.sellerTokenAmount, quote.widgetFee);

        if (isNativePool) {
            NativeRFQPool(payable(quote.pool)).tradeRFQT(effectiveSellerTokenAmount, quote);
        } else if (whitelistRouter[quote.pool]) {
            Orders.Order memory order = Orders.Order({
                id: 0, // not used
                signer: address(0), // not used
                buyer: quote.pool,
                seller: address(0), // not used
                buyerToken: quote.buyerToken,
                sellerToken: quote.sellerToken,
                buyerTokenAmount: quote.buyerTokenAmount,
                sellerTokenAmount: quote.sellerTokenAmount,
                deadlineTimestamp: quote.deadlineTimestamp,
                caller: msg.sender,
                quoteId: quote.quoteId
            });

            uint256 actualAmountOut = ExternalSwap.externalSwap(
                order, effectiveSellerTokenAmount, quote.recipient, address(this), quote.externalSwapCalldata
            );

            require(
                actualAmountOut >= quote.amountOutMinimum,
                ErrorsLib.NotEnoughAmountOut(actualAmountOut, quote.amountOutMinimum)
            );
        } else {
            revert ErrorsLib.InvalidNativePool();
        }
    }

    /// @notice Executes a trade where the swapper uses Permit2 to authorize token transfer
    /// @param quote The quote details containing trade parameters (amounts, tokens, deadlines)
    /// @param swapperPermit Permit2 transfer authorization details
    /// @param swapperSig Signature from the swapper authorizing the transfer via Permit2
    function fillOrder(
        PermitQuote memory quote,
        ISignatureTransfer.PermitTransferFrom calldata swapperPermit,
        bytes calldata swapperSig
    ) external nonReentrant whenNotPaused {
        // Validate widget fee rate
        require(quote.widgetFee.feeRate <= MAX_WIDGET_FEE_BIPS, ErrorsLib.InvalidWidgetFeeRate());
        require(
            block.timestamp <= quote.deadline && block.timestamp <= swapperPermit.deadline, ErrorsLib.QuoteExpired()
        );

        // Verify permit2 token details match the quote
        require(
            swapperPermit.permitted.token == quote.tokenIn && swapperPermit.permitted.amount == quote.amountIn,
            ErrorsLib.Permit2TokenMismatch()
        );

        // Verify pool is valid
        require(isNativePools[quote.pool], ErrorsLib.InvalidNativePool());

        // Verify order signature
        _verifyOrderSignature(quote);

        // Note: Since router will charges widget fee, can't transfer directly to recipient
        // Execute permit2 transfer: swapper -> router
        ISignatureTransfer(PERMIT2).permitTransferFrom(
            swapperPermit,
            ISignatureTransfer.SignatureTransferDetails({to: address(this), requestedAmount: quote.amountIn}),
            quote.swapper,
            swapperSig
        );

        // Calculate and handle widget fee if applicable
        uint256 widgetFee = quote.widgetFee.feeRate > 0 ? (quote.amountIn * quote.widgetFee.feeRate) / 10_000 : 0;
        uint256 effectiveAmountIn = quote.amountIn;

        if (widgetFee > 0) {
            effectiveAmountIn -= widgetFee;
            // Transfer widget fee to fee recipient
            IERC20(quote.tokenIn).safeTransfer(quote.widgetFee.feeRecipient, widgetFee);
        }

        // Transfer tokens to market maker's treasury
        IERC20(quote.tokenIn).safeTransfer(NativeRFQPool(payable(quote.pool)).treasury(), effectiveAmountIn);

        // Execute the trade on the RFQ pool
        NativeRFQPool(payable(quote.pool)).fillOrder(effectiveAmountIn, quote);
    }

    /// @notice Unwraps WETH9 to ETH by unwrapping all WETH currently in this contract
    /// @dev SECURITY CONSIDERATION: This function is permissionless and will unwrap ALL WETH in the contract
    /// @dev Must be called immediately after receiving WETH in the same multicall transaction
    /// @dev Typical usage flow:
    ///      1. Call tradeRFQ/fillOrder to receive WETH (in multicall)
    ///      2. Call this function immediately in the same multicall to unwrap received WETH
    ///      3. Never leave WETH in this contract between transactions
    /// @param recipient The address that will receive the unwrapped ETH
    function unwrapWETH9(address recipient) public payable nonReentrant {
        require(recipient != address(0), ErrorsLib.ZeroAddress());
        uint256 balanceWETH9 = IWETH9(WETH9).balanceOf(address(this));
        require(balanceWETH9 > 0, ErrorsLib.InsufficientWETH9());

        uint256 beforeBalance = address(this).balance;
        IWETH9(WETH9).withdraw(balanceWETH9);
        balanceWETH9 = address(this).balance - beforeBalance;

        TransferHelper.safeTransferETH(recipient, balanceWETH9);

        emit UnwrapWETH9(recipient, balanceWETH9);
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     ADMIN FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @notice Emergency function to refund stuck ETH from the contract
    /// @dev Can only be called by contract owner in emergency situations
    /// @param recipient The address to receive the refunded ETH
    /// @param amount The amount of ETH to refund
    function refundETH(address recipient, uint256 amount) public payable onlyOwner nonReentrant {
        amount = Math.min(address(this).balance, amount);

        TransferHelper.safeTransferETH(recipient, amount);
        emit RefundETH(recipient, amount);
    }

    /// @notice Emergency function to refund stuck ERC20 tokens from the contract
    /// @dev Can only be called by contract owner in emergency situations
    /// @param token The address of the ERC20 token to refund
    /// @param recipient The address to receive the refunded tokens
    /// @param amount The amount of tokens to refund
    function refundERC20(address token, address recipient, uint256 amount) public payable onlyOwner nonReentrant {
        amount = Math.min(IERC20(token).balanceOf(address(this)), amount);

        TransferHelper.safeTransfer(token, recipient, amount);

        emit RefundERC20(token, recipient, amount);
    }

    /// @notice Set the authorized signer for widget fee and auto-sign messages
    /// @dev Can only be called by contract owner
    /// @param signer The new signer address to be set
    /// @param isSigner Whether the signer is authorized to sign RFQ trade and fillOrder signatures
    function setSigner(address signer, bool isSigner) public onlyOwner {
        require(signer != address(0), ErrorsLib.ZeroAddress());

        signers[signer] = isSigner;
        emit SignerUpdated(signer, isSigner);
    }

    /// @notice Batch set whitelist status for external routers
    /// @dev Can only be called by contract owner
    /// @param routers Array of router addresses to be whitelisted/blacklisted
    /// @param values Array of boolean values corresponding to each router
    function setWhitelistRouter(address[] calldata routers, bool[] calldata values) external onlyOwner {
        require(routers.length == values.length, ErrorsLib.ArraysLengthMismatch());

        for (uint256 i; i < routers.length; ++i) {
            whitelistRouter[routers[i]] = values[i];

            emit WhitelistRouterSet(routers[i], values[i]);
        }
    }

    /// @notice Updates native pool whitelist status
    /// @dev Only callable by owner
    /// @param isActive to whitelist, false to remove from whitelist
    function setNativePool(address pool, bool isActive) external onlyOwner {
        require(pool != address(0), ErrorsLib.ZeroAddress());

        isNativePools[pool] = isActive;

        emit NativePoolUpdated(pool, isActive);
    }

    /// @notice Pauses all RFQ and fillOrder operations
    function pause() external onlyOwner {
        _pause();
    }

    /// @notice Unpauses all RFQ and fillOrder operations
    function unpause() external onlyOwner {
        _unpause();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     INTERNAL FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    function _transferSellerToken(
        bool multiHop,
        address payee,
        address sellerToken,
        uint256 sellerTokenAmount,
        WidgetFee memory widgetFee
    ) internal returns (uint256 effectiveSellerTokenAmount) {
        if (msg.value > 0 && !multiHop) {
            require(sellerToken == address(0), ErrorsLib.UnexpectedMsgValue());
            require(sellerTokenAmount == msg.value, ErrorsLib.InvalidAmount());

            // slither-disable-next-line arbitrary-send-eth
            IWETH9(WETH9).deposit{value: sellerTokenAmount}();

            effectiveSellerTokenAmount = _chargeWidgetFee(widgetFee, sellerTokenAmount, WETH9, true);

            TransferHelper.safeTransfer(WETH9, payee, effectiveSellerTokenAmount);
        } else {
            effectiveSellerTokenAmount = _chargeWidgetFee(widgetFee, sellerTokenAmount, sellerToken, false);

            if (multiHop) {
                TransferHelper.safeTransfer(sellerToken, payee, effectiveSellerTokenAmount);
            } else {
                TransferHelper.safeTransferFrom(sellerToken, msg.sender, payee, effectiveSellerTokenAmount);
            }
        }
    }

    function _chargeWidgetFee(
        WidgetFee memory widgetFee,
        uint256 amountIn,
        address sellerToken,
        bool hasAlreadyPaid
    ) internal returns (uint256) {
        uint256 fee = widgetFee.feeRate > 0 ? (amountIn * widgetFee.feeRate) / 10_000 : 0;

        if (fee > 0) {
            TransferHelper.safeTransferFrom(
                sellerToken, hasAlreadyPaid ? address(this) : msg.sender, widgetFee.feeRecipient, fee
            );
            emit WidgetFeeTransfer(widgetFee.feeRecipient, widgetFee.feeRate, fee, sellerToken);

            amountIn -= fee;
        }

        return amountIn;
    }

    function _verifyRFQSignature(RFQTQuote memory quote) internal view {
        bytes32 quoteHash = keccak256(
            abi.encode(
                quote.pool,
                quote.signer,
                quote.recipient,
                quote.sellerToken,
                quote.buyerToken,
                quote.sellerTokenAmount,
                quote.buyerTokenAmount,
                quote.deadlineTimestamp,
                quote.nonce,
                quote.multiHop,
                quote.signature,
                quote.externalSwapCalldata,
                msg.sender
            )
        );

        bytes32 digest = _hashTypedDataV4(
            keccak256(
                abi.encode(
                    RFQ_QUOTE_WIDGET_SIGNATURE_HASH, quoteHash, quote.widgetFee.feeRecipient, quote.widgetFee.feeRate
                )
            )
        );

        address recoveredSigner = ECDSA.recover(digest, quote.widgetFeeSignature);

        require(signers[recoveredSigner], ErrorsLib.InvalidSignature());
    }

    function _verifyOrderSignature(PermitQuote memory quote) internal view {
        bytes32 digest = _hashTypedDataV4(
            keccak256(
                abi.encode(
                    FILL_ORDER_SIGNATURE_HASH,
                    quote.nonce,
                    quote.recipient,
                    quote.tokenIn,
                    quote.tokenOut,
                    quote.amountIn,
                    quote.amountOut,
                    quote.deadline,
                    quote.widgetFee.feeRecipient,
                    quote.widgetFee.feeRate
                )
            )
        );

        address recoveredSigner = ECDSA.recover(digest, quote.signature);
        address recoveredMMSigner = ECDSA.recover(quote.orderBookDigest, quote.orderBookSig);

        require(signers[recoveredSigner] && quote.marketMaker == recoveredMMSigner, ErrorsLib.InvalidSignature());
    }
}
