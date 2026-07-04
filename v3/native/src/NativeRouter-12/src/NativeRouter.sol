// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Pausable} from "@openzeppelin/contracts/security/Pausable.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {Ownable2Step} from "@openzeppelin/contracts/access/Ownable2Step.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {EIP712, ECDSA} from "@openzeppelin/contracts/utils/cryptography/EIP712.sol";

import {IWETH9} from "./interfaces/IWETH9.sol";
import {INativeRouter} from "./interfaces/INativeRouter.sol";

import "./libraries/ConstantsLib.sol";
import {Multicall} from "./libraries/Multicall.sol";
import {ErrorsLib} from "./libraries/ErrorsLib.sol";
import {TransferHelper} from "./libraries/TransferHelper.sol";
import {ReentrancyGuardTransient} from "./libraries/ReentrancyGuardTransient.sol";

import {WNLP} from "./WNLP.sol";
import {CreditVault} from "./CreditVault.sol";
import {NativeRFQPool} from "./NativeRFQPool.sol";

contract NativeRouter is INativeRouter, EIP712, Ownable2Step, Pausable, Multicall, ReentrancyGuardTransient {
    using SafeERC20 for IERC20;
    using SafeCast for uint256;

    /// @dev Address of the CreditVault
    address public vault;

    /// @dev Address of the Wrapped Ether (WETH9) contract
    address public immutable WETH9;

    /// @notice Mapping of all trusted Native pools
    mapping(address => bool) public isNativePools;

    /// @dev Address of signer authorized to sign tradeRFQT signatures
    mapping(address => bool) public signers;

    /// @notice Mapping to track wrapped token status (e.g., WNLP)
    mapping(address => bool) public isWrapToken;

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
    /// @param quote The RFQ quote containing trade details and signatures
    /// @param wNLPIn Same as quote.buyerToken if it's a wrapped token, address(0) otherwise
    /// @param wNLPOut Same as quote.sellerToken if it's a wrapped token, address(0) otherwise
    /// @param actualSellerAmount The actual amount of tokens to be sold, can be different from quote amount within deviation limit
    /// @param actualMinOutputAmount The minimum amount of tokens to be received, overrides quote's amountOutMinimum if provided
    function tradeRFQT(
        RFQTQuote memory quote,
        address wNLPIn,
        address wNLPOut,
        uint256 actualSellerAmount,
        uint256 actualMinOutputAmount
    ) external payable override nonReentrant whenNotPaused {
        require(block.timestamp <= quote.deadlineTimestamp, ErrorsLib.QuoteExpired());
        require(quote.decayExponent <= MAX_DECAY_EXPONENT, ErrorsLib.InvalidDecayExponent());
        require(quote.widgetFee.feeRate <= MAX_WIDGET_FEE_BIPS, ErrorsLib.InvalidWidgetFeeRate());
        require(isNativePools[quote.pool], ErrorsLib.InvalidNativePool());

        _verifyRFQSignature(quote);

        uint256 effectiveSellerTokenAmount = quote.sellerTokenAmount;

        if (wNLPOut != address(0)) {
            // actualSellerAmount will be overridden with unwrapAndRedeemTo result, must be 0 to avoid conflicts
            require(actualSellerAmount == 0, "Actual seller amount must be 0");
            require(msg.sender == quote.recipient, "Cannot sell wrapped tokens to other recipients");
            require(!quote.multiHop, "Wrap tokens can only be used in first hop");

            require(
                isWrapToken[wNLPOut] && address(WNLP(wNLPOut).underlying()) == quote.sellerToken,
                ErrorsLib.InvalidWrapToken()
            );

            // convert quote.sellerTokenAmount to wNLP amount
            uint256 wnlpAmount = WNLP(wNLPOut).getWnlpByNlp(quote.sellerTokenAmount);

            // transfer wNLP token to this contract for redeeming underlying token
            IERC20(wNLPOut).safeTransferFrom(msg.sender, address(this), wnlpAmount);

            // redeem underlying token to this contract
            uint256 redeemUnderlyingAmount = WNLP(wNLPOut).unwrapAndRedeemTo(wnlpAmount, address(this), quote.recipient);

            // Override with actual underlying amount for subsequent amount deviation check and _transferSellerToken call
            actualSellerAmount = redeemUnderlyingAmount;

            // Set multiHop = true since underlying tokens are now in Router
            quote.multiHop = true;
        }

        // adjust the effectiveSellerTokenAmount and amountOutMinimum
        if (actualSellerAmount > 0) {
            uint256 deviation = (
                actualSellerAmount > quote.sellerTokenAmount
                    ? actualSellerAmount - quote.sellerTokenAmount
                    : quote.sellerTokenAmount - actualSellerAmount
            ) * 10_000 / quote.sellerTokenAmount;

            require(deviation < MAX_AMOUNT_DEVIATION_BPS, ErrorsLib.AmountDeviationExceeds());

            effectiveSellerTokenAmount = actualSellerAmount;
        }

        if (actualMinOutputAmount > 0) {
            quote.amountOutMinimum = actualMinOutputAmount;
        }

        // charge widget fee based on the actual amount
        effectiveSellerTokenAmount = _transferSellerToken(
            quote.multiHop,
            NativeRFQPool(payable(quote.pool)).treasury(),
            quote.sellerToken,
            effectiveSellerTokenAmount,
            quote.widgetFee
        );

        NativeRFQPool(payable(quote.pool)).tradeRFQT(effectiveSellerTokenAmount, wNLPIn, quote);
    }

    /// @notice Unwraps WETH9 to ETH by unwrapping all WETH currently in this contract
    /// @dev SECURITY CONSIDERATION: This function is permissionless and will unwrap ALL WETH in the contract
    /// @dev Must be called immediately after receiving WETH in the same multicall transaction
    /// @dev Typical usage flow:
    ///      1. Call tradeRFQ to receive WETH (in multicall)
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

    /// @notice Updates native pool whitelist status
    /// @dev Only callable by owner
    /// @param isActive to whitelist, false to remove from whitelist
    function setNativePool(address pool, bool isActive) external onlyOwner {
        require(pool != address(0), ErrorsLib.ZeroAddress());

        isNativePools[pool] = isActive;

        emit NativePoolUpdated(pool, isActive);
    }

    /// @notice Updates wrap token status
    /// @param token The address of the wrap token
    /// @param isWrap Whether the token is a wrap token
    function setWrapToken(address token, bool isWrap) external onlyOwner {
        require(token != address(0), ErrorsLib.ZeroAddress());

        isWrapToken[token] = isWrap;

        emit WrapTokenUpdated(token, isWrap);
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
            effectiveSellerTokenAmount = _chargeWidgetFee(widgetFee, sellerTokenAmount, sellerToken, multiHop);

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
            if (hasAlreadyPaid) {
                IERC20(sellerToken).safeTransfer(widgetFee.feeRecipient, fee);
            } else {
                TransferHelper.safeTransferFrom(sellerToken, msg.sender, widgetFee.feeRecipient, fee);
            }
            emit WidgetFeeTransfer(widgetFee.feeRecipient, widgetFee.feeRate, fee, sellerToken);

            amountIn -= fee;
        }

        return amountIn;
    }

    function _verifyRFQSignature(RFQTQuote memory quote) internal view {
        bytes32 quoteHash = keccak256(
            abi.encode(
                quote.pool,
                quote.recipient,
                quote.sellerToken,
                quote.buyerToken,
                quote.sellerTokenAmount,
                quote.buyerTokenAmount,
                quote.deadlineTimestamp,
                quote.decayStartTime,
                quote.decayExponent,
                quote.maxSlippageBps,
                quote.multiHop,
                quote.signature
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
}
